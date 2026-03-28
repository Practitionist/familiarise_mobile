import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'topic.dart';
import 'recording_storage_policy.dart';
import 'consultant_profile.dart';
import 'webinar.dart';
import 'plan_material.dart';
import 'webinar_collaborator.dart';

part 'webinar_plan.freezed.dart';
part 'webinar_plan.g.dart';

@freezed
class WebinarPlan with _$WebinarPlan {
  const factory WebinarPlan({
    required String id,
    required String title,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<Topic>? topics,
    String? description,
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
    double durationInHours,
    @Default(100)
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
    required List<Webinar> webinars,
    required List<PlanMaterial> materials,
    required List<WebinarCollaborator> collaborators,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _WebinarPlan;

  factory WebinarPlan.fromJson(Map<String, dynamic> json) =>
      _$WebinarPlanFromJson(json);
}

/// Input for creating a new WebinarPlan
@freezed
class CreateWebinarPlanInput with _$CreateWebinarPlanInput {
  const factory CreateWebinarPlanInput({
    required String title,
    String? description,
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
    double? durationInHours,
    @Default(100)
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
  }) = _CreateWebinarPlanInput;

  factory CreateWebinarPlanInput.fromJson(Map<String, dynamic> json) =>
      _$CreateWebinarPlanInputFromJson(json);
}

/// Input for updating an existing WebinarPlan
@freezed
class UpdateWebinarPlanInput with _$UpdateWebinarPlanInput {
  const factory UpdateWebinarPlanInput({
    String? title,
    String? description,
    int? price,
    String? priceCurrency,
    bool? certificateProvided,
    bool? recordingEnabled,
    RecordingStoragePolicy? recordingStoragePolicy,
    double? durationInHours,
    int? maxParticipants,
    String? language,
    String? level,
    String? prerequisites,
    String? materialProvided,
    List<String>? learningOutcomes,
    String? imageUrl,
    String? consultantProfileId,
  }) = _UpdateWebinarPlanInput;

  factory UpdateWebinarPlanInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateWebinarPlanInputFromJson(json);
}

/// Unique where input for WebinarPlan
/// At least one field must be provided
@freezed
class WebinarPlanWhereUniqueInput with _$WebinarPlanWhereUniqueInput {
  const factory WebinarPlanWhereUniqueInput({
    String? id,
  }) = _WebinarPlanWhereUniqueInput;

  factory WebinarPlanWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$WebinarPlanWhereUniqueInputFromJson(json);
}

/// Where input for filtering WebinarPlan records
@freezed
class WebinarPlanWhereInput with _$WebinarPlanWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory WebinarPlanWhereInput({
    StringFilter? id,
    StringFilter? title,
    /// Filter by topics relation
    TopicListRelationFilter? topics,
    StringFilter? description,
    IntFilter? price,
    StringFilter? priceCurrency,
    BooleanFilter? certificateProvided,
    BooleanFilter? recordingEnabled,
    RecordingStoragePolicyFilter? recordingStoragePolicy,
    FloatFilter? durationInHours,
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
    List<WebinarPlanWhereInput>? AND,
    List<WebinarPlanWhereInput>? OR,
    WebinarPlanWhereInput? NOT,
  }) = _WebinarPlanWhereInput;

  factory WebinarPlanWhereInput.fromJson(Map<String, dynamic> json) =>
      _$WebinarPlanWhereInputFromJson(json);
}

/// Filter for WebinarPlan list relations (one-to-many, many-to-many)
@freezed
class WebinarPlanListRelationFilter with _$WebinarPlanListRelationFilter {
  const factory WebinarPlanListRelationFilter({
    /// At least one related record matches
    WebinarPlanWhereInput? some,
    /// All related records match
    WebinarPlanWhereInput? every,
    /// No related records match
    WebinarPlanWhereInput? none,
  }) = _WebinarPlanListRelationFilter;

  factory WebinarPlanListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$WebinarPlanListRelationFilterFromJson(json);
}

/// Filter for WebinarPlan single relations (one-to-one, many-to-one)
@freezed
class WebinarPlanRelationFilter with _$WebinarPlanRelationFilter {
  const factory WebinarPlanRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') WebinarPlanWhereInput? is_,
    /// Related record does not match
    WebinarPlanWhereInput? isNot,
  }) = _WebinarPlanRelationFilter;

  factory WebinarPlanRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$WebinarPlanRelationFilterFromJson(json);
}

/// Order by input for sorting WebinarPlan records
@freezed
class WebinarPlanOrderByInput with _$WebinarPlanOrderByInput {
  const factory WebinarPlanOrderByInput({
    SortOrder? id,
    SortOrder? title,
    SortOrder? description,
    SortOrder? price,
    SortOrder? priceCurrency,
    SortOrder? certificateProvided,
    SortOrder? recordingEnabled,
    SortOrder? durationInHours,
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
  }) = _WebinarPlanOrderByInput;

  factory WebinarPlanOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$WebinarPlanOrderByInputFromJson(json);
}

