import 'package:freezed_annotation/freezed_annotation.dart';

enum ScheduleType {
  @JsonValue('WEEKLY')
  weekly,
  @JsonValue('CUSTOM')
  custom,
}
