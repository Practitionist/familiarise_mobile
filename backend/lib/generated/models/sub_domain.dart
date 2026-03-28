import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'domain.dart';
import 'consultant_profile.dart';

part 'sub_domain.freezed.dart';
part 'sub_domain.g.dart';

@freezed
class SubDomain with _$SubDomain {
  const factory SubDomain({
    required String id,
    required String name,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Domain? domain,
    required String domainId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<ConsultantProfile>? consultantProfiles,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SubDomain;

  factory SubDomain.fromJson(Map<String, dynamic> json) =>
      _$SubDomainFromJson(json);
}

/// Input for creating a new SubDomain
@freezed
class CreateSubDomainInput with _$CreateSubDomainInput {
  const factory CreateSubDomainInput({
    required String name,
    required String domainId,
  }) = _CreateSubDomainInput;

  factory CreateSubDomainInput.fromJson(Map<String, dynamic> json) =>
      _$CreateSubDomainInputFromJson(json);
}

/// Input for updating an existing SubDomain
@freezed
class UpdateSubDomainInput with _$UpdateSubDomainInput {
  const factory UpdateSubDomainInput({
    String? name,
    String? domainId,
  }) = _UpdateSubDomainInput;

  factory UpdateSubDomainInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateSubDomainInputFromJson(json);
}

/// Unique where input for SubDomain
/// At least one field must be provided
@freezed
class SubDomainWhereUniqueInput with _$SubDomainWhereUniqueInput {
  const factory SubDomainWhereUniqueInput({
    String? id,
  }) = _SubDomainWhereUniqueInput;

  factory SubDomainWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$SubDomainWhereUniqueInputFromJson(json);
}

/// Where input for filtering SubDomain records
@freezed
class SubDomainWhereInput with _$SubDomainWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory SubDomainWhereInput({
    StringFilter? id,
    StringFilter? name,
    /// Filter by domain relation
    DomainRelationFilter? domain,
    StringFilter? domainId,
    /// Filter by consultantProfiles relation
    ConsultantProfileListRelationFilter? consultantProfiles,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<SubDomainWhereInput>? AND,
    List<SubDomainWhereInput>? OR,
    SubDomainWhereInput? NOT,
  }) = _SubDomainWhereInput;

  factory SubDomainWhereInput.fromJson(Map<String, dynamic> json) =>
      _$SubDomainWhereInputFromJson(json);
}

/// Filter for SubDomain list relations (one-to-many, many-to-many)
@freezed
class SubDomainListRelationFilter with _$SubDomainListRelationFilter {
  const factory SubDomainListRelationFilter({
    /// At least one related record matches
    SubDomainWhereInput? some,
    /// All related records match
    SubDomainWhereInput? every,
    /// No related records match
    SubDomainWhereInput? none,
  }) = _SubDomainListRelationFilter;

  factory SubDomainListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SubDomainListRelationFilterFromJson(json);
}

/// Filter for SubDomain single relations (one-to-one, many-to-one)
@freezed
class SubDomainRelationFilter with _$SubDomainRelationFilter {
  const factory SubDomainRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') SubDomainWhereInput? is_,
    /// Related record does not match
    SubDomainWhereInput? isNot,
  }) = _SubDomainRelationFilter;

  factory SubDomainRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SubDomainRelationFilterFromJson(json);
}

/// Order by input for sorting SubDomain records
@freezed
class SubDomainOrderByInput with _$SubDomainOrderByInput {
  const factory SubDomainOrderByInput({
    SortOrder? id,
    SortOrder? name,
    SortOrder? domainId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _SubDomainOrderByInput;

  factory SubDomainOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$SubDomainOrderByInputFromJson(json);
}

