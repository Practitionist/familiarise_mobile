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
    // Get all booked slots for this consultant's appointments.
    // Path: SlotOfAppointment -> Appointment -> (Consultation|Subscription) -> Plan
    // Use AND to combine both date range conditions on startsAt
    final query = JsonQueryBuilder()
        .model('SlotOfAppointment')
        .action(QueryAction.findMany)
        .distinct()
        .selectFields(['startsAt', 'endsAt', 'isTentative'])
        .where({
      'AND': [
        {'startsAt': FilterOperators.gte(startDate.toIso8601String())},
        {'startsAt': FilterOperators.lt(endDate.toIso8601String())},
      ],
      'OR': [
        FilterOperators.relationPath(
          'appointment.consultation.consultationPlan',
          {'consultantProfileId': consultantProfileId},
        ),
        FilterOperators.relationPath(
          'appointment.subscription.subscriptionPlan',
          {'consultantProfileId': consultantProfileId},
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
              'availabilityStartsAt':
                  FilterOperators.gte(startDate.toIso8601String()),
            },
            {
              'availabilityStartsAt':
                  FilterOperators.lt(endDate.toIso8601String()),
            },
          ],
        })
        .orderBy({'availabilityStartsAt': 'asc'})
        .build();

    final results = await executeQueryAsMaps(query);

    // Merge consecutive custom windows to allow longer duration slots
    final mergedResults = _mergeConsecutiveCustomWindows(results);

    // Generate slots at 30-minute increments within each merged window
    final expandedSlots = <Map<String, dynamic>>[];
    final now = DateTime.now();
    final slotDuration = Duration(minutes: durationMinutes);
    const slotIncrement = Duration(minutes: 30);

    for (final customSlot in mergedResults) {
      final windowStart = _parseDateTime(customSlot['availabilityStartsAt']);
      final windowEnd = _parseDateTime(customSlot['availabilityEndsAt']);

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
        .where({'consultantProfileId': consultantProfileId})
        .orderBy({'dayOfWeekForStartsAt': 'asc'},)
        .build();

    final weeklySlots = await executeQueryAsMaps(query);

    if (weeklySlots.isEmpty) {
      return [];
    }

    // Expand weekly pattern into specific date slots with plan duration
    final expandedSlots = <Map<String, dynamic>>[];
    var currentDate = startDate;
    final now = DateTime.now();
    final slotDuration = Duration(minutes: durationMinutes);
    const slotIncrement = Duration(minutes: 30); // 30-min increments

    while (currentDate.isBefore(endDate)) {
      final dayOfWeek = _getDayOfWeekString(currentDate.weekday);

      // Filter windows for this day
      final dayWindows = weeklySlots
          .where((s) => s['dayOfWeekForStartsAt'] == dayOfWeek)
          .toList();

      // Merge consecutive windows to allow longer duration slots
      final mergedWindows = _mergeConsecutiveWindows(dayWindows, currentDate);

      for (final weeklySlot in mergedWindows) {
        // Parse the availability window times
        final availStart = weeklySlot['availabilityStartsAt'];
        final availEnd = weeklySlot['availabilityEndsAt'];

        DateTime windowStart;
        DateTime windowEnd;

        if (availStart is DateTime) {
          windowStart = DateTime(
            currentDate.year,
            currentDate.month,
            currentDate.day,
            availStart.hour,
            availStart.minute,
          );
        } else {
          final parsed = DateTime.parse(availStart.toString());
          windowStart = DateTime(
            currentDate.year,
            currentDate.month,
            currentDate.day,
            parsed.hour,
            parsed.minute,
          );
        }

        if (availEnd is DateTime) {
          windowEnd = DateTime(
            currentDate.year,
            currentDate.month,
            currentDate.day,
            availEnd.hour,
            availEnd.minute,
          );
        } else {
          final parsed = DateTime.parse(availEnd.toString());
          windowEnd = DateTime(
            currentDate.year,
            currentDate.month,
            currentDate.day,
            parsed.hour,
            parsed.minute,
          );
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

  /// Check if a slot overlaps with any booked slot
  bool _isSlotBooked(
    DateTime slotStart,
    DateTime slotEnd,
    List<Map<String, dynamic>> bookedSlots,
  ) {
    for (final bookedSlot in bookedSlots) {
      final bookedStart = _parseDateTime(bookedSlot['startsAt']);
      final bookedEnd = _parseDateTime(bookedSlot['endsAt']);

      // Slots overlap if one starts before the other ends
      if (slotStart.isBefore(bookedEnd) && slotEnd.isAfter(bookedStart)) {
        return true;
      }
    }
    return false;
  }

  /// Filter out slots that overlap with booked slots
  List<Map<String, dynamic>> _filterBookedSlots(
    List<Map<String, dynamic>> availableSlots,
    List<Map<String, dynamic>> bookedSlots,
  ) {
    return availableSlots.where((availSlot) {
      final availStart = _parseDateTime(availSlot['startsAt']);
      final availEnd = _parseDateTime(availSlot['endsAt']);

      // Check if this slot overlaps with any booked slot
      for (final bookedSlot in bookedSlots) {
        final bookedStart = _parseDateTime(bookedSlot['startsAt']);
        final bookedEnd = _parseDateTime(bookedSlot['endsAt']);

        // Check for overlap: slots overlap if one starts before the other ends
        if (availStart.isBefore(bookedEnd) && availEnd.isAfter(bookedStart)) {
          return false; // Slot is booked, filter it out
        }
      }

      return true; // Slot is available
    }).toList();
  }

  DateTime _parseDateTime(dynamic value) {
    if (value is DateTime) return value;
    return DateTime.parse(value.toString());
  }

  /// Parse time from availability window and apply to a specific date
  DateTime _parseTimeForDate(dynamic value, DateTime date) {
    DateTime parsed;
    if (value is DateTime) {
      parsed = value;
    } else {
      parsed = DateTime.parse(value.toString());
    }
    return DateTime(
      date.year,
      date.month,
      date.day,
      parsed.hour,
      parsed.minute,
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
      final aStart = _parseTimeForDate(a['availabilityStartsAt'], currentDate);
      final bStart = _parseTimeForDate(b['availabilityStartsAt'], currentDate);
      return aStart.compareTo(bStart);
    });

    final merged = <Map<String, dynamic>>[];
    var currentWindow = Map<String, dynamic>.from(sortedWindows.first);

    for (var i = 1; i < sortedWindows.length; i++) {
      final nextWindow = sortedWindows[i];
      final currentEnd =
          _parseTimeForDate(currentWindow['availabilityEndsAt'], currentDate);
      final nextStart =
          _parseTimeForDate(nextWindow['availabilityStartsAt'], currentDate);

      // If consecutive (ends at same time as next starts or overlaps), merge
      if (currentEnd.isAtSameMomentAs(nextStart) ||
          currentEnd.isAfter(nextStart)) {
        // Extend current window's end time to the later of the two
        final nextEnd =
            _parseTimeForDate(nextWindow['availabilityEndsAt'], currentDate);
        if (nextEnd.isAfter(currentEnd)) {
          currentWindow['availabilityEndsAt'] =
              nextWindow['availabilityEndsAt'];
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

    // Windows are already sorted by availabilityStartsAt from the query
    final merged = <Map<String, dynamic>>[];
    var currentWindow = Map<String, dynamic>.from(windows.first);

    for (var i = 1; i < windows.length; i++) {
      final nextWindow = windows[i];
      final currentEnd = _parseDateTime(currentWindow['availabilityEndsAt']);
      final nextStart = _parseDateTime(nextWindow['availabilityStartsAt']);

      // If consecutive (ends at same time as next starts or overlaps), merge
      if (currentEnd.isAtSameMomentAs(nextStart) ||
          currentEnd.isAfter(nextStart)) {
        // Extend current window's end time to the later of the two
        final nextEnd = _parseDateTime(nextWindow['availabilityEndsAt']);
        if (nextEnd.isAfter(currentEnd)) {
          currentWindow['availabilityEndsAt'] =
              nextWindow['availabilityEndsAt'];
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
}
