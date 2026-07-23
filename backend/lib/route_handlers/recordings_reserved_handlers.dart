import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

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
    final now = DateTime.now().toUtc();

    // Typed create autofills id/createdAt/updatedAt. The re-synced Recording
    // model renamed fields: fileName→title, streamUrl→recordingUrl,
    // duration→durationInMinutes; recordedAt is required.
    final syncCount = await db.prisma.$transaction((tx) async {
      var count = 0;
      for (final rec in streamRecordings) {
        final recId = rec['id'] as String?;
        if (recId == null) continue;
        final streamUrl = rec['url'] as String?;
        final filename = rec['filename'] as String?;
        final fileSize = rec['file_size'] as int?;

        await tx.recording.create(
          data: CreateRecordingInput(
            meetingSessionId: meetingSessionId,
            streamRecordingId: recId,
            streamCallId: callId,
            recordingUrl: streamUrl ?? '',
            title: filename ?? 'recording-$recId',
            status: RecordingStatus.available,
            durationInMinutes: (rec['duration'] as int?) ?? 0,
            fileSize: fileSize != null ? BigInt.from(fileSize) : null,
            recordedAt: now,
          ),
        );
        count++;
      }
      return count;
    });

    final records = await db.prisma.recording.findMany(
      where: RecordingWhereInput(
        meetingSessionId: StringFilter(equals: meetingSessionId),
      ),
    );

    return Response.json(
      body: {
        'synced': syncCount,
        'data': records.map((r) => serializeForJson(r.toJson())).toList(),
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
