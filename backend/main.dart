import 'dart:io';

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
  // Load environment variables
  final env = DotEnv()..load(['.env']);

  // Initialize Sentry for error tracking (optional)
  await SentryLogger.init(env['SENTRY_DSN']);

  // Use DIRECT_URL for direct PostgreSQL connection (no PgBouncer)
  // PgBouncer in transaction mode doesn't support prepared statements
  // which the prisma_flutter_connector uses internally
  final databaseUrl = env['DIRECT_URL'] ?? env['DATABASE_URL'];
  if (databaseUrl == null) {
    throw Exception('DIRECT_URL or DATABASE_URL must be set in .env');
  }

  final jwtSecret = env['JWT_SECRET'];
  if (jwtSecret == null) {
    throw Exception('JWT_SECRET must be set in .env');
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
  SentryLogger.info('Connecting to database...', context: 'Startup');
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
