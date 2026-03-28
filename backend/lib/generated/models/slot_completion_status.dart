import 'package:freezed_annotation/freezed_annotation.dart';

enum SlotCompletionStatus {
  @JsonValue('SCHEDULED')
  scheduled,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('UNVERIFIED')
  unverified,
  @JsonValue('CANCELLED')
  cancelled,
  @JsonValue('RESCHEDULED')
  rescheduled,
}
