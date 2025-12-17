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

  final databaseUrl = env['DATABASE_URL'] ?? env['DIRECT_URL'];
  if (databaseUrl == null) {
    throw Exception('DATABASE_URL or DIRECT_URL must be set in .env');
  }

  final jwtSecret = env['JWT_SECRET'];
  if (jwtSecret == null || jwtSecret.isEmpty) {
    throw Exception('JWT_SECRET must be set in .env');
  }
  if (jwtSecret.length < 32) {
    throw Exception('JWT_SECRET must be at least 32 characters for security');
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
