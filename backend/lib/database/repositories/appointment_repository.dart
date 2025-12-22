import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Repository for appointment/booking operations using Prisma ORM
///
/// Handles creation, retrieval, and management of appointments
/// for both consultation and subscription bookings.
///
/// Uses JsonQueryBuilder for type-safe queries, eliminating SQL injection risks.
class AppointmentRepository extends BaseRepository {
  /// Create an appointment repository with the given executor
  AppointmentRepository(super._executor);

  final _uuid = const Uuid();

  /// Create a consultation booking request
  ///
  /// Creates a Consultation record with PENDING status.
  /// For consultation bookings, also creates the Appointment and
  /// SlotOfAppointment records.
  Future<Map<String, dynamic>> createConsultationBooking({
    required String consultantProfileId,
    required String planId,
    required String requestedById,
    required List<DateTime> slotStartTimes,
    String? message,
  }) async {
    // Get the plan to verify it exists and get duration
    final planQuery = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.findFirst)
        .where({
      'id': planId,
      'consultantProfileId': consultantProfileId,
    }).build();

    final plan = await executeQueryAsSingleMap(planQuery);

    if (plan == null) {
      throw Exception('Consultation plan not found');
    }

    final durationHours = (plan['durationInHours'] as num).toDouble();
    final durationMinutes = (durationHours * 60).round();
    final now = nowIso8601;

