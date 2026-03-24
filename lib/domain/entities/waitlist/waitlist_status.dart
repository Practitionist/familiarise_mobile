import 'package:freezed_annotation/freezed_annotation.dart';

enum WaitlistEntryStatus {
  @JsonValue('WAITING')
  waiting,
  @JsonValue('NOTIFIED')
  notified,
  @JsonValue('BOOKED')
  booked,
  @JsonValue('EXPIRED')
  expired,
  @JsonValue('CANCELLED')
  cancelled,
  @JsonValue('SKIPPED')
  skipped,
}

extension WaitlistEntryStatusX on WaitlistEntryStatus {
  String get displayLabel => switch (this) {
        WaitlistEntryStatus.waiting => 'Waiting',
        WaitlistEntryStatus.notified => 'Spot Available',
        WaitlistEntryStatus.booked => 'Booked',
        WaitlistEntryStatus.expired => 'Expired',
        WaitlistEntryStatus.cancelled => 'Cancelled',
        WaitlistEntryStatus.skipped => 'Skipped',
      };

  bool get isActive =>
      this == WaitlistEntryStatus.waiting ||
      this == WaitlistEntryStatus.notified;
}
