import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/utils/slot_lock.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Exception thrown when user already has an active booking with a consultant
class DuplicateBookingException implements Exception {
  final String message;
  DuplicateBookingException(this.message);

  @override
  String toString() => message;
}

/// Exception thrown when requested time slots conflict with existing bookings
class SlotConflictException implements Exception {
  final String message;
  final List<String> conflictingSlotTimes;

  SlotConflictException(this.message, [this.conflictingSlotTimes = const []]);

  @override
  String toString() => message;
}

/// Repository for appointment/booking operations using Prisma ORM
///
/// Handles creation, retrieval, and management of appointments
/// for both consultation and subscription bookings.
///
/// Uses JsonQueryBuilder for type-safe queries, eliminating SQL injection risks.
class AppointmentRepository extends BaseRepository {
  /// Month abbreviations for date formatting
  static const _months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];

  /// Create an appointment repository with the given executor
  AppointmentRepository(super._executor);

  final _uuid = const Uuid();

  /// Active statuses that block new bookings
  static const _activeStatuses = [
    'PENDING',
    'APPROVED',
    'APPROVED_PENDING_PAYMENT',
    'SCHEDULED',
  ];

  /// Check if user has an active consultation booking with a consultant
  ///
  /// Returns true if there's already a PENDING, APPROVED, or SCHEDULED
  /// consultation with this consultant.
  Future<bool> hasActiveConsultationBooking({
    required String consulteeProfileId,
    required String consultantProfileId,
  }) async {
    // We need to check consultations that have a plan belonging to this consultant
    // First get all consultation plan IDs for this consultant
    final plansQuery = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId}).select(
            {'id': true}).build();

    final plans = await executeQueryAsMaps(plansQuery);
    if (plans.isEmpty) return false;

    final planIds = plans.map((p) => p['id'] as String).toList();

    // Check if there's an active consultation with any of these plans
    final countQuery = JsonQueryBuilder()
        .model('Consultation')
        .action(QueryAction.count)
        .where({
      'requestedById': consulteeProfileId,
      'consultationPlanId': {'in': planIds},
      'requestStatus': {'in': _activeStatuses},
    }).build();

    final count = await executeCount(countQuery);
    return count > 0;
  }

  /// Check if user has an active subscription booking with a consultant
  ///
  /// Returns true if there's already a PENDING, APPROVED, or SCHEDULED
  /// subscription with this consultant.
  Future<bool> hasActiveSubscriptionBooking({
    required String consulteeProfileId,
    required String consultantProfileId,
  }) async {
    // Get all subscription plan IDs for this consultant
    final plansQuery = JsonQueryBuilder()
        .model('SubscriptionPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId}).select(
            {'id': true}).build();

    final plans = await executeQueryAsMaps(plansQuery);
    if (plans.isEmpty) return false;

    final planIds = plans.map((p) => p['id'] as String).toList();

    // Check if there's an active subscription with any of these plans
    final countQuery = JsonQueryBuilder()
        .model('Subscription')
        .action(QueryAction.count)
        .where({
      'requestedById': consulteeProfileId,
      'subscriptionPlanId': {'in': planIds},
      'requestStatus': {'in': _activeStatuses},
    }).build();

    final count = await executeCount(countQuery);
    return count > 0;
  }

  /// Check if any of the given time slots conflict with existing bookings
  ///
  /// Returns list of conflicting slot start times if any conflicts exist.
  /// Uses a two-step approach to avoid complex nested relation filters.
  Future<List<DateTime>> checkSlotConflicts({
    required String consultantProfileId,
    required List<DateTime> slotStartTimes,
    required int durationMinutes,
  }) async {
    // Step 1: Get all appointment IDs for this consultant
    // This avoids the complex nested relation filter that causes SQL errors
    final appointmentIds =
        await _getConsultantAppointmentIds(consultantProfileId);

    if (appointmentIds.isEmpty) {
      // No existing appointments for this consultant, so no conflicts possible
      return [];
    }

    final conflicts = <DateTime>[];
    final tentativeCutoff = DateTime.now()
        .subtract(const Duration(seconds: 60))
        .toUtc()
        .toIso8601String();

    for (final slotStart in slotStartTimes) {
      final slotEnd = slotStart.add(Duration(minutes: durationMinutes));

      // Step 2: Check for overlapping slots in those appointments
      // A slot overlaps if: existing.start < new.end AND existing.end > new.start
      final query = JsonQueryBuilder()
          .model('SlotOfAppointment')
          .action(QueryAction.count)
          .where({
        'appointmentId': FilterOperators.in_(appointmentIds),
        // Check either confirmed slots OR recent tentative slots
        'OR': [
          {'isTentative': false},
          {
            'AND': [
              {'isTentative': true},
              {
                'createdAt': {'gte': tentativeCutoff}
              },
            ],
          },
        ],
        'startsAt': {'lt': slotEnd.toUtc().toIso8601String()},
        'endsAt': {'gt': slotStart.toUtc().toIso8601String()},
      }).build();

      final count = await executeCount(query);
      if (count > 0) {
        conflicts.add(slotStart);
      }
    }

    return conflicts;
  }

  /// Get all appointment IDs for a consultant (from both consultations and subscriptions)
  Future<List<String>> _getConsultantAppointmentIds(
      String consultantProfileId) async {
    final appointmentIds = <String>[];

    // Get consultation plan IDs for this consultant
    final consultationPlansQuery = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId}).select(
            {'id': true}).build();
    final consultationPlans = await executeQueryAsMaps(consultationPlansQuery);
    final consultationPlanIds =
        consultationPlans.map((p) => p['id'] as String).toList();

    // Get subscription plan IDs for this consultant
    final subscriptionPlansQuery = JsonQueryBuilder()
        .model('SubscriptionPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId}).select(
            {'id': true}).build();
    final subscriptionPlans = await executeQueryAsMaps(subscriptionPlansQuery);
    final subscriptionPlanIds =
        subscriptionPlans.map((p) => p['id'] as String).toList();

    // Get consultation IDs for those plans
    if (consultationPlanIds.isNotEmpty) {
      final consultationsQuery = JsonQueryBuilder()
          .model('Consultation')
          .action(QueryAction.findMany)
          .where({
        'consultationPlanId': FilterOperators.in_(consultationPlanIds)
      }).select({'id': true}).build();
      final consultations = await executeQueryAsMaps(consultationsQuery);
      final consultationIds =
          consultations.map((c) => c['id'] as String).toList();

      // Get appointment IDs for those consultations
      if (consultationIds.isNotEmpty) {
        final appointmentsQuery = JsonQueryBuilder()
            .model('Appointment')
            .action(QueryAction.findMany)
            .where({
          'consultationId': FilterOperators.in_(consultationIds)
        }).select({'id': true}).build();
        final appointments = await executeQueryAsMaps(appointmentsQuery);
        appointmentIds.addAll(appointments.map((a) => a['id'] as String));
      }
    }

    // Get subscription IDs for those plans
    if (subscriptionPlanIds.isNotEmpty) {
      final subscriptionsQuery = JsonQueryBuilder()
          .model('Subscription')
          .action(QueryAction.findMany)
          .where({
        'subscriptionPlanId': FilterOperators.in_(subscriptionPlanIds)
      }).select({'id': true}).build();
      final subscriptions = await executeQueryAsMaps(subscriptionsQuery);
      final subscriptionIds =
          subscriptions.map((s) => s['id'] as String).toList();

      // Get appointment IDs for those subscriptions
      if (subscriptionIds.isNotEmpty) {
        final appointmentsQuery = JsonQueryBuilder()
            .model('Appointment')
            .action(QueryAction.findMany)
            .where({
          'subscriptionId': FilterOperators.in_(subscriptionIds)
        }).select({'id': true}).build();
        final appointments = await executeQueryAsMaps(appointmentsQuery);
        appointmentIds.addAll(appointments.map((a) => a['id'] as String));
      }
    }

    return appointmentIds;
  }

  /// Create a consultation booking request
  ///
  /// Creates a Consultation record with PENDING status.
  /// For consultation bookings, also creates the Appointment and
  /// SlotOfAppointment records.
  ///
  /// Throws:
  /// - [DuplicateBookingException] if user already has an active booking
  /// - [SlotConflictException] if any requested slots are already booked
  Future<Map<String, dynamic>> createConsultationBooking({
    required String consultantProfileId,
    required String planId,
    required String requestedById,
    required String userId, // User ID for junction table
    required List<DateTime> slotStartTimes,
    String? message,
  }) async {
    // Check for duplicate booking first
    final hasDuplicate = await hasActiveConsultationBooking(
      consulteeProfileId: requestedById,
      consultantProfileId: consultantProfileId,
    );

    if (hasDuplicate) {
      throw DuplicateBookingException(
        'You already have an active consultation request with this consultant. '
        'Please wait for it to be completed or cancel it before booking again.',
      );
    }

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

    // Acquire distributed locks for all slots
    // This prevents race conditions when multiple users book the same slot
    final locks = await SlotLock.acquireMultipleSlotLocks(
      consultantProfileId,
      slotStartTimes,
    );

    if (locks == null) {
      throw SlotConflictException(
        'This slot is being booked by another user. Please try again.',
        slotStartTimes.map((d) => d.toUtc().toIso8601String()).toList(),
      );
    }

    try {
      // Re-check for slot conflicts inside the lock
      // This ensures no one else booked while we were acquiring the lock
      final conflicts = await checkSlotConflicts(
        consultantProfileId: consultantProfileId,
        slotStartTimes: slotStartTimes,
        durationMinutes: durationMinutes,
      );

      if (conflicts.isNotEmpty) {
        // Return ISO8601 times for client-side formatting in local timezone
        final conflictTimes =
            conflicts.map((d) => d.toUtc().toIso8601String()).toList();

        throw SlotConflictException(
          'The following time slots are no longer available. '
          'Please select different times.',
          conflictTimes,
        );
      }

      final now = nowIso8601;

      // Create the booking within a transaction
      return await executeInTransaction((txn) async {
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
        // Note: For bulk operations with createMany, raw SQL is more efficient.
        // For single-record operations, use the v0.3.0 connect API:
        //   JsonQueryBuilder().model('SlotOfAppointment').action(QueryAction.create)
        //     .data({'id': slotId, 'users': {'connect': [{'id': userId}]}}).build()
        // Column B references users.id, so we use userId (not consulteeProfileId)
        for (final slotData in slotsData) {
          await txn.executeMutationRaw(
            r'INSERT INTO "_SlotOfAppointmentToUser" ("A", "B") VALUES ($1, $2)',
            [slotData['id'], userId],
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
    } finally {
      // Always release locks, even if transaction fails
      await SlotLock.releaseMultipleLocks(consultantProfileId, locks);
    }
  }

  /// Create a subscription booking request
  ///
  /// Creates a Subscription record with scheduling period.
  /// The end date is automatically calculated based on plan.durationInMonths.
  /// Slots are allocated by the consultant later.
  ///
  /// Throws:
  /// - [DuplicateBookingException] if user already has an active subscription
  Future<Map<String, dynamic>> createSubscriptionBooking({
    required String consultantProfileId,
    required String planId,
    required String requestedById,
    required DateTime schedulingPeriodStart,
    String? timezone,
    String? message,
  }) async {
    // Check for duplicate booking first
    final hasDuplicate = await hasActiveSubscriptionBooking(
      consulteeProfileId: requestedById,
      consultantProfileId: consultantProfileId,
    );

    if (hasDuplicate) {
      throw DuplicateBookingException(
        'You already have an active subscription with this consultant. '
        'Please wait for it to be completed or cancel it before subscribing again.',
      );
    }

    // Verify plan exists and get duration
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

    // Auto-calculate end date from plan duration, safely handling month-end dates
    final durationInMonths = (plan['durationInMonths'] as num?)?.toInt() ?? 1;
    // First get the target month (using day 1 to avoid invalid day errors)
    final targetMonth = DateTime(
      schedulingPeriodStart.year,
      schedulingPeriodStart.month + durationInMonths,
      1,
    );
    // Get the last valid day of the target month
    final lastDayOfMonth =
        DateTime(targetMonth.year, targetMonth.month + 1, 0).day;
    // Use the original day if valid, otherwise use the last day of the month
    final targetDay = schedulingPeriodStart.day > lastDayOfMonth
        ? lastDayOfMonth
        : schedulingPeriodStart.day;
    final schedulingPeriodEnd = DateTime(
      targetMonth.year,
      targetMonth.month,
      targetDay,
    );

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
      'schedulingTimezone': timezone ?? 'UTC',
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
  /// Fetches all five booking types: Consultations, Subscriptions,
  /// Webinars, Classes, Trials.
  /// Uses ORM with parameterized queries - NO SQL INJECTION RISK.
  Future<Map<String, dynamic>> getMyBookings({
    required String userId,
    String? status,
    bool asConsultant = false,
  }) async {
    // Collect all bookings from different types
    final allBookings = <Map<String, dynamic>>[];

    if (asConsultant) {
      // Consultant view: fetch bookings for plans owned by this consultant
      final consultantProfileQuery = JsonQueryBuilder()
          .model('ConsultantProfile')
          .action(QueryAction.findFirst)
          .where({'userId': userId}).build();

      final consultantProfile =
          await executeQueryAsSingleMap(consultantProfileQuery);
      final consultantProfileId = consultantProfile?['id'] as String?;

      if (consultantProfileId != null) {
        // 1. Fetch CONSULTATIONS
        final consultantBookings = await _fetchConsultantBookings(
          consultantProfileId: consultantProfileId,
          status: status,
        );
        allBookings.addAll(consultantBookings);

        // 2. Fetch SUBSCRIPTIONS
        final subscriptionBookings =
            await _fetchConsultantSubscriptionBookings(
          consultantProfileId: consultantProfileId,
          status: status,
        );
        allBookings.addAll(subscriptionBookings);

        // 3. Fetch WEBINARS
        final webinarBookings =
            await _fetchConsultantWebinarBookings(
          consultantProfileId: consultantProfileId,
          status: status,
        );
        allBookings.addAll(webinarBookings);

        // 4. Fetch CLASSES
        final classBookings =
            await _fetchConsultantClassBookings(
          consultantProfileId: consultantProfileId,
          status: status,
        );
        allBookings.addAll(classBookings);

        // 5. Fetch TRIAL SESSIONS
        final trialBookings =
            await _fetchConsultantTrialBookings(
          consultantProfileId: consultantProfileId,
          status: status,
        );
        allBookings.addAll(trialBookings);
      }
    } else {
      // Consultee view: existing behavior
      // Get consultee profile ID for the user
      final profileQuery = JsonQueryBuilder()
          .model('ConsulteeProfile')
          .action(QueryAction.findFirst)
          .where({'userId': userId}).build();

      final profile = await executeQueryAsSingleMap(profileQuery);
      final consulteeProfileId = profile?['id'] as String?;

      // 1. Fetch CONSULTATIONS (uses ConsulteeProfile)
      if (consulteeProfileId != null) {
        final consultationBookings = await _fetchConsultationBookings(
          consulteeProfileId: consulteeProfileId,
          status: status,
        );
        allBookings.addAll(consultationBookings);
      }

      // 2. Fetch SUBSCRIPTIONS (uses ConsulteeProfile)
      if (consulteeProfileId != null) {
        final subscriptionBookings = await _fetchSubscriptionBookings(
          consulteeProfileId: consulteeProfileId,
          status: status,
        );
        allBookings.addAll(subscriptionBookings);
      }

      // 3. Fetch WEBINARS (uses SlotOfAppointment enrollment)
      final webinarBookings = await _fetchWebinarBookings(
        userId: userId,
        status: status,
      );
      allBookings.addAll(webinarBookings);

      // 4. Fetch CLASSES (uses SlotOfAppointment enrollment)
      final classBookings = await _fetchClassBookings(
        userId: userId,
        status: status,
      );
      allBookings.addAll(classBookings);

      // 5. Fetch TRIAL SESSIONS (uses ConsulteeProfile)
      if (consulteeProfileId != null) {
        final trialBookings = await _fetchTrialBookings(
          consulteeProfileId: consulteeProfileId,
          status: status,
        );
        allBookings.addAll(trialBookings);
      }
    }

    // Sort all bookings by createdAt descending
    allBookings.sort((a, b) {
      final aDate =
          DateTime.tryParse(a['createdAt']?.toString() ?? '') ?? DateTime(1970);
      final bDate =
          DateTime.tryParse(b['createdAt']?.toString() ?? '') ?? DateTime(1970);
      return bDate.compareTo(aDate);
    });

    // Return all bookings (no pagination — mobile app displays all)
    return {
      'bookings': allBookings,
      'pagination': {
        'page': 0,
        'pageSize': allBookings.length,
        'totalCount': allBookings.length,
        'totalPages': 1,
      },
    };
  }

  /// Fetch bookings where the user is the consultant
  Future<List<Map<String, dynamic>>> _fetchConsultantBookings({
    required String consultantProfileId,
    String? status,
  }) async {
    // Get all consultation plans for this consultant
    final plansQuery = JsonQueryBuilder()
        .model('ConsultationPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .select({'id': true, 'title': true, 'price': true,
                 'priceCurrency': true, 'durationInHours': true})
        .build();

    final plans = await executeQueryAsMaps(plansQuery);
    if (plans.isEmpty) return [];

    final planIds = plans.map((p) => p['id'] as String).toList();
    final planLookup = <String, Map<String, dynamic>>{};
    for (final p in plans) {
      planLookup[p['id'] as String] = p;
    }

    final where = <String, dynamic>{
      'consultationPlanId': {'in': planIds},
    };
    if (status != null) {
      where['requestStatus'] = status;
    }

    final consultationsQuery = JsonQueryBuilder()
        .model('Consultation')
        .action(QueryAction.findMany)
        .where(where)
        .include({
          'requestedBy': {
            'include': {'user': true},
          },
        })
        .orderBy({'createdAt': 'desc'})
        .build();

    final consultations = await executeQueryAsMaps(consultationsQuery);
    if (consultations.isEmpty) return [];

    // Fetch appointments with slots
    final consultationIds =
        consultations.map((c) => c['id'] as String).toList();

    final appointmentsQuery = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findMany)
        .where({
          'consultationId': {'in': consultationIds},
        })
        .include({'slots': true})
        .build();

    final appointments = await executeQueryAsMaps(appointmentsQuery);
    final appointmentLookup = <String, Map<String, dynamic>>{};
    for (final a in appointments) {
      final cId = a['consultationId'] as String?;
      if (cId != null) appointmentLookup[cId] = a;
    }

    final bookings = <Map<String, dynamic>>[];
    for (final c in consultations) {
      final planId = c['consultationPlanId'] as String?;
      final plan = planId != null ? planLookup[planId] : null;
      final consultationId = c['id'] as String;
      final appointment = appointmentLookup[consultationId];
      final slots = appointment?['slots'] as List<dynamic>?;

      // Get consultee info
      final requestedBy =
          c['requestedBy'] as Map<String, dynamic>?;
      final consulteeUser =
          requestedBy?['user'] as Map<String, dynamic>?;

      bookings.add({
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
        'appointmentId': appointment?['id'],
        'consulteeProfileId': requestedBy?['id'],
        'consulteeUserId': consulteeUser?['id'],
        'consulteeName': consulteeUser?['name'],
        'consulteeImage': consulteeUser?['image'],
        if (slots != null && slots.isNotEmpty)
          'slots': _formatSlots(slots),
      });
    }

    return bookings;
  }

  /// Fetch subscription bookings where the user is the consultant
  Future<List<Map<String, dynamic>>> _fetchConsultantSubscriptionBookings({
    required String consultantProfileId,
    String? status,
  }) async {
    // Get all subscription plans for this consultant
    final plansQuery = JsonQueryBuilder()
        .model('SubscriptionPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .select({
          'id': true,
          'title': true,
          'price': true,
          'priceCurrency': true,
          'totalSessions': true,
          'sessionDurationInHours': true,
          'durationInMonths': true,
        })
        .build();

    final plans = await executeQueryAsMaps(plansQuery);
    if (plans.isEmpty) return [];

    final planIds = plans.map((p) => p['id'] as String).toList();
    final planLookup = <String, Map<String, dynamic>>{};
    for (final p in plans) {
      planLookup[p['id'] as String] = p;
    }

    // Fetch subscriptions for those plans with consultee info
    final where = <String, dynamic>{
      'subscriptionPlanId': {'in': planIds},
    };
    if (status != null) {
      where['requestStatus'] = status;
    }

    final subscriptionsQuery = JsonQueryBuilder()
        .model('Subscription')
        .action(QueryAction.findMany)
        .where(where)
        .include({
          'requestedBy': {
            'include': {'user': true},
          },
        })
        .orderBy({'createdAt': 'desc'})
        .build();

    final subscriptions = await executeQueryAsMaps(subscriptionsQuery);
    if (subscriptions.isEmpty) return [];

    final bookings = <Map<String, dynamic>>[];
    for (final s in subscriptions) {
      final planId = s['subscriptionPlanId'] as String?;
      final plan = planId != null ? planLookup[planId] : null;

      final requestedBy =
          s['requestedBy'] as Map<String, dynamic>?;
      final consulteeUser =
          requestedBy?['user'] as Map<String, dynamic>?;

      bookings.add({
        'id': s['id'],
        'bookingType': 'SUBSCRIPTION',
        'status': s['requestStatus'],
        'message': s['requestNotes'],
        'createdAt': s['createdAt'],
        'schedulingPeriodStartsAt': s['schedulingPeriodStartsAt'],
        'schedulingPeriodEndsAt': s['schedulingPeriodEndsAt'],
        'schedulingTimezone': s['schedulingTimezone'],
        'planId': plan?['id'],
        'planTitle': plan?['title'],
        'planPrice': plan?['price'],
        'planCurrency': plan?['priceCurrency'],
        'totalSessions': plan?['totalSessions'],
        'sessionDurationInHours': plan?['sessionDurationInHours'],
        'durationInMonths': plan?['durationInMonths'],
        'consulteeProfileId': requestedBy?['id'],
        'consulteeUserId': consulteeUser?['id'],
        'consulteeName': consulteeUser?['name'],
        'consulteeImage': consulteeUser?['image'],
      });
    }

    return bookings;
  }

  /// Fetch webinar bookings where the user is the consultant
  Future<List<Map<String, dynamic>>> _fetchConsultantWebinarBookings({
    required String consultantProfileId,
    String? status,
  }) async {
    // Get all webinar plans for this consultant
    final plansQuery = JsonQueryBuilder()
        .model('WebinarPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .select({
          'id': true,
          'title': true,
          'price': true,
          'priceCurrency': true,
          'durationInHours': true,
          'maxParticipants': true,
        })
        .build();

    final plans = await executeQueryAsMaps(plansQuery);
    if (plans.isEmpty) return [];

    final planIds = plans.map((p) => p['id'] as String).toList();
    final planLookup = <String, Map<String, dynamic>>{};
    for (final p in plans) {
      planLookup[p['id'] as String] = p;
    }

    // Get webinar records for those plans
    final webinarsQuery = JsonQueryBuilder()
        .model('Webinar')
        .action(QueryAction.findMany)
        .where({
          'webinarPlanId': {'in': planIds},
        })
        .build();

    final webinars = await executeQueryAsMaps(webinarsQuery);
    if (webinars.isEmpty) return [];

    // Apply status filter if provided
    final filteredWebinars = status != null
        ? webinars.where((w) {
            final webinarStatus = w['status'] as String?;
            return _matchesWebinarStatus(webinarStatus, status);
          }).toList()
        : webinars;

    if (filteredWebinars.isEmpty) return [];

    // Batch fetch appointments with slots + enrolled users for all webinars
    final webinarIds =
        filteredWebinars.map((w) => w['id'] as String).toList();

    final appointmentsQuery = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findMany)
        .where({
          'webinarId': {'in': webinarIds},
        })
        .include({
          'slots': {
            'include': {'user': true},
          },
        })
        .build();

    final appointments = await executeQueryAsMaps(appointmentsQuery);

    final appointmentLookup = <String, Map<String, dynamic>>{};
    for (final a in appointments) {
      final wId = a['webinarId'] as String?;
      if (wId != null) appointmentLookup[wId] = a;
    }

    // Build bookings (no consultee info - group program)
    final bookings = <Map<String, dynamic>>[];
    for (final w in filteredWebinars) {
      final webinarId = w['id'] as String;
      final planId = w['webinarPlanId'] as String?;
      final plan = planId != null ? planLookup[planId] : null;
      final appointment = appointmentLookup[webinarId];
      final slots = appointment?['slots'] as List<dynamic>?;
      final participantData = _extractParticipants(slots);

      bookings.add({
        'id': webinarId,
        'bookingType': 'WEBINAR',
        'status': _mapWebinarStatusToRequestStatus(
          w['status'] as String?,
        ),
        'appointmentId': appointment?['id'],
        'createdAt': appointment?['createdAt'] ?? w['createdAt'],
        'planId': plan?['id'],
        'planTitle': plan?['title'],
        'planPrice': plan?['price'],
        'planCurrency': plan?['priceCurrency'],
        'planDuration': plan?['durationInHours'],
        'maxParticipants': plan?['maxParticipants'],
        if (slots != null && slots.isNotEmpty)
          'slots': _formatSlots(slots),
        'participants': participantData['participants'],
        'participantCount': participantData['participantCount'],
      });
    }

    return bookings;
  }

  /// Fetch class bookings where the user is the consultant
  Future<List<Map<String, dynamic>>> _fetchConsultantClassBookings({
    required String consultantProfileId,
    String? status,
  }) async {
    // Get all class plans for this consultant
    final plansQuery = JsonQueryBuilder()
        .model('ClassPlan')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .select({
          'id': true,
          'title': true,
          'price': true,
          'priceCurrency': true,
          'totalSessions': true,
          'sessionDurationInHours': true,
          'durationInMonths': true,
          'maxParticipants': true,
        })
        .build();

    final plans = await executeQueryAsMaps(plansQuery);
    if (plans.isEmpty) return [];

    final planIds = plans.map((p) => p['id'] as String).toList();
    final planLookup = <String, Map<String, dynamic>>{};
    for (final p in plans) {
      planLookup[p['id'] as String] = p;
    }

    // Get class records for those plans
    final classesQuery = JsonQueryBuilder()
        .model('Class')
        .action(QueryAction.findMany)
        .where({
          'classPlanId': {'in': planIds},
        })
        .build();

    final classes = await executeQueryAsMaps(classesQuery);
    if (classes.isEmpty) return [];

    // Apply status filter if provided
    final filteredClasses = status != null
        ? classes.where((c) {
            final classStatus = c['status'] as String?;
            return _matchesClassStatus(classStatus, status);
          }).toList()
        : classes;

    if (filteredClasses.isEmpty) return [];

    // Batch fetch appointments with slots + enrolled users for all classes
    final classIds =
        filteredClasses.map((c) => c['id'] as String).toList();

    final appointmentsQuery = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findMany)
        .where({
          'classId': {'in': classIds},
        })
        .include({
          'slots': {
            'include': {'user': true},
          },
        })
        .build();

    final appointments = await executeQueryAsMaps(appointmentsQuery);
    // Classes can have multiple appointments; group by classId
    final appointmentsByClass =
        <String, List<Map<String, dynamic>>>{};
    for (final a in appointments) {
      final cId = a['classId'] as String?;
      if (cId != null) {
        appointmentsByClass
            .putIfAbsent(cId, () => [])
            .add(a);
      }
    }

    // Build bookings (no consultee info - group program)
    final bookings = <Map<String, dynamic>>[];
    for (final c in filteredClasses) {
      final classId = c['id'] as String;
      final planId = c['classPlanId'] as String?;
      final plan = planId != null ? planLookup[planId] : null;
      final classAppointments =
          appointmentsByClass[classId] ?? [];

      // Collect all slots from all appointments
      final allSlots = <dynamic>[];
      for (final a in classAppointments) {
        final slots = a['slots'] as List<dynamic>?;
        if (slots != null) allSlots.addAll(slots);
      }

      final participantData = _extractParticipantsFromAppointments(
        classAppointments,
      );

      bookings.add({
        'id': classId,
        'bookingType': 'CLASS',
        'status': _mapClassStatusToRequestStatus(
          c['status'] as String?,
        ),
        'appointmentId': classAppointments.isNotEmpty
            ? classAppointments.first['id']
            : null,
        'createdAt': classAppointments.isNotEmpty
            ? (classAppointments.first['createdAt'] ??
                c['createdAt'])
            : c['createdAt'],
        'schedulingPeriodStartsAt':
            c['schedulingPeriodStartsAt'],
        'schedulingPeriodEndsAt':
            c['schedulingPeriodEndsAt'],
        'schedulingTimezone': c['schedulingTimezone'],
        'planId': plan?['id'],
        'planTitle': plan?['title'],
        'planPrice': plan?['price'],
        'planCurrency': plan?['priceCurrency'],
        'totalSessions': plan?['totalSessions'],
        'sessionDurationInHours':
            plan?['sessionDurationInHours'],
        'durationInMonths': plan?['durationInMonths'],
        'maxParticipants': plan?['maxParticipants'],
        if (allSlots.isNotEmpty)
          'slots': _formatSlots(allSlots),
        'participants': participantData['participants'],
        'participantCount': participantData['participantCount'],
      });
    }

    return bookings;
  }

  /// Fetch trial session bookings for a consultant
  Future<List<Map<String, dynamic>>> _fetchConsultantTrialBookings({
    required String consultantProfileId,
    String? status,
  }) async {
    final where = <String, dynamic>{
      'consultantProfileId': consultantProfileId,
    };
    if (status != null) {
      final trialStatus = _mapRequestStatusToTrialStatus(status);
      if (trialStatus == null) return [];
      where['status'] = trialStatus;
    }

    final trialsQuery = JsonQueryBuilder()
        .model('TrialSession')
        .action(QueryAction.findMany)
        .where(where)
        .include({
          'subscriptionPlan': true,
          'consulteeProfile': {
            'include': {'user': true},
          },
        })
        .orderBy({'createdAt': 'desc'})
        .build();

    final trials = await executeQueryAsMaps(trialsQuery);
    if (trials.isEmpty) return [];

    // Batch fetch appointments with slots
    final appointmentIds = trials
        .map((t) => t['appointmentId'] as String?)
        .where((id) => id != null)
        .cast<String>()
        .toList();

    final appointmentLookup = <String, Map<String, dynamic>>{};
    if (appointmentIds.isNotEmpty) {
      final appointmentsQuery = JsonQueryBuilder()
          .model('Appointment')
          .action(QueryAction.findMany)
          .where({
            'id': {'in': appointmentIds},
          })
          .include({'slots': true})
          .build();
      final appointments = await executeQueryAsMaps(appointmentsQuery);
      for (final a in appointments) {
        appointmentLookup[a['id'] as String] = a;
      }
    }

    final bookings = <Map<String, dynamic>>[];
    for (final t in trials) {
      final plan = t['subscriptionPlan'] as Map<String, dynamic>?;
      final consulteeProfile =
          t['consulteeProfile'] as Map<String, dynamic>?;
      final consulteeUser =
          consulteeProfile?['user'] as Map<String, dynamic>?;
      final appointmentId = t['appointmentId'] as String?;
      final appointment =
          appointmentId != null ? appointmentLookup[appointmentId] : null;
      final slots = appointment?['slots'] as List<dynamic>?;

      bookings.add({
        'id': t['id'],
        'bookingType': 'TRIAL',
        'status': _mapTrialStatusToRequestStatus(t['status'] as String?),
        'message': t['notes'],
        'createdAt': t['createdAt'],
        'planId': plan?['id'],
        'planTitle': plan?['title'],
        'planPrice': 0,
        'planCurrency': plan?['priceCurrency'] ?? 'INR',
        'planDuration':
            (plan?['freeTrialDurationMinutes'] as num?)?.toDouble(),
        'freeTrialDurationMinutes': plan?['freeTrialDurationMinutes'],
        'consulteeProfileId': consulteeProfile?['id'],
        'consulteeUserId': consulteeUser?['id'],
        'consulteeName': consulteeUser?['name'],
        'consulteeImage': consulteeUser?['image'],
        if (appointmentId != null) 'appointmentId': appointmentId,
        if (slots != null && slots.isNotEmpty) 'slots': _formatSlots(slots),
      });
    }

    return bookings;
  }

  /// Fetch consultation bookings for a consultee
  Future<List<Map<String, dynamic>>> _fetchConsultationBookings({
    required String consulteeProfileId,
    String? status,
  }) async {
    final where = <String, dynamic>{
      'requestedById': consulteeProfileId,
    };
    if (status != null) {
      where['requestStatus'] = status;
    }

    final consultationsQuery = JsonQueryBuilder()
        .model('Consultation')
        .action(QueryAction.findMany)
        .where(where)
        .include({'consultationPlan': true}).orderBy(
            {'createdAt': 'desc'}).build();

    final consultations = await executeQueryAsMaps(consultationsQuery);
    if (consultations.isEmpty) return [];

    // Collect all consultant profile IDs for batch fetch
    final consultantProfileIds = <String>[];
    final consultationIds = <String>[];
    for (final c in consultations) {
      final plan = c['consultationPlan'] as Map<String, dynamic>?;
      final consultantProfileId = plan?['consultantProfileId'] as String?;
      if (consultantProfileId != null) {
        consultantProfileIds.add(consultantProfileId);
      }
      consultationIds.add(c['id'] as String);
    }

    // Batch fetch consultant info (1 query instead of N)
    final consultantLookup =
        await _batchFetchConsultantInfo(consultantProfileIds);

    // Batch fetch appointments with slots
    final appointmentsQuery = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findMany)
        .where({
      'consultationId': {'in': consultationIds}
    }).include({'slots': true}).build();
    final appointments = await executeQueryAsMaps(appointmentsQuery);
    final appointmentLookup = <String, Map<String, dynamic>>{};
    for (final a in appointments) {
      final consultationId = a['consultationId'] as String?;
      if (consultationId != null) {
        appointmentLookup[consultationId] = a;
      }
    }

    // Build bookings using lookup maps (no additional queries)
    final bookings = <Map<String, dynamic>>[];
    for (final c in consultations) {
      final plan = c['consultationPlan'] as Map<String, dynamic>?;
      final consultantProfileId = plan?['consultantProfileId'] as String?;
      final consultationId = c['id'] as String;

      final consultantInfo =
          _getConsultantInfoFromMap(consultantLookup, consultantProfileId);
      final appointment = appointmentLookup[consultationId];
      final slots = appointment?['slots'] as List<dynamic>?;

      bookings.add({
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
        ...consultantInfo,
        if (slots != null && slots.isNotEmpty) 'slots': _formatSlots(slots),
      });
    }

    return bookings;
  }

  /// Fetch subscription bookings for a consultee
  Future<List<Map<String, dynamic>>> _fetchSubscriptionBookings({
    required String consulteeProfileId,
    String? status,
  }) async {
    final where = <String, dynamic>{
      'requestedById': consulteeProfileId,
    };
    if (status != null) {
      where['requestStatus'] = status;
    }

    final subscriptionsQuery = JsonQueryBuilder()
        .model('Subscription')
        .action(QueryAction.findMany)
        .where(where)
        .include({'subscriptionPlan': true}).orderBy(
            {'createdAt': 'desc'}).build();

    final subscriptions = await executeQueryAsMaps(subscriptionsQuery);
    if (subscriptions.isEmpty) return [];

    // Collect all consultant profile IDs for batch fetch
    final consultantProfileIds = <String>[];
    for (final s in subscriptions) {
      final plan = s['subscriptionPlan'] as Map<String, dynamic>?;
      final consultantProfileId = plan?['consultantProfileId'] as String?;
      if (consultantProfileId != null) {
        consultantProfileIds.add(consultantProfileId);
      }
    }

    // Batch fetch consultant info (1 query instead of N)
    final consultantLookup =
        await _batchFetchConsultantInfo(consultantProfileIds);

    // Build bookings using lookup map (no additional queries)
    final bookings = <Map<String, dynamic>>[];
    for (final s in subscriptions) {
      final plan = s['subscriptionPlan'] as Map<String, dynamic>?;
      final consultantProfileId = plan?['consultantProfileId'] as String?;

      final consultantInfo =
          _getConsultantInfoFromMap(consultantLookup, consultantProfileId);

      bookings.add({
        'id': s['id'],
        'bookingType': 'SUBSCRIPTION',
        'status': s['requestStatus'],
        'message': s['requestNotes'],
        'createdAt': s['createdAt'],
        'schedulingPeriodStartsAt': s['schedulingPeriodStartsAt'],
        'schedulingPeriodEndsAt': s['schedulingPeriodEndsAt'],
        'schedulingTimezone': s['schedulingTimezone'],
        'planId': plan?['id'],
        'planTitle': plan?['title'],
        'planPrice': plan?['price'],
        'planCurrency': plan?['priceCurrency'],
        'totalSessions': plan?['totalSessions'],
        'sessionDurationInHours': plan?['sessionDurationInHours'],
        'durationInMonths': plan?['durationInMonths'],
        ...consultantInfo,
      });
    }

    return bookings;
  }

  /// Fetch webinar bookings for a user (via SlotOfAppointment enrollment)
  ///
  /// Users are enrolled in webinars through the _SlotOfAppointmentToUser junction
  /// table, NOT through Waitlist. Waitlist is only for users waiting for spots.
  Future<List<Map<String, dynamic>>> _fetchWebinarBookings({
    required String userId,
    String? status,
  }) async {
    // Query appointments where user is enrolled via SlotOfAppointment M2M relation
    // Using nested includes (v0.3.8 fix) - webinarPlan is properly nested in webinar
    final appointmentsQuery = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findMany)
        .where({
      'appointmentType': 'WEBINAR',
      'slots': FilterOperators.some({
        'user': FilterOperators.some({'id': userId}),
      }),
    }).include({
      'webinar': {
        'include': {'webinarPlan': true},
      },
      'slots': true,
    }).build();

    final appointments = await executeQueryAsMaps(appointmentsQuery);
    if (appointments.isEmpty) return [];

    // Apply status filter if provided
    final filteredAppointments = status != null
        ? appointments.where((apt) {
            final webinar = apt['webinar'] as Map<String, dynamic>?;
            final webinarStatus = webinar?['status'] as String?;
            return _matchesWebinarStatus(webinarStatus, status);
          }).toList()
        : appointments;

    if (filteredAppointments.isEmpty) return [];

    // Collect consultant profile IDs for batch fetch
    final consultantProfileIds = <String>[];
    for (final apt in filteredAppointments) {
      final webinar = apt['webinar'] as Map<String, dynamic>?;
      // Access webinarPlan directly from nested include (v0.3.8 fix)
      final plan = webinar?['webinarPlan'] as Map<String, dynamic>?;
      final id = plan?['consultantProfileId'] as String?;
      if (id != null && !consultantProfileIds.contains(id)) {
        consultantProfileIds.add(id);
      }
    }
    final consultantLookup =
        await _batchFetchConsultantInfo(consultantProfileIds);

    // Build bookings
    final bookings = <Map<String, dynamic>>[];
    for (final apt in filteredAppointments) {
      final webinar = apt['webinar'] as Map<String, dynamic>?;
      if (webinar == null) continue;

      final webinarStatus = webinar['status'] as String?;
      // Access webinarPlan directly from nested include (v0.3.8 fix)
      final plan = webinar['webinarPlan'] as Map<String, dynamic>?;
      final consultantProfileId = plan?['consultantProfileId'] as String?;
      final consultantInfo =
          _getConsultantInfoFromMap(consultantLookup, consultantProfileId);

      final slots = apt['slots'] as List<dynamic>?;

      bookings.add({
        'id': webinar['id'],
        'bookingType': 'WEBINAR',
        'status': _mapWebinarStatusToRequestStatus(webinarStatus),
        'appointmentId': apt['id'],
        'createdAt': apt['createdAt'] ?? webinar['createdAt'],
        'planId': plan?['id'],
        'planTitle': plan?['title'],
        'planPrice': plan?['price'],
        'planCurrency': plan?['priceCurrency'],
        'planDuration': plan?['durationInHours'],
        'maxParticipants': plan?['maxParticipants'],
        ...consultantInfo,
        if (slots != null && slots.isNotEmpty) 'slots': _formatSlots(slots),
      });
    }

    return bookings;
  }

  /// Fetch class bookings for a user (via SlotOfAppointment enrollment)
  ///
  /// Users are enrolled in classes through the _SlotOfAppointmentToUser junction
  /// table, NOT through Waitlist. Waitlist is only for users waiting for spots.
  Future<List<Map<String, dynamic>>> _fetchClassBookings({
    required String userId,
    String? status,
  }) async {
    // Query appointments where user is enrolled via SlotOfAppointment M2M
    // Using nested includes (v0.3.8 fix) - classPlan is properly nested in class
    final appointmentsQuery = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findMany)
        .where({
      'appointmentType': 'CLASS',
      'slots': FilterOperators.some({
        'user': FilterOperators.some({'id': userId}),
      }),
    }).include({
      'class': {
        'include': {'classPlan': true},
      },
      'slots': true,
    }).build();

    final appointments = await executeQueryAsMaps(appointmentsQuery);
    if (appointments.isEmpty) return [];

    // Apply status filter if provided
    final filteredAppointments = status != null
        ? appointments.where((apt) {
            final classRecord = apt['class'] as Map<String, dynamic>?;
            final classStatus = classRecord?['status'] as String?;
            return _matchesClassStatus(classStatus, status);
          }).toList()
        : appointments;

    if (filteredAppointments.isEmpty) return [];

    // Collect consultant profile IDs for batch fetch
    final consultantProfileIds = <String>[];
    for (final apt in filteredAppointments) {
      final classRecord = apt['class'] as Map<String, dynamic>?;
      // Access classPlan directly from nested include (v0.3.8 fix)
      final plan = classRecord?['classPlan'] as Map<String, dynamic>?;
      final id = plan?['consultantProfileId'] as String?;
      if (id != null && !consultantProfileIds.contains(id)) {
        consultantProfileIds.add(id);
      }
    }
    final consultantLookup =
        await _batchFetchConsultantInfo(consultantProfileIds);

    // Build bookings
    final bookings = <Map<String, dynamic>>[];
    for (final apt in filteredAppointments) {
      final classRecord = apt['class'] as Map<String, dynamic>?;
      if (classRecord == null) continue;

      final classStatus = classRecord['status'] as String?;
      // Access classPlan directly from nested include (v0.3.8 fix)
      final plan = classRecord['classPlan'] as Map<String, dynamic>?;
      final consultantProfileId = plan?['consultantProfileId'] as String?;
      final consultantInfo =
          _getConsultantInfoFromMap(consultantLookup, consultantProfileId);

      final slots = apt['slots'] as List<dynamic>?;

      bookings.add({
        'id': classRecord['id'],
        'bookingType': 'CLASS',
        'status': _mapClassStatusToRequestStatus(classStatus),
        'appointmentId': apt['id'],
        'createdAt': apt['createdAt'] ?? classRecord['createdAt'],
        'schedulingPeriodStartsAt': classRecord['schedulingPeriodStartsAt'],
        'schedulingPeriodEndsAt': classRecord['schedulingPeriodEndsAt'],
        'schedulingTimezone': classRecord['schedulingTimezone'],
        'planId': plan?['id'],
        'planTitle': plan?['title'],
        'planPrice': plan?['price'],
        'planCurrency': plan?['priceCurrency'],
        'totalSessions': plan?['totalSessions'],
        'sessionDurationInHours': plan?['sessionDurationInHours'],
        'durationInMonths': plan?['durationInMonths'],
        'maxParticipants': plan?['maxParticipants'],
        ...consultantInfo,
        if (slots != null && slots.isNotEmpty) 'slots': _formatSlots(slots),
      });
    }

    return bookings;
  }

  /// Fetch trial session bookings for a consultee
  Future<List<Map<String, dynamic>>> _fetchTrialBookings({
    required String consulteeProfileId,
    String? status,
  }) async {
    final where = <String, dynamic>{
      'consulteeProfileId': consulteeProfileId,
    };
    if (status != null) {
      // Map RequestStatus to TrialSessionStatus for filtering
      final trialStatus = _mapRequestStatusToTrialStatus(status);
      if (trialStatus == null) return []; // No matching trial status
      where['status'] = trialStatus;
    }

    final trialsQuery = JsonQueryBuilder()
        .model('TrialSession')
        .action(QueryAction.findMany)
        .where(where)
        .include({'subscriptionPlan': true})
        .orderBy({'createdAt': 'desc'})
        .build();

    final trials = await executeQueryAsMaps(trialsQuery);
    if (trials.isEmpty) return [];

    // Collect consultant profile IDs for batch fetch
    final consultantProfileIds = <String>[];
    for (final t in trials) {
      final consultantProfileId = t['consultantProfileId'] as String?;
      if (consultantProfileId != null) {
        consultantProfileIds.add(consultantProfileId);
      }
    }

    // Batch fetch consultant info
    final consultantLookup =
        await _batchFetchConsultantInfo(consultantProfileIds);

    // Batch fetch appointments with slots (trials may have linked appointments)
    final appointmentIds = trials
        .map((t) => t['appointmentId'] as String?)
        .where((id) => id != null)
        .cast<String>()
        .toList();

    final appointmentLookup = <String, Map<String, dynamic>>{};
    if (appointmentIds.isNotEmpty) {
      final appointmentsQuery = JsonQueryBuilder()
          .model('Appointment')
          .action(QueryAction.findMany)
          .where({
            'id': {'in': appointmentIds},
          })
          .include({'slots': true})
          .build();
      final appointments = await executeQueryAsMaps(appointmentsQuery);
      for (final a in appointments) {
        final appointmentId = a['id'] as String;
        appointmentLookup[appointmentId] = a;
      }
    }

    // Build bookings
    final bookings = <Map<String, dynamic>>[];
    for (final t in trials) {
      final plan = t['subscriptionPlan'] as Map<String, dynamic>?;
      final consultantProfileId = t['consultantProfileId'] as String?;
      final appointmentId = t['appointmentId'] as String?;

      final consultantInfo =
          _getConsultantInfoFromMap(consultantLookup, consultantProfileId);

      final appointment =
          appointmentId != null ? appointmentLookup[appointmentId] : null;
      final slots = appointment?['slots'] as List<dynamic>?;

      bookings.add({
        'id': t['id'],
        'bookingType': 'TRIAL',
        'status': _mapTrialStatusToRequestStatus(t['status'] as String?),
        'message': t['notes'],
        'createdAt': t['createdAt'],
        'planId': plan?['id'],
        'planTitle': plan?['title'],
        'planPrice': 0, // Trials are free
        'planCurrency': plan?['priceCurrency'] ?? 'INR',
        'planDuration': (plan?['freeTrialDurationMinutes'] as num?)
            ?.toDouble(),
        'freeTrialDurationMinutes': plan?['freeTrialDurationMinutes'],
        ...consultantInfo,
        if (appointmentId != null) 'appointmentId': appointmentId,
        if (slots != null && slots.isNotEmpty) 'slots': _formatSlots(slots),
      });
    }

    return bookings;
  }

  /// Map TrialSessionStatus to RequestStatus for consistent UI display
  String _mapTrialStatusToRequestStatus(String? trialStatus) {
    switch (trialStatus) {
      case 'PENDING':
        return 'PENDING';
      case 'SCHEDULED':
        return 'SCHEDULED';
      case 'COMPLETED':
        return 'COMPLETED';
      case 'CONVERTED':
        return 'COMPLETED';
      case 'CANCELLED':
        return 'CANCELLED';
      case 'REJECTED':
        return 'REJECTED';
      default:
        return 'PENDING';
    }
  }

  /// Map RequestStatus back to TrialSessionStatus for filtering
  String? _mapRequestStatusToTrialStatus(String requestStatus) {
    switch (requestStatus) {
      case 'PENDING':
        return 'PENDING';
      case 'APPROVED':
        return 'PENDING'; // Trials don't have APPROVED, map to PENDING
      case 'SCHEDULED':
        return 'SCHEDULED';
      case 'COMPLETED':
        return 'COMPLETED';
      case 'CANCELLED':
        return 'CANCELLED';
      case 'REJECTED':
        return 'REJECTED';
      default:
        return null;
    }
  }

  /// Batch fetch consultant profiles and user info for multiple IDs
  ///
  /// Returns a map of consultantProfileId -> consultant info for O(1) lookup.
  /// This eliminates N+1 query problems by fetching all profiles in one query.
  Future<Map<String, Map<String, dynamic>>> _batchFetchConsultantInfo(
    List<String> consultantProfileIds,
  ) async {
    if (consultantProfileIds.isEmpty) return {};

    // Remove duplicates and nulls
    final uniqueIds = consultantProfileIds.toSet().toList();

    final profilesQuery = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findMany)
        .where({
          'id': {'in': uniqueIds},
        })
        .include({'user': true})
        .build();

    final profiles = await executeQueryAsMaps(profilesQuery);

    // Build lookup map
    final result = <String, Map<String, dynamic>>{};
    for (final profile in profiles) {
      final id = profile['id'] as String?;
      if (id == null) continue;

      final user = profile['user'] as Map<String, dynamic>?;
      result[id] = {
        'consultantProfileId': id,
        'consultantUserId': user?['id'],
        'consultantName': user?['name'],
        'consultantImage': user?['image'],
      };
    }

    return result;
  }

  /// Get consultant info from lookup map, or return empty info if not found
  Map<String, dynamic> _getConsultantInfoFromMap(
    Map<String, Map<String, dynamic>> lookupMap,
    String? consultantProfileId,
  ) {
    if (consultantProfileId == null ||
        !lookupMap.containsKey(consultantProfileId)) {
      return {
        'consultantProfileId': null,
        'consultantUserId': null,
        'consultantName': null,
        'consultantImage': null,
      };
    }
    return lookupMap[consultantProfileId]!;
  }

  /// Format slots for response
  List<Map<String, dynamic>> _formatSlots(List<dynamic> slots) {
    return slots.cast<Map<String, dynamic>>().map((s) {
      return {
        'id': s['id'],
        'startsAt': s['startsAt'],
        'endsAt': s['endsAt'],
        'isTentative': s['isTentative'],
      };
    }).toList();
  }

  /// Extract unique participants from slot user data (M2M include).
  /// Returns up to 3 participant objects and total unique count.
  Map<String, dynamic> _extractParticipants(
    List<dynamic>? slots,
  ) {
    if (slots == null || slots.isEmpty) {
      return {
        'participants': <Map<String, dynamic>>[],
        'participantCount': 0,
      };
    }
    final seen = <String>{};
    final participants = <Map<String, dynamic>>[];
    for (final slot in slots) {
      final slotMap = slot as Map<String, dynamic>;
      final users = slotMap['user'] as List<dynamic>? ?? [];
      for (final user in users) {
        final u = user as Map<String, dynamic>;
        final id = u['id'] as String?;
        if (id != null && seen.add(id)) {
          if (participants.length < 3) {
            participants.add({
              'id': id,
              'name': u['name'],
              'image': u['image'],
            });
          }
        }
      }
    }
    return {
      'participants': participants,
      'participantCount': seen.length,
    };
  }

  /// Extract participants from multiple appointments' slots.
  Map<String, dynamic> _extractParticipantsFromAppointments(
    List<Map<String, dynamic>> appointments,
  ) {
    final allSlots = <dynamic>[];
    for (final a in appointments) {
      final slots = a['slots'] as List<dynamic>? ?? [];
      allSlots.addAll(slots);
    }
    return _extractParticipants(allSlots);
  }

  /// Check if webinar status matches the requested filter status
  bool _matchesWebinarStatus(String? webinarStatus, String requestStatus) {
    // Map webinar statuses to request statuses for filtering
    return _mapWebinarStatusToRequestStatus(webinarStatus) == requestStatus;
  }

  /// Check if class status matches the requested filter status
  bool _matchesClassStatus(String? classStatus, String requestStatus) {
    return _mapClassStatusToRequestStatus(classStatus) == requestStatus;
  }

  /// Map WebinarStatus to RequestStatus for consistency
  String _mapWebinarStatusToRequestStatus(String? webinarStatus) {
    switch (webinarStatus) {
      case 'SCHEDULED':
        return 'SCHEDULED';
      case 'IN_PROGRESS':
        return 'SCHEDULED';
      case 'COMPLETED':
        return 'COMPLETED';
      case 'CANCELLED':
        return 'CANCELLED';
      default:
        return 'PENDING';
    }
  }

  /// Map ClassStatus to RequestStatus for consistency
  String _mapClassStatusToRequestStatus(String? classStatus) {
    switch (classStatus) {
      case 'SCHEDULED':
        return 'SCHEDULED';
      case 'IN_PROGRESS':
        return 'SCHEDULED';
      case 'COMPLETED':
        return 'COMPLETED';
      case 'CANCELLED':
        return 'CANCELLED';
      default:
        return 'PENDING';
    }
  }

  /// Get a booking by ID
  Future<Map<String, dynamic>> getBookingById(
    String id, {
    required String type,
  }) async {
    if (type == 'CONSULTATION') {
      return _getConsultationById(id);
    } else if (type == 'SUBSCRIPTION') {
      return _getSubscriptionById(id);
    } else if (type == 'WEBINAR') {
      return _getWebinarById(id);
    } else if (type == 'CLASS') {
      return _getClassById(id);
    } else if (type == 'TRIAL') {
      return _getTrialById(id);
    } else {
      throw Exception('Invalid booking type: $type');
    }
  }

  Future<Map<String, dynamic>> _getConsultationById(String id) async {
    // Wrap in transaction for consistent reads
    return executeInTransaction((txn) async {
      // Single query with nested includes (nested includes fixed in v0.3.8+)
      final query = JsonQueryBuilder()
          .model('Consultation')
          .action(QueryAction.findUnique)
          .where({'id': id})
          .include({
            'consultationPlan': {
              'include': {
                'consultantProfile': {
                  'include': {'user': true},
                },
              },
            },
          })
          .build();

      final result = await executeQueryAsSingleMap(query, txn: txn);

      if (result == null) {
        throw Exception('Consultation not found');
      }

      final plan = result['consultationPlan'] as Map<String, dynamic>?;
      final profile =
          plan?['consultantProfile'] as Map<String, dynamic>?;
      final user = profile?['user'] as Map<String, dynamic>?;

      // Fetch consultee (requestedBy) profile and user
      final consulteeInfo = await _fetchConsulteeInfo(
        result['requestedById'] as String?,
        txn: txn,
      );
      final consulteeProfile = consulteeInfo.profile;
      final consulteeUser = consulteeInfo.user;

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
        'planDescription': plan?['description'],
        'planLanguage': plan?['language'],
        'planLevel': plan?['level'],
        'planPrerequisites': plan?['prerequisites'],
        'planMaterialProvided': plan?['materialProvided'],
        'planLearningOutcomes': plan?['learningOutcomes'],
        'consultantProfileId': profile?['id'],
        'consultantUserId': user?['id'],
        'consultantName': user?['name'],
        'consultantImage': user?['image'],
        'consulteeProfileId': consulteeProfile?['id'],
        'consulteeUserId': consulteeUser?['id'],
        'consulteeName': consulteeUser?['name'],
        'consulteeImage': consulteeUser?['image'],
        'cancellationReason': result['cancellationReason'],
        'cancellationNotes': result['cancellationNotes'],
        'cancelledAt': result['cancelledAt'],
        'cancelledBy': result['cancelledBy'],
      };

      // Get appointment with slots via nested include
      final appointmentQuery = JsonQueryBuilder()
          .model('Appointment')
          .action(QueryAction.findFirst)
          .where({'consultationId': id})
          .include({
            'slots': {
              'orderBy': {'startsAt': 'asc'},
            },
          })
          .build();

      final appointment =
          await executeQueryAsSingleMap(appointmentQuery, txn: txn);

      if (appointment != null) {
        booking['appointmentId'] = appointment['id'];

        final slots = appointment['slots'] as List<dynamic>? ?? [];
        if (slots.isNotEmpty) {
          booking['slots'] = slots
              .map((s) {
                final slot = s as Map<String, dynamic>;
                return {
                  'id': slot['id'],
                  'startsAt': slot['startsAt'],
                  'endsAt': slot['endsAt'],
                  'isTentative': slot['isTentative'],
                };
              })
              .toList();
        }
      }

      return booking;
    });
  }

  Future<Map<String, dynamic>> _getSubscriptionById(String id) async {
    // Wrap in transaction for consistent reads
    return executeInTransaction((txn) async {
      // Single query with nested includes (nested includes fixed in v0.3.8+)
      final query = JsonQueryBuilder()
          .model('Subscription')
          .action(QueryAction.findUnique)
          .where({'id': id})
          .include({
            'subscriptionPlan': {
              'include': {
                'consultantProfile': {
                  'include': {'user': true},
                },
              },
            },
          })
          .build();

      final result = await executeQueryAsSingleMap(query, txn: txn);

      if (result == null) {
        throw Exception('Subscription not found');
      }

      final plan = result['subscriptionPlan'] as Map<String, dynamic>?;
      final profile =
          plan?['consultantProfile'] as Map<String, dynamic>?;
      final user = profile?['user'] as Map<String, dynamic>?;

      // Fetch consultee (requestedBy) profile and user
      final consulteeInfo = await _fetchConsulteeInfo(
        result['requestedById'] as String?,
        txn: txn,
      );
      final consulteeProfile = consulteeInfo.profile;
      final consulteeUser = consulteeInfo.user;

      final booking = {
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
        'durationInMonths': plan?['durationInMonths'],
        'planDescription': plan?['description'],
        'planLanguage': plan?['language'],
        'planLevel': plan?['level'],
        'planPrerequisites': plan?['prerequisites'],
        'planMaterialProvided': plan?['materialProvided'],
        'planLearningOutcomes': plan?['learningOutcomes'],
        'meetingsPerWeek': plan?['callsPerWeek'],
        'totalHours': plan?['totalHours'],
        'consultantProfileId': profile?['id'],
        'consultantUserId': user?['id'],
        'consultantName': user?['name'],
        'consultantImage': user?['image'],
        'consulteeProfileId': consulteeProfile?['id'],
        'consulteeUserId': consulteeUser?['id'],
        'consulteeName': consulteeUser?['name'],
        'consulteeImage': consulteeUser?['image'],
        'cancellationReason': result['cancellationReason'],
        'cancellationNotes': result['cancellationNotes'],
        'cancelledAt': result['cancelledAt'],
        'cancelledBy': result['cancelledBy'],
      };

      return booking;
    });
  }

  Future<Map<String, dynamic>> _getWebinarById(String id) async {
    // Wrap in transaction for consistent reads
    return executeInTransaction((txn) async {
      // Get webinar with plan
      final query = JsonQueryBuilder()
          .model('Webinar')
          .action(QueryAction.findUnique)
          .where({'id': id}).include({'webinarPlan': true}).build();

      final result = await executeQueryAsSingleMap(query, txn: txn);

      if (result == null) {
        throw Exception('Webinar not found');
      }

      // Handle both nested and flattened plan fields
      final plan = result['webinarPlan'] as Map<String, dynamic>?;
      final consultantProfileId = plan?['consultantProfileId'] as String? ??
          result['webinarPlanConsultantProfileId'] as String?;

      // Fetch consultant profile and user
      Map<String, dynamic>? profile;
      Map<String, dynamic>? user;
      if (consultantProfileId != null) {
        final profileQuery = JsonQueryBuilder()
            .model('ConsultantProfile')
            .action(QueryAction.findUnique)
            .where({'id': consultantProfileId}).include({'user': true}).build();
        profile = await executeQueryAsSingleMap(profileQuery, txn: txn);

        user = profile?['user'] as Map<String, dynamic>?;
        if (user == null && profile != null) {
          final userName = profile['userName'] as String?;
          final userImage = profile['userImage'] as String?;
          if (userName != null || userImage != null) {
            user = {
              'id': profile['userId'],
              'name': userName,
              'image': userImage,
            };
          }
        }
      }

      final booking = <String, dynamic>{
        'id': result['id'],
        'bookingType': 'WEBINAR',
        'status': _mapWebinarStatusToRequestStatus(result['status'] as String?),
        'feedbackSummary': result['feedbackSummary'],
        'createdAt': result['createdAt'],
        'updatedAt': result['updatedAt'],
        'planId': plan?['id'] ?? result['webinarPlanId'],
        'planTitle': plan?['title'] ?? result['webinarPlanTitle'],
        'planPrice': plan?['price'] ?? result['webinarPlanPrice'],
        'planCurrency':
            plan?['priceCurrency'] ?? result['webinarPlanPriceCurrency'],
        'planDuration':
            plan?['durationInHours'] ?? result['webinarPlanDurationInHours'],
        'maxParticipants':
            plan?['maxParticipants'] ?? result['webinarPlanMaxParticipants'],
        'planDescription': plan?['description'],
        'planLanguage': plan?['language'],
        'planLevel': plan?['level'],
        'planPrerequisites': plan?['prerequisites'],
        'planMaterialProvided': plan?['materialProvided'],
        'planLearningOutcomes': plan?['learningOutcomes'],
        'planCertificateProvided': plan?['certificateProvided'] ?? false,
        'planRecordingEnabled': plan?['recordingEnabled'] ?? false,
        'consultantProfileId': profile?['id'],
        'consultantUserId': user?['id'],
        'consultantName': user?['name'],
        'consultantImage': user?['image'],
      };

      // Get appointment for this webinar
      final appointmentQuery = JsonQueryBuilder()
          .model('Appointment')
          .action(QueryAction.findFirst)
          .where({'webinarId': id}).build();

      final appointment =
          await executeQueryAsSingleMap(appointmentQuery, txn: txn);

      if (appointment != null) {
        booking['appointmentId'] = appointment['id'];

        // Fetch slots with users for participant extraction
        final slotsQuery = JsonQueryBuilder()
            .model('SlotOfAppointment')
            .action(QueryAction.findMany)
            .where({'appointmentId': appointment['id']})
            .include({'user': true})
            .orderBy({'startsAt': 'asc'})
            .build();

        final slots = await executeQueryAsMaps(slotsQuery, txn: txn);
        if (slots.isNotEmpty) {
          booking['slots'] = slots
              .map((s) => {
                    'id': s['id'],
                    'startsAt': s['startsAt'],
                    'endsAt': s['endsAt'],
                    'isTentative': s['isTentative'],
                  })
              .toList();

          // Extract participants from slots
          final participantData = _extractParticipants(slots);
          booking['participants'] = participantData['participants'];
          booking['participantCount'] =
              participantData['participantCount'];
        }
      }

      return booking;
    });
  }

  Future<Map<String, dynamic>> _getClassById(String id) async {
    // Wrap in transaction for consistent reads
    return executeInTransaction((txn) async {
      // Get class with plan
      final query = JsonQueryBuilder()
          .model('Class')
          .action(QueryAction.findUnique)
          .where({'id': id}).include({'classPlan': true}).build();

      final result = await executeQueryAsSingleMap(query, txn: txn);

      if (result == null) {
        throw Exception('Class not found');
      }

      // Handle both nested and flattened plan fields
      final plan = result['classPlan'] as Map<String, dynamic>?;
      final consultantProfileId = plan?['consultantProfileId'] as String? ??
          result['classPlanConsultantProfileId'] as String?;

      // Fetch consultant profile and user
      Map<String, dynamic>? profile;
      Map<String, dynamic>? user;
      if (consultantProfileId != null) {
        final profileQuery = JsonQueryBuilder()
            .model('ConsultantProfile')
            .action(QueryAction.findUnique)
            .where({'id': consultantProfileId}).include({'user': true}).build();
        profile = await executeQueryAsSingleMap(profileQuery, txn: txn);

        user = profile?['user'] as Map<String, dynamic>?;
        if (user == null && profile != null) {
          final userName = profile['userName'] as String?;
          final userImage = profile['userImage'] as String?;
          if (userName != null || userImage != null) {
            user = {
              'id': profile['userId'],
              'name': userName,
              'image': userImage,
            };
          }
        }
      }

      final booking = <String, dynamic>{
        'id': result['id'],
        'bookingType': 'CLASS',
        'status': _mapClassStatusToRequestStatus(result['status'] as String?),
        'feedbackSummary': result['feedbackSummary'],
        'schedulingPeriodStartsAt': result['schedulingPeriodStartsAt'],
        'schedulingPeriodEndsAt': result['schedulingPeriodEndsAt'],
        'schedulingTimezone': result['schedulingTimezone'],
        'createdAt': result['createdAt'],
        'updatedAt': result['updatedAt'],
        'planId': plan?['id'] ?? result['classPlanId'],
        'planTitle': plan?['title'] ?? result['classPlanTitle'],
        'planPrice': plan?['price'] ?? result['classPlanPrice'],
        'planCurrency':
            plan?['priceCurrency'] ?? result['classPlanPriceCurrency'],
        'totalSessions':
            plan?['totalSessions'] ?? result['classPlanTotalSessions'],
        'sessionDurationInHours': plan?['sessionDurationInHours'] ??
            result['classPlanSessionDurationInHours'],
        'maxParticipants':
            plan?['maxParticipants'] ?? result['classPlanMaxParticipants'],
        'planDescription': plan?['description'],
        'planLanguage': plan?['language'],
        'planLevel': plan?['level'],
        'planPrerequisites': plan?['prerequisites'],
        'planMaterialProvided': plan?['materialProvided'],
        'planLearningOutcomes': plan?['learningOutcomes'],
        'planCertificateProvided': plan?['certificateProvided'] ?? false,
        'planRecordingEnabled': plan?['recordingEnabled'] ?? false,
        'meetingsPerWeek': plan?['meetingsPerWeek'],
        'totalHours': plan?['totalHours'],
        'durationInMonths':
            plan?['durationInMonths'] ?? result['classPlanDurationInMonths'],
        'consultantProfileId': profile?['id'],
        'consultantUserId': user?['id'],
        'consultantName': user?['name'],
        'consultantImage': user?['image'],
      };

      // Get appointments for this class (can have multiple)
      final appointmentQuery = JsonQueryBuilder()
          .model('Appointment')
          .action(QueryAction.findMany)
          .where({'classId': id}).build();

      final appointments = await executeQueryAsMaps(appointmentQuery, txn: txn);

      if (appointments.isNotEmpty) {
        // Use first appointment for now (most common case)
        booking['appointmentId'] = appointments.first['id'];

        // Fetch all slots from all appointments (with users)
        final allSlots = <Map<String, dynamic>>[];
        for (final apt in appointments) {
          final slotsQuery = JsonQueryBuilder()
              .model('SlotOfAppointment')
              .action(QueryAction.findMany)
              .where({'appointmentId': apt['id']})
              .include({'user': true})
              .orderBy({'startsAt': 'asc'})
              .build();

          final slots = await executeQueryAsMaps(slotsQuery, txn: txn);
          allSlots.addAll(slots);
        }

        if (allSlots.isNotEmpty) {
          // Sort all slots by start time
          allSlots.sort((a, b) {
            final aStart = DateTime.tryParse(a['startsAt']?.toString() ?? '');
            final bStart = DateTime.tryParse(b['startsAt']?.toString() ?? '');

            // Handle null dates explicitly - push nulls to end
            if (aStart == null && bStart == null) return 0;
            if (aStart == null) return 1;
            if (bStart == null) return -1;

            return aStart.compareTo(bStart);
          });

          booking['slots'] = allSlots
              .map((s) => {
                    'id': s['id'],
                    'startsAt': s['startsAt'],
                    'endsAt': s['endsAt'],
                    'isTentative': s['isTentative'],
                  })
              .toList();

          // Extract participants from slots
          final participantData = _extractParticipants(allSlots);
          booking['participants'] = participantData['participants'];
          booking['participantCount'] =
              participantData['participantCount'];
        }
      }

      return booking;
    });
  }

  Future<Map<String, dynamic>> _getTrialById(String id) async {
    // Wrap in transaction for consistent reads
    return executeInTransaction((txn) async {
      // Get trial session with subscription plan
      final query = JsonQueryBuilder()
          .model('TrialSession')
          .action(QueryAction.findUnique)
          .where({'id': id})
          .include({'subscriptionPlan': true})
          .build();

      final result = await executeQueryAsSingleMap(query, txn: txn);

      if (result == null) {
        throw Exception('Trial session not found');
      }

      final plan = result['subscriptionPlan'] as Map<String, dynamic>?;
      final consultantProfileId = result['consultantProfileId'] as String?;

      // Fetch consultant profile and user
      Map<String, dynamic>? profile;
      Map<String, dynamic>? user;
      if (consultantProfileId != null) {
        final profileQuery = JsonQueryBuilder()
            .model('ConsultantProfile')
            .action(QueryAction.findUnique)
            .where({'id': consultantProfileId})
            .include({'user': true})
            .build();
        profile = await executeQueryAsSingleMap(
          profileQuery,
          txn: txn,
        );

        user = profile?['user'] as Map<String, dynamic>?;
        if (user == null && profile != null) {
          final userName = profile['userName'] as String?;
          final userImage = profile['userImage'] as String?;
          if (userName != null || userImage != null) {
            user = {
              'id': profile['userId'],
              'name': userName,
              'image': userImage,
            };
          }
        }
      }

      // Fetch consultee profile and user
      final consulteeInfo = await _fetchConsulteeInfo(
        result['consulteeProfileId'] as String?,
        txn: txn,
      );
      final consulteeProfile = consulteeInfo.profile;
      final consulteeUser = consulteeInfo.user;

      final booking = <String, dynamic>{
        'id': result['id'],
        'bookingType': 'TRIAL',
        'status': _mapTrialStatusToRequestStatus(
          result['status'] as String?,
        ),
        'message': result['notes'],
        'createdAt': result['createdAt'],
        'updatedAt': result['updatedAt'],
        'planId': plan?['id'] ?? result['subscriptionPlanId'],
        'planTitle': plan?['title'],
        'planPrice': 0, // Trials are free
        'planCurrency': plan?['priceCurrency'] ?? 'INR',
        'planDuration': plan?['freeTrialDurationMinutes'],
        'freeTrialDurationMinutes':
            plan?['freeTrialDurationMinutes'],
        'consultantProfileId': profile?['id'],
        'consultantUserId': user?['id'],
        'consultantName': user?['name'],
        'consultantImage': user?['image'],
        'consulteeProfileId': consulteeProfile?['id'],
        'consulteeUserId': consulteeUser?['id'],
        'consulteeName': consulteeUser?['name'],
        'consulteeImage': consulteeUser?['image'],
      };

      // Get linked appointment if exists
      final appointmentId =
          result['appointmentId'] as String?;
      if (appointmentId != null) {
        booking['appointmentId'] = appointmentId;

        // Fetch slots
        final slotsQuery = JsonQueryBuilder()
            .model('SlotOfAppointment')
            .action(QueryAction.findMany)
            .where({'appointmentId': appointmentId})
            .orderBy({'startsAt': 'asc'})
            .build();

        final slots = await executeQueryAsMaps(
          slotsQuery,
          txn: txn,
        );
        if (slots.isNotEmpty) {
          booking['slots'] = slots
              .map(
                (s) => {
                  'id': s['id'],
                  'startsAt': s['startsAt'],
                  'endsAt': s['endsAt'],
                  'isTentative': s['isTentative'],
                },
              )
              .toList();
        }
      }

      return booking;
    });
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

      // Update status to cancelled with metadata
      final updateQuery = JsonQueryBuilder()
          .model('Consultation')
          .action(QueryAction.update)
          .where({'id': id}).data({
        'requestStatus': 'CANCELLED',
        // cancellationReason is an enum column post schema-sync; free-text
        // from the client is stored in cancellationNotes instead
        'cancellationReason': 'OTHER',
        if (reason != null && reason.isNotEmpty) 'cancellationNotes': reason,
        'cancelledAt': now,
        'cancelledBy': userId,
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

      // Update status to cancelled with metadata
      final updateQuery = JsonQueryBuilder()
          .model('Subscription')
          .action(QueryAction.update)
          .where({'id': id}).data({
        'requestStatus': 'CANCELLED',
        // cancellationReason is an enum column post schema-sync; free-text
        // from the client is stored in cancellationNotes instead
        'cancellationReason': 'OTHER',
        if (reason != null && reason.isNotEmpty) 'cancellationNotes': reason,
        'cancelledAt': now,
        'cancelledBy': userId,
        'updatedAt': now,
      }).build();

      await executeMutation(updateQuery);
    } else if (type == 'TRIAL') {
      // Verify ownership via consultee profile
      final verifyQuery = JsonQueryBuilder()
          .model('TrialSession')
          .action(QueryAction.findFirst)
          .where({
        'id': id,
        'consulteeProfileId': consulteeProfileId,
      }).build();

      final booking = await executeQueryAsSingleMap(verifyQuery);

      if (booking == null) {
        throw Exception('Booking not found or you do not have permission');
      }

      // Update status to CANCELLED
      final updateQuery = JsonQueryBuilder()
          .model('TrialSession')
          .action(QueryAction.update)
          .where({'id': id}).data({
        'status': 'CANCELLED',
        'updatedAt': now,
      }).build();

      await executeMutation(updateQuery);
    } else {
      throw Exception('Invalid booking type');
    }
  }

  /// Respond to a pending booking request (consultant approve/reject).
  ///
  /// Approval moves the request to APPROVED_PENDING_PAYMENT — the consultee
  /// completes payment on the web, which schedules the appointment there.
  Future<Map<String, dynamic>> respondToBookingRequest({
    required String id,
    required String type,
    required String userId,
    required bool approve,
  }) async {
    // Resolve the consultant profile for authorization
    final profileQuery = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findFirst)
        .where({'userId': userId}).select({'id': true}).build();
    final profile = await executeQueryAsSingleMap(profileQuery);
    if (profile == null) {
      throw Exception('Booking not found or you do not have permission');
    }
    final consultantProfileId = profile['id'] as String;

    if (type != 'CONSULTATION' && type != 'SUBSCRIPTION') {
      throw Exception('Invalid booking type');
    }
    final isConsultation = type == 'CONSULTATION';
    final model = isConsultation ? 'Consultation' : 'Subscription';
    final planModel = isConsultation ? 'ConsultationPlan' : 'SubscriptionPlan';
    final planIdField =
        isConsultation ? 'consultationPlanId' : 'subscriptionPlanId';

    // The request must exist and still be pending
    final bookingQuery = JsonQueryBuilder()
        .model(model)
        .action(QueryAction.findFirst)
        .where({'id': id, 'requestStatus': 'PENDING'}).build();
    final booking = await executeQueryAsSingleMap(bookingQuery);
    if (booking == null) {
      throw Exception('Booking request not found or no longer pending');
    }

    // The plan must belong to the responding consultant
    final planQuery = JsonQueryBuilder()
        .model(planModel)
        .action(QueryAction.findFirst)
        .where({
      'id': booking[planIdField],
      'consultantProfileId': consultantProfileId,
    }).select({'id': true}).build();
    final plan = await executeQueryAsSingleMap(planQuery);
    if (plan == null) {
      throw Exception('Booking not found or you do not have permission');
    }

    final now = nowIso8601;
    final newStatus = approve ? 'APPROVED_PENDING_PAYMENT' : 'REJECTED';
    // Compare-and-set on the PENDING status so two concurrent responses
    // can't both win — the second writer matches zero rows.
    final updateQuery = JsonQueryBuilder()
        .model(model)
        .action(QueryAction.update)
        .where({'id': id, 'requestStatus': 'PENDING'}).data({
      'requestStatus': newStatus,
      'updatedAt': now,
    }).build();
    final affected = await executeMutationCounted(updateQuery);
    if (affected == 0) {
      throw Exception('Booking request not found or no longer pending');
    }

    return {'id': id, 'status': newStatus, 'respondedAt': now};
  }

  /// Reschedule a booking
  ///
  /// Marks slots as tentative and reverts status to PENDING.
  /// For subscriptions, optionally reschedule only a specific slot.
  ///
  /// Throws if:
  /// - Booking not found or user doesn't have permission
  /// - Booking is in terminal state (CANCELLED, COMPLETED, REJECTED, EXPIRED)
  /// - Appointment is within 24 hours
  Future<Map<String, dynamic>> rescheduleBooking({
    required String id,
    required String type,
    required String userId,
    String? slotId, // For individual session reschedule
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

    // Terminal statuses that cannot be rescheduled
    const terminalStatuses = ['CANCELLED', 'COMPLETED', 'REJECTED', 'EXPIRED'];

    if (type == 'CONSULTATION') {
      // Verify ownership and get booking
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

      final currentStatus = booking['requestStatus'] as String?;
      if (currentStatus != null && terminalStatuses.contains(currentStatus)) {
        throw Exception('Cannot reschedule a $currentStatus booking');
      }

      // Get appointment with slots
      final appointmentQuery = JsonQueryBuilder()
          .model('Appointment')
          .action(QueryAction.findFirst)
          .where({'consultationId': id}).include({'slots': true}).build();

      final appointment = await executeQueryAsSingleMap(appointmentQuery);

      if (appointment != null) {
        final slots = appointment['slots'] as List<dynamic>?;
        if (slots != null && slots.isNotEmpty) {
          // Check 24-hour restriction
          _check24HourRestriction(slots);

          // Mark all slots as tentative
          final appointmentId = appointment['id'] as String;
          await _markSlotsAsTentative(appointmentId, null);
        }
      }

      // Revert status to PENDING
      final now = nowIso8601;
      final updateQuery = JsonQueryBuilder()
          .model('Consultation')
          .action(QueryAction.update)
          .where({'id': id}).data({
        'requestStatus': 'PENDING',
        'updatedAt': now,
      }).build();

      await executeMutation(updateQuery);

      return getBookingById(id, type: 'CONSULTATION');
    } else if (type == 'SUBSCRIPTION') {
      // Verify ownership and get booking
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

      final currentStatus = booking['requestStatus'] as String?;
      if (currentStatus != null && terminalStatuses.contains(currentStatus)) {
        throw Exception('Cannot reschedule a $currentStatus booking');
      }

      // Get appointment with slots
      final appointmentQuery = JsonQueryBuilder()
          .model('Appointment')
          .action(QueryAction.findFirst)
          .where({'subscriptionId': id}).include({'slots': true}).build();

      final appointment = await executeQueryAsSingleMap(appointmentQuery);

      if (appointment != null) {
        final slots = appointment['slots'] as List<dynamic>?;
        if (slots != null && slots.isNotEmpty) {
          if (slotId != null) {
            // Individual session reschedule
            final targetSlot = slots.firstWhere(
              (s) =>
                  (s as Map<String, dynamic>)['id'] ==
                  slotId,
              orElse: () => null,
            );

            if (targetSlot == null) {
              throw Exception('Slot not found in this booking');
            }

            // Check 24-hour restriction for this specific slot
            _check24HourRestriction([targetSlot]);

            // Mark only this slot as tentative
            final appointmentId = appointment['id'] as String;
            await _markSlotsAsTentative(appointmentId, slotId);
          } else {
            // Full reschedule - mark all slots as tentative
            _check24HourRestriction(slots);

            final appointmentId = appointment['id'] as String;
            await _markSlotsAsTentative(appointmentId, null);

            // Revert status to PENDING for full reschedule
            final now = nowIso8601;
            final updateQuery = JsonQueryBuilder()
                .model('Subscription')
                .action(QueryAction.update)
                .where({'id': id}).data({
              'requestStatus': 'PENDING',
              'updatedAt': now,
            }).build();

            await executeMutation(updateQuery);
          }
        }
      }

      return getBookingById(id, type: 'SUBSCRIPTION');
    } else {
      throw Exception('Invalid booking type');
    }
  }

  /// Check if any slot is within 24 hours
  void _check24HourRestriction(List<dynamic> slots) {
    final now = DateTime.now().toUtc();
    for (final slot in slots) {
      // Handle both DateTime and String types (ORM may return either)
      final slotMap = slot as Map<String, dynamic>;
      final startsAtRaw = slotMap['startsAt'];
      DateTime? startsAt;
      if (startsAtRaw is DateTime) {
        startsAt = startsAtRaw;
      } else if (startsAtRaw is String) {
        startsAt = DateTime.parse(startsAtRaw);
      }

      if (startsAt != null) {
        final hoursUntil = startsAt.difference(now).inHours;
        if (hoursUntil < 24) {
          throw Exception(
            'Cannot reschedule within 24 hours of the appointment',
          );
        }
      }
    }
  }

  /// Mark slots as tentative
  /// If slotId is provided, only mark that slot; otherwise mark all slots
  Future<void> _markSlotsAsTentative(
    String appointmentId,
    String? slotId,
  ) async {
    final now = nowIso8601;

    if (slotId != null) {
      // Update specific slot
      final updateQuery = JsonQueryBuilder()
          .model('SlotOfAppointment')
          .action(QueryAction.update)
          .where({'id': slotId}).data({
        'isTentative': true,
        'updatedAt': now,
      }).build();

      await executeMutation(updateQuery);
    } else {
      // Update all slots for this appointment
      final updateQuery = JsonQueryBuilder()
          .model('SlotOfAppointment')
          .action(QueryAction.updateMany)
          .where({'appointmentId': appointmentId}).data({
        'isTentative': true,
        'updatedAt': now,
      }).build();

      await executeMutation(updateQuery);
    }
  }

  /// Check if user is a participant in a booking
  Future<bool> isParticipant({
    required String bookingId,
    required String type,
    required String userId,
  }) async {
    // First, check consultant access (consultant who owns the plan)
    final consultantProfileQuery = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findFirst)
        .where({'userId': userId}).build();

    final consultantProfile =
        await executeQueryAsSingleMap(consultantProfileQuery);

    if (consultantProfile != null) {
      final consultantProfileId = consultantProfile['id'] as String;
      var isConsultant = false;

      if (type == 'CONSULTATION') {
        final query = JsonQueryBuilder()
            .model('Consultation')
            .action(QueryAction.findFirst)
            .where({'id': bookingId})
            .include({'consultationPlan': true})
            .build();
        final result = await executeQueryAsSingleMap(query);
        if (result != null) {
          final plan = result['consultationPlan'] as Map<String, dynamic>?;
          final planConsultantId =
              plan?['consultantProfileId'] as String? ??
                  result['consultationPlanConsultantProfileId'] as String?;
          isConsultant = planConsultantId == consultantProfileId;
        }
      } else if (type == 'SUBSCRIPTION') {
        final query = JsonQueryBuilder()
            .model('Subscription')
            .action(QueryAction.findFirst)
            .where({'id': bookingId})
            .include({'subscriptionPlan': true})
            .build();
        final result = await executeQueryAsSingleMap(query);
        if (result != null) {
          final plan = result['subscriptionPlan'] as Map<String, dynamic>?;
          final planConsultantId =
              plan?['consultantProfileId'] as String? ??
                  result['subscriptionPlanConsultantProfileId'] as String?;
          isConsultant = planConsultantId == consultantProfileId;
        }
      } else if (type == 'WEBINAR') {
        final query = JsonQueryBuilder()
            .model('Webinar')
            .action(QueryAction.findFirst)
            .where({'id': bookingId})
            .include({'webinarPlan': true})
            .build();
        final result = await executeQueryAsSingleMap(query);
        if (result != null) {
          final plan = result['webinarPlan'] as Map<String, dynamic>?;
          final planConsultantId =
              plan?['consultantProfileId'] as String? ??
                  result['webinarPlanConsultantProfileId'] as String?;
          isConsultant = planConsultantId == consultantProfileId;
        }
      } else if (type == 'CLASS') {
        final query = JsonQueryBuilder()
            .model('Class')
            .action(QueryAction.findFirst)
            .where({'id': bookingId})
            .include({'classPlan': true})
            .build();
        final result = await executeQueryAsSingleMap(query);
        if (result != null) {
          final plan = result['classPlan'] as Map<String, dynamic>?;
          final planConsultantId =
              plan?['consultantProfileId'] as String? ??
                  result['classPlanConsultantProfileId'] as String?;
          isConsultant = planConsultantId == consultantProfileId;
        }
      } else if (type == 'TRIAL') {
        final query = JsonQueryBuilder()
            .model('TrialSession')
            .action(QueryAction.findFirst)
            .where({'id': bookingId})
            .include({'subscriptionPlan': true})
            .build();
        final result = await executeQueryAsSingleMap(query);
        if (result != null) {
          final plan = result['subscriptionPlan'] as Map<String, dynamic>?;
          final planConsultantId =
              plan?['consultantProfileId'] as String? ??
                  result['subscriptionPlanConsultantProfileId'] as String?;
          isConsultant = planConsultantId == consultantProfileId;
        }
      }

      if (isConsultant) return true;
    }

    // For CONSULTATION, SUBSCRIPTION, and TRIAL, check via consultee profile
    if (type == 'CONSULTATION' || type == 'SUBSCRIPTION' || type == 'TRIAL') {
      // Get consultee profile ID
      final profileQuery = JsonQueryBuilder()
          .model('ConsulteeProfile')
          .action(QueryAction.findFirst)
          .where({'userId': userId}).build();

      final profile = await executeQueryAsSingleMap(profileQuery);

      if (profile == null) return false;

      final consulteeProfileId = profile['id'] as String;

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
      } else if (type == 'TRIAL') {
        final query = JsonQueryBuilder()
            .model('TrialSession')
            .action(QueryAction.findFirst)
            .where({
          'id': bookingId,
          'consulteeProfileId': consulteeProfileId,
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

    // For WEBINAR and CLASS, check enrollment via SlotOfAppointment M2M
    if (type == 'WEBINAR' || type == 'CLASS') {
      // Get the appointment for this webinar/class
      final appointmentQuery = JsonQueryBuilder()
          .model('Appointment')
          .action(QueryAction.findFirst)
          .where({
        'appointmentType': type,
        if (type == 'WEBINAR') 'webinarId': bookingId,
        if (type == 'CLASS') 'classId': bookingId,
      }).build();

      final appointment = await executeQueryAsSingleMap(appointmentQuery);
      if (appointment == null) return false;

      // Check if user is enrolled via SlotOfAppointment
      // Use nested filter: slots.some(user.some(id == userId))
      final enrollmentQuery = JsonQueryBuilder()
          .model('Appointment')
          .action(QueryAction.findFirst)
          .where({
        'id': appointment['id'],
        'slots': FilterOperators.some({
          'user': FilterOperators.some({'id': userId}),
        }),
      }).build();

      final result = await executeQueryAsSingleMap(enrollmentQuery);
      return result != null;
    }

    return false;
  }

  /// Fetch a consultee's profile and user info by profile ID.
  ///
  /// Returns a record with the consultee profile map and user map.
  Future<({Map<String, dynamic>? profile, Map<String, dynamic>? user})>
      _fetchConsulteeInfo(
    String? consulteeProfileId, {
    TransactionExecutor? txn,
  }) async {
    if (consulteeProfileId == null) {
      return (profile: null, user: null);
    }

    final consulteeQuery = JsonQueryBuilder()
        .model('ConsulteeProfile')
        .action(QueryAction.findUnique)
        .where({'id': consulteeProfileId})
        .include({'user': true})
        .build();
    final profile =
        await executeQueryAsSingleMap(consulteeQuery, txn: txn);

    final user = profile?['user'] as Map<String, dynamic>?;

    return (profile: profile, user: user);
  }
}
