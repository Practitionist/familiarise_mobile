import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'user.dart';

part 'work_experience.freezed.dart';
part 'work_experience.g.dart';

@freezed
class WorkExperience with _$WorkExperience {
  const factory WorkExperience({
    required String id,
    required String company,
    String? companyDomain,
    required String title,
    String? location,
    required DateTime startDate,
    DateTime? endDate,
    @Default(false)
    bool isCurrent,
    String? description,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _WorkExperience;

  factory WorkExperience.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceFromJson(json);
}

/// Input for creating a new WorkExperience
@freezed
class CreateWorkExperienceInput with _$CreateWorkExperienceInput {
  const factory CreateWorkExperienceInput({
    required String company,
    String? companyDomain,
    required String title,
    String? location,
    required DateTime startDate,
    DateTime? endDate,
    @Default(false)
    bool? isCurrent,
    String? description,
    required String userId,
  }) = _CreateWorkExperienceInput;

  factory CreateWorkExperienceInput.fromJson(Map<String, dynamic> json) =>
      _$CreateWorkExperienceInputFromJson(json);
}

/// Input for updating an existing WorkExperience
@freezed
class UpdateWorkExperienceInput with _$UpdateWorkExperienceInput {
  const factory UpdateWorkExperienceInput({
    String? company,
    String? companyDomain,
    String? title,
    String? location,
    DateTime? startDate,
    DateTime? endDate,
    bool? isCurrent,
    String? description,
    String? userId,
  }) = _UpdateWorkExperienceInput;

  factory UpdateWorkExperienceInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateWorkExperienceInputFromJson(json);
}

/// Unique where input for WorkExperience
/// At least one field must be provided
@freezed
class WorkExperienceWhereUniqueInput with _$WorkExperienceWhereUniqueInput {
  const factory WorkExperienceWhereUniqueInput({
    String? id,
  }) = _WorkExperienceWhereUniqueInput;

  factory WorkExperienceWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceWhereUniqueInputFromJson(json);
}

/// Where input for filtering WorkExperience records
@freezed
class WorkExperienceWhereInput with _$WorkExperienceWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory WorkExperienceWhereInput({
    StringFilter? id,
    StringFilter? company,
    StringFilter? companyDomain,
    StringFilter? title,
    StringFilter? location,
    DateTimeFilter? startDate,
    DateTimeFilter? endDate,
    BooleanFilter? isCurrent,
    StringFilter? description,
    /// Filter by user relation
    UserRelationFilter? user,
    StringFilter? userId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<WorkExperienceWhereInput>? AND,
    List<WorkExperienceWhereInput>? OR,
    WorkExperienceWhereInput? NOT,
  }) = _WorkExperienceWhereInput;

  factory WorkExperienceWhereInput.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceWhereInputFromJson(json);
}

/// Filter for WorkExperience list relations (one-to-many, many-to-many)
@freezed
class WorkExperienceListRelationFilter with _$WorkExperienceListRelationFilter {
  const factory WorkExperienceListRelationFilter({
    /// At least one related record matches
    WorkExperienceWhereInput? some,
    /// All related records match
    WorkExperienceWhereInput? every,
    /// No related records match
    WorkExperienceWhereInput? none,
  }) = _WorkExperienceListRelationFilter;

  factory WorkExperienceListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceListRelationFilterFromJson(json);
}

/// Filter for WorkExperience single relations (one-to-one, many-to-one)
@freezed
class WorkExperienceRelationFilter with _$WorkExperienceRelationFilter {
  const factory WorkExperienceRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') WorkExperienceWhereInput? is_,
    /// Related record does not match
    WorkExperienceWhereInput? isNot,
  }) = _WorkExperienceRelationFilter;

  factory WorkExperienceRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceRelationFilterFromJson(json);
}

/// Order by input for sorting WorkExperience records
@freezed
class WorkExperienceOrderByInput with _$WorkExperienceOrderByInput {
  const factory WorkExperienceOrderByInput({
    SortOrder? id,
    SortOrder? company,
    SortOrder? companyDomain,
    SortOrder? title,
    SortOrder? location,
    SortOrder? startDate,
    SortOrder? endDate,
    SortOrder? isCurrent,
    SortOrder? description,
    SortOrder? userId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _WorkExperienceOrderByInput;

  factory WorkExperienceOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceOrderByInputFromJson(json);
}

