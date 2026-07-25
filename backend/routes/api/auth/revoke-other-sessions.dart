import 'dart:io';

import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/services/auth/jwt_service.dart';
import 'package:backend/services/profile/profile_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/revoke-other-sessions
///
/// Revokes all sessions for the authenticated user except the
/// current one (identified by the session ID in the JWT).
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    // Extract current session ID from the JWT payload
    final authHeader = context.request.headers['authorization'];
    if (authHeader == null || !authHeader.startsWith('Bearer ')) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    final token = authHeader.substring(7);
    final payload = context.read<JwtService>().tryVerify(token);
    final sessionId = payload?['sessionId'] as String?;

    if (sessionId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Invalid session'},
        },
      );
    }

    final profileService = context.read<ProfileService>();
    await profileService.revokeOtherSessions(
      userId: userId,
      currentSessionId: sessionId,
    );

    return Response.json(
      body: {'message': 'Other sessions revoked'},
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
      'Revoke other sessions failed',
      context: 'AuthRevokeOtherSessions',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {
          'message': 'An unexpected error occurred',
        },
      },
    );
  }
}
