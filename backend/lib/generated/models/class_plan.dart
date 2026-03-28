import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'topic.dart';
import 'class_content.dart';
import 'recording_storage_policy.dart';
import 'plan_email_support.dart';
import 'consultant_profile.dart';
import 'class_model.dart';
import 'plan_material.dart';
import 'class_collaborator.dart';

part 'class_plan.freezed.dart';
part 'class_plan.g.dart';

@freezed
class ClassPlan with _$ClassPlan {
  const factory ClassPlan({
    required String id,
    required String title,
    required String description,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<Topic>? topics,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<ClassContent>? classContents,
    required int price,
    @Default("INR")
    String priceCurrency,
    @Default(false)
    bool certificateProvided,
    @Default(false)
    bool recordingEnabled,
    @Default(RecordingStoragePolicy.streamOnly)
    RecordingStoragePolicy recordingStoragePolicy,
    @Default(1)
    int durationInMonths,
    @Default(1)
    int meetingsPerWeek,
    @Default(1.0)
    double sessionDurationInHours,
    @Default(4)
    int totalSessions,
    @Default(4.0)
    double totalHours,
    @Default(PlanEmailSupport.general)
    PlanEmailSupport emailSupport,
    @Default(1)
    int maxParticipants,
    @Default("English")
    String language,
    @Default("Beginner")
    String level,
    @Default("None")
    String prerequisites,
    @Default("None")
    String materialProvided,
    @Default(<String>[])
    List<String>? learningOutcomes,
    String? imageUrl,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
    String? consultantProfileId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<ClassModel>? classes,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<PlanMaterial>? materials,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<ClassCollaborator>? collaborators,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ClassPlan;

  factory ClassPlan.fromJson(Map<String, dynamic> json) =>
      _$ClassPlanFromJson(json);
}

/// Input for creating a new ClassPlan
@freezed
class CreateClassPlanInput with _$CreateClassPlanInput {
  const factory CreateClassPlanInput({
    required String title,
    required String description,
    required int price,
    @Default("INR")
    String? priceCurrency,
    @Default(false)
    bool? certificateProvided,
    @Default(false)
    bool? recordingEnabled,
    @Default(RecordingStoragePolicy.streamOnly)
    RecordingStoragePolicy recordingStoragePolicy,
    @Default(1)
    int? durationInMonths,
    @Default(1)
    int? meetingsPerWeek,
    @Default(1.0)
    double? sessionDurationInHours,
    @Default(4)
    int? totalSessions,
    @Default(4.0)
    double? totalHours,
    @Default(PlanEmailSupport.general)
    PlanEmailSupport emailSupport,
    @Default(1)
    int? maxParticipants,
    @Default("English")
    String? language,
    @Default("Beginner")
    String? level,
    @Default("None")
    String? prerequisites,
    @Default("None")
    String? materialProvided,
    @Default(<String>[])
    List<String>? learningOutcomes,
    String? imageUrl,
    String? consultantProfileId,
  }) = _CreateClassPlanInput;

  factory CreateClassPlanInput.fromJson(Map<String, dynamic> json) =>
      _$CreateClassPlanInputFromJson(json);
}

/// Input for updating an existing ClassPlan
@freezed
class UpdateClassPlanInput with _$UpdateClassPlanInput {
  const factory UpdateClassPlanInput({
    String? title,
    String? description,
    int? price,
    String? priceCurrency,
    bool? certificateProvided,
    bool? recordingEnabled,
    RecordingStoragePolicy? recordingStoragePolicy,
    int? durationInMonths,
    int? meetingsPerWeek,
    double? sessionDurationInHours,
    int? totalSessions,
    double? totalHours,
    PlanEmailSupport? emailSupport,
    int? maxParticipants,
    String? language,
    String? level,
    String? prerequisites,
    String? materialProvided,
    List<String>? learningOutcomes,
    String? imageUrl,
    String? consultantProfileId,
  }) = _UpdateClassPlanInput;

  factory UpdateClassPlanInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateClassPlanInputFromJson(json);
}

/// Unique where input for ClassPlan
/// At least one field must be provided
@freezed
class ClassPlanWhereUniqueInput with _$ClassPlanWhereUniqueInput {
  const factory ClassPlanWhereUniqueInput({
    String? id,
  }) = _ClassPlanWhereUniqueInput;

  factory ClassPlanWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ClassPlanWhereUniqueInputFromJson(json);
}

/// Where input for filtering ClassPlan records
@freezed
class ClassPlanWhereInput with _$ClassPlanWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ClassPlanWhereInput({
    StringFilter? id,
    StringFilter? title,
    StringFilter? description,
    /// Filter by topics relation
    TopicListRelationFilter? topics,
    IntFilter? price,
    StringFilter? priceCurrency,
    BooleanFilter? certificateProvided,
    BooleanFilter? recordingEnabled,
    RecordingStoragePolicyFilter? recordingStoragePolicy,
    IntFilter? durationInMonths,
    IntFilter? meetingsPerWeek,
    FloatFilter? sessionDurationInHours,
    IntFilter? totalSessions,
    FloatFilter? totalHours,
    PlanEmailSupportFilter? emailSupport,
    IntFilter? maxParticipants,
    StringFilter? language,
    StringFilter? level,
    StringFilter? prerequisites,
    StringFilter? materialProvided,
    StringListFilter? learningOutcomes,
    StringFilter? imageUrl,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    StringFilter? consultantProfileId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<ClassPlanWhereInput>? AND,
    List<ClassPlanWhereInput>? OR,
    ClassPlanWhereInput? NOT,
  }) = _ClassPlanWhereInput;

  factory ClassPlanWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ClassPlanWhereInputFromJson(json);
}

/// Filter for ClassPlan list relations (one-to-many, many-to-many)
@freezed
class ClassPlanListRelationFilter with _$ClassPlanListRelationFilter {
  const factory ClassPlanListRelationFilter({
    /// At least one related record matches
    ClassPlanWhereInput? some,
    /// All related records match
    ClassPlanWhereInput? every,
    /// No related records match
    ClassPlanWhereInput? none,
  }) = _ClassPlanListRelationFilter;

  factory ClassPlanListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ClassPlanListRelationFilterFromJson(json);
}

/// Filter for ClassPlan single relations (one-to-one, many-to-one)
@freezed
class ClassPlanRelationFilter with _$ClassPlanRelationFilter {
  const factory ClassPlanRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ClassPlanWhereInput? is_,
    /// Related record does not match
    ClassPlanWhereInput? isNot,
  }) = _ClassPlanRelationFilter;

  factory ClassPlanRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ClassPlanRelationFilterFromJson(json);
}

/// Order by input for sorting ClassPlan records
@freezed
class ClassPlanOrderByInput with _$ClassPlanOrderByInput {
  const factory ClassPlanOrderByInput({
    SortOrder? id,
    SortOrder? title,
    SortOrder? description,
    SortOrder? price,
    SortOrder? priceCurrency,
    SortOrder? certificateProvided,
    SortOrder? recordingEnabled,
    SortOrder? durationInMonths,
    SortOrder? meetingsPerWeek,
    SortOrder? sessionDurationInHours,
    SortOrder? totalSessions,
    SortOrder? totalHours,
    SortOrder? maxParticipants,
    SortOrder? language,
    SortOrder? level,
    SortOrder? prerequisites,
    SortOrder? materialProvided,
    SortOrder? learningOutcomes,
    SortOrder? imageUrl,
    SortOrder? consultantProfileId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _ClassPlanOrderByInput;

  factory ClassPlanOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ClassPlanOrderByInputFromJson(json);
}

