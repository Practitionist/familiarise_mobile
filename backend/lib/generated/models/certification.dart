import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'user.dart';

part 'certification.freezed.dart';
part 'certification.g.dart';

@freezed
class Certification with _$Certification {
  const factory Certification({
    required String id,
    required String name,
    required String issuingOrganization,
    required DateTime issueDate,
    DateTime? expiryDate,
    String? credentialId,
    String? credentialUrl,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Certification;

  factory Certification.fromJson(Map<String, dynamic> json) =>
      _$CertificationFromJson(json);
}

/// Input for creating a new Certification
@freezed
class CreateCertificationInput with _$CreateCertificationInput {
  const factory CreateCertificationInput({
    required String name,
    required String issuingOrganization,
    required DateTime issueDate,
    DateTime? expiryDate,
    String? credentialId,
    String? credentialUrl,
    required String userId,
  }) = _CreateCertificationInput;

  factory CreateCertificationInput.fromJson(Map<String, dynamic> json) =>
      _$CreateCertificationInputFromJson(json);
}

/// Input for updating an existing Certification
@freezed
class UpdateCertificationInput with _$UpdateCertificationInput {
  const factory UpdateCertificationInput({
    String? name,
    String? issuingOrganization,
    DateTime? issueDate,
    DateTime? expiryDate,
    String? credentialId,
    String? credentialUrl,
    String? userId,
  }) = _UpdateCertificationInput;

  factory UpdateCertificationInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateCertificationInputFromJson(json);
}

/// Unique where input for Certification
/// At least one field must be provided
@freezed
class CertificationWhereUniqueInput with _$CertificationWhereUniqueInput {
  const factory CertificationWhereUniqueInput({
    String? id,
  }) = _CertificationWhereUniqueInput;

  factory CertificationWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$CertificationWhereUniqueInputFromJson(json);
}

/// Where input for filtering Certification records
@freezed
class CertificationWhereInput with _$CertificationWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory CertificationWhereInput({
    StringFilter? id,
    StringFilter? name,
    StringFilter? issuingOrganization,
    DateTimeFilter? issueDate,
    DateTimeFilter? expiryDate,
    StringFilter? credentialId,
    StringFilter? credentialUrl,
    /// Filter by user relation
    UserRelationFilter? user,
    StringFilter? userId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<CertificationWhereInput>? AND,
    List<CertificationWhereInput>? OR,
    CertificationWhereInput? NOT,
  }) = _CertificationWhereInput;

  factory CertificationWhereInput.fromJson(Map<String, dynamic> json) =>
      _$CertificationWhereInputFromJson(json);
}

/// Filter for Certification list relations (one-to-many, many-to-many)
@freezed
class CertificationListRelationFilter with _$CertificationListRelationFilter {
  const factory CertificationListRelationFilter({
    /// At least one related record matches
    CertificationWhereInput? some,
    /// All related records match
    CertificationWhereInput? every,
    /// No related records match
    CertificationWhereInput? none,
  }) = _CertificationListRelationFilter;

  factory CertificationListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$CertificationListRelationFilterFromJson(json);
}

/// Filter for Certification single relations (one-to-one, many-to-one)
@freezed
class CertificationRelationFilter with _$CertificationRelationFilter {
  const factory CertificationRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') CertificationWhereInput? is_,
    /// Related record does not match
    CertificationWhereInput? isNot,
  }) = _CertificationRelationFilter;

  factory CertificationRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$CertificationRelationFilterFromJson(json);
}

/// Order by input for sorting Certification records
@freezed
class CertificationOrderByInput with _$CertificationOrderByInput {
  const factory CertificationOrderByInput({
    SortOrder? id,
    SortOrder? name,
    SortOrder? issuingOrganization,
    SortOrder? issueDate,
    SortOrder? expiryDate,
    SortOrder? credentialId,
    SortOrder? credentialUrl,
    SortOrder? userId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _CertificationOrderByInput;

  factory CertificationOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$CertificationOrderByInputFromJson(json);
}

