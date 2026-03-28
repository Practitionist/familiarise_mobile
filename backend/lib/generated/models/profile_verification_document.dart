import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'consultant_profile_verification.dart';

part 'profile_verification_document.freezed.dart';
part 'profile_verification_document.g.dart';

@freezed
class ProfileVerificationDocument with _$ProfileVerificationDocument {
  const factory ProfileVerificationDocument({
    required String id,
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    String? description,
    bool? isValid,
    String? staffFeedback,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfileVerification? verification,
    required String verificationId,
    required DateTime uploadedAt,
  }) = _ProfileVerificationDocument;

  factory ProfileVerificationDocument.fromJson(Map<String, dynamic> json) =>
      _$ProfileVerificationDocumentFromJson(json);
}

/// Input for creating a new ProfileVerificationDocument
@freezed
class CreateProfileVerificationDocumentInput with _$CreateProfileVerificationDocumentInput {
  const factory CreateProfileVerificationDocumentInput({
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    String? description,
    bool? isValid,
    String? staffFeedback,
    required String verificationId,
  }) = _CreateProfileVerificationDocumentInput;

  factory CreateProfileVerificationDocumentInput.fromJson(Map<String, dynamic> json) =>
      _$CreateProfileVerificationDocumentInputFromJson(json);
}

/// Input for updating an existing ProfileVerificationDocument
@freezed
class UpdateProfileVerificationDocumentInput with _$UpdateProfileVerificationDocumentInput {
  const factory UpdateProfileVerificationDocumentInput({
    String? fileName,
    String? originalName,
    int? fileSize,
    String? mimeType,
    String? fileUrl,
    String? storagePath,
    String? description,
    bool? isValid,
    String? staffFeedback,
    String? verificationId,
  }) = _UpdateProfileVerificationDocumentInput;

  factory UpdateProfileVerificationDocumentInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileVerificationDocumentInputFromJson(json);
}

/// Unique where input for ProfileVerificationDocument
/// At least one field must be provided
@freezed
class ProfileVerificationDocumentWhereUniqueInput with _$ProfileVerificationDocumentWhereUniqueInput {
  const factory ProfileVerificationDocumentWhereUniqueInput({
    String? id,
  }) = _ProfileVerificationDocumentWhereUniqueInput;

  factory ProfileVerificationDocumentWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ProfileVerificationDocumentWhereUniqueInputFromJson(json);
}

/// Where input for filtering ProfileVerificationDocument records
@freezed
class ProfileVerificationDocumentWhereInput with _$ProfileVerificationDocumentWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ProfileVerificationDocumentWhereInput({
    StringFilter? id,
    StringFilter? fileName,
    StringFilter? originalName,
    IntFilter? fileSize,
    StringFilter? mimeType,
    StringFilter? fileUrl,
    StringFilter? storagePath,
    StringFilter? description,
    BooleanFilter? isValid,
    StringFilter? staffFeedback,
    /// Filter by verification relation
    ConsultantProfileVerificationRelationFilter? verification,
    StringFilter? verificationId,
    DateTimeFilter? uploadedAt,
    List<ProfileVerificationDocumentWhereInput>? AND,
    List<ProfileVerificationDocumentWhereInput>? OR,
    ProfileVerificationDocumentWhereInput? NOT,
  }) = _ProfileVerificationDocumentWhereInput;

  factory ProfileVerificationDocumentWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ProfileVerificationDocumentWhereInputFromJson(json);
}

/// Filter for ProfileVerificationDocument list relations (one-to-many, many-to-many)
@freezed
class ProfileVerificationDocumentListRelationFilter with _$ProfileVerificationDocumentListRelationFilter {
  const factory ProfileVerificationDocumentListRelationFilter({
    /// At least one related record matches
    ProfileVerificationDocumentWhereInput? some,
    /// All related records match
    ProfileVerificationDocumentWhereInput? every,
    /// No related records match
    ProfileVerificationDocumentWhereInput? none,
  }) = _ProfileVerificationDocumentListRelationFilter;

  factory ProfileVerificationDocumentListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ProfileVerificationDocumentListRelationFilterFromJson(json);
}

/// Filter for ProfileVerificationDocument single relations (one-to-one, many-to-one)
@freezed
class ProfileVerificationDocumentRelationFilter with _$ProfileVerificationDocumentRelationFilter {
  const factory ProfileVerificationDocumentRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ProfileVerificationDocumentWhereInput? is_,
    /// Related record does not match
    ProfileVerificationDocumentWhereInput? isNot,
  }) = _ProfileVerificationDocumentRelationFilter;

  factory ProfileVerificationDocumentRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ProfileVerificationDocumentRelationFilterFromJson(json);
}

/// Order by input for sorting ProfileVerificationDocument records
@freezed
class ProfileVerificationDocumentOrderByInput with _$ProfileVerificationDocumentOrderByInput {
  const factory ProfileVerificationDocumentOrderByInput({
    SortOrder? id,
    SortOrder? fileName,
    SortOrder? originalName,
    SortOrder? fileSize,
    SortOrder? mimeType,
    SortOrder? fileUrl,
    SortOrder? storagePath,
    SortOrder? description,
    SortOrder? isValid,
    SortOrder? staffFeedback,
    SortOrder? verificationId,
    SortOrder? uploadedAt,
  }) = _ProfileVerificationDocumentOrderByInput;

  factory ProfileVerificationDocumentOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ProfileVerificationDocumentOrderByInputFromJson(json);
}

