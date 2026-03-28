import 'package:freezed_annotation/freezed_annotation.dart';

enum DocumentReviewStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('IN_REVIEW')
  inReview,
  @JsonValue('APPROVED')
  approved,
  @JsonValue('REJECTED')
  rejected,
  @JsonValue('NEEDS_REVISION')
  needsRevision,
}
