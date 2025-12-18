import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/auth_service.dart';
import 'package:backend/services/jwt_service.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';

/// Server entry point
/// Initializes database, services, and starts the HTTP server
Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  // Load environment variables
  final env = DotEnv()..load(['.env']);

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

  // Initialize database
  print('Connecting to database...');
  final db = await DatabaseClient.initialize(databaseUrl);
  print('Database connected successfully!');

  // Create services
  final jwtService = JwtService(jwtSecret);
  final authService = AuthService(db, jwtService);

  // Add services to handler using providers
  final handlerWithProviders = handler
      .use(provider<DatabaseClient>((_) => db))
      .use(provider<JwtService>((_) => jwtService))
      .use(provider<AuthService>((_) => authService));

  // Start server
  print('Starting server on http://${ip.address}:$port');
  return serve(handlerWithProviders, ip, port);
}
