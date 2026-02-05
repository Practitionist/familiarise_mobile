import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/appointments/:id
///
/// Returns details of a specific booking.
/// User must be a participant in the booking.
///
/// Query Parameters:
/// - type: Booking type (CONSULTATION, SUBSCRIPTION, WEBINAR, or CLASS)
///
/// Response:
/// ```json
/// {
///   "id": "uuid",
///   "bookingType": "CONSULTATION",
///   "status": "PENDING",
///   "consultantProfileId": "uuid",
///   "consultantName": "John Doe",
///   "planTitle": "1 Hour Consultation",
///   "slots": [...],
///   ...
/// }
/// ```
Future<Response> onRequest(RequestContext context, String id) async {
  // Only allow GET requests
  if (context.request.method != HttpMethod.get) {
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
    const validTypes = [
      'CONSULTATION',
      'SUBSCRIPTION',
      'WEBINAR',
      'CLASS',
      'TRIAL',
    ];
    if (type == null || !validTypes.contains(type)) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Query parameter type required '
                '(CONSULTATION, SUBSCRIPTION, WEBINAR, CLASS, '
                'or TRIAL)',
          },
        },
      );
    }

    // Check if user is a participant
    final isParticipant = await db.appointments.isParticipant(
      bookingId: id,
      type: type,
      userId: userId,
    );

    if (!isParticipant) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Booking not found'}
        },
      );
    }

    // Fetch booking details
    final booking = await db.appointments.getBookingById(id, type: type);

    return Response.json(
      body: serializeForJson(booking),
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/appointments/$id',
      context: 'AppointmentDetailRoute',
      error: e,
      stackTrace: stackTrace,
    );

    final errorMessage = e.toString();
    if (errorMessage.contains('not found')) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Booking not found'}
        },
      );
    }

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch booking'}
      },
    );
  }
}
