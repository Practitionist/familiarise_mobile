import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Meeting start endpoint
///
/// POST /api/appointments/:id/meeting/start - Mark meeting as started
Future<Response> onRequest(RequestContext context, String id) async {
  final method = context.request.method;
  if (method == HttpMethod.post) {
    return _handleStartMeeting(context, id);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// POST /api/appointments/:id/meeting/start
///
/// Mark the meeting as started. Called when a user joins the meeting.
/// This can be used for analytics and tracking meeting participation.
Future<Response> _handleStartMeeting(
  RequestContext context,
  String appointmentId,
) async {
  try {
    // Verify user is authenticated
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
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
        body: {'error': {'message': 'You do not have access to this meeting'}},
      );
    }

    // Get meeting session
    final meeting = await db.meetingSessions.getMeetingByAppointmentId(
      appointmentId,
    );

    if (meeting == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Meeting not found for this appointment'}},
      );
    }

    // Log the meeting start (could be extended for analytics)
    SentryLogger.info(
      'Meeting started - appointmentId: $appointmentId, userId: $userId',
      context: 'MeetingRoute',
    );

    // Could update appointment status here if needed
    // await db.appointments.updateStatus(appointmentId, 'IN_PROGRESS');

    return Response.json(
      body: {'success': true, 'message': 'Meeting started'},
    );
  } catch (e, stackTrace) {
    SentryLogger.error(
      'Error in POST /api/appointments/$appointmentId/meeting/start',
      context: 'MeetingRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to start meeting'}},
    );
  }
}
