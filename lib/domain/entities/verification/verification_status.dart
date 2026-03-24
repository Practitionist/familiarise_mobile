import 'package:freezed_annotation/freezed_annotation.dart';

/// Verification status enum matching backend ProfileVerificationStatus.
enum VerificationStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('APPROVED')
  approved,
  @JsonValue('REJECTED')
  rejected,
  @JsonValue('NEEDS_INFO')
  needsInfo,
  @JsonValue('SUPERSEDED')
  superseded,
}

extension VerificationStatusX on VerificationStatus {
  String get displayLabel => switch (this) {
        VerificationStatus.pending => 'Pending Review',
        VerificationStatus.approved => 'Approved',
        VerificationStatus.rejected => 'Rejected',
        VerificationStatus.needsInfo => 'More Info Needed',
        VerificationStatus.superseded => 'Superseded',
      };

  bool get isPending => this == VerificationStatus.pending;
  bool get isApproved => this == VerificationStatus.approved;
  bool get canResubmit =>
      this == VerificationStatus.rejected ||
      this == VerificationStatus.needsInfo;
}
