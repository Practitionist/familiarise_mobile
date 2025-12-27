import 'dart:io';

import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/email/sign-in
/// Email/password sign-in endpoint
///
/// Request body:
/// - email: User's email address
/// - password: User's password
///
/// Response:
/// - user: The authenticated user object
/// - token: JWT token for subsequent API calls
Future<Response> onRequest(RequestContext context) async {
  // Only allow POST
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final body = await context.request.json() as Map<String, dynamic>;
    final email = body['email'] as String?;
    final password = body['password'] as String?;

    if (email == null || password == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Email and password are required'},
        },
      );
    }

    final authService = context.read<AuthService>();
    final result = await authService.signInWithEmail(email, password);

    return Response.json(body: result);
  } on AuthException catch (e) {
    return Response.json(
      statusCode: e.statusCode,
      body: {
        'error': {'message': e.message},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Email sign-in failed',
      context: 'AuthEmailSignIn',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'An unexpected error occurred'},
      },
    );
  }
}
