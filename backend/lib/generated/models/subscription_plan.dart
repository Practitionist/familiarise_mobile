import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'plan_email_support.dart';
import 'topic.dart';
import 'consultant_profile.dart';
import 'subscription.dart';
import 'subscription_content.dart';
import 'trial_session.dart';
import 'plan_material.dart';

part 'subscription_plan.freezed.dart';
part 'subscription_plan.g.dart';

@freezed
class SubscriptionPlan with _$SubscriptionPlan {
  const factory SubscriptionPlan({
    required String id,
    required String title,
    String? description,
    @Default(1)
    int durationInMonths,
    required int price,
    @Default("INR")
    String priceCurrency,
    @Default(1)
    int callsPerWeek,
    @Default(1.0)
    double sessionDurationInHours,
    @Default(4)
    int totalSessions,
    @Default(4.0)
    double totalHours,
    @Default(PlanEmailSupport.general)
    PlanEmailSupport emailSupport,
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
    @Default(false)
    bool freeTrialEnabled,
    @Default(30)
    int freeTrialDurationMinutes,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
    required String consultantProfileId,
    required List<Subscription> subscriptions,
    required List<SubscriptionContent> subscriptionContents,
    required List<TrialSession> trialSessions,
    required List<PlanMaterial> materials,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SubscriptionPlan;

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanFromJson(json);
}

/// Input for creating a new SubscriptionPlan
@freezed
class CreateSubscriptionPlanInput with _$CreateSubscriptionPlanInput {
  const factory CreateSubscriptionPlanInput({
    required String title,
    String? description,
    @Default(1)
    int? durationInMonths,
    required int price,
    @Default("INR")
    String? priceCurrency,
    @Default(1)
    int? callsPerWeek,
    @Default(1.0)
    double? sessionDurationInHours,
    @Default(4)
    int? totalSessions,
    @Default(4.0)
    double? totalHours,
    @Default(PlanEmailSupport.general)
    PlanEmailSupport emailSupport,
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
    @Default(false)
    bool? freeTrialEnabled,
    @Default(30)
    int? freeTrialDurationMinutes,
    required String consultantProfileId,
  }) = _CreateSubscriptionPlanInput;

  factory CreateSubscriptionPlanInput.fromJson(Map<String, dynamic> json) =>
      _$CreateSubscriptionPlanInputFromJson(json);
}

/// Input for updating an existing SubscriptionPlan
@freezed
class UpdateSubscriptionPlanInput with _$UpdateSubscriptionPlanInput {
  const factory UpdateSubscriptionPlanInput({
    String? title,
    String? description,
    int? durationInMonths,
    int? price,
    String? priceCurrency,
    int? callsPerWeek,
    double? sessionDurationInHours,
    int? totalSessions,
    double? totalHours,
    PlanEmailSupport? emailSupport,
    String? language,
    String? level,
    String? prerequisites,
    String? materialProvided,
    List<String>? learningOutcomes,
    bool? freeTrialEnabled,
    int? freeTrialDurationMinutes,
    String? consultantProfileId,
  }) = _UpdateSubscriptionPlanInput;

  factory UpdateSubscriptionPlanInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateSubscriptionPlanInputFromJson(json);
}

/// Unique where input for SubscriptionPlan
/// At least one field must be provided
@freezed
class SubscriptionPlanWhereUniqueInput with _$SubscriptionPlanWhereUniqueInput {
  const factory SubscriptionPlanWhereUniqueInput({
    String? id,
  }) = _SubscriptionPlanWhereUniqueInput;

  factory SubscriptionPlanWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanWhereUniqueInputFromJson(json);
}

/// Where input for filtering SubscriptionPlan records
@freezed
class SubscriptionPlanWhereInput with _$SubscriptionPlanWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory SubscriptionPlanWhereInput({
    StringFilter? id,
    StringFilter? title,
    StringFilter? description,
    IntFilter? durationInMonths,
    IntFilter? price,
    StringFilter? priceCurrency,
    IntFilter? callsPerWeek,
    FloatFilter? sessionDurationInHours,
    IntFilter? totalSessions,
    FloatFilter? totalHours,
    PlanEmailSupportFilter? emailSupport,
    StringFilter? language,
    StringFilter? level,
    StringFilter? prerequisites,
    StringFilter? materialProvided,
    StringListFilter? learningOutcomes,
    /// Filter by topics relation
    TopicListRelationFilter? topics,
    BooleanFilter? freeTrialEnabled,
    IntFilter? freeTrialDurationMinutes,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    StringFilter? consultantProfileId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<SubscriptionPlanWhereInput>? AND,
    List<SubscriptionPlanWhereInput>? OR,
    SubscriptionPlanWhereInput? NOT,
  }) = _SubscriptionPlanWhereInput;

  factory SubscriptionPlanWhereInput.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanWhereInputFromJson(json);
}

/// Filter for SubscriptionPlan list relations (one-to-many, many-to-many)
@freezed
class SubscriptionPlanListRelationFilter with _$SubscriptionPlanListRelationFilter {
  const factory SubscriptionPlanListRelationFilter({
    /// At least one related record matches
    SubscriptionPlanWhereInput? some,
    /// All related records match
    SubscriptionPlanWhereInput? every,
    /// No related records match
    SubscriptionPlanWhereInput? none,
  }) = _SubscriptionPlanListRelationFilter;

  factory SubscriptionPlanListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanListRelationFilterFromJson(json);
}

/// Filter for SubscriptionPlan single relations (one-to-one, many-to-one)
@freezed
class SubscriptionPlanRelationFilter with _$SubscriptionPlanRelationFilter {
  const factory SubscriptionPlanRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') SubscriptionPlanWhereInput? is_,
    /// Related record does not match
    SubscriptionPlanWhereInput? isNot,
  }) = _SubscriptionPlanRelationFilter;

  factory SubscriptionPlanRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanRelationFilterFromJson(json);
}

/// Order by input for sorting SubscriptionPlan records
@freezed
class SubscriptionPlanOrderByInput with _$SubscriptionPlanOrderByInput {
  const factory SubscriptionPlanOrderByInput({
    SortOrder? id,
    SortOrder? title,
    SortOrder? description,
    SortOrder? durationInMonths,
    SortOrder? price,
    SortOrder? priceCurrency,
    SortOrder? callsPerWeek,
    SortOrder? sessionDurationInHours,
    SortOrder? totalSessions,
    SortOrder? totalHours,
    SortOrder? language,
    SortOrder? level,
    SortOrder? prerequisites,
    SortOrder? materialProvided,
    SortOrder? learningOutcomes,
    SortOrder? freeTrialEnabled,
    SortOrder? freeTrialDurationMinutes,
    SortOrder? consultantProfileId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _SubscriptionPlanOrderByInput;

  factory SubscriptionPlanOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanOrderByInputFromJson(json);
}

