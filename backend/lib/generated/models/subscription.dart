import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'request_status.dart';
import 'consultee_profile.dart';
import 'booking_source.dart';
import 'cancellation_reason.dart';
import 'subscription_plan.dart';
import 'appointment.dart';
import 'trial_session.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

@freezed
class Subscription with _$Subscription {
  const factory Subscription({
    required String id,
    required DateTime schedulingPeriodStartsAt,
    required DateTime schedulingPeriodEndsAt,
    @Default("Asia/Kolkata")
    String schedulingTimezone,
    @Default(RequestStatus.pending)
    RequestStatus requestStatus,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsulteeProfile? requestedBy,
    required String requestedById,
    required DateTime requestedAt,
    String? requestNotes,
    String? pendingPaymentUrl,
    @Default(BookingSource.requestSubmitted)
    BookingSource bookingSource,
    String? feedbackFromConsultee,
    String? feedbackFromConsultant,
    double? rating,
    CancellationReason? cancellationReason,
    String? cancellationNotes,
    DateTime? cancelledAt,
    String? cancelledBy,
    @JsonKey(includeFromJson: false, includeToJson: false)
    SubscriptionPlan? subscriptionPlan,
    required String subscriptionPlanId,
    required List<Appointment> appointments,
    TrialSession? convertedFromTrial,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}

/// Input for creating a new Subscription
@freezed
class CreateSubscriptionInput with _$CreateSubscriptionInput {
  const factory CreateSubscriptionInput({
    required DateTime schedulingPeriodStartsAt,
    required DateTime schedulingPeriodEndsAt,
    @Default("Asia/Kolkata")
    String? schedulingTimezone,
    @Default(RequestStatus.pending)
    RequestStatus requestStatus,
    required String requestedById,
    String? requestNotes,
    String? pendingPaymentUrl,
    @Default(BookingSource.requestSubmitted)
    BookingSource bookingSource,
    String? feedbackFromConsultee,
    String? feedbackFromConsultant,
    double? rating,
    CancellationReason? cancellationReason,
    String? cancellationNotes,
    DateTime? cancelledAt,
    String? cancelledBy,
    required String subscriptionPlanId,
  }) = _CreateSubscriptionInput;

  factory CreateSubscriptionInput.fromJson(Map<String, dynamic> json) =>
      _$CreateSubscriptionInputFromJson(json);
}

/// Input for updating an existing Subscription
@freezed
class UpdateSubscriptionInput with _$UpdateSubscriptionInput {
  const factory UpdateSubscriptionInput({
    DateTime? schedulingPeriodStartsAt,
    DateTime? schedulingPeriodEndsAt,
    String? schedulingTimezone,
    RequestStatus? requestStatus,
    String? requestedById,
    String? requestNotes,
    String? pendingPaymentUrl,
    BookingSource? bookingSource,
    String? feedbackFromConsultee,
    String? feedbackFromConsultant,
    double? rating,
    CancellationReason? cancellationReason,
    String? cancellationNotes,
    DateTime? cancelledAt,
    String? cancelledBy,
    String? subscriptionPlanId,
  }) = _UpdateSubscriptionInput;

  factory UpdateSubscriptionInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateSubscriptionInputFromJson(json);
}

/// Unique where input for Subscription
/// At least one field must be provided
@freezed
class SubscriptionWhereUniqueInput with _$SubscriptionWhereUniqueInput {
  const factory SubscriptionWhereUniqueInput({
    String? id,
  }) = _SubscriptionWhereUniqueInput;

  factory SubscriptionWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionWhereUniqueInputFromJson(json);
}

/// Where input for filtering Subscription records
@freezed
class SubscriptionWhereInput with _$SubscriptionWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory SubscriptionWhereInput({
    StringFilter? id,
    DateTimeFilter? schedulingPeriodStartsAt,
    DateTimeFilter? schedulingPeriodEndsAt,
    StringFilter? schedulingTimezone,
    RequestStatusFilter? requestStatus,
    /// Filter by requestedBy relation
    ConsulteeProfileRelationFilter? requestedBy,
    StringFilter? requestedById,
    DateTimeFilter? requestedAt,
    StringFilter? requestNotes,
    StringFilter? pendingPaymentUrl,
    BookingSourceFilter? bookingSource,
    StringFilter? feedbackFromConsultee,
    StringFilter? feedbackFromConsultant,
    FloatFilter? rating,
    CancellationReasonFilter? cancellationReason,
    StringFilter? cancellationNotes,
    DateTimeFilter? cancelledAt,
    StringFilter? cancelledBy,
    /// Filter by subscriptionPlan relation
    SubscriptionPlanRelationFilter? subscriptionPlan,
    StringFilter? subscriptionPlanId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<SubscriptionWhereInput>? AND,
    List<SubscriptionWhereInput>? OR,
    SubscriptionWhereInput? NOT,
  }) = _SubscriptionWhereInput;

  factory SubscriptionWhereInput.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionWhereInputFromJson(json);
}

/// Filter for Subscription list relations (one-to-many, many-to-many)
@freezed
class SubscriptionListRelationFilter with _$SubscriptionListRelationFilter {
  const factory SubscriptionListRelationFilter({
    /// At least one related record matches
    SubscriptionWhereInput? some,
    /// All related records match
    SubscriptionWhereInput? every,
    /// No related records match
    SubscriptionWhereInput? none,
  }) = _SubscriptionListRelationFilter;

  factory SubscriptionListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionListRelationFilterFromJson(json);
}

/// Filter for Subscription single relations (one-to-one, many-to-one)
@freezed
class SubscriptionRelationFilter with _$SubscriptionRelationFilter {
  const factory SubscriptionRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') SubscriptionWhereInput? is_,
    /// Related record does not match
    SubscriptionWhereInput? isNot,
  }) = _SubscriptionRelationFilter;

  factory SubscriptionRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionRelationFilterFromJson(json);
}

/// Order by input for sorting Subscription records
@freezed
class SubscriptionOrderByInput with _$SubscriptionOrderByInput {
  const factory SubscriptionOrderByInput({
    SortOrder? id,
    SortOrder? schedulingPeriodStartsAt,
    SortOrder? schedulingPeriodEndsAt,
    SortOrder? schedulingTimezone,
    SortOrder? requestedById,
    SortOrder? requestedAt,
    SortOrder? requestNotes,
    SortOrder? pendingPaymentUrl,
    SortOrder? feedbackFromConsultee,
    SortOrder? feedbackFromConsultant,
    SortOrder? rating,
    SortOrder? cancellationNotes,
    SortOrder? cancelledAt,
    SortOrder? cancelledBy,
    SortOrder? subscriptionPlanId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _SubscriptionOrderByInput;

  factory SubscriptionOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionOrderByInputFromJson(json);
}

