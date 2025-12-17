import 'dart:io';

import 'package:backend/services/auth_service.dart';
import 'package:backend/services/jwt_service.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/sign-out
/// Better Auth compatible sign-out endpoint
Future<Response> onRequest(RequestContext context) async {
  // Only allow POST
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    // Get token from Authorization header
    final authHeader = context.request.headers['authorization'];
    if (authHeader == null || !authHeader.startsWith('Bearer ')) {
      return Response.json(
        body: {'success': true}, // Already signed out
      );
    }

    final token = authHeader.substring(7);

    final jwtService = context.read<JwtService>();
    final authService = context.read<AuthService>();

    // Verify JWT token
    final payload = jwtService.tryVerify(token);
    if (payload == null) {
      return Response.json(body: {'success': true});
    }

    final sessionId = payload['sessionId'] as String?;
    if (sessionId != null) {
      await authService.signOut(sessionId);
    }

    return Response.json(body: {'success': true});
  } catch (e) {
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to sign out'},
      },
    );
  }
}
