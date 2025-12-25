import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/logger.dart';
import 'package:dart_frog/dart_frog.dart';

final logger = AppLogger('ConsultantAvailabilityRoute');

/// GET /api/consultants/:id/availability
///
/// Returns available time slots for a specific consultant.
///
/// Query Parameters:
/// - startDate: Start of the date range (ISO8601, required)
/// - endDate: End of the date range (ISO8601, required)
///
/// Response:
/// ```json
/// {
///   "availability": [
///     {
///       "date": "2024-01-15",
///       "slots": [
///         {
///           "id": "slot-id",
///           "startsAt": "2024-01-15T09:00:00Z",
///           "endsAt": "2024-01-15T10:00:00Z",
///           "isBooked": false,
///           "isTentative": false
///         }
///       ]
///     }
///   ]
/// }
/// ```
Future<Response> onRequest(RequestContext context, String id) async {
  // Only allow GET requests
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final db = context.read<DatabaseClient>();
    final params = context.request.uri.queryParameters;

    // Parse required query parameters
    final startDateStr = params['startDate'];
    final endDateStr = params['endDate'];

    if (startDateStr == null || endDateStr == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'startDate and endDate query parameters are required',
          },
        },
      );
    }

    DateTime startDate;
    DateTime endDate;

    try {
      startDate = DateTime.parse(startDateStr);
      endDate = DateTime.parse(endDateStr);
    } catch (e) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Invalid date format. Use ISO8601 format.',
          },
        },
      );
    }

    // Validate date range
    if (endDate.isBefore(startDate)) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'endDate must be after startDate',
          },
        },
      );
    }

    // Limit range to 60 days
    if (endDate.difference(startDate).inDays > 60) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Date range cannot exceed 60 days',
          },
        },
      );
    }

    // First, get the consultant profile ID from the consultant ID
    // The route receives consultant profile ID directly
    final consultantProfileId = id;

    // Fetch availability
    final slots = await db.slots.getAvailability(
      consultantProfileId: consultantProfileId,
      startDate: startDate,
      endDate: endDate,
    );

    // Group slots by date
    final groupedAvailability = db.slots.groupSlotsByDate(slots);

    return Response.json(
      body: {
        'availability': groupedAvailability,
      },
    );
  } catch (e, stackTrace) {
    logger.severe(
      'Error in GET /api/consultants/$id/availability',
      e,
      stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch availability'},
      },
    );
  }
}
