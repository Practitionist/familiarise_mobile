import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Meeting details endpoint
///
/// GET /api/appointments/:id/meeting - Get meeting details for an appointment
Future<Response> onRequest(RequestContext context, String id) async {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _handleGetMeeting(context, id);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// GET /api/appointments/:id/meeting
///
/// Get meeting session details for an appointment.
///
/// Response:
/// ```json
/// {
///   "id": "meeting-id",
///   "streamCallId": "unique-call-id",
///   "appointmentId": "appointment-id",
///   "scheduledAt": "2024-01-01T10:00:00Z",
///   "endsAt": "2024-01-01T11:00:00Z",
///   "consultantName": "John Doe",
///   "consultantImage": "https://...",
///   "consulteeImage": "https://...",
///   "passcode": "optional-passcode",
///   "status": "SCHEDULED"
/// }
/// ```
Future<Response> _handleGetMeeting(
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

    // Get meeting details
    final meeting = await db.meetingSessions.getMeetingDetailsForAppointment(
      appointmentId,
    );

    if (meeting == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Meeting not found for this appointment'}},
      );
    }

    // Format response
    final response = {
      'id': meeting['id'],
      'streamCallId': meeting['streamCallId'],
      'appointmentId': meeting['appointmentId'],
      'scheduledAt': meeting['scheduledAt']?.toString(),
      'endsAt': meeting['endsAt']?.toString(),
      'consultantName': meeting['consultantName'],
      'consultantImage': meeting['consultantImage'],
      'consulteeImage': meeting['consulteeImage'],
      'passcode': meeting['passcode'],
      'status': _determineMeetingStatus(
        _parseDateTime(meeting['scheduledAt']),
        _parseDateTime(meeting['endsAt']),
      ),
    };

    return Response.json(body: serializeForJson(response));
  } catch (e, stackTrace) {
    SentryLogger.error(
      'Error in GET /api/appointments/$appointmentId/meeting',
      context: 'MeetingRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to get meeting details'}},
    );
  }
}

/// Safely parse a dynamic value to DateTime
///
/// Handles both DateTime objects and ISO8601 strings from the ORM.
DateTime? _parseDateTime(dynamic value) {
  if (value == null) return null;
  if (value is DateTime) return value;
  return DateTime.tryParse(value.toString());
}

/// Determine meeting status based on scheduled time
String _determineMeetingStatus(DateTime? scheduledAt, DateTime? endsAt) {
  if (scheduledAt == null) return 'SCHEDULED';

  final now = DateTime.now().toUtc();

  if (endsAt != null && now.isAfter(endsAt)) {
    return 'ENDED';
  }

  if (now.isAfter(scheduledAt)) {
    return 'LIVE';
  }

  return 'SCHEDULED';
}
