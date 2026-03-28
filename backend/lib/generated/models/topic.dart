import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'webinar_plan.dart';
import 'class_plan.dart';
import 'consultation_plan.dart';
import 'subscription_plan.dart';

part 'topic.freezed.dart';
part 'topic.g.dart';

@freezed
class Topic with _$Topic {
  const factory Topic({
    required String id,
    required String name,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<WebinarPlan>? webinarPlans,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<ClassPlan>? classPlans,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<ConsultationPlan>? consultationPlans,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<SubscriptionPlan>? subscriptionPlans,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) =>
      _$TopicFromJson(json);
}

/// Input for creating a new Topic
@freezed
class CreateTopicInput with _$CreateTopicInput {
  const factory CreateTopicInput({
    required String name,
  }) = _CreateTopicInput;

  factory CreateTopicInput.fromJson(Map<String, dynamic> json) =>
      _$CreateTopicInputFromJson(json);
}

/// Input for updating an existing Topic
@freezed
class UpdateTopicInput with _$UpdateTopicInput {
  const factory UpdateTopicInput({
    String? name,
  }) = _UpdateTopicInput;

  factory UpdateTopicInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateTopicInputFromJson(json);
}

/// Unique where input for Topic
/// At least one field must be provided
@freezed
class TopicWhereUniqueInput with _$TopicWhereUniqueInput {
  const factory TopicWhereUniqueInput({
    String? id,
    String? name,
  }) = _TopicWhereUniqueInput;

  factory TopicWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$TopicWhereUniqueInputFromJson(json);
}

/// Where input for filtering Topic records
@freezed
class TopicWhereInput with _$TopicWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory TopicWhereInput({
    StringFilter? id,
    StringFilter? name,
    /// Filter by webinarPlans relation
    WebinarPlanListRelationFilter? webinarPlans,
    /// Filter by classPlans relation
    ClassPlanListRelationFilter? classPlans,
    /// Filter by consultationPlans relation
    ConsultationPlanListRelationFilter? consultationPlans,
    /// Filter by subscriptionPlans relation
    SubscriptionPlanListRelationFilter? subscriptionPlans,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<TopicWhereInput>? AND,
    List<TopicWhereInput>? OR,
    TopicWhereInput? NOT,
  }) = _TopicWhereInput;

  factory TopicWhereInput.fromJson(Map<String, dynamic> json) =>
      _$TopicWhereInputFromJson(json);
}

/// Filter for Topic list relations (one-to-many, many-to-many)
@freezed
class TopicListRelationFilter with _$TopicListRelationFilter {
  const factory TopicListRelationFilter({
    /// At least one related record matches
    TopicWhereInput? some,
    /// All related records match
    TopicWhereInput? every,
    /// No related records match
    TopicWhereInput? none,
  }) = _TopicListRelationFilter;

  factory TopicListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$TopicListRelationFilterFromJson(json);
}

/// Filter for Topic single relations (one-to-one, many-to-one)
@freezed
class TopicRelationFilter with _$TopicRelationFilter {
  const factory TopicRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') TopicWhereInput? is_,
    /// Related record does not match
    TopicWhereInput? isNot,
  }) = _TopicRelationFilter;

  factory TopicRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$TopicRelationFilterFromJson(json);
}

/// Order by input for sorting Topic records
@freezed
class TopicOrderByInput with _$TopicOrderByInput {
  const factory TopicOrderByInput({
    SortOrder? id,
    SortOrder? name,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _TopicOrderByInput;

  factory TopicOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$TopicOrderByInputFromJson(json);
}

