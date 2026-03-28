import 'package:freezed_annotation/freezed_annotation.dart';

enum ClassStatus {
  @JsonValue('SCHEDULED')
  scheduled,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('CANCELLED')
  cancelled,
}
