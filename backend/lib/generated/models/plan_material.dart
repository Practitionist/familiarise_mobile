import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'consultation_plan.dart';
import 'subscription_plan.dart';
import 'webinar_plan.dart';
import 'class_plan.dart';

part 'plan_material.freezed.dart';
part 'plan_material.g.dart';

@freezed
class PlanMaterial with _$PlanMaterial {
  const factory PlanMaterial({
    required String id,
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    String? description,
    @Default(0)
    int order,
    String? consultationPlanId,
    String? subscriptionPlanId,
    String? webinarPlanId,
    String? classPlanId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultationPlan? consultationPlan,
    @JsonKey(includeFromJson: false, includeToJson: false)
    SubscriptionPlan? subscriptionPlan,
    @JsonKey(includeFromJson: false, includeToJson: false)
    WebinarPlan? webinarPlan,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ClassPlan? classPlan,
    required DateTime uploadedAt,
    required DateTime updatedAt,
  }) = _PlanMaterial;

  factory PlanMaterial.fromJson(Map<String, dynamic> json) =>
      _$PlanMaterialFromJson(json);
}

/// Input for creating a new PlanMaterial
@freezed
class CreatePlanMaterialInput with _$CreatePlanMaterialInput {
  const factory CreatePlanMaterialInput({
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    String? description,
    @Default(0)
    int? order,
    String? consultationPlanId,
    String? subscriptionPlanId,
    String? webinarPlanId,
    String? classPlanId,
  }) = _CreatePlanMaterialInput;

  factory CreatePlanMaterialInput.fromJson(Map<String, dynamic> json) =>
      _$CreatePlanMaterialInputFromJson(json);
}

/// Input for updating an existing PlanMaterial
@freezed
class UpdatePlanMaterialInput with _$UpdatePlanMaterialInput {
  const factory UpdatePlanMaterialInput({
    String? fileName,
    String? originalName,
    int? fileSize,
    String? mimeType,
    String? fileUrl,
    String? storagePath,
    String? description,
    int? order,
    String? consultationPlanId,
    String? subscriptionPlanId,
    String? webinarPlanId,
    String? classPlanId,
  }) = _UpdatePlanMaterialInput;

  factory UpdatePlanMaterialInput.fromJson(Map<String, dynamic> json) =>
      _$UpdatePlanMaterialInputFromJson(json);
}

/// Unique where input for PlanMaterial
/// At least one field must be provided
@freezed
class PlanMaterialWhereUniqueInput with _$PlanMaterialWhereUniqueInput {
  const factory PlanMaterialWhereUniqueInput({
    String? id,
  }) = _PlanMaterialWhereUniqueInput;

  factory PlanMaterialWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$PlanMaterialWhereUniqueInputFromJson(json);
}

/// Where input for filtering PlanMaterial records
@freezed
class PlanMaterialWhereInput with _$PlanMaterialWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory PlanMaterialWhereInput({
    StringFilter? id,
    StringFilter? fileName,
    StringFilter? originalName,
    IntFilter? fileSize,
    StringFilter? mimeType,
    StringFilter? fileUrl,
    StringFilter? storagePath,
    StringFilter? description,
    IntFilter? order,
    StringFilter? consultationPlanId,
    StringFilter? subscriptionPlanId,
    StringFilter? webinarPlanId,
    StringFilter? classPlanId,
    /// Filter by consultationPlan relation
    ConsultationPlanRelationFilter? consultationPlan,
    /// Filter by subscriptionPlan relation
    SubscriptionPlanRelationFilter? subscriptionPlan,
    /// Filter by webinarPlan relation
    WebinarPlanRelationFilter? webinarPlan,
    /// Filter by classPlan relation
    ClassPlanRelationFilter? classPlan,
    DateTimeFilter? uploadedAt,
    DateTimeFilter? updatedAt,
    List<PlanMaterialWhereInput>? AND,
    List<PlanMaterialWhereInput>? OR,
    PlanMaterialWhereInput? NOT,
  }) = _PlanMaterialWhereInput;

  factory PlanMaterialWhereInput.fromJson(Map<String, dynamic> json) =>
      _$PlanMaterialWhereInputFromJson(json);
}

/// Filter for PlanMaterial list relations (one-to-many, many-to-many)
@freezed
class PlanMaterialListRelationFilter with _$PlanMaterialListRelationFilter {
  const factory PlanMaterialListRelationFilter({
    /// At least one related record matches
    PlanMaterialWhereInput? some,
    /// All related records match
    PlanMaterialWhereInput? every,
    /// No related records match
    PlanMaterialWhereInput? none,
  }) = _PlanMaterialListRelationFilter;

  factory PlanMaterialListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$PlanMaterialListRelationFilterFromJson(json);
}

/// Filter for PlanMaterial single relations (one-to-one, many-to-one)
@freezed
class PlanMaterialRelationFilter with _$PlanMaterialRelationFilter {
  const factory PlanMaterialRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') PlanMaterialWhereInput? is_,
    /// Related record does not match
    PlanMaterialWhereInput? isNot,
  }) = _PlanMaterialRelationFilter;

  factory PlanMaterialRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$PlanMaterialRelationFilterFromJson(json);
}

/// Order by input for sorting PlanMaterial records
@freezed
class PlanMaterialOrderByInput with _$PlanMaterialOrderByInput {
  const factory PlanMaterialOrderByInput({
    SortOrder? id,
    SortOrder? fileName,
    SortOrder? originalName,
    SortOrder? fileSize,
    SortOrder? mimeType,
    SortOrder? fileUrl,
    SortOrder? storagePath,
    SortOrder? description,
    SortOrder? order,
    SortOrder? consultationPlanId,
    SortOrder? subscriptionPlanId,
    SortOrder? webinarPlanId,
    SortOrder? classPlanId,
    SortOrder? uploadedAt,
    SortOrder? updatedAt,
  }) = _PlanMaterialOrderByInput;

  factory PlanMaterialOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$PlanMaterialOrderByInputFromJson(json);
}

