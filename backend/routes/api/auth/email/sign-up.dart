import 'dart:io';

import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/email/sign-up
/// Email/password sign-up endpoint
///
/// Request body:
/// - email: User's email address
/// - password: User's password (min 8 characters)
/// - name: (optional) User's display name
///
/// Response:
/// - user: The created user object
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
    final name = body['name'] as String?;

    if (email == null || password == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Email and password are required'},
        },
      );
    }

    // Validate password strength
    if (password.length < 8) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Password must be at least 8 characters'},
        },
      );
    }

    final authService = context.read<AuthService>();
    final result = await authService.signUpWithEmail(
      email,
      password,
      name: name,
    );

    return Response.json(
      statusCode: HttpStatus.created,
      body: result,
    );
  } on FormatException catch (_) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'Invalid request body format'},
      },
    );
  } on AuthException catch (e) {
    return Response.json(
      statusCode: e.statusCode,
      body: {
        'error': {'message': e.message},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Email sign-up failed',
      context: 'AuthEmailSignUp',
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
