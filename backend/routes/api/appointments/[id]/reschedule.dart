import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/appointments/:id/reschedule
///
/// Reschedule a booking by marking slots as tentative and reverting status.
/// User must be a participant in the booking.
///
/// Query Parameters:
/// - type: Booking type (CONSULTATION or SUBSCRIPTION, required)
///
/// Request body:
/// ```json
/// {
///   "slotId": "optional-slot-id-for-individual-session-reschedule"
/// }
/// ```
///
/// Response:
/// ```json
/// {
///   "success": true,
///   "message": "Booking rescheduled. Please select new time slots.",
///   "booking": { ... }
/// }
/// ```
Future<Response> onRequest(RequestContext context, String id) async {
  // Only allow POST requests
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    // Verify authentication
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
    final params = context.request.uri.queryParameters;

    // Get booking type from query parameter
    final type = params['type'];
    if (type == null || (type != 'CONSULTATION' && type != 'SUBSCRIPTION')) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Query parameter type required '
                '(CONSULTATION or SUBSCRIPTION)',
          },
        },
      );
    }

    // Parse request body for optional slotId (individual session reschedule)
    String? slotId;
    try {
      final data = await context.request.json() as Map<String, dynamic>;
      slotId = data['slotId'] as String?;
    } catch (_) {
      // Body parsing failed, slotId will be null (full reschedule)
    }

    // Reschedule the booking
    final booking = await db.appointments.rescheduleBooking(
      id: id,
      type: type,
      userId: userId,
      slotId: slotId,
    );

    return Response.json(
      body: serializeForJson({
        'success': true,
        'message': slotId != null
            ? 'Session rescheduled. Please select a new time.'
            : 'Booking rescheduled. Please select new time slots.',
        'booking': booking,
      }),
    );
  } catch (e, stackTrace) {
    final errorMessage = e.toString();

    // Expected errors - log as warning, don't report to Sentry
    if (errorMessage.contains('not found') ||
        errorMessage.contains('permission')) {
      SentryLogger.info(
        'Reschedule access denied: $id',
        context: 'RescheduleAppointment',
      );
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Booking not found or access denied'}
        },
      );
    }

    if (errorMessage.contains('24 hours') ||
        errorMessage.contains('within 24')) {
      SentryLogger.info(
        'Reschedule 24h restriction: $id',
        context: 'RescheduleAppointment',
      );
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Cannot reschedule within 24 hours of the appointment',
          },
        },
      );
    }

    if (errorMessage.contains('terminal') ||
        errorMessage.contains('cancelled') ||
        errorMessage.contains('completed')) {
      SentryLogger.info(
        'Reschedule terminal status: $id',
        context: 'RescheduleAppointment',
      );
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Cannot reschedule a cancelled or completed booking',
          },
        },
      );
    }

    // Unexpected errors - report to Sentry
    await SentryLogger.error(
      'Failed to reschedule booking: $id',
      context: 'RescheduleAppointment',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to reschedule booking'}
      },
    );
  }
}