    // Create the booking within a transaction
    return executeInTransaction((txn) async {
      // Create Consultation record
      final consultationId = _uuid.v4();
      final consultationQuery = JsonQueryBuilder()
          .model('Consultation')
          .action(QueryAction.create)
          .data({
        'id': consultationId,
        'consultationPlanId': planId,
        'requestedById': requestedById,
        'requestStatus': 'PENDING',
        'requestNotes': message,
        'bookingSource': 'REQUEST_SUBMITTED',
        'requestedAt': now,
        'createdAt': now,
        'updatedAt': now,
      }).build();
      await txn.executeMutation(consultationQuery);

      // Create Appointment record
      final appointmentId = _uuid.v4();
      final appointmentQuery = JsonQueryBuilder()
          .model('Appointment')
          .action(QueryAction.create)
          .data({
        'id': appointmentId,
        'appointmentType': 'CONSULTATION',
        'consultationId': consultationId,
        'createdAt': now,
        'updatedAt': now,
      }).build();
      await txn.executeMutation(appointmentQuery);

      // Create SlotOfAppointment records using createMany
      final slotsData = slotStartTimes.map((slotStart) {
        final slotEnd = slotStart.add(Duration(minutes: durationMinutes));
        return {
          'id': _uuid.v4(),
          'appointmentId': appointmentId,
          'startsAt': slotStart.toUtc().toIso8601String(),
          'endsAt': slotEnd.toUtc().toIso8601String(),
          'isTentative': true,
          'createdAt': now,
          'updatedAt': now,
        };
      }).toList();

      final slotsQuery = JsonQueryBuilder()
          .model('SlotOfAppointment')
          .action(QueryAction.createMany)
          .data({'data': slotsData}).build();
      await txn.executeMutation(slotsQuery);

      // Link users to slots via junction table
      // Note: This still uses raw SQL as there's no ORM support for junction
      // tables without model definitions. This is parameterized and safe.
      for (final slotData in slotsData) {
        await txn.executeMutationRaw(
          r'INSERT INTO "_SlotOfAppointmentToUser" ("A", "B") VALUES ($1, $2)',
          [slotData['id'], requestedById],
        );
      }

      // Fetch and return the created booking
      final resultQuery = JsonQueryBuilder()
          .model('Consultation')
          .action(QueryAction.findUnique)
          .where({'id': consultationId}).build();

      final result = await txn.executeQueryAsSingleMap(resultQuery);
      if (result == null) {
        throw Exception('Failed to create consultation');
      }

      return {
        'id': result['id'],
        'bookingType': 'CONSULTATION',
        'status': result['requestStatus'],
        'message': result['requestNotes'],
        'createdAt': result['createdAt'],
      };
    });
  }

  /// Create a subscription booking request
  ///
  /// Creates a Subscription record with scheduling period.
  /// Slots are allocated by the consultant later.
  Future<Map<String, dynamic>> createSubscriptionBooking({
    required String consultantProfileId,
    required String planId,
    required String requestedById,
    required DateTime schedulingPeriodStart,
    required DateTime schedulingPeriodEnd,
    String? timezone,
    String? message,
  }) async {
    // Verify plan exists
    final planQuery = JsonQueryBuilder()
        .model('SubscriptionPlan')
        .action(QueryAction.findFirst)
        .where({
      'id': planId,
      'consultantProfileId': consultantProfileId,
    }).build();

    final plan = await executeQueryAsSingleMap(planQuery);

    if (plan == null) {
      throw Exception('Subscription plan not found');
    }

    final now = nowIso8601;
    final subscriptionId = _uuid.v4();

    // Create the subscription booking
    final createQuery = JsonQueryBuilder()
        .model('Subscription')
        .action(QueryAction.create)
        .data({
      'id': subscriptionId,
      'subscriptionPlanId': planId,
      'requestedById': requestedById,
      'requestStatus': 'PENDING',
      'schedulingPeriodStartsAt':
          schedulingPeriodStart.toUtc().toIso8601String(),
      'schedulingPeriodEndsAt': schedulingPeriodEnd.toUtc().toIso8601String(),
      'schedulingTimezone': timezone ?? 'Asia/Kolkata',
      'requestNotes': message,
      'bookingSource': 'REQUEST_SUBMITTED',
      'requestedAt': now,
      'createdAt': now,
      'updatedAt': now,
    }).build();

    await executeMutation(createQuery);

    return getBookingById(subscriptionId, type: 'SUBSCRIPTION');
  }

  /// Get user's bookings with pagination and optional status filter
  ///
  /// Uses ORM with parameterized queries - NO SQL INJECTION RISK.
  Future<Map<String, dynamic>> getMyBookings({
    required String userId,
    String? status,
    int page = 0,
    int pageSize = 20,
  }) async {
    final effectivePageSize = pageSize.clamp(1, 50);
    final offset = page * effectivePageSize;

    // Get consultee profile ID for the user
    final profileQuery = JsonQueryBuilder()
        .model('ConsulteeProfile')
        .action(QueryAction.findFirst)
        .where({'userId': userId}).build();

    final profile = await executeQueryAsSingleMap(profileQuery);

    if (profile == null) {
      return {
        'bookings': <Map<String, dynamic>>[],
        'pagination': {
          'page': page,
          'pageSize': effectivePageSize,
          'totalCount': 0,
          'totalPages': 0,
        },
      };
    }

    final consulteeProfileId = profile['id'] as String;

    // Build where clause - status is parameterized (SAFE from SQL injection)
    final where = <String, dynamic>{
      'requestedById': consulteeProfileId,
    };
    if (status != null) {
      where['requestStatus'] = status;
    }

    // Get consultations with ORM includes
    final consultationsQuery = JsonQueryBuilder()
        .model('Consultation')
        .action(QueryAction.findMany)
        .where(where)
        .include({
          'consultationPlan': {
            'include': {
              'consultantProfile': {
                'include': {
                  'user': true,
                },
              },
            },
          },
        })
        .orderBy({'createdAt': 'desc'})
        .take(effectivePageSize)
        .skip(offset)
        .build();

    final consultations = await executeQueryAsMaps(consultationsQuery);

    // Get total count
    final countQuery = JsonQueryBuilder()
        .model('Consultation')
        .action(QueryAction.count)
        .where(where)
        .build();

    final totalCount = await executeCount(countQuery);
    final totalPages = (totalCount / effectivePageSize).ceil();

    // Transform results to flat structure
    final bookings = consultations.map((c) {
      final plan = c['consultationPlan'] as Map<String, dynamic>?;
      final profile = plan?['consultantProfile'] as Map<String, dynamic>?;
      final user = profile?['user'] as Map<String, dynamic>?;

      return {
        'id': c['id'],
        'bookingType': 'CONSULTATION',
        'status': c['requestStatus'],
        'message': c['requestNotes'],
        'createdAt': c['createdAt'],
        'planId': plan?['id'],
        'planTitle': plan?['title'],
        'planPrice': plan?['price'],
        'planCurrency': plan?['priceCurrency'],
        'planDuration': plan?['durationInHours'],
        'consultantProfileId': profile?['id'],
        'consultantUserId': user?['id'],
        'consultantName': user?['name'],
        'consultantImage': user?['image'],
      };
    }).toList();

    return {
      'bookings': bookings,
      'pagination': {
        'page': page,
        'pageSize': effectivePageSize,
        'totalCount': totalCount,
        'totalPages': totalPages,
      },
    };
  }

  /// Get a booking by ID
  Future<Map<String, dynamic>> getBookingById(
    String id, {
    required String type,
  }) async {
    if (type == 'CONSULTATION') {
      return _getConsultationById(id);
    } else {
      return _getSubscriptionById(id);
    }
  }

  Future<Map<String, dynamic>> _getConsultationById(String id) async {
    // Get consultation with includes
    final query = JsonQueryBuilder()
        .model('Consultation')
        .action(QueryAction.findUnique)
        .where({'id': id}).include({
      'consultationPlan': {
        'include': {
          'consultantProfile': {
            'include': {
              'user': true,
            },
          },
        },
      },
    }).build();

    final result = await executeQueryAsSingleMap(query);

    if (result == null) {
      throw Exception('Consultation not found');
    }

    final plan = result['consultationPlan'] as Map<String, dynamic>?;
    final profile = plan?['consultantProfile'] as Map<String, dynamic>?;
    final user = profile?['user'] as Map<String, dynamic>?;

    final booking = {
      'id': result['id'],
      'bookingType': 'CONSULTATION',
      'status': result['requestStatus'],
      'message': result['requestNotes'],
      'createdAt': result['createdAt'],
      'updatedAt': result['updatedAt'],
      'planId': plan?['id'],
      'planTitle': plan?['title'],
      'planPrice': plan?['price'],
      'planCurrency': plan?['priceCurrency'],
      'planDuration': plan?['durationInHours'],
      'consultantProfileId': profile?['id'],
      'consultantUserId': user?['id'],
      'consultantName': user?['name'],
      'consultantImage': user?['image'],
    };

    // Get appointment and slots
    final appointmentQuery = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findFirst)
        .where({'consultationId': id}).include({'slots': true}).build();

    final appointment = await executeQueryAsSingleMap(appointmentQuery);

    if (appointment != null) {
      booking['appointmentId'] = appointment['id'];
      final slots = appointment['slots'] as List<dynamic>?;
      if (slots != null) {
        booking['slots'] = slots
            .map((s) => {
                  'id': s['id'],
                  'startsAt': s['startsAt'],
                  'endsAt': s['endsAt'],
                  'isTentative': s['isTentative'],
                })
            .toList();
      }
    }

    return booking;
  }

  Future<Map<String, dynamic>> _getSubscriptionById(String id) async {
    // Get subscription with includes
    final query = JsonQueryBuilder()
        .model('Subscription')
        .action(QueryAction.findUnique)
        .where({'id': id}).include({
      'subscriptionPlan': {
        'include': {
          'consultantProfile': {
            'include': {
              'user': true,
            },
          },
        },
      },
    }).build();

    final result = await executeQueryAsSingleMap(query);

    if (result == null) {
      throw Exception('Subscription not found');
    }

    final plan = result['subscriptionPlan'] as Map<String, dynamic>?;
    final profile = plan?['consultantProfile'] as Map<String, dynamic>?;
    final user = profile?['user'] as Map<String, dynamic>?;

    return {
      'id': result['id'],
      'bookingType': 'SUBSCRIPTION',
      'status': result['requestStatus'],
      'message': result['requestNotes'],
      'schedulingPeriodStartsAt': result['schedulingPeriodStartsAt'],
      'schedulingPeriodEndsAt': result['schedulingPeriodEndsAt'],
      'schedulingTimezone': result['schedulingTimezone'],
      'createdAt': result['createdAt'],
      'updatedAt': result['updatedAt'],
      'planId': plan?['id'],
      'planTitle': plan?['title'],
      'planPrice': plan?['price'],
      'planCurrency': plan?['priceCurrency'],
      'totalSessions': plan?['totalSessions'],
      'sessionDurationInHours': plan?['sessionDurationInHours'],
      'consultantProfileId': profile?['id'],
      'consultantUserId': user?['id'],
      'consultantName': user?['name'],
      'consultantImage': user?['image'],
    };
  }

  /// Cancel a booking
  ///
  /// Uses explicit model queries instead of dynamic table names (SAFE).
  Future<void> cancelBooking({
    required String id,
    required String type,
    required String userId,
    String? reason,
  }) async {
    // Get consultee profile ID
    final profileQuery = JsonQueryBuilder()
        .model('ConsulteeProfile')
        .action(QueryAction.findFirst)
        .where({'userId': userId}).build();

    final profile = await executeQueryAsSingleMap(profileQuery);

    if (profile == null) {
      throw Exception('User profile not found');
    }

    final consulteeProfileId = profile['id'] as String;
    final now = nowIso8601;

    // Use explicit model queries instead of dynamic table names
    if (type == 'CONSULTATION') {
      // Verify ownership
      final verifyQuery = JsonQueryBuilder()
          .model('Consultation')
          .action(QueryAction.findFirst)
          .where({
        'id': id,
        'requestedById': consulteeProfileId,
      }).build();

      final booking = await executeQueryAsSingleMap(verifyQuery);

      if (booking == null) {
        throw Exception('Booking not found or you do not have permission');
      }

      // Update status to cancelled
      final updateQuery = JsonQueryBuilder()
          .model('Consultation')
          .action(QueryAction.update)
          .where({'id': id}).data({
        'requestStatus': 'CANCELLED',
        'updatedAt': now,
      }).build();

      await executeMutation(updateQuery);
    } else if (type == 'SUBSCRIPTION') {
      // Verify ownership
      final verifyQuery = JsonQueryBuilder()
          .model('Subscription')
          .action(QueryAction.findFirst)
          .where({
        'id': id,
        'requestedById': consulteeProfileId,
      }).build();

      final booking = await executeQueryAsSingleMap(verifyQuery);

      if (booking == null) {
        throw Exception('Booking not found or you do not have permission');
      }

      // Update status to cancelled
      final updateQuery = JsonQueryBuilder()
          .model('Subscription')
          .action(QueryAction.update)
          .where({'id': id}).data({
        'requestStatus': 'CANCELLED',
        'updatedAt': now,
      }).build();

      await executeMutation(updateQuery);
    } else {
      throw Exception('Invalid booking type');
    }
  }

  /// Check if user is a participant in a booking
  Future<bool> isParticipant({
    required String bookingId,
    required String type,
    required String userId,
  }) async {
    // Get consultee profile ID
    final profileQuery = JsonQueryBuilder()
        .model('ConsulteeProfile')
        .action(QueryAction.findFirst)
        .where({'userId': userId}).build();

    final profile = await executeQueryAsSingleMap(profileQuery);

    if (profile == null) return false;

    final consulteeProfileId = profile['id'] as String;

    // Use explicit model queries instead of dynamic table names
    if (type == 'CONSULTATION') {
      final query = JsonQueryBuilder()
          .model('Consultation')
          .action(QueryAction.findFirst)
          .where({
        'id': bookingId,
        'requestedById': consulteeProfileId,
      }).build();

      final result = await executeQueryAsSingleMap(query);
      return result != null;
    } else {
      final query = JsonQueryBuilder()
          .model('Subscription')
          .action(QueryAction.findFirst)
          .where({
        'id': bookingId,
        'requestedById': consulteeProfileId,
      }).build();

      final result = await executeQueryAsSingleMap(query);
      return result != null;
    }
  }
}
