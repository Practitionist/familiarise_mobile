import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'sub_domain.dart';
import 'tag.dart';
import 'consultant_profile.dart';

part 'domain.freezed.dart';
part 'domain.g.dart';

@freezed
class Domain with _$Domain {
  const factory Domain({
    required String id,
    required String name,
    required List<SubDomain> subDomains,
    required List<Tag> tags,
    required List<ConsultantProfile> consultantProfiles,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Domain;

  factory Domain.fromJson(Map<String, dynamic> json) =>
      _$DomainFromJson(json);
}

/// Input for creating a new Domain
@freezed
class CreateDomainInput with _$CreateDomainInput {
  const factory CreateDomainInput({
    required String name,
  }) = _CreateDomainInput;

  factory CreateDomainInput.fromJson(Map<String, dynamic> json) =>
      _$CreateDomainInputFromJson(json);
}

/// Input for updating an existing Domain
@freezed
class UpdateDomainInput with _$UpdateDomainInput {
  const factory UpdateDomainInput({
    String? name,
  }) = _UpdateDomainInput;

  factory UpdateDomainInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateDomainInputFromJson(json);
}

/// Unique where input for Domain
/// At least one field must be provided
@freezed
class DomainWhereUniqueInput with _$DomainWhereUniqueInput {
  const factory DomainWhereUniqueInput({
    String? id,
    String? name,
  }) = _DomainWhereUniqueInput;

  factory DomainWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$DomainWhereUniqueInputFromJson(json);
}

/// Where input for filtering Domain records
@freezed
class DomainWhereInput with _$DomainWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory DomainWhereInput({
    StringFilter? id,
    StringFilter? name,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<DomainWhereInput>? AND,
    List<DomainWhereInput>? OR,
    DomainWhereInput? NOT,
  }) = _DomainWhereInput;

  factory DomainWhereInput.fromJson(Map<String, dynamic> json) =>
      _$DomainWhereInputFromJson(json);
}

/// Filter for Domain list relations (one-to-many, many-to-many)
@freezed
class DomainListRelationFilter with _$DomainListRelationFilter {
  const factory DomainListRelationFilter({
    /// At least one related record matches
    DomainWhereInput? some,
    /// All related records match
    DomainWhereInput? every,
    /// No related records match
    DomainWhereInput? none,
  }) = _DomainListRelationFilter;

  factory DomainListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$DomainListRelationFilterFromJson(json);
}

/// Filter for Domain single relations (one-to-one, many-to-one)
@freezed
class DomainRelationFilter with _$DomainRelationFilter {
  const factory DomainRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') DomainWhereInput? is_,
    /// Related record does not match
    DomainWhereInput? isNot,
  }) = _DomainRelationFilter;

  factory DomainRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$DomainRelationFilterFromJson(json);
}

/// Order by input for sorting Domain records
@freezed
class DomainOrderByInput with _$DomainOrderByInput {
  const factory DomainOrderByInput({
    SortOrder? id,
    SortOrder? name,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _DomainOrderByInput;

  factory DomainOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$DomainOrderByInputFromJson(json);
}

