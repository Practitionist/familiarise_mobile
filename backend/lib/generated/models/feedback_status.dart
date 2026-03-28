import 'package:freezed_annotation/freezed_annotation.dart';

enum FeedbackStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('ACKNOWLEDGED')
  acknowledged,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('RESOLVED')
  resolved,
  @JsonValue('CLOSED')
  closed,
}
