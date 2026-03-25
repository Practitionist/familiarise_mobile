import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for consultant availability slot operations
///
/// Provides methods for fetching available time slots for booking.
/// Supports both weekly recurring schedules and custom one-time slots.
///
/// Uses Prisma ORM v0.2.9+ for all queries including complex multi-join
/// queries with deep relation path filtering.
class SlotRepository extends BaseRepository {
  /// Create a slot repository with the given executor
  SlotRepository(super._executor);

  /// Get consultant's available time slots for a date range
  ///
  /// Returns a list of available slots grouped by date.
  /// Each slot duration is based on the plan duration.
  /// Slots are marked with isBooked/isPast flags instead of being filtered out.
  ///
  /// [consultantProfileId] - The consultant profile ID
  /// [startDate] - Start of the date range (inclusive)
  /// [endDate] - End of the date range (exclusive)
  /// [durationMinutes] - Duration of each slot in minutes (default: 60)
  Future<List<Map<String, dynamic>>> getAvailability({
    required String consultantProfileId,
    required DateTime startDate,
    required DateTime endDate,
    int durationMinutes = 60,
  }) async {
    // Get consultant's schedule type and availability slots
    final consultantData = await _getConsultantSchedule(consultantProfileId);
    if (consultantData == null) {
      return [];
    }

    final scheduleType = consultantData['scheduleType'] as String?;

    // Get booked slots to exclude
    final bookedSlots = await _getBookedSlots(
      consultantProfileId: consultantProfileId,
      startDate: startDate,
      endDate: endDate,
    );

    // Generate available slots based on schedule type
    if (scheduleType == 'CUSTOM') {
      return _getCustomAvailability(
        consultantProfileId: consultantProfileId,
        startDate: startDate,
        endDate: endDate,
        bookedSlots: bookedSlots,
        durationMinutes: durationMinutes,
      );
    } else {
      // WEEKLY is the default
      return _getWeeklyAvailability(
        consultantProfileId: consultantProfileId,
        startDate: startDate,
        endDate: endDate,
        bookedSlots: bookedSlots,
        durationMinutes: durationMinutes,
      );
    }
  }

  /// Get consultant's schedule configuration using ORM
  Future<Map<String, dynamic>?> _getConsultantSchedule(
    String consultantProfileId,
  ) async {
    final query = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findUnique)
        .where({'id': consultantProfileId}).build();

