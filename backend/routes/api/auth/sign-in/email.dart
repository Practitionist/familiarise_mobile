import 'dart:io';

import 'package:backend/services/auth_service.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/sign-in/email
/// Better Auth compatible email sign-in endpoint
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
  } catch (e) {
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'An unexpected error occurred'},
      },
    );
  }
}
