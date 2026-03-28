import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'user.dart';

part 'education.freezed.dart';
part 'education.g.dart';

@freezed
class Education with _$Education {
  const factory Education({
    required String id,
    required String institution,
    String? institutionDomain,
    required String degree,
    String? fieldOfStudy,
    int? startYear,
    int? endYear,
    String? grade,
    String? activities,
    String? description,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Education;

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);
}

/// Input for creating a new Education
@freezed
class CreateEducationInput with _$CreateEducationInput {
  const factory CreateEducationInput({
    required String institution,
    String? institutionDomain,
    required String degree,
    String? fieldOfStudy,
    int? startYear,
    int? endYear,
    String? grade,
    String? activities,
    String? description,
    required String userId,
  }) = _CreateEducationInput;

  factory CreateEducationInput.fromJson(Map<String, dynamic> json) =>
      _$CreateEducationInputFromJson(json);
}

/// Input for updating an existing Education
@freezed
class UpdateEducationInput with _$UpdateEducationInput {
  const factory UpdateEducationInput({
    String? institution,
    String? institutionDomain,
    String? degree,
    String? fieldOfStudy,
    int? startYear,
    int? endYear,
    String? grade,
    String? activities,
    String? description,
    String? userId,
  }) = _UpdateEducationInput;

  factory UpdateEducationInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateEducationInputFromJson(json);
}

/// Unique where input for Education
/// At least one field must be provided
@freezed
class EducationWhereUniqueInput with _$EducationWhereUniqueInput {
  const factory EducationWhereUniqueInput({
    String? id,
  }) = _EducationWhereUniqueInput;

  factory EducationWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$EducationWhereUniqueInputFromJson(json);
}

/// Where input for filtering Education records
@freezed
class EducationWhereInput with _$EducationWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory EducationWhereInput({
    StringFilter? id,
    StringFilter? institution,
    StringFilter? institutionDomain,
    StringFilter? degree,
    StringFilter? fieldOfStudy,
    IntFilter? startYear,
    IntFilter? endYear,
    StringFilter? grade,
    StringFilter? activities,
    StringFilter? description,
    /// Filter by user relation
    UserRelationFilter? user,
    StringFilter? userId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<EducationWhereInput>? AND,
    List<EducationWhereInput>? OR,
    EducationWhereInput? NOT,
  }) = _EducationWhereInput;

  factory EducationWhereInput.fromJson(Map<String, dynamic> json) =>
      _$EducationWhereInputFromJson(json);
}

/// Filter for Education list relations (one-to-many, many-to-many)
@freezed
class EducationListRelationFilter with _$EducationListRelationFilter {
  const factory EducationListRelationFilter({
    /// At least one related record matches
    EducationWhereInput? some,
    /// All related records match
    EducationWhereInput? every,
    /// No related records match
    EducationWhereInput? none,
  }) = _EducationListRelationFilter;

  factory EducationListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$EducationListRelationFilterFromJson(json);
}

/// Filter for Education single relations (one-to-one, many-to-one)
@freezed
class EducationRelationFilter with _$EducationRelationFilter {
  const factory EducationRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') EducationWhereInput? is_,
    /// Related record does not match
    EducationWhereInput? isNot,
  }) = _EducationRelationFilter;

  factory EducationRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$EducationRelationFilterFromJson(json);
}

/// Order by input for sorting Education records
@freezed
class EducationOrderByInput with _$EducationOrderByInput {
  const factory EducationOrderByInput({
    SortOrder? id,
    SortOrder? institution,
    SortOrder? institutionDomain,
    SortOrder? degree,
    SortOrder? fieldOfStudy,
    SortOrder? startYear,
    SortOrder? endYear,
    SortOrder? grade,
    SortOrder? activities,
    SortOrder? description,
    SortOrder? userId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _EducationOrderByInput;

  factory EducationOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$EducationOrderByInputFromJson(json);
}

