import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'profile_verification_status.dart';
import 'consultant_profile.dart';
import 'profile_verification_document.dart';

part 'consultant_profile_verification.freezed.dart';
part 'consultant_profile_verification.g.dart';

@freezed
class ConsultantProfileVerification with _$ConsultantProfileVerification {
  const factory ConsultantProfileVerification({
    required String id,
    @Default(ProfileVerificationStatus.pending)
    ProfileVerificationStatus status,
    required String consultantProfileId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
    required DateTime submittedAt,
    String? notes,
    DateTime? reviewedAt,
    String? reviewedById,
    String? reviewNotes,
    String? rejectionReason,
    String? feedbackDetails,
    required List<ProfileVerificationDocument> documents,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ConsultantProfileVerification;

  factory ConsultantProfileVerification.fromJson(Map<String, dynamic> json) =>
      _$ConsultantProfileVerificationFromJson(json);
}

/// Input for creating a new ConsultantProfileVerification
@freezed
class CreateConsultantProfileVerificationInput with _$CreateConsultantProfileVerificationInput {
  const factory CreateConsultantProfileVerificationInput({
    @Default(ProfileVerificationStatus.pending)
    ProfileVerificationStatus status,
    required String consultantProfileId,
    String? notes,
    DateTime? reviewedAt,
    String? reviewedById,
    String? reviewNotes,
    String? rejectionReason,
    String? feedbackDetails,
  }) = _CreateConsultantProfileVerificationInput;

  factory CreateConsultantProfileVerificationInput.fromJson(Map<String, dynamic> json) =>
      _$CreateConsultantProfileVerificationInputFromJson(json);
}

/// Input for updating an existing ConsultantProfileVerification
@freezed
class UpdateConsultantProfileVerificationInput with _$UpdateConsultantProfileVerificationInput {
  const factory UpdateConsultantProfileVerificationInput({
    ProfileVerificationStatus? status,
    String? consultantProfileId,
    String? notes,
    DateTime? reviewedAt,
    String? reviewedById,
    String? reviewNotes,
    String? rejectionReason,
    String? feedbackDetails,
  }) = _UpdateConsultantProfileVerificationInput;

  factory UpdateConsultantProfileVerificationInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateConsultantProfileVerificationInputFromJson(json);
}

/// Unique where input for ConsultantProfileVerification
/// At least one field must be provided
@freezed
class ConsultantProfileVerificationWhereUniqueInput with _$ConsultantProfileVerificationWhereUniqueInput {
  const factory ConsultantProfileVerificationWhereUniqueInput({
    String? id,
  }) = _ConsultantProfileVerificationWhereUniqueInput;

  factory ConsultantProfileVerificationWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultantProfileVerificationWhereUniqueInputFromJson(json);
}

/// Where input for filtering ConsultantProfileVerification records
@freezed
class ConsultantProfileVerificationWhereInput with _$ConsultantProfileVerificationWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ConsultantProfileVerificationWhereInput({
    StringFilter? id,
    ProfileVerificationStatusFilter? status,
    StringFilter? consultantProfileId,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    DateTimeFilter? submittedAt,
    StringFilter? notes,
    DateTimeFilter? reviewedAt,
    StringFilter? reviewedById,
    StringFilter? reviewNotes,
    StringFilter? rejectionReason,
    StringFilter? feedbackDetails,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<ConsultantProfileVerificationWhereInput>? AND,
    List<ConsultantProfileVerificationWhereInput>? OR,
    ConsultantProfileVerificationWhereInput? NOT,
  }) = _ConsultantProfileVerificationWhereInput;

  factory ConsultantProfileVerificationWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultantProfileVerificationWhereInputFromJson(json);
}

/// Filter for ConsultantProfileVerification list relations (one-to-many, many-to-many)
@freezed
class ConsultantProfileVerificationListRelationFilter with _$ConsultantProfileVerificationListRelationFilter {
  const factory ConsultantProfileVerificationListRelationFilter({
    /// At least one related record matches
    ConsultantProfileVerificationWhereInput? some,
    /// All related records match
    ConsultantProfileVerificationWhereInput? every,
    /// No related records match
    ConsultantProfileVerificationWhereInput? none,
  }) = _ConsultantProfileVerificationListRelationFilter;

  factory ConsultantProfileVerificationListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsultantProfileVerificationListRelationFilterFromJson(json);
}

/// Filter for ConsultantProfileVerification single relations (one-to-one, many-to-one)
@freezed
class ConsultantProfileVerificationRelationFilter with _$ConsultantProfileVerificationRelationFilter {
  const factory ConsultantProfileVerificationRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ConsultantProfileVerificationWhereInput? is_,
    /// Related record does not match
    ConsultantProfileVerificationWhereInput? isNot,
  }) = _ConsultantProfileVerificationRelationFilter;

  factory ConsultantProfileVerificationRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsultantProfileVerificationRelationFilterFromJson(json);
}

/// Order by input for sorting ConsultantProfileVerification records
@freezed
class ConsultantProfileVerificationOrderByInput with _$ConsultantProfileVerificationOrderByInput {
  const factory ConsultantProfileVerificationOrderByInput({
    SortOrder? id,
    SortOrder? consultantProfileId,
    SortOrder? submittedAt,
    SortOrder? notes,
    SortOrder? reviewedAt,
    SortOrder? reviewedById,
    SortOrder? reviewNotes,
    SortOrder? rejectionReason,
    SortOrder? feedbackDetails,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _ConsultantProfileVerificationOrderByInput;

  factory ConsultantProfileVerificationOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultantProfileVerificationOrderByInputFromJson(json);
}

