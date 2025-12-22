import 'package:backend/database/repositories/base_repository.dart';
import 'package:uuid/uuid.dart';

/// Repository for appointment/booking operations
///
/// Handles creation, retrieval, and management of appointments
/// for both consultation and subscription bookings.
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
    final plan = await executeRaw(
      r'''
      SELECT id, "durationInHours", "consultantProfileId"
      FROM "ConsultationPlan"
      WHERE id = $1 AND "consultantProfileId" = $2
      ''',
      [planId, consultantProfileId],
    );

    if (plan.isEmpty) {
      throw Exception('Consultation plan not found');
    }

    final durationHours = (plan.first['durationInHours'] as num).toDouble();
    final durationMinutes = (durationHours * 60).round();
    final now = DateTime.now().toUtc().toIso8601String();

    // Create the booking within a transaction
    return executeInTransaction((txn) async {
      // Create Consultation record
      final consultationId = _uuid.v4();
      await txn.executeMutationRaw(
        r'''
        INSERT INTO "Consultation" (
          id, "consultationPlanId", "requestedById", "requestStatus",
          "requestNotes", "bookingSource", "requestedAt", "createdAt", "updatedAt"
        ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
        ''',
        [
          consultationId,
          planId,
          requestedById,
          'PENDING',
          message,
          'REQUEST_SUBMITTED',
          now,
          now,
          now,
        ],
      );

      // Create Appointment record
      final appointmentId = _uuid.v4();
      await txn.executeMutationRaw(
        r'''
        INSERT INTO "Appointment" (
          id, "appointmentType", "consultationId", "createdAt", "updatedAt"
        ) VALUES ($1, $2, $3, $4, $5)
        ''',
        [appointmentId, 'CONSULTATION', consultationId, now, now],
      );

      // Create SlotOfAppointment records
      for (final slotStart in slotStartTimes) {
        final slotEnd = slotStart.add(Duration(minutes: durationMinutes));
        final slotId = _uuid.v4();

        await txn.executeMutationRaw(
          r'''
          INSERT INTO "SlotOfAppointment" (
            id, "appointmentId", "startsAt", "endsAt", "isTentative",
            "createdAt", "updatedAt"
          ) VALUES ($1, $2, $3, $4, $5, $6, $7)
          ''',
          [
            slotId,
            appointmentId,
            slotStart.toUtc().toIso8601String(),
            slotEnd.toUtc().toIso8601String(),
            true, // Tentative until approved
            now,
            now,
          ],
        );

        // Link user to slot via junction table
        await txn.executeMutationRaw(
          r'''
          INSERT INTO "_SlotOfAppointmentToUser" ("A", "B")
          VALUES ($1, $2)
          ''',
          [slotId, requestedById],
        );
      }

      // Fetch and return the created booking
      final result = await txn.executeRaw(
        r'''
        SELECT
          c.id,
          'CONSULTATION' as "bookingType",
          c."requestStatus" as status,
          c."requestNotes" as message,
          c."createdAt"
        FROM "Consultation" c
        WHERE c.id = $1
        ''',
        [consultationId],
      );

      return result.first;
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
    final plan = await executeRaw(
      r'''
      SELECT id, "consultantProfileId"
      FROM "SubscriptionPlan"
      WHERE id = $1 AND "consultantProfileId" = $2
      ''',
      [planId, consultantProfileId],
    );

    if (plan.isEmpty) {
      throw Exception('Subscription plan not found');
    }

    final now = DateTime.now().toUtc().toIso8601String();

    // Create the subscription booking
    final subscriptionId = _uuid.v4();
    await executeMutationRaw(
      r'''
      INSERT INTO "Subscription" (
        id, "subscriptionPlanId", "requestedById", "requestStatus",
        "schedulingPeriodStartsAt", "schedulingPeriodEndsAt",
        "schedulingTimezone", "requestNotes", "bookingSource",
        "requestedAt", "createdAt", "updatedAt"
      ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)
      ''',
      [
        subscriptionId,
        planId,
        requestedById,
        'PENDING',
        schedulingPeriodStart.toUtc().toIso8601String(),
        schedulingPeriodEnd.toUtc().toIso8601String(),
        timezone ?? 'Asia/Kolkata',
        message,
        'REQUEST_SUBMITTED',
        now,
        now,
        now,
      ],
    );

    return getBookingById(subscriptionId, type: 'SUBSCRIPTION');
  }

  /// Get user's bookings with pagination and optional status filter
  Future<Map<String, dynamic>> getMyBookings({
    required String userId,
    String? status,
    int page = 0,
    int pageSize = 20,
  }) async {
    final effectivePageSize = pageSize.clamp(1, 50);
    final offset = page * effectivePageSize;

    // Get consultee profile ID for the user
    final profile = await executeRaw(
      r'SELECT id FROM "ConsulteeProfile" WHERE "userId" = $1',
      [userId],
    );

    if (profile.isEmpty) {
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

    final consulteeProfileId = profile.first['id'] as String;

    // Build status filter
    final statusFilter =
        status != null ? "AND c.\"requestStatus\" = '$status'" : '';

    // Get consultations
    final consultations = await executeRaw(
      '''
      SELECT
        c.id,
        'CONSULTATION' as "bookingType",
        c."requestStatus" as status,
        c."requestNotes" as message,
        c."createdAt",
        cp.id as "planId",
        cp.title as "planTitle",
        cp.price as "planPrice",
        cp."priceCurrency" as "planCurrency",
        cp."durationInHours" as "planDuration",
        prof.id as "consultantProfileId",
        u.id as "consultantUserId",
        u.name as "consultantName",
        u.image as "consultantImage"
      FROM "Consultation" c
      INNER JOIN "ConsultationPlan" cp ON c."consultationPlanId" = cp.id
      INNER JOIN "ConsultantProfile" prof ON cp."consultantProfileId" = prof.id
      INNER JOIN "users" u ON prof."userId" = u.id
      WHERE c."requestedById" = \$1 $statusFilter
      ORDER BY c."createdAt" DESC
      LIMIT \$2 OFFSET \$3
      ''',
      [consulteeProfileId, effectivePageSize, offset],
    );

    // Get total count
    final countResult = await executeRaw(
      '''
      SELECT COUNT(*) as count
      FROM "Consultation" c
      WHERE c."requestedById" = \$1 $statusFilter
      ''',
      [consulteeProfileId],
    );

    final totalCount = (countResult.first['count'] as num).toInt();
    final totalPages = (totalCount / effectivePageSize).ceil();

    return {
      'bookings': consultations,
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
      final result = await executeRaw(
        r'''
        SELECT
          c.id,
          'CONSULTATION' as "bookingType",
          c."requestStatus" as status,
          c."requestNotes" as message,
          c."createdAt",
          c."updatedAt",
          cp.id as "planId",
          cp.title as "planTitle",
          cp.price as "planPrice",
          cp."priceCurrency" as "planCurrency",
          cp."durationInHours" as "planDuration",
          prof.id as "consultantProfileId",
          u.id as "consultantUserId",
          u.name as "consultantName",
          u.image as "consultantImage",
          a.id as "appointmentId"
        FROM "Consultation" c
        INNER JOIN "ConsultationPlan" cp ON c."consultationPlanId" = cp.id
        INNER JOIN "ConsultantProfile" prof ON cp."consultantProfileId" = prof.id
        INNER JOIN "users" u ON prof."userId" = u.id
        LEFT JOIN "Appointment" a ON a."consultationId" = c.id
        WHERE c.id = $1
        ''',
        [id],
      );

      if (result.isEmpty) {
        throw Exception('Consultation not found');
      }

      final booking = Map<String, dynamic>.from(result.first);

      // Get slots if appointment exists
      if (booking['appointmentId'] != null) {
        final slots = await executeRaw(
          r'''
          SELECT id, "startsAt", "endsAt", "isTentative"
          FROM "SlotOfAppointment"
          WHERE "appointmentId" = $1
          ORDER BY "startsAt"
          ''',
          [booking['appointmentId']],
        );
        booking['slots'] = slots;
      }

      return booking;
    } else {
      // SUBSCRIPTION
      final result = await executeRaw(
        r'''
        SELECT
          s.id,
          'SUBSCRIPTION' as "bookingType",
          s."requestStatus" as status,
          s."requestNotes" as message,
          s."schedulingPeriodStartsAt",
          s."schedulingPeriodEndsAt",
          s."schedulingTimezone",
          s."createdAt",
          s."updatedAt",
          sp.id as "planId",
          sp.title as "planTitle",
          sp.price as "planPrice",
          sp."priceCurrency" as "planCurrency",
          sp."totalSessions",
          sp."sessionDurationInHours",
          prof.id as "consultantProfileId",
          u.id as "consultantUserId",
          u.name as "consultantName",
          u.image as "consultantImage"
        FROM "Subscription" s
        INNER JOIN "SubscriptionPlan" sp ON s."subscriptionPlanId" = sp.id
        INNER JOIN "ConsultantProfile" prof ON sp."consultantProfileId" = prof.id
        INNER JOIN "users" u ON prof."userId" = u.id
        WHERE s.id = $1
        ''',
        [id],
      );

      if (result.isEmpty) {
        throw Exception('Subscription not found');
      }

      return result.first;
    }
  }

  /// Cancel a booking
  Future<void> cancelBooking({
    required String id,
    required String type,
    required String userId,
    String? reason,
  }) async {
    // Get consultee profile ID
    final profile = await executeRaw(
      r'SELECT id FROM "ConsulteeProfile" WHERE "userId" = $1',
      [userId],
    );

    if (profile.isEmpty) {
      throw Exception('User profile not found');
    }

    final consulteeProfileId = profile.first['id'] as String;
    final table = type == 'CONSULTATION' ? 'Consultation' : 'Subscription';

    // Verify ownership
    final booking = await executeRaw(
      '''
      SELECT id FROM "$table"
      WHERE id = \$1 AND "requestedById" = \$2
      ''',
      [id, consulteeProfileId],
    );

    if (booking.isEmpty) {
      throw Exception('Booking not found or you do not have permission');
    }

    // Update status to cancelled
    await executeMutationRaw(
      '''
      UPDATE "$table"
      SET "requestStatus" = 'CANCELLED', "updatedAt" = \$2
      WHERE id = \$1
      ''',
      [id, DateTime.now().toUtc().toIso8601String()],
    );
  }

  /// Check if user is a participant in a booking
  Future<bool> isParticipant({
    required String bookingId,
    required String type,
    required String userId,
  }) async {
    // Get consultee profile ID
    final profile = await executeRaw(
      r'SELECT id FROM "ConsulteeProfile" WHERE "userId" = $1',
      [userId],
    );

    if (profile.isEmpty) return false;

    final consulteeProfileId = profile.first['id'] as String;
    final table = type == 'CONSULTATION' ? 'Consultation' : 'Subscription';

    final result = await executeRaw(
      '''
      SELECT id FROM "$table"
      WHERE id = \$1 AND "requestedById" = \$2
      ''',
      [bookingId, consulteeProfileId],
    );

    return result.isNotEmpty;
  }
}
