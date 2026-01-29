import 'dart:convert';
import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/database/repositories/appointment_repository.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Appointments endpoints
///
/// GET /api/appointments - List user's bookings
/// POST /api/appointments - Create a new booking
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _handleGetBookings(context);
  } else if (method == HttpMethod.post) {
    return _handleCreateBooking(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// GET /api/appointments
///
/// Returns the authenticated user's bookings with pagination.
///
/// Query Parameters:
/// - status: Filter by status (PENDING, APPROVED, SCHEDULED, etc.)
/// - page: Page number (0-indexed, default: 0)
/// - pageSize: Items per page (default: 20, max: 50)
///
/// Response:
/// ```json
/// {
///   "bookings": [...],
///   "pagination": { "page": 0, "pageSize": 20, "totalCount": 10 }
/// }
/// ```
Future<Response> _handleGetBookings(RequestContext context) async {
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

    // Parse query parameters
    final status = params['status'];
    final page = int.tryParse(params['page'] ?? '0') ?? 0;
    final pageSize = int.tryParse(params['pageSize'] ?? '20') ?? 20;
    final role = params['role'];

    // Fetch bookings - support consultant role to see their own sessions
    final result = await db.appointments.getMyBookings(
      userId: userId,
      status: status,
      page: page,
      pageSize: pageSize,
      asConsultant: role == 'consultant',
    );

    // Serialize response
    return Response.json(
      body: serializeForJson(result),
    );
  } catch (e, stackTrace) {
    SentryLogger.error(
      'Error in GET /api/appointments',
      context: 'AppointmentsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch bookings'}
      },
    );
  }
}

/// POST /api/appointments
///
/// Create a new booking request.
///
/// Request body for CONSULTATION:
/// ```json
/// {
///   "type": "CONSULTATION",
///   "consultantProfileId": "uuid",
///   "planId": "uuid",
///   "slotStartTimes": ["2024-01-15T09:00:00Z", ...],
///   "message": "Optional message"
/// }
/// ```
///
/// Request body for SUBSCRIPTION:
/// ```json
/// {
///   "type": "SUBSCRIPTION",
///   "consultantProfileId": "uuid",
///   "planId": "uuid",
///   "schedulingPeriodStart": "2024-01-15T00:00:00Z",
///   "schedulingPeriodEnd": "2024-02-15T00:00:00Z",
///   "timezone": "Asia/Kolkata",
///   "message": "Optional message"
/// }
/// ```
Future<Response> _handleCreateBooking(RequestContext context) async {
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

    // Parse request body
    final body = await context.request.body();
    final data = jsonDecode(body) as Map<String, dynamic>;

    // Validate required fields
    final type = data['type'] as String?;
    final consultantProfileId = data['consultantProfileId'] as String?;
    final planId = data['planId'] as String?;

    if (type == null || consultantProfileId == null || planId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Missing required fields: type, '
                'consultantProfileId, planId',
          },
        },
      );
    }

    final db = context.read<DatabaseClient>();

    // Get the consultee profile for the current user
    final consulteeProfile = await db.consulteeProfiles.findByUserId(userId);
    if (consulteeProfile == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'User does not have a consultee profile',
          },
        },
      );
    }

    final requestedById = consulteeProfile['id'] as String;
    final message = data['message'] as String?;

    Map<String, dynamic> booking;

    if (type == 'CONSULTATION') {
      // Validate consultation-specific fields
      final slotStartTimesRaw = data['slotStartTimes'] as List<dynamic>?;
      if (slotStartTimesRaw == null || slotStartTimesRaw.isEmpty) {
        return Response.json(
          statusCode: HttpStatus.badRequest,
          body: {
            'error': {
              'message': 'Consultation requires slotStartTimes array',
            },
          },
        );
      }

      // Parse slot times
      final slotStartTimes = <DateTime>[];
      for (final timeStr in slotStartTimesRaw) {
        try {
          slotStartTimes.add(DateTime.parse(timeStr.toString()));
        } catch (e) {
          return Response.json(
            statusCode: HttpStatus.badRequest,
            body: {
              'error': {
                'message': 'Invalid date format in slotStartTimes',
              },
            },
          );
        }
      }

      // Create consultation booking
      booking = await db.appointments.createConsultationBooking(
        consultantProfileId: consultantProfileId,
        planId: planId,
        requestedById: requestedById,
        userId: userId, // User ID for junction table
        slotStartTimes: slotStartTimes,
        message: message,
      );
    } else if (type == 'SUBSCRIPTION') {
      // Validate subscription-specific fields
      final periodStartStr = data['schedulingPeriodStart'] as String?;

      if (periodStartStr == null) {
        return Response.json(
          statusCode: HttpStatus.badRequest,
          body: {
            'error': {
              'message': 'Subscription requires schedulingPeriodStart',
            },
          },
        );
      }

      DateTime schedulingPeriodStart;

      try {
        schedulingPeriodStart = DateTime.parse(periodStartStr);
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

      final timezone = data['timezone'] as String?;

      // Create subscription booking (end date is auto-calculated from plan)
      booking = await db.appointments.createSubscriptionBooking(
        consultantProfileId: consultantProfileId,
        planId: planId,
        requestedById: requestedById,
        schedulingPeriodStart: schedulingPeriodStart,
        timezone: timezone,
        message: message,
      );
    } else {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Invalid type. Must be CONSULTATION or SUBSCRIPTION',
          },
        },
      );
    }

    return Response.json(
      statusCode: HttpStatus.created,
      body: serializeForJson(booking),
    );
  } on DuplicateBookingException catch (e) {
    // 409 Conflict for duplicate bookings
    return Response.json(
      statusCode: HttpStatus.conflict,
      body: {
        'error': {
          'code': 'DUPLICATE_BOOKING',
          'message': e.message,
        },
      },
    );
  } on SlotConflictException catch (e) {
    // 409 Conflict for slot conflicts
    return Response.json(
      statusCode: HttpStatus.conflict,
      body: {
        'error': {
          'code': 'SLOT_CONFLICT',
          'message': e.message,
          'conflictingSlots': e.conflictingSlotTimes,
        },
      },
    );
  } catch (e, stackTrace) {
    SentryLogger.error(
      'Error in POST /api/appointments',
      context: 'AppointmentsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    // Extract meaningful error message
    final errorMessage = e.toString();

    // Handle specific errors with appropriate status codes
    if (errorMessage.contains('not found')) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': errorMessage}
        },
      );
    }

    if (errorMessage.contains('permission') ||
        errorMessage.contains('unauthorized')) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {'message': errorMessage}
        },
      );
    }

    // Return a sanitized error message to avoid information disclosure
    // Full error details are already logged above
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {
          'message': 'An unexpected error occurred while creating the booking.',
          'details': 'Check server logs for more information',
        },
      },
    );
  }
}
