import 'package:freezed_annotation/freezed_annotation.dart';

enum ModerationReportStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('UNDER_REVIEW')
  underReview,
  @JsonValue('DISMISSED')
  dismissed,
  @JsonValue('ACTION_TAKEN')
  actionTaken,
  @JsonValue('ESCALATED')
  escalated,
}
