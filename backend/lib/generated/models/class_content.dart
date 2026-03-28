import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'class_plan.dart';

part 'class_content.freezed.dart';
part 'class_content.g.dart';

@freezed
class ClassContent with _$ClassContent {
  const factory ClassContent({
    required String id,
    required String title,
    required String description,
    String? contentType,
    String? contentUrl,
    required int order,
    required double hoursAllotted,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ClassPlan? classPlan,
    required String classPlanId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ClassContent;

  factory ClassContent.fromJson(Map<String, dynamic> json) =>
      _$ClassContentFromJson(json);
}

/// Input for creating a new ClassContent
@freezed
class CreateClassContentInput with _$CreateClassContentInput {
  const factory CreateClassContentInput({
    required String title,
    required String description,
    String? contentType,
    String? contentUrl,
    required int order,
    required double hoursAllotted,
    required String classPlanId,
  }) = _CreateClassContentInput;

  factory CreateClassContentInput.fromJson(Map<String, dynamic> json) =>
      _$CreateClassContentInputFromJson(json);
}

/// Input for updating an existing ClassContent
@freezed
class UpdateClassContentInput with _$UpdateClassContentInput {
  const factory UpdateClassContentInput({
    String? title,
    String? description,
    String? contentType,
    String? contentUrl,
    int? order,
    double? hoursAllotted,
    String? classPlanId,
  }) = _UpdateClassContentInput;

  factory UpdateClassContentInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateClassContentInputFromJson(json);
}

/// Unique where input for ClassContent
/// At least one field must be provided
@freezed
class ClassContentWhereUniqueInput with _$ClassContentWhereUniqueInput {
  const factory ClassContentWhereUniqueInput({
    String? id,
  }) = _ClassContentWhereUniqueInput;

  factory ClassContentWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ClassContentWhereUniqueInputFromJson(json);
}

/// Where input for filtering ClassContent records
@freezed
class ClassContentWhereInput with _$ClassContentWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ClassContentWhereInput({
    StringFilter? id,
    StringFilter? title,
    StringFilter? description,
    StringFilter? contentType,
    StringFilter? contentUrl,
    IntFilter? order,
    FloatFilter? hoursAllotted,
    /// Filter by classPlan relation
    ClassPlanRelationFilter? classPlan,
    StringFilter? classPlanId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<ClassContentWhereInput>? AND,
    List<ClassContentWhereInput>? OR,
    ClassContentWhereInput? NOT,
  }) = _ClassContentWhereInput;

  factory ClassContentWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ClassContentWhereInputFromJson(json);
}

/// Filter for ClassContent list relations (one-to-many, many-to-many)
@freezed
class ClassContentListRelationFilter with _$ClassContentListRelationFilter {
  const factory ClassContentListRelationFilter({
    /// At least one related record matches
    ClassContentWhereInput? some,
    /// All related records match
    ClassContentWhereInput? every,
    /// No related records match
    ClassContentWhereInput? none,
  }) = _ClassContentListRelationFilter;

  factory ClassContentListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ClassContentListRelationFilterFromJson(json);
}

/// Filter for ClassContent single relations (one-to-one, many-to-one)
@freezed
class ClassContentRelationFilter with _$ClassContentRelationFilter {
  const factory ClassContentRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ClassContentWhereInput? is_,
    /// Related record does not match
    ClassContentWhereInput? isNot,
  }) = _ClassContentRelationFilter;

  factory ClassContentRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ClassContentRelationFilterFromJson(json);
}

/// Order by input for sorting ClassContent records
@freezed
class ClassContentOrderByInput with _$ClassContentOrderByInput {
  const factory ClassContentOrderByInput({
    SortOrder? id,
    SortOrder? title,
    SortOrder? description,
    SortOrder? contentType,
    SortOrder? contentUrl,
    SortOrder? order,
    SortOrder? hoursAllotted,
    SortOrder? classPlanId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _ClassContentOrderByInput;

  factory ClassContentOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ClassContentOrderByInputFromJson(json);
}

