import 'dart:io';

import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/services/profile/profile_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/revoke-session
///
/// Revokes a specific session for the authenticated user.
///
/// Request body:
/// ```json
/// { "sessionId": "uuid" }
/// ```
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

    final body = await context.request.json() as Map<String, dynamic>;
    final sessionId = body['sessionId'] as String?;

    if (sessionId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'sessionId is required'},
        },
      );
    }

    final profileService = context.read<ProfileService>();
    await profileService.revokeSession(
      userId: userId,
      sessionId: sessionId,
    );

    return Response.json(
      body: {'message': 'Session revoked'},
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
      'Revoke session failed',
      context: 'AuthRevokeSession',
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
