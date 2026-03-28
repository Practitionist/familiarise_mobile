import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'career_stage.dart';
import 'budget_preference.dart';
import 'consultation.dart';
import 'subscription.dart';
import 'consultant_review.dart';
import 'trial_session.dart';
import 'user.dart';

part 'consultee_profile.freezed.dart';
part 'consultee_profile.g.dart';

@freezed
class ConsulteeProfile with _$ConsulteeProfile {
  const factory ConsulteeProfile({
    required String id,
    String? aboutMe,
    String? preferredLanguage,
    String? goals,
    CareerStage? careerStage,
    @Default(<String>[])
    List<String>? skillsToDevelop,
    BudgetPreference? budgetPreference,
    required List<Consultation> consultationRequests,
    required List<Subscription> subscriptionRequests,
    required List<ConsultantReview> consultantReviews,
    required List<TrialSession> trialSessions,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ConsulteeProfile;

  factory ConsulteeProfile.fromJson(Map<String, dynamic> json) =>
      _$ConsulteeProfileFromJson(json);
}

/// Input for creating a new ConsulteeProfile
@freezed
class CreateConsulteeProfileInput with _$CreateConsulteeProfileInput {
  const factory CreateConsulteeProfileInput({
    String? aboutMe,
    String? preferredLanguage,
    String? goals,
    CareerStage? careerStage,
    @Default(<String>[])
    List<String>? skillsToDevelop,
    BudgetPreference? budgetPreference,
    required String userId,
  }) = _CreateConsulteeProfileInput;

  factory CreateConsulteeProfileInput.fromJson(Map<String, dynamic> json) =>
      _$CreateConsulteeProfileInputFromJson(json);
}

/// Input for updating an existing ConsulteeProfile
@freezed
class UpdateConsulteeProfileInput with _$UpdateConsulteeProfileInput {
  const factory UpdateConsulteeProfileInput({
    String? aboutMe,
    String? preferredLanguage,
    String? goals,
    CareerStage? careerStage,
    List<String>? skillsToDevelop,
    BudgetPreference? budgetPreference,
    String? userId,
  }) = _UpdateConsulteeProfileInput;

  factory UpdateConsulteeProfileInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateConsulteeProfileInputFromJson(json);
}

/// Unique where input for ConsulteeProfile
/// At least one field must be provided
@freezed
class ConsulteeProfileWhereUniqueInput with _$ConsulteeProfileWhereUniqueInput {
  const factory ConsulteeProfileWhereUniqueInput({
    String? id,
    String? userId,
  }) = _ConsulteeProfileWhereUniqueInput;

  factory ConsulteeProfileWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ConsulteeProfileWhereUniqueInputFromJson(json);
}

/// Where input for filtering ConsulteeProfile records
@freezed
class ConsulteeProfileWhereInput with _$ConsulteeProfileWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ConsulteeProfileWhereInput({
    StringFilter? id,
    StringFilter? aboutMe,
    StringFilter? preferredLanguage,
    StringFilter? goals,
    CareerStageFilter? careerStage,
    StringListFilter? skillsToDevelop,
    BudgetPreferenceFilter? budgetPreference,
    /// Filter by user relation
    UserRelationFilter? user,
    StringFilter? userId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<ConsulteeProfileWhereInput>? AND,
    List<ConsulteeProfileWhereInput>? OR,
    ConsulteeProfileWhereInput? NOT,
  }) = _ConsulteeProfileWhereInput;

  factory ConsulteeProfileWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ConsulteeProfileWhereInputFromJson(json);
}

/// Filter for ConsulteeProfile list relations (one-to-many, many-to-many)
@freezed
class ConsulteeProfileListRelationFilter with _$ConsulteeProfileListRelationFilter {
  const factory ConsulteeProfileListRelationFilter({
    /// At least one related record matches
    ConsulteeProfileWhereInput? some,
    /// All related records match
    ConsulteeProfileWhereInput? every,
    /// No related records match
    ConsulteeProfileWhereInput? none,
  }) = _ConsulteeProfileListRelationFilter;

  factory ConsulteeProfileListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsulteeProfileListRelationFilterFromJson(json);
}

/// Filter for ConsulteeProfile single relations (one-to-one, many-to-one)
@freezed
class ConsulteeProfileRelationFilter with _$ConsulteeProfileRelationFilter {
  const factory ConsulteeProfileRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ConsulteeProfileWhereInput? is_,
    /// Related record does not match
    ConsulteeProfileWhereInput? isNot,
  }) = _ConsulteeProfileRelationFilter;

  factory ConsulteeProfileRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsulteeProfileRelationFilterFromJson(json);
}

/// Order by input for sorting ConsulteeProfile records
@freezed
class ConsulteeProfileOrderByInput with _$ConsulteeProfileOrderByInput {
  const factory ConsulteeProfileOrderByInput({
    SortOrder? id,
    SortOrder? aboutMe,
    SortOrder? preferredLanguage,
    SortOrder? goals,
    SortOrder? skillsToDevelop,
    SortOrder? userId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _ConsulteeProfileOrderByInput;

  factory ConsulteeProfileOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ConsulteeProfileOrderByInputFromJson(json);
}

