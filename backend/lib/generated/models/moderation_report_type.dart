import 'package:freezed_annotation/freezed_annotation.dart';

enum ModerationReportType {
  @JsonValue('REVIEW')
  review,
  @JsonValue('PROFILE')
  profile,
  @JsonValue('MESSAGE')
  message,
  @JsonValue('DOCUMENT')
  document,
  @JsonValue('OTHER')
  other,
}
