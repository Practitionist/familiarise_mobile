import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/waitlist — User's waitlist entries
/// POST /api/waitlist — Join a waitlist
///
/// POST body: { "webinarId": "..." } or { "classId": "..." }
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handleGet(context);
  if (method == HttpMethod.post) return _handlePost(context);

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGet(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final db = context.read<DatabaseClient>();
    final entries = await db.waitlists.findByUser(userId);

    return Response.json(
      body: {'data': entries.map(serializeForJson).toList()},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Waitlist list failed',
      context: 'WaitlistGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to load waitlist'}},
    );
  }
}

Future<Response> _handlePost(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final webinarId = body['webinarId'] as String?;
    final classId = body['classId'] as String?;

    if (webinarId == null && classId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Either webinarId or classId is required',
          },
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final entry = await db.waitlists.join(
      userId: userId,
      webinarId: webinarId,
      classId: classId,
    );

    return Response.json(
      statusCode: HttpStatus.created,
      body: {'data': serializeForJson(entry)},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Waitlist join failed',
      context: 'WaitlistPost',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to join waitlist'}},
    );
  }
}
