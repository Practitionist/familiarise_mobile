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
  /// Excludes slots that are already booked or tentative.
  ///
  /// [consultantProfileId] - The consultant profile ID
  /// [startDate] - Start of the date range (inclusive)
  /// [endDate] - End of the date range (exclusive)
  Future<List<Map<String, dynamic>>> getAvailability({
    required String consultantProfileId,
    required DateTime startDate,
    required DateTime endDate,
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
      );
    } else {
      // WEEKLY is the default
      return _getWeeklyAvailability(
        consultantProfileId: consultantProfileId,
        startDate: startDate,
        endDate: endDate,
        bookedSlots: bookedSlots,
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
  Future<List<Map<String, dynamic>>> _getCustomAvailability({
    required String consultantProfileId,
    required DateTime startDate,
    required DateTime endDate,
    required List<Map<String, dynamic>> bookedSlots,
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

    // Map to expected format
    final slots = results
        .map((r) => {
              'id': r['id'],
              'startsAt': r['availabilityStartsAt'],
              'endsAt': r['availabilityEndsAt'],
            },)
        .toList();

    // Filter out booked slots
    return _filterBookedSlots(slots, bookedSlots);
  }

  /// Expand weekly recurring availability into specific slots for a date range
  Future<List<Map<String, dynamic>>> _getWeeklyAvailability({
    required String consultantProfileId,
    required DateTime startDate,
    required DateTime endDate,
    required List<Map<String, dynamic>> bookedSlots,
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

    // Expand weekly pattern into specific date slots
    final expandedSlots = <Map<String, dynamic>>[];
    var currentDate = startDate;

    while (currentDate.isBefore(endDate)) {
      final dayOfWeek = _getDayOfWeekString(currentDate.weekday);

      for (final weeklySlot in weeklySlots) {
        if (weeklySlot['dayOfWeekForStartsAt'] == dayOfWeek) {
          // Parse the time from the availability slot
          final availStart = weeklySlot['availabilityStartsAt'];
          final availEnd = weeklySlot['availabilityEndsAt'];

          DateTime startTime;
          DateTime endTime;

          if (availStart is DateTime) {
            startTime = DateTime(
              currentDate.year,
              currentDate.month,
              currentDate.day,
              availStart.hour,
              availStart.minute,
            );
          } else {
            // Parse from string if needed
            final parsed = DateTime.parse(availStart.toString());
            startTime = DateTime(
              currentDate.year,
              currentDate.month,
              currentDate.day,
              parsed.hour,
              parsed.minute,
            );
          }

          if (availEnd is DateTime) {
            endTime = DateTime(
              currentDate.year,
              currentDate.month,
              currentDate.day,
              availEnd.hour,
              availEnd.minute,
            );
          } else {
            final parsed = DateTime.parse(availEnd.toString());
            endTime = DateTime(
              currentDate.year,
              currentDate.month,
              currentDate.day,
              parsed.hour,
              parsed.minute,
            );
          }

          // Only add future slots
          if (startTime.isAfter(DateTime.now())) {
            final dateStr = currentDate.toIso8601String().split('T')[0];
            expandedSlots.add({
              'id': '${weeklySlot['id']}_$dateStr',
              'startsAt': startTime,
              'endsAt': endTime,
            });
          }
        }
      }

      currentDate = currentDate.add(const Duration(days: 1));
    }

    // Filter out booked slots
    return _filterBookedSlots(expandedSlots, bookedSlots);
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
