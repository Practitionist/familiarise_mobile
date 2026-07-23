import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/consultants/:id/availability
///
/// Returns available time slots for a specific consultant.
///
/// Query Parameters:
/// - startDate: Start of the date range (ISO8601, required)
/// - endDate: End of the date range (ISO8601, required)
/// - planId: The plan ID to determine slot duration (optional)
/// - planType: 'consultation' or 'subscription' (optional, defaults to 'consultation')
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
///           "isTentative": false,
///           "isPast": false
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

    // Parse optional planId and planType to determine slot duration
    final planId = params['planId'];
    final planType = params['planType'] ?? 'consultation';
    var durationMinutes = 60; // Default 1 hour

    if (planId != null) {
      // Fetch the plan to get duration
      final planDuration = await _getPlanDuration(
        db.prisma,
        planId,
        planType,
      );
      if (planDuration != null) {
        durationMinutes = planDuration;
      }
    }

    // Fetch availability with plan duration
    final slots = await db.slots.getAvailability(
      consultantProfileId: consultantProfileId,
      startDate: startDate,
      endDate: endDate,
      durationMinutes: durationMinutes,
    );

    // Group slots by date
    final groupedAvailability = db.slots.groupSlotsByDate(slots);

    return Response.json(
      body: {
        'availability': groupedAvailability,
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/consultants/$id/availability',
      context: 'ConsultantAvailabilityRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch availability'},
      },
    );
  }
}

/// Fetch plan duration in minutes from the database
///
/// Returns the duration in minutes, or null if plan not found.
/// For ConsultationPlan, uses `durationInHours`.
/// For SubscriptionPlan/ClassPlan/WebinarPlan, uses `sessionDurationInHours`.
Future<int?> _getPlanDuration(
  PrismaClient prisma,
  String planId,
  String planType,
) async {
  try {
    final String modelName;
    final String durationField;
    final Map<String, dynamic>? result;

    switch (planType.toLowerCase()) {
      case 'subscription':
        modelName = 'SubscriptionPlan';
        durationField = 'sessionDurationInHours';
        result = await prisma.subscriptionPlan.findFirstProjected(
          where: SubscriptionPlanWhereInput(id: StringFilter(equals: planId)),
          select: const [SubscriptionPlanScalarField.sessionDurationInHours],
        );
      case 'class':
        modelName = 'ClassPlan';
        durationField = 'sessionDurationInHours';
        result = await prisma.classPlan.findFirstProjected(
          where: ClassPlanWhereInput(id: StringFilter(equals: planId)),
          select: const [ClassPlanScalarField.sessionDurationInHours],
        );
      case 'webinar':
        modelName = 'WebinarPlan';
        durationField = 'durationInHours';
        result = await prisma.webinarPlan.findFirstProjected(
          where: WebinarPlanWhereInput(id: StringFilter(equals: planId)),
          select: const [WebinarPlanScalarField.durationInHours],
        );
      case 'consultation':
        modelName = 'ConsultationPlan';
        durationField = 'durationInHours';
        result = await prisma.consultationPlan.findFirstProjected(
          where: ConsultationPlanWhereInput(id: StringFilter(equals: planId)),
          select: const [ConsultationPlanScalarField.durationInHours],
        );
      default:
        await SentryLogger.warning(
          'Unknown plan type: $planType, falling back to ConsultationPlan',
          context: 'ConsultantAvailabilityRoute',
        );
        modelName = 'ConsultationPlan';
        durationField = 'durationInHours';
        result = await prisma.consultationPlan.findFirstProjected(
          where: ConsultationPlanWhereInput(id: StringFilter(equals: planId)),
          select: const [ConsultationPlanScalarField.durationInHours],
        );
    }

    if (result == null) {
      await SentryLogger.warning(
        'Plan not found: model=$modelName, id=$planId',
        context: 'ConsultantAvailabilityRoute',
      );
      return null;
    }

    final durationHours = result[durationField];
    if (durationHours == null) return null;

    // Convert hours to minutes
    return ((durationHours as num) * 60).round();
  } catch (e) {
    await SentryLogger.warning(
      'Failed to fetch plan duration: $e',
      context: 'ConsultantAvailabilityRoute',
    );
    return null;
  }
}
