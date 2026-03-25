import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Handles POST /api/stream/recordings/start.
Future<Response> handleRecordingStart(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final callId = body['callId'] as String?;

    if (callId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': {'message': 'callId is required'}},
      );
    }

    final streamService = context.read<StreamService>();
    await streamService.startRecording(callId);

    return Response.json(
      body: {'message': 'Recording started', 'callId': callId},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Start recording failed',
      context: 'RecordingStart',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to start recording'}},
    );
  }
}

/// Handles POST /api/stream/recordings/stop.
Future<Response> handleRecordingStop(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final callId = body['callId'] as String?;

    if (callId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': {'message': 'callId is required'}},
      );
    }

    final streamService = context.read<StreamService>();
    await streamService.stopRecording(callId);

    return Response.json(
      body: {'message': 'Recording stopped', 'callId': callId},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Stop recording failed',
      context: 'RecordingStop',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to stop recording'}},
    );
  }
}

/// Handles POST /api/stream/recordings/sync.
Future<Response> handleRecordingSync(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final callId = body['callId'] as String?;
    final meetingSessionId = body['meetingSessionId'] as String?;

    if (callId == null || meetingSessionId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'callId and meetingSessionId are required',
          },
        },
      );
    }

    final streamService = context.read<StreamService>();
    final db = context.read<DatabaseClient>();
    final streamRecordings = await streamService.listRecordings(callId);
    final now = DateTime.now().toUtc().toIso8601String();

    final syncCount = await db.executeInTransaction((txn) async {
      var count = 0;
      for (final rec in streamRecordings) {
        final recId = rec['id'] as String?;
        final streamUrl = rec['url'] as String?;
        final filename = rec['filename'] as String?;

        final query = JsonQueryBuilder()
            .model('Recording')
            .action(QueryAction.create)
            .data({
          'meetingSessionId': meetingSessionId,
          'streamRecordingId': recId,
          'streamUrl': streamUrl,
          'fileName': filename ?? 'recording-$recId',
          'status': 'AVAILABLE',
          'duration': rec['duration'] as int?,
          'fileSize': rec['file_size'] as int?,
          'createdAt': now,
          'updatedAt': now,
        }).build();

        await txn.executeMutation(query);
        count++;
      }
      return count;
    });

    final recordsQuery = JsonQueryBuilder()
        .model('Recording')
        .action(QueryAction.findMany)
        .where({'meetingSessionId': meetingSessionId})
        .build();
    final records = await db.executor.executeQueryAsMaps(recordsQuery);

    return Response.json(
      body: {
        'synced': syncCount,
        'data': records.map(serializeForJson).toList(),
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Recording sync failed',
      context: 'RecordingSync',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to sync recordings'}},
    );
  }
}
