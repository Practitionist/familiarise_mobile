import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'trial_session_status.dart';
import 'consultee_profile.dart';
import 'consultant_profile.dart';
import 'subscription_plan.dart';
import 'appointment.dart';
import 'subscription.dart';

part 'trial_session.freezed.dart';
part 'trial_session.g.dart';

@freezed
class TrialSession with _$TrialSession {
  const factory TrialSession({
    required String id,
    @Default(TrialSessionStatus.pending)
    TrialSessionStatus status,
    String? notes,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsulteeProfile? consulteeProfile,
    required String consulteeProfileId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
    required String consultantProfileId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    SubscriptionPlan? subscriptionPlan,
    required String subscriptionPlanId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Appointment? appointment,
    String? appointmentId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Subscription? convertedToSubscription,
    String? convertedToSubscriptionId,
    required DateTime requestedAt,
    DateTime? completedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TrialSession;

  factory TrialSession.fromJson(Map<String, dynamic> json) =>
      _$TrialSessionFromJson(json);
}

/// Input for creating a new TrialSession
@freezed
class CreateTrialSessionInput with _$CreateTrialSessionInput {
  const factory CreateTrialSessionInput({
    @Default(TrialSessionStatus.pending)
    TrialSessionStatus status,
    String? notes,
    required String consulteeProfileId,
    required String consultantProfileId,
    required String subscriptionPlanId,
    String? appointmentId,
    String? convertedToSubscriptionId,
    DateTime? completedAt,
  }) = _CreateTrialSessionInput;

  factory CreateTrialSessionInput.fromJson(Map<String, dynamic> json) =>
      _$CreateTrialSessionInputFromJson(json);
}

/// Input for updating an existing TrialSession
@freezed
class UpdateTrialSessionInput with _$UpdateTrialSessionInput {
  const factory UpdateTrialSessionInput({
    TrialSessionStatus? status,
    String? notes,
    String? consulteeProfileId,
    String? consultantProfileId,
    String? subscriptionPlanId,
    String? appointmentId,
    String? convertedToSubscriptionId,
    DateTime? completedAt,
  }) = _UpdateTrialSessionInput;

  factory UpdateTrialSessionInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateTrialSessionInputFromJson(json);
}

/// Unique where input for TrialSession
/// At least one field must be provided
@freezed
class TrialSessionWhereUniqueInput with _$TrialSessionWhereUniqueInput {
  const factory TrialSessionWhereUniqueInput({
    String? id,
    String? appointmentId,
    String? convertedToSubscriptionId,
  }) = _TrialSessionWhereUniqueInput;

  factory TrialSessionWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$TrialSessionWhereUniqueInputFromJson(json);
}

/// Where input for filtering TrialSession records
@freezed
class TrialSessionWhereInput with _$TrialSessionWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory TrialSessionWhereInput({
    StringFilter? id,
    TrialSessionStatusFilter? status,
    StringFilter? notes,
    /// Filter by consulteeProfile relation
    ConsulteeProfileRelationFilter? consulteeProfile,
    StringFilter? consulteeProfileId,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    StringFilter? consultantProfileId,
    /// Filter by subscriptionPlan relation
    SubscriptionPlanRelationFilter? subscriptionPlan,
    StringFilter? subscriptionPlanId,
    /// Filter by appointment relation
    AppointmentRelationFilter? appointment,
    StringFilter? appointmentId,
    /// Filter by convertedToSubscription relation
    SubscriptionRelationFilter? convertedToSubscription,
    StringFilter? convertedToSubscriptionId,
    DateTimeFilter? requestedAt,
    DateTimeFilter? completedAt,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<TrialSessionWhereInput>? AND,
    List<TrialSessionWhereInput>? OR,
    TrialSessionWhereInput? NOT,
  }) = _TrialSessionWhereInput;

  factory TrialSessionWhereInput.fromJson(Map<String, dynamic> json) =>
      _$TrialSessionWhereInputFromJson(json);
}

/// Filter for TrialSession list relations (one-to-many, many-to-many)
@freezed
class TrialSessionListRelationFilter with _$TrialSessionListRelationFilter {
  const factory TrialSessionListRelationFilter({
    /// At least one related record matches
    TrialSessionWhereInput? some,
    /// All related records match
    TrialSessionWhereInput? every,
    /// No related records match
    TrialSessionWhereInput? none,
  }) = _TrialSessionListRelationFilter;

  factory TrialSessionListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$TrialSessionListRelationFilterFromJson(json);
}

/// Filter for TrialSession single relations (one-to-one, many-to-one)
@freezed
class TrialSessionRelationFilter with _$TrialSessionRelationFilter {
  const factory TrialSessionRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') TrialSessionWhereInput? is_,
    /// Related record does not match
    TrialSessionWhereInput? isNot,
  }) = _TrialSessionRelationFilter;

  factory TrialSessionRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$TrialSessionRelationFilterFromJson(json);
}

/// Order by input for sorting TrialSession records
@freezed
class TrialSessionOrderByInput with _$TrialSessionOrderByInput {
  const factory TrialSessionOrderByInput({
    SortOrder? id,
    SortOrder? notes,
    SortOrder? consulteeProfileId,
    SortOrder? consultantProfileId,
    SortOrder? subscriptionPlanId,
    SortOrder? appointmentId,
    SortOrder? convertedToSubscriptionId,
    SortOrder? requestedAt,
    SortOrder? completedAt,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _TrialSessionOrderByInput;

  factory TrialSessionOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$TrialSessionOrderByInputFromJson(json);
}

