import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'domain.dart';
import 'consultant_profile.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class Tag with _$Tag {
  const factory Tag({
    required String id,
    required String name,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Domain? domain,
    required String domainId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<ConsultantProfile>? consultantProfiles,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) =>
      _$TagFromJson(json);
}

/// Input for creating a new Tag
@freezed
class CreateTagInput with _$CreateTagInput {
  const factory CreateTagInput({
    required String name,
    required String domainId,
  }) = _CreateTagInput;

  factory CreateTagInput.fromJson(Map<String, dynamic> json) =>
      _$CreateTagInputFromJson(json);
}

/// Input for updating an existing Tag
@freezed
class UpdateTagInput with _$UpdateTagInput {
  const factory UpdateTagInput({
    String? name,
    String? domainId,
  }) = _UpdateTagInput;

  factory UpdateTagInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateTagInputFromJson(json);
}

/// Unique where input for Tag
/// At least one field must be provided
@freezed
class TagWhereUniqueInput with _$TagWhereUniqueInput {
  const factory TagWhereUniqueInput({
    String? id,
  }) = _TagWhereUniqueInput;

  factory TagWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$TagWhereUniqueInputFromJson(json);
}

/// Where input for filtering Tag records
@freezed
class TagWhereInput with _$TagWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory TagWhereInput({
    StringFilter? id,
    StringFilter? name,
    /// Filter by domain relation
    DomainRelationFilter? domain,
    StringFilter? domainId,
    /// Filter by consultantProfiles relation
    ConsultantProfileListRelationFilter? consultantProfiles,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<TagWhereInput>? AND,
    List<TagWhereInput>? OR,
    TagWhereInput? NOT,
  }) = _TagWhereInput;

  factory TagWhereInput.fromJson(Map<String, dynamic> json) =>
      _$TagWhereInputFromJson(json);
}

/// Filter for Tag list relations (one-to-many, many-to-many)
@freezed
class TagListRelationFilter with _$TagListRelationFilter {
  const factory TagListRelationFilter({
    /// At least one related record matches
    TagWhereInput? some,
    /// All related records match
    TagWhereInput? every,
    /// No related records match
    TagWhereInput? none,
  }) = _TagListRelationFilter;

  factory TagListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$TagListRelationFilterFromJson(json);
}

/// Filter for Tag single relations (one-to-one, many-to-one)
@freezed
class TagRelationFilter with _$TagRelationFilter {
  const factory TagRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') TagWhereInput? is_,
    /// Related record does not match
    TagWhereInput? isNot,
  }) = _TagRelationFilter;

  factory TagRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$TagRelationFilterFromJson(json);
}

/// Order by input for sorting Tag records
@freezed
class TagOrderByInput with _$TagOrderByInput {
  const factory TagOrderByInput({
    SortOrder? id,
    SortOrder? name,
    SortOrder? domainId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _TagOrderByInput;

  factory TagOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$TagOrderByInputFromJson(json);
}

