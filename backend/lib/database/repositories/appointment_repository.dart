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
  /// Fetches all four booking types: Consultations, Subscriptions, Webinars, Classes.
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

    final consulteeProfileId = profile?['id'] as String?;

    // Collect all bookings from different types
    final allBookings = <Map<String, dynamic>>[];

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

    // 3. Fetch WEBINARS (uses Waitlist with userId)
    final webinarBookings = await _fetchWebinarBookings(
      userId: userId,
      status: status,
    );
    allBookings.addAll(webinarBookings);

    // 4. Fetch CLASSES (uses Waitlist with userId)
    final classBookings = await _fetchClassBookings(
      userId: userId,
      status: status,
    );
    allBookings.addAll(classBookings);

    // Sort all bookings by createdAt descending
    allBookings.sort((a, b) {
      final aDate =
          DateTime.tryParse(a['createdAt']?.toString() ?? '') ?? DateTime(1970);
      final bDate =
          DateTime.tryParse(b['createdAt']?.toString() ?? '') ?? DateTime(1970);
      return bDate.compareTo(aDate);
    });

    // Apply pagination
    final totalCount = allBookings.length;
    final totalPages = (totalCount / effectivePageSize).ceil();
    final paginatedBookings =
        allBookings.skip(offset).take(effectivePageSize).toList();

    return {
      'bookings': paginatedBookings,
      'pagination': {
        'page': page,
        'pageSize': effectivePageSize,
        'totalCount': totalCount,
        'totalPages': totalPages,
      },
    };
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

  /// Fetch webinar bookings for a user (via Waitlist)
  Future<List<Map<String, dynamic>>> _fetchWebinarBookings({
    required String userId,
    String? status,
  }) async {
    // Get user's waitlist entries for webinars
    final waitlistQuery = JsonQueryBuilder()
        .model('Waitlist')
        .action(QueryAction.findMany)
        .where({
      'userId': userId,
      'webinarId': {'not': null},
    }).build();

    final waitlistEntries = await executeQueryAsMaps(waitlistQuery);
    if (waitlistEntries.isEmpty) return [];

    // Collect webinar IDs for batch fetch
    final webinarIds = waitlistEntries
        .map((e) => e['webinarId'] as String?)
        .whereType<String>()
        .toList();

    // Batch fetch webinars with plans
    final webinarsQuery =
        JsonQueryBuilder().model('Webinar').action(QueryAction.findMany).where({
      'id': {'in': webinarIds}
    }).include({'webinarPlan': true}).build();
    final webinars = await executeQueryAsMaps(webinarsQuery);
    final webinarLookup = <String, Map<String, dynamic>>{};
    for (final w in webinars) {
      webinarLookup[w['id'] as String] = w;
    }

    // Collect consultant profile IDs for batch fetch
    final consultantProfileIds = <String>[];
    for (final w in webinars) {
      final plan = w['webinarPlan'] as Map<String, dynamic>?;
      final id = plan?['consultantProfileId'] as String?;
      if (id != null) consultantProfileIds.add(id);
    }
    final consultantLookup =
        await _batchFetchConsultantInfo(consultantProfileIds);

    // Batch fetch appointments with slots
    final appointmentsQuery = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findMany)
        .where({
      'webinarId': {'in': webinarIds}
    }).include({'slots': true}).build();
    final appointments = await executeQueryAsMaps(appointmentsQuery);
    final appointmentLookup = <String, Map<String, dynamic>>{};
    for (final a in appointments) {
      final webinarId = a['webinarId'] as String?;
      if (webinarId != null) appointmentLookup[webinarId] = a;
    }

    // Build bookings using lookup maps
    final bookings = <Map<String, dynamic>>[];
    for (final entry in waitlistEntries) {
      final webinarId = entry['webinarId'] as String?;
      if (webinarId == null) continue;

      final webinar = webinarLookup[webinarId];
      if (webinar == null) continue;

      final webinarStatus = webinar['status'] as String?;
      if (status != null && !_matchesWebinarStatus(webinarStatus, status)) {
        continue;
      }

      final plan = webinar['webinarPlan'] as Map<String, dynamic>?;
      final consultantProfileId = plan?['consultantProfileId'] as String?;
      final consultantInfo =
          _getConsultantInfoFromMap(consultantLookup, consultantProfileId);

      final appointment = appointmentLookup[webinarId];
      final slots = appointment?['slots'] as List<dynamic>?;

      bookings.add({
        'id': webinarId,
        'bookingType': 'WEBINAR',
        'status': _mapWebinarStatusToRequestStatus(webinarStatus),
        'createdAt': entry['joinedAt'] ?? webinar['createdAt'],
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

  /// Fetch class bookings for a user (via Waitlist)
  Future<List<Map<String, dynamic>>> _fetchClassBookings({
    required String userId,
    String? status,
  }) async {
    // Get user's waitlist entries for classes
    final waitlistQuery = JsonQueryBuilder()
        .model('Waitlist')
        .action(QueryAction.findMany)
        .where({
      'userId': userId,
      'classId': {'not': null},
    }).build();

    final waitlistEntries = await executeQueryAsMaps(waitlistQuery);
    if (waitlistEntries.isEmpty) return [];

    // Collect class IDs for batch fetch
    final classIds = waitlistEntries
        .map((e) => e['classId'] as String?)
        .whereType<String>()
        .toList();

    // Batch fetch classes with plans
    final classesQuery =
        JsonQueryBuilder().model('Class').action(QueryAction.findMany).where({
      'id': {'in': classIds}
    }).include({'classPlan': true}).build();
    final classes = await executeQueryAsMaps(classesQuery);
    final classLookup = <String, Map<String, dynamic>>{};
    for (final c in classes) {
      classLookup[c['id'] as String] = c;
    }

    // Collect consultant profile IDs for batch fetch
    final consultantProfileIds = <String>[];
    for (final c in classes) {
      final plan = c['classPlan'] as Map<String, dynamic>?;
      final id = plan?['consultantProfileId'] as String?;
      if (id != null) consultantProfileIds.add(id);
    }
    final consultantLookup =
        await _batchFetchConsultantInfo(consultantProfileIds);

    // Build bookings using lookup maps
    final bookings = <Map<String, dynamic>>[];
    for (final entry in waitlistEntries) {
      final classId = entry['classId'] as String?;
      if (classId == null) continue;

      final classRecord = classLookup[classId];
      if (classRecord == null) continue;

      final classStatus = classRecord['status'] as String?;
      if (status != null && !_matchesClassStatus(classStatus, status)) {
        continue;
      }

      final plan = classRecord['classPlan'] as Map<String, dynamic>?;
      final consultantProfileId = plan?['consultantProfileId'] as String?;
      final consultantInfo =
          _getConsultantInfoFromMap(consultantLookup, consultantProfileId);

      bookings.add({
        'id': classId,
        'bookingType': 'CLASS',
        'status': _mapClassStatusToRequestStatus(classStatus),
        'createdAt': entry['joinedAt'] ?? classRecord['createdAt'],
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
      });
    }

    return bookings;
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
      'id': {'in': uniqueIds}
    }).include({'user': true}).build();

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

  /// Fetch consultant profile and user info (single query - used for getBookingById)
  Future<Map<String, dynamic>> _fetchConsultantInfo(
      String? consultantProfileId) async {
    if (consultantProfileId == null) {
      return {
        'consultantProfileId': null,
        'consultantUserId': null,
        'consultantName': null,
        'consultantImage': null,
      };
    }

    final profileQuery = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findUnique)
        .where({'id': consultantProfileId}).include({'user': true}).build();

    final profile = await executeQueryAsSingleMap(profileQuery);
    final user = profile?['user'] as Map<String, dynamic>?;

    return {
      'consultantProfileId': profile?['id'],
      'consultantUserId': user?['id'],
      'consultantName': user?['name'],
      'consultantImage': user?['image'],
    };
  }

  /// Format slots for response
  List<Map<String, dynamic>> _formatSlots(List<dynamic> slots) {
    return slots
        .map((s) => {
              'id': s['id'],
              'startsAt': s['startsAt'],
              'endsAt': s['endsAt'],
              'isTentative': s['isTentative'],
            })
        .toList();
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
    } else {
      return _getSubscriptionById(id);
    }
  }

  Future<Map<String, dynamic>> _getConsultationById(String id) async {
    // Wrap in transaction for consistent reads
    return executeInTransaction((txn) async {
      // Get consultation with plan only (avoid nested includes - ORM bug)
      final query = JsonQueryBuilder()
          .model('Consultation')
          .action(QueryAction.findUnique)
          .where({'id': id}).include({'consultationPlan': true}).build();

      final result = await executeQueryAsSingleMap(query, txn: txn);

      if (result == null) {
        throw Exception('Consultation not found');
      }

      // ORM returns flattened fields with prefix (e.g., consultationPlanTitle)
      // instead of nested object. Handle both cases for compatibility.
      final plan = result['consultationPlan'] as Map<String, dynamic>?;
      final consultantProfileId = plan?['consultantProfileId'] as String? ??
          result['consultationPlanConsultantProfileId'] as String?;

      // Fetch consultant profile and user separately to avoid nested include bug
      Map<String, dynamic>? profile;
      Map<String, dynamic>? user;
      if (consultantProfileId != null) {
        final profileQuery = JsonQueryBuilder()
            .model('ConsultantProfile')
            .action(QueryAction.findUnique)
            .where({'id': consultantProfileId}).include({'user': true}).build();
        profile = await executeQueryAsSingleMap(profileQuery, txn: txn);

        // Handle nested or flattened user fields
        user = profile?['user'] as Map<String, dynamic>?;
        if (user == null && profile != null) {
          // ORM may flatten user fields with prefix
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

      final booking = {
        'id': result['id'],
        'bookingType': 'CONSULTATION',
        'status': result['requestStatus'],
        'message': result['requestNotes'],
        'createdAt': result['createdAt'],
        'updatedAt': result['updatedAt'],
        // Handle both nested and flattened plan fields
        'planId': plan?['id'] ?? result['consultationPlanId'],
        'planTitle': plan?['title'] ?? result['consultationPlanTitle'],
        'planPrice': plan?['price'] ?? result['consultationPlanPrice'],
        'planCurrency':
            plan?['priceCurrency'] ?? result['consultationPlanPriceCurrency'],
        'planDuration': plan?['durationInHours'] ??
            result['consultationPlanDurationInHours'],
        'consultantProfileId': profile?['id'],
        'consultantUserId': user?['id'],
        'consultantName': user?['name'],
        'consultantImage': user?['image'],
      };

      // Get appointment (without include - ORM flattens relations incorrectly)
      final appointmentQuery = JsonQueryBuilder()
          .model('Appointment')
          .action(QueryAction.findFirst)
          .where({'consultationId': id}).build();

      final appointment =
          await executeQueryAsSingleMap(appointmentQuery, txn: txn);

      if (appointment != null) {
        booking['appointmentId'] = appointment['id'];

        // Fetch slots separately to avoid ORM flattening issue
        final slotsQuery = JsonQueryBuilder()
            .model('SlotOfAppointment')
            .action(QueryAction.findMany)
            .where({'appointmentId': appointment['id']}).orderBy(
                {'startsAt': 'asc'}).build();

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
        }
      }

      return booking;
    });
  }

  Future<Map<String, dynamic>> _getSubscriptionById(String id) async {
    // Wrap in transaction for consistent reads
    return executeInTransaction((txn) async {
      // Get subscription with plan only (avoid nested includes - ORM bug)
      final query = JsonQueryBuilder()
          .model('Subscription')
          .action(QueryAction.findUnique)
          .where({'id': id}).include({'subscriptionPlan': true}).build();

      final result = await executeQueryAsSingleMap(query, txn: txn);

      if (result == null) {
        throw Exception('Subscription not found');
      }

      // ORM returns flattened fields with prefix (e.g., subscriptionPlanTitle)
      // instead of nested object. Handle both cases for compatibility.
      final plan = result['subscriptionPlan'] as Map<String, dynamic>?;
      final consultantProfileId = plan?['consultantProfileId'] as String? ??
          result['subscriptionPlanConsultantProfileId'] as String?;

      // Fetch consultant profile and user separately to avoid nested include bug
      Map<String, dynamic>? profile;
      Map<String, dynamic>? user;
      if (consultantProfileId != null) {
        final profileQuery = JsonQueryBuilder()
            .model('ConsultantProfile')
            .action(QueryAction.findUnique)
            .where({'id': consultantProfileId}).include({'user': true}).build();
        profile = await executeQueryAsSingleMap(profileQuery, txn: txn);

        // Handle nested or flattened user fields
        user = profile?['user'] as Map<String, dynamic>?;
        if (user == null && profile != null) {
          // ORM may flatten user fields with prefix
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
        // Handle both nested and flattened plan fields
        'planId': plan?['id'] ?? result['subscriptionPlanId'],
        'planTitle': plan?['title'] ?? result['subscriptionPlanTitle'],
        'planPrice': plan?['price'] ?? result['subscriptionPlanPrice'],
        'planCurrency':
            plan?['priceCurrency'] ?? result['subscriptionPlanPriceCurrency'],
        'totalSessions':
            plan?['totalSessions'] ?? result['subscriptionPlanTotalSessions'],
        'sessionDurationInHours': plan?['sessionDurationInHours'] ??
            result['subscriptionPlanSessionDurationInHours'],
        'consultantProfileId': profile?['id'],
        'consultantUserId': user?['id'],
        'consultantName': user?['name'],
        'consultantImage': user?['image'],
      };
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
        'cancellationReason': reason,
        'cancelledAt': now,
        'cancelledBy': consulteeProfileId,
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
        'cancellationReason': reason,
        'cancelledAt': now,
        'cancelledBy': consulteeProfileId,
        'updatedAt': now,
      }).build();

      await executeMutation(updateQuery);
    } else {
      throw Exception('Invalid booking type');
    }
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
              (s) => s['id'] == slotId,
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
      final startsAtRaw = slot['startsAt'];
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
      String appointmentId, String? slotId) async {
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
