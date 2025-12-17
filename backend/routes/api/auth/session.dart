import 'dart:io';

import 'package:backend/services/auth_service.dart';
import 'package:backend/services/jwt_service.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/auth/session
/// Better Auth compatible session endpoint
Future<Response> onRequest(RequestContext context) async {
  // Only allow GET
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    // Get token from Authorization header
    final authHeader = context.request.headers['authorization'];
    if (authHeader == null || !authHeader.startsWith('Bearer ')) {
      return Response.json(
        body: {'session': null, 'user': null},
      );
    }

    final token = authHeader.substring(7); // Remove 'Bearer ' prefix

    final jwtService = context.read<JwtService>();
    final authService = context.read<AuthService>();

    // Verify JWT token
    final payload = jwtService.tryVerify(token);
    if (payload == null) {
      return Response.json(
        body: {'session': null, 'user': null},
      );
    }

    final sessionId = payload['sessionId'] as String?;
    if (sessionId == null) {
      return Response.json(
        body: {'session': null, 'user': null},
      );
    }

    // Get session and user
    final result = await authService.getSession(sessionId);
    if (result == null) {
      return Response.json(
        body: {'session': null, 'user': null},
      );
    }

    return Response.json(body: result);
  } catch (e) {
    return Response.json(
      body: {'session': null, 'user': null},
    );
  }
}
