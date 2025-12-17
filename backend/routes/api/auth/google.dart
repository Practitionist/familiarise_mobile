import 'dart:io';

import 'package:backend/services/auth_service.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/google
/// Google OAuth sign-in endpoint
Future<Response> onRequest(RequestContext context) async {
  // Only allow POST
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final body = await context.request.json() as Map<String, dynamic>;
    final idToken = body['idToken'] as String?;
    final accessToken = body['accessToken'] as String?;
    final email = body['email'] as String?;
    final name = body['name'] as String?;
    final image = body['image'] as String?;

    if (email == null || email.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': 'Email is required'},
      );
    }

    final authService = context.read<AuthService>();
    final result = await authService.signInWithGoogle(
      idToken: idToken,
      accessToken: accessToken,
      email: email,
      name: name,
      image: image,
    );

    return Response.json(body: result);
  } on AuthException catch (e) {
    return Response.json(
      statusCode: e.statusCode,
      body: {'error': e.message},
    );
  } catch (e) {
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': 'An unexpected error occurred: $e'},
    );
  }
}
