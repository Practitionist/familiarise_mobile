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

extension DocumentReviewStatusX on DocumentReviewStatus {
  String get displayLabel => switch (this) {
        DocumentReviewStatus.pending => 'Pending',
        DocumentReviewStatus.inReview => 'In Review',
        DocumentReviewStatus.approved => 'Approved',
        DocumentReviewStatus.rejected => 'Rejected',
        DocumentReviewStatus.needsRevision => 'Needs Revision',
      };

  bool get isPending => this == DocumentReviewStatus.pending;
}
