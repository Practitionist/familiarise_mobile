import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'topic.dart';
import 'consultant_profile.dart';
import 'consultation.dart';
import 'plan_material.dart';

part 'consultation_plan.freezed.dart';
part 'consultation_plan.g.dart';

@freezed
class ConsultationPlan with _$ConsultationPlan {
  const factory ConsultationPlan({
    required String id,
    required String title,
    String? description,
    @Default(1)
    double durationInHours,
    required int price,
    @Default("INR")
    String priceCurrency,
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
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<Topic>? topics,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
    required String consultantProfileId,
    required List<Consultation> consultations,
    required List<PlanMaterial> materials,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ConsultationPlan;

  factory ConsultationPlan.fromJson(Map<String, dynamic> json) =>
      _$ConsultationPlanFromJson(json);
}

/// Input for creating a new ConsultationPlan
@freezed
class CreateConsultationPlanInput with _$CreateConsultationPlanInput {
  const factory CreateConsultationPlanInput({
    required String title,
    String? description,
    @Default(1)
    double? durationInHours,
    required int price,
    @Default("INR")
    String? priceCurrency,
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
    required String consultantProfileId,
  }) = _CreateConsultationPlanInput;

  factory CreateConsultationPlanInput.fromJson(Map<String, dynamic> json) =>
      _$CreateConsultationPlanInputFromJson(json);
}

/// Input for updating an existing ConsultationPlan
@freezed
class UpdateConsultationPlanInput with _$UpdateConsultationPlanInput {
  const factory UpdateConsultationPlanInput({
    String? title,
    String? description,
    double? durationInHours,
    int? price,
    String? priceCurrency,
    String? language,
    String? level,
    String? prerequisites,
    String? materialProvided,
    List<String>? learningOutcomes,
    String? consultantProfileId,
  }) = _UpdateConsultationPlanInput;

  factory UpdateConsultationPlanInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateConsultationPlanInputFromJson(json);
}

/// Unique where input for ConsultationPlan
/// At least one field must be provided
@freezed
class ConsultationPlanWhereUniqueInput with _$ConsultationPlanWhereUniqueInput {
  const factory ConsultationPlanWhereUniqueInput({
    String? id,
  }) = _ConsultationPlanWhereUniqueInput;

  factory ConsultationPlanWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultationPlanWhereUniqueInputFromJson(json);
}

/// Where input for filtering ConsultationPlan records
@freezed
class ConsultationPlanWhereInput with _$ConsultationPlanWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ConsultationPlanWhereInput({
    StringFilter? id,
    StringFilter? title,
    StringFilter? description,
    FloatFilter? durationInHours,
    IntFilter? price,
    StringFilter? priceCurrency,
    StringFilter? language,
    StringFilter? level,
    StringFilter? prerequisites,
    StringFilter? materialProvided,
    StringListFilter? learningOutcomes,
    /// Filter by topics relation
    TopicListRelationFilter? topics,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    StringFilter? consultantProfileId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<ConsultationPlanWhereInput>? AND,
    List<ConsultationPlanWhereInput>? OR,
    ConsultationPlanWhereInput? NOT,
  }) = _ConsultationPlanWhereInput;

  factory ConsultationPlanWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultationPlanWhereInputFromJson(json);
}

/// Filter for ConsultationPlan list relations (one-to-many, many-to-many)
@freezed
class ConsultationPlanListRelationFilter with _$ConsultationPlanListRelationFilter {
  const factory ConsultationPlanListRelationFilter({
    /// At least one related record matches
    ConsultationPlanWhereInput? some,
    /// All related records match
    ConsultationPlanWhereInput? every,
    /// No related records match
    ConsultationPlanWhereInput? none,
  }) = _ConsultationPlanListRelationFilter;

  factory ConsultationPlanListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsultationPlanListRelationFilterFromJson(json);
}

/// Filter for ConsultationPlan single relations (one-to-one, many-to-one)
@freezed
class ConsultationPlanRelationFilter with _$ConsultationPlanRelationFilter {
  const factory ConsultationPlanRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ConsultationPlanWhereInput? is_,
    /// Related record does not match
    ConsultationPlanWhereInput? isNot,
  }) = _ConsultationPlanRelationFilter;

  factory ConsultationPlanRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsultationPlanRelationFilterFromJson(json);
}

/// Order by input for sorting ConsultationPlan records
@freezed
class ConsultationPlanOrderByInput with _$ConsultationPlanOrderByInput {
  const factory ConsultationPlanOrderByInput({
    SortOrder? id,
    SortOrder? title,
    SortOrder? description,
    SortOrder? durationInHours,
    SortOrder? price,
    SortOrder? priceCurrency,
    SortOrder? language,
    SortOrder? level,
    SortOrder? prerequisites,
    SortOrder? materialProvided,
    SortOrder? learningOutcomes,
    SortOrder? consultantProfileId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _ConsultationPlanOrderByInput;

  factory ConsultationPlanOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultationPlanOrderByInputFromJson(json);
}

