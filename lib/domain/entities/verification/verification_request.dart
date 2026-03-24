import 'package:freezed_annotation/freezed_annotation.dart';

import 'verification_document.dart';
import 'verification_status.dart';

part 'verification_request.freezed.dart';
part 'verification_request.g.dart';

@freezed
class VerificationRequest with _$VerificationRequest {
  const factory VerificationRequest({
    required String id,
    required VerificationStatus status,
    required String consultantProfileId,
    required DateTime submittedAt,
    String? notes,
    DateTime? reviewedAt,
    String? reviewedById,
    String? rejectionReason,
    String? feedbackDetails,
    @Default([]) List<VerificationDocument> documents,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _VerificationRequest;

  const VerificationRequest._();

  factory VerificationRequest.fromJson(Map<String, dynamic> json) =>
      _$VerificationRequestFromJson(json);

  bool get isPending => status.isPending;
  bool get isApproved => status.isApproved;
  bool get canResubmit => status.canResubmit;
}
