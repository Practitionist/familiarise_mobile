import 'dart:io';

import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/services/auth/jwt_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/sign-out
/// Sign-out endpoint — deletes caller's Session row and invalidates session cache.
Future<Response> onRequest(RequestContext context) async {
  // Only allow POST
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final token = extractBearerToken(context);
    if (token == null) {
      return Response.json(
        body: {'success': true}, // Already signed out
      );
    }

    invalidateSessionCache(token);

    final jwtService = context.read<JwtService>();
    final authService = context.read<AuthService>();

    // Verify JWT token
    final payload = jwtService.tryVerify(token);
    if (payload == null) {
      return Response.json(body: {'success': true});
    }

    final sessionId = payload['sessionId'] as String?;
    final userId = payload['userId'] as String?;
    if (sessionId != null) {
      invalidateSessionIdCache(sessionId);
      await authService.signOut(sessionId);
    } else if (userId != null) {
      invalidateUserSessionsCache(userId);
      await authService.revokeAllUserSessions(userId);
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
