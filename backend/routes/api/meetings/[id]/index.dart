import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Meeting session & join token endpoint with strict participant/consultant/
/// collaborator ownership & membership checks (Issue #53).
///
/// GET  /api/meetings/:id - Fetch meeting session details for an appointment
/// POST /api/meetings/:id - Generate Stream Video join token for an appointment
Future<Response> onRequest(RequestContext context, String id) async {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _handleGetMeeting(context, id);
  }
  if (method == HttpMethod.post) {
    return _handleJoinMeetingToken(context, id);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGetMeeting(
  RequestContext context,
  String appointmentId,
) async {
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

    final hasAccess = await streamService.verifyAppointmentAccess(
      db,
      appointmentId: appointmentId,
      userId: userId,
    );

    if (!hasAccess) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {
            'message': 'Forbidden: you are not a participant, host '
                'consultant, or accepted collaborator for this meeting',
          },
        },
      );
    }

    final meeting = await db.meetingSessions.getMeetingDetailsForAppointment(
      appointmentId,
    );

    if (meeting == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Meeting not found for this appointment'},
        },
      );
    }

    return Response.json(body: serializeForJson(meeting));
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/meetings/$appointmentId',
      context: 'MeetingsRoute',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch meeting details'},
      },
    );
  }
}

Future<Response> _handleJoinMeetingToken(
  RequestContext context,
  String appointmentId,
) async {
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

    final hasAccess = await streamService.verifyAppointmentAccess(
      db,
      appointmentId: appointmentId,
      userId: userId,
    );

    if (!hasAccess) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {
            'message': 'Forbidden: you are not a participant, host '
                'consultant, or accepted collaborator for this meeting',
          },
        },
      );
    }

    if (!streamService.isConfigured) {
      return Response.json(
        statusCode: HttpStatus.serviceUnavailable,
        body: {
          'error': {'message': 'Video service is not configured'},
        },
      );
    }

    final meeting = await db.meetingSessions.getOrCreateMeetingSession(
      appointmentId: appointmentId,
    );
    final streamCallId = meeting['streamCallId'] as String;
    final token = streamService.generateUserToken(userId);

    return Response.json(
      body: {
        'token': token,
        'apiKey': streamService.apiKey,
        'callId': streamCallId,
        'userId': userId,
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in POST /api/meetings/$appointmentId',
      context: 'MeetingsRoute',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to generate meeting join token'},
      },
    );
  }
}
