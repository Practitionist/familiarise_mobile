import 'dart:io' show File, HttpServer, InternetAddress, Platform;

import 'package:backend/database/database_client.dart';
import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/services/auth/github_oauth_service.dart';
import 'package:backend/services/auth/jwt_service.dart';
import 'package:backend/services/email/email_service.dart';
import 'package:backend/services/profile/profile_service.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';

/// Server entry point
/// Initializes database, services, and starts the HTTP server
Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  // Environment resolution, lowest precedence first:
  //   1. .env                 — shared local config (gitignored)
  //   2. .env.local           — per-developer override layer (gitignored),
  //                             e.g. pointing DIRECT_URL at local Postgres
  //   3. Platform.environment — ALWAYS WINS. This is what docker compose,
  //                             Railway and CI inject.
  //
  // Note the deliberate ordering. DotEnv's own `includePlatformEnvironment`
  // flag injects the environment in the *constructor*, and `load()` then does
  // `_map.addAll(file)` on top — so the file would override the environment.
  // That is backwards for containers: a stale DIRECT_URL in a bind-mounted
  // .env would silently hijack a "local" run and point it at production.
  // Applying Platform.environment last inverts that.
  final env = DotEnv();
  if (File('.env').existsSync()) env.load(['.env']);
  if (File('.env.local').existsSync()) env.load(['.env.local']);
  env.addAll(Platform.environment);

  // Initialize Sentry for error tracking (optional)
  await SentryLogger.init(env['SENTRY_DSN']);

  // Use DIRECT_URL for direct PostgreSQL connection (no PgBouncer)
  // PgBouncer in transaction mode doesn't support prepared statements
  // which the prisma_flutter_connector uses internally
  final databaseUrl = env['DIRECT_URL'] ?? env['DATABASE_URL'];
  if (databaseUrl == null) {
    throw Exception(
      'DIRECT_URL or DATABASE_URL must be set in the environment or .env. '
      'For local development run: source scripts/use-db.sh local',
    );
  }

  final jwtSecret = env['JWT_SECRET'];
  if (jwtSecret == null) {
    throw Exception('JWT_SECRET must be set in the environment or .env');
  }

  // GitHub OAuth credentials (optional - only needed if using GitHub auth)
  final githubClientId = env['GITHUB_CLIENT_ID'];
  final githubClientSecret = env['GITHUB_CLIENT_SECRET'];
  final githubRedirectUri = env['GITHUB_REDIRECT_URI'];
  final hasGitHubOAuth = githubClientId != null &&
      githubClientSecret != null &&
      githubRedirectUri != null;

  if (!hasGitHubOAuth) {
    SentryLogger.info(
      'GitHub OAuth credentials not configured. GitHub sign-in will not work.',
      context: 'Startup',
    );
  }

  // Initialize database
  SentryLogger.info(
    'Connecting to database... (${_describeTarget(databaseUrl)})',
    context: 'Startup',
  );
  final db = await DatabaseClient.initialize(databaseUrl);
  SentryLogger.info('Database connected successfully!', context: 'Startup');

  // Create services
  final jwtService = JwtService(jwtSecret);
  final authService = AuthService(db, jwtService);
  final streamService = StreamService(
    apiKey: env['STREAM_API_KEY'],
    apiSecret: env['STREAM_API_SECRET'],
  );

  // Email service (optional — only needed for password reset + email verification)
  final resendApiKey = env['RESEND_API_KEY'];
  final appBaseUrl = env['APP_BASE_URL'] ?? 'https://familiarise.com';
  EmailService? emailService;
  if (resendApiKey != null && resendApiKey.isNotEmpty) {
    emailService = EmailService(apiKey: resendApiKey);
  } else {
    SentryLogger.info(
      'RESEND_API_KEY not configured. Email features disabled.',
      context: 'Startup',
    );
  }

  // ProfileService is always created - email-dependent features will throw
  // appropriate errors if email service is not configured
  final profileService = ProfileService(
    db,
    emailService: emailService,
    appBaseUrl: appBaseUrl,
  );

  // Create GitHub OAuth service if configured
  final GitHubOAuthService? githubOAuthService = hasGitHubOAuth
      ? GitHubOAuthService(
          clientId: githubClientId,
          clientSecret: githubClientSecret,
          redirectUri: githubRedirectUri,
        )
      : null;

  // Add services to handler using providers
  var handlerWithProviders = handler
      .use(provider<DotEnv>((_) => env))
      .use(provider<DatabaseClient>((_) => db))
      .use(provider<JwtService>((_) => jwtService))
      .use(provider<AuthService>((_) => authService))
      .use(provider<StreamService>((_) => streamService));

  // Add GitHub OAuth service if configured
  if (githubOAuthService != null) {
    handlerWithProviders = handlerWithProviders
        .use(provider<GitHubOAuthService>((_) => githubOAuthService));
  }

  // ProfileService is always provided
  handlerWithProviders =
      handlerWithProviders.use(provider<ProfileService>((_) => profileService));

  // Start server
  SentryLogger.info(
    'Starting server on http://${ip.address}:$port',
    context: 'Startup',
  );
  return serve(handlerWithProviders, ip, port);
}

/// Renders the connection target of [databaseUrl] as `host:port/database`.
///
/// Credentials are never included — this string is logged on every boot (and
/// forwarded to Sentry), so it must stay safe to read in a shared console.
///
/// Its purpose is to make "am I about to run destructive tests against
/// production?" answerable at a glance: a local run must print `db:5432` (in
/// Docker) or `localhost:5433` (native), never a `*.supabase.com` host.
String _describeTarget(String databaseUrl) {
  final uri = Uri.tryParse(databaseUrl);
  if (uri == null || uri.host.isEmpty) return 'target=<unparseable url>';

  final database = uri.pathSegments.isEmpty ? '?' : uri.pathSegments.first;
  final port = uri.hasPort ? uri.port : 5432;
  return 'host=${uri.host}:$port, db=$database';
}
