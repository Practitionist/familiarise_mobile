import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Stream Video recordings endpoint with strict participant/consultant/
/// collaborator ownership & membership checks (Issue #53).
///
/// POST /api/stream/recordings/start - Start recording
/// POST /api/stream/recordings/stop  - Stop recording
/// POST /api/stream/recordings/sync  - Sync recordings
/// GET  /api/stream/recordings/:id   - Get recording details
Future<Response> onRequest(RequestContext context, String id) async {
  if (id == 'start') {
    return _handleRecordingStart(context);
  }
  if (id == 'stop') {
    return _handleRecordingStop(context);
  }
  if (id == 'sync') {
    return _handleRecordingSync(context);
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
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final streamService = context.read<StreamService>();
    final recording = await db.recordings.findById(id);

    if (recording == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Recording not found'},
        },
      );
    }

    final meetingSession = await db.prisma.meetingSession.findUnique(
      where: MeetingSessionWhereUniqueInput(id: recording.meetingSessionId),
      include: const MeetingSessionInclude(
        slotOfAppointment: SlotOfAppointmentInclude(),
      ),
    );
    final appointmentId = meetingSession?.slotOfAppointment?.appointmentId;
    final callId = recording.streamCallId;

    var hasAccess = false;
    if (appointmentId != null && appointmentId.isNotEmpty) {
      hasAccess = await streamService.verifyAppointmentAccess(
        db,
        appointmentId: appointmentId,
        userId: userId,
      );
    } else if (callId != null && callId.isNotEmpty) {
      hasAccess = await streamService.verifyCallAccess(
        db,
        callId: callId,
        userId: userId,
      );
    }

    if (!hasAccess) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {
            'message':
                'Forbidden: you do not have access to this session recording',
          },
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
        'error': {'message': 'Failed to get recording'},
      },
    );
  }
}

Future<Response> _handleRecordingStart(RequestContext context) async {
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
    final callId = body['callId'] as String?;

    if (callId == null || callId.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'callId is required'},
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final streamService = context.read<StreamService>();

    final hasAccess = await streamService.verifyCallAccess(
      db,
      callId: callId,
      userId: userId,
      requireHostOrCollaborator: true,
    );

    if (!hasAccess) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {
            'message': 'Forbidden: only the host consultant or an accepted '
                'collaborator can start recording',
          },
        },
      );
    }

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
      body: {
        'error': {'message': 'Failed to start recording'},
      },
    );
  }
}

Future<Response> _handleRecordingStop(RequestContext context) async {
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
    final callId = body['callId'] as String?;

    if (callId == null || callId.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'callId is required'},
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final streamService = context.read<StreamService>();

    final hasAccess = await streamService.verifyCallAccess(
      db,
      callId: callId,
      userId: userId,
      requireHostOrCollaborator: true,
    );

    if (!hasAccess) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {
            'message': 'Forbidden: only the host consultant or an accepted '
                'collaborator can stop recording',
          },
        },
      );
    }

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
      body: {
        'error': {'message': 'Failed to stop recording'},
      },
    );
  }
}

Future<Response> _handleRecordingSync(RequestContext context) async {
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
    final callId = (body['callId'] as String?)?.trim();
    final requestedMeetingSessionId =
        (body['meetingSessionId'] as String?)?.trim();

    if (callId == null || callId.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'callId is required and cannot be empty',
          },
        },
      );
    }

    final streamService = context.read<StreamService>();
    final db = context.read<DatabaseClient>();

    final hasAccess = await streamService.verifyCallAccess(
      db,
      callId: callId,
      userId: userId,
      requireHostOrCollaborator: true,
    );

    if (!hasAccess) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {
            'message': 'Forbidden: only the host consultant or an accepted '
                'collaborator can sync recordings',
          },
        },
      );
    }

    final meeting = await db.meetingSessions.getMeetingByStreamCallId(callId);
    final resolvedMeetingSessionId = meeting?['id'] as String?;
    if (resolvedMeetingSessionId == null || resolvedMeetingSessionId.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {
            'message': 'Meeting session not found for callId',
          },
        },
      );
    }

    if (requestedMeetingSessionId != null &&
        requestedMeetingSessionId.isNotEmpty &&
        requestedMeetingSessionId != resolvedMeetingSessionId) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {
            'message':
                'Forbidden: meetingSessionId does not match the specified callId',
          },
        },
      );
    }

    final meetingSessionId = resolvedMeetingSessionId;

    final streamRecordings = await streamService.listRecordings(callId);
    final now = DateTime.now().toUtc();

    final syncCount = await db.prisma.$transaction((tx) async {
      var count = 0;
      for (final rec in streamRecordings) {
        final recId = rec['id'] as String?;
        if (recId == null) continue;
        final streamUrl = rec['url'] as String?;
        final filename = rec['filename'] as String?;
        final fileSize = rec['file_size'] as int?;

        await tx.recording.upsert(
          where: RecordingWhereUniqueInput(streamRecordingId: recId),
          create: CreateRecordingInput(
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
          update: UpdateRecordingInput(
            recordingUrl: streamUrl ?? '',
            durationInMinutes: (rec['duration'] as int?) ?? 0,
            fileSize: fileSize != null ? BigInt.from(fileSize) : null,
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
      body: {
        'error': {'message': 'Failed to sync recordings'},
      },
    );
  }
}
