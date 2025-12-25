import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability.freezed.dart';
part 'availability.g.dart';

/// Represents a single available time slot
@freezed
class AvailabilitySlot with _$AvailabilitySlot {
  const factory AvailabilitySlot({
    required String id,
    required DateTime startsAt,
    required DateTime endsAt,
    @Default(false) bool isBooked,
    @Default(false) bool isTentative,
  }) = _AvailabilitySlot;

  const AvailabilitySlot._();

  factory AvailabilitySlot.fromJson(Map<String, dynamic> json) =>
      _$AvailabilitySlotFromJson(json);

  /// Duration of the slot
  Duration get duration => endsAt.difference(startsAt);

  /// Formatted time range (e.g., "9:00 AM - 10:00 AM")
  /// Times are converted from UTC to local timezone for display
  String get formattedTimeRange {
    final localStart = startsAt.toLocal();
    final localEnd = endsAt.toLocal();

    final startHour = localStart.hour % 12 == 0 ? 12 : localStart.hour % 12;
    final startMin = localStart.minute.toString().padLeft(2, '0');
    final startPeriod = localStart.hour < 12 ? 'AM' : 'PM';

    final endHour = localEnd.hour % 12 == 0 ? 12 : localEnd.hour % 12;
    final endMin = localEnd.minute.toString().padLeft(2, '0');
    final endPeriod = localEnd.hour < 12 ? 'AM' : 'PM';

    return '$startHour:$startMin $startPeriod - $endHour:$endMin $endPeriod';
  }

  /// Whether this slot is in the past (compares UTC times)
  bool get isPast => startsAt.isBefore(DateTime.now().toUtc());

  /// Whether this slot is available for booking
  bool get isAvailable => !isBooked && !isTentative && !isPast;
}

/// Represents availability for a single day
@freezed
class DayAvailability with _$DayAvailability {
  const factory DayAvailability({
    required DateTime date,
    required List<AvailabilitySlot> slots,
  }) = _DayAvailability;

  const DayAvailability._();

  factory DayAvailability.fromJson(Map<String, dynamic> json) =>
      _$DayAvailabilityFromJson(json);

  /// Get only available slots
  List<AvailabilitySlot> get availableSlots =>
      slots.where((s) => s.isAvailable).toList();

  /// Whether this day has any available slots
  bool get hasAvailableSlots => availableSlots.isNotEmpty;

  /// Formatted date (e.g., "Mon, Jan 15")
  /// Date is converted from UTC to local timezone for display
  String get formattedDate {
    final localDate = date.toLocal();
    const weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    const months = [
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
    final weekday = weekdays[localDate.weekday - 1];
    final month = months[localDate.month - 1];
    return '$weekday, $month ${localDate.day}';
  }
}

/// Full availability response from API
@freezed
class AvailabilityResponse with _$AvailabilityResponse {
  const factory AvailabilityResponse({
    required List<DayAvailability> availability,
  }) = _AvailabilityResponse;

  factory AvailabilityResponse.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityResponseFromJson(json);
}
