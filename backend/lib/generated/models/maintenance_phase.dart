import 'package:freezed_annotation/freezed_annotation.dart';

enum MaintenancePhase {
  @JsonValue('OFF')
  off,
  @JsonValue('DEGRADED')
  degraded,
  @JsonValue('OFFLINE')
  offline,
}
