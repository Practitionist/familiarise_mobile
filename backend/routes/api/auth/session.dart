import 'dart:io';

import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/auth/session
/// Validates the caller's bearer token and active DB session.
///
/// Returns HTTP 401 (`{'error': 'Unauthorized'}`) whenever the bearer token
/// is missing, invalid, expired, or has no active session/user.
Future<Response> onRequest(RequestContext context) async {
  // Only allow GET
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final result = await verifyActiveUserSession(context);
    if (result == null || result['user'] == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': 'Unauthorized'},
      );
    }

    return Response.json(body: result);
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Session retrieval failed',
      context: 'AuthSession',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.unauthorized,
      body: {'error': 'Unauthorized'},
    );
  }
}
