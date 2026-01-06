import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Meeting end endpoint
///
/// POST /api/appointments/:id/meeting/end - Mark meeting as ended
Future<Response> onRequest(RequestContext context, String id) async {
  final method = context.request.method;
  if (method == HttpMethod.post) {
    return _handleEndMeeting(context, id);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// POST /api/appointments/:id/meeting/end
///
/// Mark the meeting as ended. Called when a user leaves the meeting.
/// This can be used for analytics and tracking meeting participation.
Future<Response> _handleEndMeeting(
  RequestContext context,
  String appointmentId,
) async {
  try {
    // Verify user is authenticated
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

    // Verify user has access to this appointment
    final hasAccess = await db.meetingSessions.userHasAccessToAppointment(
      appointmentId: appointmentId,
      userId: userId,
    );

    if (!hasAccess) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {'message': 'You do not have access to this meeting'}
        },
      );
    }

    // Get meeting session
    final meeting = await db.meetingSessions.getMeetingByAppointmentId(
      appointmentId,
    );

    if (meeting == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Meeting not found for this appointment'}
        },
      );
    }

    // Log the meeting end (could be extended for analytics)
    SentryLogger.info(
      'Meeting ended - appointmentId: $appointmentId, userId: $userId',
      context: 'MeetingRoute',
    );

    // Could update appointment status here if needed
    // await db.appointments.updateStatus(appointmentId, 'COMPLETED');

    return Response.json(
      body: {'success': true, 'message': 'Meeting ended'},
    );
  } catch (e, stackTrace) {
    SentryLogger.error(
      'Error in POST /api/appointments/$appointmentId/meeting/end',
      context: 'MeetingRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to end meeting'}
      },
    );
  }
}
