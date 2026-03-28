import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'member.dart';
import 'invitation.dart';

part 'organization.freezed.dart';
part 'organization.g.dart';

@freezed
class Organization with _$Organization {
  const factory Organization({
    required String id,
    required String name,
    required String slug,
    String? logo,
    Map<String, dynamic>? metadata,
    required List<Member> members,
    required List<Invitation> invitations,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Organization;

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);
}

/// Input for creating a new Organization
@freezed
class CreateOrganizationInput with _$CreateOrganizationInput {
  const factory CreateOrganizationInput({
    required String name,
    required String slug,
    String? logo,
    Map<String, dynamic>? metadata,
  }) = _CreateOrganizationInput;

  factory CreateOrganizationInput.fromJson(Map<String, dynamic> json) =>
      _$CreateOrganizationInputFromJson(json);
}

/// Input for updating an existing Organization
@freezed
class UpdateOrganizationInput with _$UpdateOrganizationInput {
  const factory UpdateOrganizationInput({
    String? name,
    String? slug,
    String? logo,
    Map<String, dynamic>? metadata,
  }) = _UpdateOrganizationInput;

  factory UpdateOrganizationInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrganizationInputFromJson(json);
}

/// Unique where input for Organization
/// At least one field must be provided
@freezed
class OrganizationWhereUniqueInput with _$OrganizationWhereUniqueInput {
  const factory OrganizationWhereUniqueInput({
    String? id,
    String? slug,
  }) = _OrganizationWhereUniqueInput;

  factory OrganizationWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$OrganizationWhereUniqueInputFromJson(json);
}

/// Where input for filtering Organization records
@freezed
class OrganizationWhereInput with _$OrganizationWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory OrganizationWhereInput({
    StringFilter? id,
    StringFilter? name,
    StringFilter? slug,
    StringFilter? logo,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<OrganizationWhereInput>? AND,
    List<OrganizationWhereInput>? OR,
    OrganizationWhereInput? NOT,
  }) = _OrganizationWhereInput;

  factory OrganizationWhereInput.fromJson(Map<String, dynamic> json) =>
      _$OrganizationWhereInputFromJson(json);
}

/// Filter for Organization list relations (one-to-many, many-to-many)
@freezed
class OrganizationListRelationFilter with _$OrganizationListRelationFilter {
  const factory OrganizationListRelationFilter({
    /// At least one related record matches
    OrganizationWhereInput? some,
    /// All related records match
    OrganizationWhereInput? every,
    /// No related records match
    OrganizationWhereInput? none,
  }) = _OrganizationListRelationFilter;

  factory OrganizationListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$OrganizationListRelationFilterFromJson(json);
}

/// Filter for Organization single relations (one-to-one, many-to-one)
@freezed
class OrganizationRelationFilter with _$OrganizationRelationFilter {
  const factory OrganizationRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') OrganizationWhereInput? is_,
    /// Related record does not match
    OrganizationWhereInput? isNot,
  }) = _OrganizationRelationFilter;

  factory OrganizationRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$OrganizationRelationFilterFromJson(json);
}

/// Order by input for sorting Organization records
@freezed
class OrganizationOrderByInput with _$OrganizationOrderByInput {
  const factory OrganizationOrderByInput({
    SortOrder? id,
    SortOrder? name,
    SortOrder? slug,
    SortOrder? logo,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _OrganizationOrderByInput;

  factory OrganizationOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$OrganizationOrderByInputFromJson(json);
}

