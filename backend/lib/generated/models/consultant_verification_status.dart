import 'package:freezed_annotation/freezed_annotation.dart';

enum ConsultantVerificationStatus {
  @JsonValue('PENDING_VERIFICATION')
  pendingVerification,
  @JsonValue('UNDER_REVIEW')
  underReview,
  @JsonValue('VERIFIED')
  verified,
  @JsonValue('REJECTED')
  rejected,
}
