import 'dart:io';

import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/services/auth/jwt_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/logout
/// Deletes the caller's Session row(s) in Postgres and invalidates the
/// in-memory verified-session cache.
Future<Response> onRequest(RequestContext context) async {
  // Only allow POST
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final token = extractBearerToken(context);
    if (token == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': 'Unauthorized'},
      );
    }

    // Always evict this token from the in-memory session cache immediately
    invalidateSessionCache(token);

    final jwtService = context.read<JwtService>();
    final authService = context.read<AuthService>();

    final payload = jwtService.tryVerify(token);
    if (payload == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': 'Unauthorized'},
      );
    }

    final sessionId = payload['sessionId'] as String?;
    final userId = payload['userId'] as String?;

    if (sessionId != null && sessionId.isNotEmpty) {
      await authService.signOut(sessionId);
      invalidateSessionIdCache(sessionId);
      invalidateSessionCache(token);
    } else if (userId != null && userId.isNotEmpty) {
      await authService.revokeAllUserSessions(userId);
      invalidateUserSessionsCache(userId);
      invalidateSessionCache(token);
    }

    return Response.json(body: {'success': true});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Logout failed',
      context: 'AuthLogout',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to log out'},
      },
    );
  }
}
