import 'package:freezed_annotation/freezed_annotation.dart';

enum WaitlistStatus {
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
