import 'package:freezed_annotation/freezed_annotation.dart';

enum ProfileVerificationStatus {
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
