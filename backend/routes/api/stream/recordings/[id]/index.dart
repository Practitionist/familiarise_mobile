import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/route_handlers/recordings_reserved_handlers.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/stream/recordings/:id — Recording details
Future<Response> onRequest(RequestContext context, String id) async {
  if (id == 'start') {
    return handleRecordingStart(context);
  }
  if (id == 'stop') {
    return handleRecordingStop(context);
  }
  if (id == 'sync') {
    return handleRecordingSync(context);
  }

  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'}
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final recording = await db.recordings.findById(id);

    if (recording == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Recording not found'}
        },
      );
    }

    return Response.json(body: {'data': recording.toJson()});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Recording get failed',
      context: 'RecordingGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to get recording'}
      },
    );
  }
}
