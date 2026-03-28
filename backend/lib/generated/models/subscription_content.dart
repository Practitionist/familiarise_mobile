import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'subscription_plan.dart';

part 'subscription_content.freezed.dart';
part 'subscription_content.g.dart';

@freezed
class SubscriptionContent with _$SubscriptionContent {
  const factory SubscriptionContent({
    required String id,
    required String title,
    required String description,
    String? contentType,
    String? contentUrl,
    required int order,
    @Default(1.0)
    double hoursAllotted,
    @JsonKey(includeFromJson: false, includeToJson: false)
    SubscriptionPlan? subscriptionPlan,
    required String subscriptionPlanId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SubscriptionContent;

  factory SubscriptionContent.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionContentFromJson(json);
}

/// Input for creating a new SubscriptionContent
@freezed
class CreateSubscriptionContentInput with _$CreateSubscriptionContentInput {
  const factory CreateSubscriptionContentInput({
    required String title,
    required String description,
    String? contentType,
    String? contentUrl,
    required int order,
    @Default(1.0)
    double? hoursAllotted,
    required String subscriptionPlanId,
  }) = _CreateSubscriptionContentInput;

  factory CreateSubscriptionContentInput.fromJson(Map<String, dynamic> json) =>
      _$CreateSubscriptionContentInputFromJson(json);
}

/// Input for updating an existing SubscriptionContent
@freezed
class UpdateSubscriptionContentInput with _$UpdateSubscriptionContentInput {
  const factory UpdateSubscriptionContentInput({
    String? title,
    String? description,
    String? contentType,
    String? contentUrl,
    int? order,
    double? hoursAllotted,
    String? subscriptionPlanId,
  }) = _UpdateSubscriptionContentInput;

  factory UpdateSubscriptionContentInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateSubscriptionContentInputFromJson(json);
}

/// Unique where input for SubscriptionContent
/// At least one field must be provided
@freezed
class SubscriptionContentWhereUniqueInput with _$SubscriptionContentWhereUniqueInput {
  const factory SubscriptionContentWhereUniqueInput({
    String? id,
  }) = _SubscriptionContentWhereUniqueInput;

  factory SubscriptionContentWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionContentWhereUniqueInputFromJson(json);
}

/// Where input for filtering SubscriptionContent records
@freezed
class SubscriptionContentWhereInput with _$SubscriptionContentWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory SubscriptionContentWhereInput({
    StringFilter? id,
    StringFilter? title,
    StringFilter? description,
    StringFilter? contentType,
    StringFilter? contentUrl,
    IntFilter? order,
    FloatFilter? hoursAllotted,
    /// Filter by subscriptionPlan relation
    SubscriptionPlanRelationFilter? subscriptionPlan,
    StringFilter? subscriptionPlanId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<SubscriptionContentWhereInput>? AND,
    List<SubscriptionContentWhereInput>? OR,
    SubscriptionContentWhereInput? NOT,
  }) = _SubscriptionContentWhereInput;

  factory SubscriptionContentWhereInput.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionContentWhereInputFromJson(json);
}

/// Filter for SubscriptionContent list relations (one-to-many, many-to-many)
@freezed
class SubscriptionContentListRelationFilter with _$SubscriptionContentListRelationFilter {
  const factory SubscriptionContentListRelationFilter({
    /// At least one related record matches
    SubscriptionContentWhereInput? some,
    /// All related records match
    SubscriptionContentWhereInput? every,
    /// No related records match
    SubscriptionContentWhereInput? none,
  }) = _SubscriptionContentListRelationFilter;

  factory SubscriptionContentListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionContentListRelationFilterFromJson(json);
}

/// Filter for SubscriptionContent single relations (one-to-one, many-to-one)
@freezed
class SubscriptionContentRelationFilter with _$SubscriptionContentRelationFilter {
  const factory SubscriptionContentRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') SubscriptionContentWhereInput? is_,
    /// Related record does not match
    SubscriptionContentWhereInput? isNot,
  }) = _SubscriptionContentRelationFilter;

  factory SubscriptionContentRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionContentRelationFilterFromJson(json);
}

/// Order by input for sorting SubscriptionContent records
@freezed
class SubscriptionContentOrderByInput with _$SubscriptionContentOrderByInput {
  const factory SubscriptionContentOrderByInput({
    SortOrder? id,
    SortOrder? title,
    SortOrder? description,
    SortOrder? contentType,
    SortOrder? contentUrl,
    SortOrder? order,
    SortOrder? hoursAllotted,
    SortOrder? subscriptionPlanId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _SubscriptionContentOrderByInput;

  factory SubscriptionContentOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionContentOrderByInputFromJson(json);
}

