import 'package:freezed_annotation/freezed_annotation.dart';

enum AppointmentsType {
  @JsonValue('CONSULTATION')
  consultation,
  @JsonValue('SUBSCRIPTION')
  subscription,
  @JsonValue('WEBINAR')
  webinar,
  @JsonValue('CLASS')
  classValue,
  @JsonValue('TRIAL')
  trial,
}
