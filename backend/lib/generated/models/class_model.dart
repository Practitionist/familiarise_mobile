import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'class_status.dart';
import 'waitlist.dart';
import 'class_plan.dart';
import 'appointment.dart';

part 'class_model.freezed.dart';
part 'class_model.g.dart';

@freezed
class ClassModel with _$ClassModel {
  const factory ClassModel({
    required String id,
    DateTime? schedulingPeriodStartsAt,
    DateTime? schedulingPeriodEndsAt,
    @Default("Asia/Kolkata")
    String schedulingTimezone,
    @Default(ClassStatus.scheduled)
    ClassStatus status,
    required List<Waitlist> waitlist,
    required List<String> recordingUrls,
    String? feedbackSummary,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ClassPlan? classPlan,
    required String classPlanId,
    required List<Appointment> appointments,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ClassModel;

  factory ClassModel.fromJson(Map<String, dynamic> json) =>
      _$ClassModelFromJson(json);
}

/// Input for creating a new ClassModel
@freezed
class CreateClassModelInput with _$CreateClassModelInput {
  const factory CreateClassModelInput({
    DateTime? schedulingPeriodStartsAt,
    DateTime? schedulingPeriodEndsAt,
    @Default("Asia/Kolkata")
    String? schedulingTimezone,
    @Default(ClassStatus.scheduled)
    ClassStatus status,
    required List<String> recordingUrls,
    String? feedbackSummary,
    required String classPlanId,
  }) = _CreateClassModelInput;

  factory CreateClassModelInput.fromJson(Map<String, dynamic> json) =>
      _$CreateClassModelInputFromJson(json);
}

/// Input for updating an existing ClassModel
@freezed
class UpdateClassModelInput with _$UpdateClassModelInput {
  const factory UpdateClassModelInput({
    DateTime? schedulingPeriodStartsAt,
    DateTime? schedulingPeriodEndsAt,
    String? schedulingTimezone,
    ClassStatus? status,
    List<String>? recordingUrls,
    String? feedbackSummary,
    String? classPlanId,
  }) = _UpdateClassModelInput;

  factory UpdateClassModelInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateClassModelInputFromJson(json);
}

/// Unique where input for ClassModel
/// At least one field must be provided
@freezed
class ClassModelWhereUniqueInput with _$ClassModelWhereUniqueInput {
  const factory ClassModelWhereUniqueInput({
    String? id,
  }) = _ClassModelWhereUniqueInput;

  factory ClassModelWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ClassModelWhereUniqueInputFromJson(json);
}

/// Where input for filtering ClassModel records
@freezed
class ClassModelWhereInput with _$ClassModelWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ClassModelWhereInput({
    StringFilter? id,
    DateTimeFilter? schedulingPeriodStartsAt,
    DateTimeFilter? schedulingPeriodEndsAt,
    StringFilter? schedulingTimezone,
    ClassStatusFilter? status,
    StringListFilter? recordingUrls,
    StringFilter? feedbackSummary,
    /// Filter by classPlan relation
    ClassPlanRelationFilter? classPlan,
    StringFilter? classPlanId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<ClassModelWhereInput>? AND,
    List<ClassModelWhereInput>? OR,
    ClassModelWhereInput? NOT,
  }) = _ClassModelWhereInput;

  factory ClassModelWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ClassModelWhereInputFromJson(json);
}

/// Filter for ClassModel list relations (one-to-many, many-to-many)
@freezed
class ClassModelListRelationFilter with _$ClassModelListRelationFilter {
  const factory ClassModelListRelationFilter({
    /// At least one related record matches
    ClassModelWhereInput? some,
    /// All related records match
    ClassModelWhereInput? every,
    /// No related records match
    ClassModelWhereInput? none,
  }) = _ClassModelListRelationFilter;

  factory ClassModelListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ClassModelListRelationFilterFromJson(json);
}

/// Filter for ClassModel single relations (one-to-one, many-to-one)
@freezed
class ClassModelRelationFilter with _$ClassModelRelationFilter {
  const factory ClassModelRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ClassModelWhereInput? is_,
    /// Related record does not match
    ClassModelWhereInput? isNot,
  }) = _ClassModelRelationFilter;

  factory ClassModelRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ClassModelRelationFilterFromJson(json);
}

/// Order by input for sorting ClassModel records
@freezed
class ClassModelOrderByInput with _$ClassModelOrderByInput {
  const factory ClassModelOrderByInput({
    SortOrder? id,
    SortOrder? schedulingPeriodStartsAt,
    SortOrder? schedulingPeriodEndsAt,
    SortOrder? schedulingTimezone,
    SortOrder? recordingUrls,
    SortOrder? feedbackSummary,
    SortOrder? classPlanId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _ClassModelOrderByInput;

  factory ClassModelOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ClassModelOrderByInputFromJson(json);
}

