import 'package:freezed_annotation/freezed_annotation.dart';

enum PlanEmailSupport {
  @JsonValue('GENERAL')
  general,
  @JsonValue('PRIORITY')
  priority,
  @JsonValue('DEDICATED')
  dedicated,
}