    return executeQueryAsSingleMap(query);
  }

  /// Get already booked slots for a date range
  ///
  /// Returns slot times that should be excluded from availability.
  /// Uses Prisma ORM with deep relation path filtering (v0.2.9+).
  Future<List<Map<String, dynamic>>> _getBookedSlots({
    required String consultantProfileId,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    // Get all booked slots for this consultant's ACTIVE appointments.
    // Path: SlotOfAppointment -> Appointment -> (Consultation|Subscription) -> Plan
    // Only include appointments with active statuses (exclude CANCELLED, REJECTED, EXPIRED)
    const activeStatuses = [
      'PENDING',
      'APPROVED',
      'APPROVED_PENDING_PAYMENT',
      'SCHEDULED',
    ];

    final query = JsonQueryBuilder()
        .model('SlotOfAppointment')
        .action(QueryAction.findMany)
        .distinct()
        .selectFields(['startsAt', 'endsAt', 'isTentative']).where({
      'AND': [
        {'startsAt': FilterOperators.gte(startDate.toIso8601String())},
        {'startsAt': FilterOperators.lt(endDate.toIso8601String())},
      ],
      'OR': [
        // Consultation appointments: filter by consultant AND active status
        FilterOperators.relationPath(
          'appointment.consultation',
          {
            'consultationPlan': FilterOperators.some({
              'consultantProfileId': consultantProfileId,
            }),
            'requestStatus': FilterOperators.in_(activeStatuses),
          },
        ),
        // Subscription appointments: filter by consultant AND active status
        FilterOperators.relationPath(
          'appointment.subscription',
          {
            'subscriptionPlan': FilterOperators.some({
              'consultantProfileId': consultantProfileId,
            }),
            'requestStatus': FilterOperators.in_(activeStatuses),
          },
        ),
      ],
    }).build();

    return executeQueryAsMaps(query);
  }

  /// Get custom one-time availability slots using ORM
  ///
  /// Generates slots at 30-minute increments with the specified duration.
  /// Returns all slots with isBooked/isPast flags for UI display.
  Future<List<Map<String, dynamic>>> _getCustomAvailability({
    required String consultantProfileId,
    required DateTime startDate,
    required DateTime endDate,
    required List<Map<String, dynamic>> bookedSlots,
    required int durationMinutes,
  }) async {
    // Get custom availability slots within the date range using ORM
    final query = JsonQueryBuilder()
        .model('SlotOfAvailabilityCustom')
        .action(QueryAction.findMany)
        .where({
      'consultantProfileId': consultantProfileId,
      'AND': [
        {
          'startsAt':
              FilterOperators.gte(startDate.toIso8601String()),
        },
        {
          'startsAt': FilterOperators.lt(endDate.toIso8601String()),
        },
      ],
    }).orderBy({'startsAt': 'asc'}).build();

    final results = await executeQueryAsMaps(query);

    // Merge consecutive custom windows to allow longer duration slots
    final mergedResults = _mergeConsecutiveCustomWindows(results);

    // Generate slots at 30-minute increments within each merged window
    final expandedSlots = <Map<String, dynamic>>[];
    final now =
        DateTime.now().toUtc(); // Use UTC for consistent timezone handling
    final slotDuration = Duration(minutes: durationMinutes);
    const slotIncrement = Duration(minutes: 30);

    for (final customSlot in mergedResults) {
      final windowStart = _parseDateTime(customSlot['startsAt']);
      final windowEnd = _parseDateTime(customSlot['endsAt']);

      var slotStart = windowStart;
      while (slotStart.add(slotDuration).isBefore(windowEnd) ||
          slotStart.add(slotDuration).isAtSameMomentAs(windowEnd)) {
        final slotEnd = slotStart.add(slotDuration);

        // Check if slot is in the past
        final isPast = slotStart.isBefore(now);

        // Check if slot overlaps with any booked slot
        final isBooked = _isSlotBooked(slotStart, slotEnd, bookedSlots);

        expandedSlots.add({
          'id': '${customSlot['id']}_${slotStart.toIso8601String()}',
          'startsAt': slotStart,
          'endsAt': slotEnd,
          'isBooked': isBooked,
          'isTentative': false,
          'isPast': isPast,
        });

        slotStart = slotStart.add(slotIncrement);
      }
    }

    return expandedSlots;
  }

  /// Expand weekly recurring availability into specific slots for a date range
  ///
  /// Generates slots at 30-minute increments with the specified duration.
  /// Returns all slots with isBooked/isPast flags for UI display.
  Future<List<Map<String, dynamic>>> _getWeeklyAvailability({
    required String consultantProfileId,
    required DateTime startDate,
    required DateTime endDate,
    required List<Map<String, dynamic>> bookedSlots,
    required int durationMinutes,
  }) async {
    // Get weekly availability pattern using ORM
    final query = JsonQueryBuilder()
        .model('SlotOfAvailabilityWeekly')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId}).orderBy(
      {'startDay': 'asc'},
    ).build();

    final weeklySlots = await executeQueryAsMaps(query);

    if (weeklySlots.isEmpty) {
      return [];
    }

    // Expand weekly pattern into specific date slots with plan duration
    final expandedSlots = <Map<String, dynamic>>[];
    var currentDate = startDate;
    final now =
        DateTime.now().toUtc(); // Use UTC for consistent timezone handling
    final slotDuration = Duration(minutes: durationMinutes);
    const slotIncrement = Duration(minutes: 30); // 30-min increments

    while (currentDate.isBefore(endDate)) {
      final dayOfWeek = _getDayOfWeekString(currentDate.weekday);
      final previousDayOfWeek = _getDayOfWeekString(
        currentDate.weekday == 1 ? 7 : currentDate.weekday - 1,
      );

      // Filter windows that START on this day
      final dayWindows = weeklySlots
          .where((s) => s['startDay'] == dayOfWeek)
          .toList();

      // Also get cross-day windows that END on this day (started on previous day)
      // This handles overnight availability like Mon 22:00 - Tue 02:00
      // when the query range starts on Tuesday
      final crossDayWindows = weeklySlots
          .where((s) =>
              s['endDay'] == dayOfWeek &&
              s['startDay'] == previousDayOfWeek)
          .toList();

      // Process cross-day windows: only the post-midnight portion
      for (final crossDaySlot in crossDayWindows) {
        final windowEnd = _minutesToDateTimeUtc(
          (crossDaySlot['endTimeUtc'] as num).toInt(),
          currentDate,
        );

        // Generate slots from midnight to windowEnd (the post-midnight portion)
        final windowStart = DateTime.utc(
          currentDate.year,
          currentDate.month,
          currentDate.day,
          0, // Start at midnight
          0,
        );

        // Only generate if end is after midnight
        if (windowEnd.isAfter(windowStart)) {
          var slotStart = windowStart;
          while (slotStart.add(slotDuration).isBefore(windowEnd) ||
              slotStart.add(slotDuration).isAtSameMomentAs(windowEnd)) {
            final slotEnd = slotStart.add(slotDuration);
            final isPast = slotStart.isBefore(now);
            final isBooked = _isSlotBooked(slotStart, slotEnd, bookedSlots);

            expandedSlots.add({
              'id':
                  '${crossDaySlot['id']}_crossday_${slotStart.toIso8601String()}',
              'startsAt': slotStart,
              'endsAt': slotEnd,
              'isBooked': isBooked,
              'isTentative': false,
              'isPast': isPast,
            });

            slotStart = slotStart.add(slotIncrement);
          }
        }
      }

      // Merge consecutive windows to allow longer duration slots
      final mergedWindows = _mergeConsecutiveWindows(dayWindows, currentDate);

      for (final weeklySlot in mergedWindows) {
        // Parse the availability window times using helper
        var windowStart = _minutesToDateTimeUtc(
          (weeklySlot['startTimeUtc'] as num).toInt(),
          currentDate,
        );
        var windowEnd = _minutesToDateTimeUtc(
          (weeklySlot['endTimeUtc'] as num).toInt(),
          currentDate,
        );

        // Fix cross-midnight windows: if end time is before or equal to start time,
        // it means the window crosses midnight and end is on the next day
        if (windowEnd.isBefore(windowStart) ||
            windowEnd.isAtSameMomentAs(windowStart)) {
          windowEnd = windowEnd.add(const Duration(days: 1));
        }

        // Generate slots at 30-minute increments within the merged window
        var slotStart = windowStart;
        while (slotStart.add(slotDuration).isBefore(windowEnd) ||
            slotStart.add(slotDuration).isAtSameMomentAs(windowEnd)) {
          final slotEnd = slotStart.add(slotDuration);

          // Check if slot is in the past
          final isPast = slotStart.isBefore(now);

          // Check if slot overlaps with any booked slot
          final isBooked = _isSlotBooked(slotStart, slotEnd, bookedSlots);

          expandedSlots.add({
            'id': '${weeklySlot['id']}_${slotStart.toIso8601String()}',
            'startsAt': slotStart,
            'endsAt': slotEnd,
            'isBooked': isBooked,
            'isTentative': false,
            'isPast': isPast,
          });

          slotStart = slotStart.add(slotIncrement);
        }
      }

      currentDate = currentDate.add(const Duration(days: 1));
    }

    return expandedSlots;
  }

  /// Check if a slot overlaps with any confirmed (non-tentative) booked slot
  ///
  /// Tentative slots are excluded because they haven't been confirmed yet
  /// and shouldn't block other users from booking the same time.
  bool _isSlotBooked(
    DateTime slotStart,
    DateTime slotEnd,
    List<Map<String, dynamic>> bookedSlots,
  ) {
    for (final bookedSlot in bookedSlots) {
      // Skip tentative slots - they don't block availability
      // Only confirmed appointments should prevent new bookings
      if (bookedSlot['isTentative'] == true) continue;

      final bookedStart = _parseDateTime(bookedSlot['startsAt']);
      final bookedEnd = _parseDateTime(bookedSlot['endsAt']);

      // Slots overlap if one starts before the other ends
      if (slotStart.isBefore(bookedEnd) && slotEnd.isAfter(bookedStart)) {
        return true;
      }
    }
    return false;
  }

  DateTime _parseDateTime(dynamic value) {
    if (value is DateTime) return value;
    return DateTime.parse(value.toString());
  }

  /// Convert minutes-since-midnight-UTC to a DateTime on the given date.
  DateTime _minutesToDateTimeUtc(int minutesSinceMidnight, DateTime date) {
    return DateTime.utc(
      date.year,
      date.month,
      date.day,
      minutesSinceMidnight ~/ 60,
      minutesSinceMidnight % 60,
    );
  }

  /// Merge consecutive availability windows into continuous blocks
  ///
  /// This allows longer duration plans (2hr, 4hr) to span multiple
  /// individual 1-hour availability windows stored in the database.
  List<Map<String, dynamic>> _mergeConsecutiveWindows(
    List<Map<String, dynamic>> windows,
    DateTime currentDate,
  ) {
    if (windows.isEmpty) return [];

    // Sort windows by start time
    final sortedWindows = List<Map<String, dynamic>>.from(windows);
    sortedWindows.sort((a, b) {
      final aStart = _minutesToDateTimeUtc(
          (a['startTimeUtc'] as num).toInt(), currentDate);
      final bStart = _minutesToDateTimeUtc(
          (b['startTimeUtc'] as num).toInt(), currentDate);
      return aStart.compareTo(bStart);
    });

    final merged = <Map<String, dynamic>>[];
    var currentWindow = Map<String, dynamic>.from(sortedWindows.first);

    for (var i = 1; i < sortedWindows.length; i++) {
      final nextWindow = sortedWindows[i];
      final currentEnd = _minutesToDateTimeUtc(
          (currentWindow['endTimeUtc'] as num).toInt(), currentDate);
      final nextStart = _minutesToDateTimeUtc(
          (nextWindow['startTimeUtc'] as num).toInt(), currentDate);

      // If consecutive (ends at same time as next starts or overlaps), merge
      if (currentEnd.isAtSameMomentAs(nextStart) ||
          currentEnd.isAfter(nextStart)) {
        // Extend current window's end time to the later of the two
        final nextEnd = _minutesToDateTimeUtc(
            (nextWindow['endTimeUtc'] as num).toInt(), currentDate);
        if (nextEnd.isAfter(currentEnd)) {
          currentWindow['endTimeUtc'] = nextWindow['endTimeUtc'];
        }
      } else {
        // Gap between windows, save current and start new
        merged.add(currentWindow);
        currentWindow = Map<String, dynamic>.from(nextWindow);
      }
    }
    merged.add(currentWindow);

    return merged;
  }

  /// Merge consecutive custom availability windows into continuous blocks
  ///
  /// Similar to _mergeConsecutiveWindows but for custom slots that have
  /// full DateTime values (not just time-of-day).
  List<Map<String, dynamic>> _mergeConsecutiveCustomWindows(
    List<Map<String, dynamic>> windows,
  ) {
    if (windows.isEmpty) return [];

    // Windows are already sorted by startsAt from the query
    final merged = <Map<String, dynamic>>[];
    var currentWindow = Map<String, dynamic>.from(windows.first);

    for (var i = 1; i < windows.length; i++) {
      final nextWindow = windows[i];
      final currentEnd = _parseDateTime(currentWindow['endsAt']);
      final nextStart = _parseDateTime(nextWindow['startsAt']);

      // If consecutive (ends at same time as next starts or overlaps), merge
      if (currentEnd.isAtSameMomentAs(nextStart) ||
          currentEnd.isAfter(nextStart)) {
        // Extend current window's end time to the later of the two
        final nextEnd = _parseDateTime(nextWindow['endsAt']);
        if (nextEnd.isAfter(currentEnd)) {
          currentWindow['endsAt'] = nextWindow['endsAt'];
        }
      } else {
        // Gap between windows, save current and start new
        merged.add(currentWindow);
        currentWindow = Map<String, dynamic>.from(nextWindow);
      }
    }
    merged.add(currentWindow);

    return merged;
  }

  /// Convert weekday number to enum string
  String _getDayOfWeekString(int weekday) {
    return switch (weekday) {
      1 => 'MONDAY',
      2 => 'TUESDAY',
      3 => 'WEDNESDAY',
      4 => 'THURSDAY',
      5 => 'FRIDAY',
      6 => 'SATURDAY',
      7 => 'SUNDAY',
      _ => 'MONDAY',
    };
  }

  /// Group slots by date for the API response
  List<Map<String, dynamic>> groupSlotsByDate(
    List<Map<String, dynamic>> slots,
  ) {
    final grouped = <String, List<Map<String, dynamic>>>{};

    for (final slot in slots) {
      final startsAt = _parseDateTime(slot['startsAt']);
      final dateKey = startsAt.toIso8601String().split('T')[0];

      grouped.putIfAbsent(dateKey, () => []);
      grouped[dateKey]!.add({
        'id': slot['id'],
        'startsAt': startsAt.toIso8601String(),
        'endsAt': _parseDateTime(slot['endsAt']).toIso8601String(),
        'isBooked': false,
        'isTentative': false,
      });
    }

    // Convert to list sorted by date
    final sortedDates = grouped.keys.toList()..sort();
    return sortedDates.map((date) {
      return {
        'date': date,
        'slots': grouped[date],
      };
    }).toList();
  }

  // ===========================================================================
  // Weekly Slot CRUD (consultant self-management)
  // ===========================================================================

  /// List weekly slots for a consultant.
  Future<List<Map<String, dynamic>>> listWeeklySlots(
    String consultantProfileId,
  ) async {
    final query = JsonQueryBuilder()
        .model('SlotOfAvailabilityWeekly')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .build();
    return executeQueryAsMaps(query);
  }

  /// Create a weekly availability slot.
  Future<Map<String, dynamic>> createWeeklySlot({
    required String consultantProfileId,
    required String startDay,
    required String endDay,
    required int startTimeUtc,
    required int endTimeUtc,
    int utcOffsetMinutes = 0,
  }) async {
    final now = nowIso8601;
    final query = JsonQueryBuilder()
        .model('SlotOfAvailabilityWeekly')
        .action(QueryAction.create)
        .data({
      'consultantProfileId': consultantProfileId,
      'startDay': startDay,
      'endDay': endDay,
      'startTimeUtc': startTimeUtc,
      'endTimeUtc': endTimeUtc,
      'utcOffsetMinutes': utcOffsetMinutes,
      'createdAt': now,
      'updatedAt': now,
    }).build();
    final result = await executeQueryAsSingleMap(query);
    if (result == null) throw Exception('Failed to create slot');
    return result;
  }

  /// Update a weekly slot.
  Future<Map<String, dynamic>?> updateWeeklySlot({
    required String id,
    String? startDay,
    String? endDay,
    int? startTimeUtc,
    int? endTimeUtc,
  }) async {
    final data = <String, dynamic>{'updatedAt': nowIso8601};
    if (startDay != null) data['startDay'] = startDay;
    if (endDay != null) data['endDay'] = endDay;
    if (startTimeUtc != null) data['startTimeUtc'] = startTimeUtc;
    if (endTimeUtc != null) data['endTimeUtc'] = endTimeUtc;

    final query = JsonQueryBuilder()
        .model('SlotOfAvailabilityWeekly')
        .action(QueryAction.update)
        .where({'id': id})
        .data(data)
        .build();
    return executeQueryAsSingleMap(query);
  }

  /// Delete a weekly slot.
  Future<void> deleteWeeklySlot(String id) async {
    final query = JsonQueryBuilder()
        .model('SlotOfAvailabilityWeekly')
        .action(QueryAction.delete)
        .where({'id': id})
        .build();
    await executeMutation(query);
  }

  // ===========================================================================
  // Custom Slot CRUD
  // ===========================================================================

  /// List custom slots for a consultant.
  Future<List<Map<String, dynamic>>> listCustomSlots(
    String consultantProfileId,
  ) async {
    final query = JsonQueryBuilder()
        .model('SlotOfAvailabilityCustom')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .build();
    return executeQueryAsMaps(query);
  }

  /// Create a custom availability slot.
  Future<Map<String, dynamic>> createCustomSlot({
    required String consultantProfileId,
    required String startsAt,
    required String endsAt,
  }) async {
    final now = nowIso8601;
    final query = JsonQueryBuilder()
        .model('SlotOfAvailabilityCustom')
        .action(QueryAction.create)
        .data({
      'consultantProfileId': consultantProfileId,
      'startsAt': startsAt,
      'endsAt': endsAt,
      'createdAt': now,
      'updatedAt': now,
    }).build();
    final result = await executeQueryAsSingleMap(query);
    if (result == null) throw Exception('Failed to create slot');
    return result;
  }

  /// Update a custom slot.
  Future<Map<String, dynamic>?> updateCustomSlot({
    required String id,
    String? startsAt,
    String? endsAt,
  }) async {
    final data = <String, dynamic>{'updatedAt': nowIso8601};
    if (startsAt != null) data['startsAt'] = startsAt;
    if (endsAt != null) data['endsAt'] = endsAt;

    final query = JsonQueryBuilder()
        .model('SlotOfAvailabilityCustom')
        .action(QueryAction.update)
        .where({'id': id})
        .data(data)
        .build();
    return executeQueryAsSingleMap(query);
  }

  /// Delete a custom slot.
  Future<void> deleteCustomSlot(String id) async {
    final query = JsonQueryBuilder()
        .model('SlotOfAvailabilityCustom')
        .action(QueryAction.delete)
        .where({'id': id})
        .build();
    await executeMutation(query);
  }
}
