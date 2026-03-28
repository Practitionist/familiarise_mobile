/// Generated filter types for type-safe queries
///
/// These filter classes provide compile-time type checking
/// for WHERE clause operations.
library;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/feedback_status.dart';
import 'models/support_ticket_status.dart';
import 'models/support_priority.dart';
import 'models/cancellation_reason.dart';
import 'models/support_issue_type.dart';
import 'models/achievement_type.dart';
import 'models/request_status.dart';
import 'models/trial_session_status.dart';
import 'models/activity_type.dart';
import 'models/booking_source.dart';
import 'models/webinar_status.dart';
import 'models/class_status.dart';
import 'models/waitlist_status.dart';
import 'models/appointments_type.dart';
import 'models/document_review_status.dart';
import 'models/document_upload_role.dart';
import 'models/slot_completion_status.dart';
import 'models/recording_storage_type.dart';
import 'models/recording_storage_policy.dart';
import 'models/recording_status.dart';
import 'models/platform.dart';
import 'models/payment_gateway.dart';
import 'models/payment_status.dart';
import 'models/refund_status.dart';
import 'models/dispute_status.dart';
import 'models/earning_status.dart';
import 'models/payout_status.dart';
import 'models/payout_method.dart';
import 'models/payout_account_type.dart';
import 'models/discount_type.dart';
import 'models/referral_status.dart';
import 'models/credit_source.dart';
import 'models/collaborator_status.dart';
import 'models/webinar_collaborator_role.dart';
import 'models/class_collaborator_role.dart';
import 'models/earning_role.dart';
import 'models/plan_duration.dart';
import 'models/plan_email_support.dart';
import 'models/user_role.dart';
import 'models/day_of_week.dart';
import 'models/schedule_type.dart';
import 'models/gender.dart';
import 'models/career_stage.dart';
import 'models/admin_level.dart';
import 'models/budget_preference.dart';
import 'models/session_type.dart';
import 'models/moderation_report_type.dart';
import 'models/moderation_report_status.dart';
import 'models/moderation_action_type.dart';
import 'models/profile_verification_status.dart';
import 'models/system_job_status.dart';
import 'models/consultant_verification_status.dart';
import 'models/maintenance_phase.dart';

part 'filters.freezed.dart';
part 'filters.g.dart';

/// Filter for String fields
@freezed
class StringFilter with _$StringFilter {
  const factory StringFilter({
    /// Exact match
    String? equals,
    /// Not equal to
    String? not,
    /// In list of values
    @JsonKey(name: 'in') List<String>? in_,
    /// Not in list of values
    List<String>? notIn,
    /// Contains substring (case-sensitive)
    String? contains,
    /// Starts with prefix (case-sensitive)
    String? startsWith,
    /// Ends with suffix (case-sensitive)
    String? endsWith,
    /// Less than
    String? lt,
    /// Less than or equal
    String? lte,
    /// Greater than
    String? gt,
    /// Greater than or equal
    String? gte,
  }) = _StringFilter;

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);
}

/// Filter for Int fields
@freezed
class IntFilter with _$IntFilter {
  const factory IntFilter({
    /// Exact match
    int? equals,
    /// Not equal to
    int? not,
    /// In list of values
    @JsonKey(name: 'in') List<int>? in_,
    /// Not in list of values
    List<int>? notIn,
    /// Less than
    int? lt,
    /// Less than or equal
    int? lte,
    /// Greater than
    int? gt,
    /// Greater than or equal
    int? gte,
  }) = _IntFilter;

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);
}

/// Filter for Float/Decimal fields
@freezed
class FloatFilter with _$FloatFilter {
  const factory FloatFilter({
    /// Exact match
    double? equals,
    /// Not equal to
    double? not,
    /// In list of values
    @JsonKey(name: 'in') List<double>? in_,
    /// Not in list of values
    List<double>? notIn,
    /// Less than
    double? lt,
    /// Less than or equal
    double? lte,
    /// Greater than
    double? gt,
    /// Greater than or equal
    double? gte,
  }) = _FloatFilter;

  factory FloatFilter.fromJson(Map<String, dynamic> json) =>
      _$FloatFilterFromJson(json);
}

/// Filter for Boolean fields
@freezed
class BooleanFilter with _$BooleanFilter {
  const factory BooleanFilter({
    /// Exact match
    bool? equals,
    /// Not equal to
    bool? not,
  }) = _BooleanFilter;

  factory BooleanFilter.fromJson(Map<String, dynamic> json) =>
      _$BooleanFilterFromJson(json);
}

/// Filter for DateTime fields
@freezed
class DateTimeFilter with _$DateTimeFilter {
  const factory DateTimeFilter({
    /// Exact match
    DateTime? equals,
    /// Not equal to
    DateTime? not,
    /// In list of values
    @JsonKey(name: 'in') List<DateTime>? in_,
    /// Not in list of values
    List<DateTime>? notIn,
    /// Less than (before)
    DateTime? lt,
    /// Less than or equal
    DateTime? lte,
    /// Greater than (after)
    DateTime? gt,
    /// Greater than or equal
    DateTime? gte,
  }) = _DateTimeFilter;

  factory DateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeFilterFromJson(json);
}

/// Filter for FeedbackStatus enum fields
@freezed
class FeedbackStatusFilter with _$FeedbackStatusFilter {
  const factory FeedbackStatusFilter({
    /// Exact match
    FeedbackStatus? equals,
    /// Not equal to
    FeedbackStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<FeedbackStatus>? in_,
    /// Not in list of values
    List<FeedbackStatus>? notIn,
  }) = _FeedbackStatusFilter;

  factory FeedbackStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$FeedbackStatusFilterFromJson(json);
}

/// Filter for SupportTicketStatus enum fields
@freezed
class SupportTicketStatusFilter with _$SupportTicketStatusFilter {
  const factory SupportTicketStatusFilter({
    /// Exact match
    SupportTicketStatus? equals,
    /// Not equal to
    SupportTicketStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<SupportTicketStatus>? in_,
    /// Not in list of values
    List<SupportTicketStatus>? notIn,
  }) = _SupportTicketStatusFilter;

  factory SupportTicketStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketStatusFilterFromJson(json);
}

/// Filter for SupportPriority enum fields
@freezed
class SupportPriorityFilter with _$SupportPriorityFilter {
  const factory SupportPriorityFilter({
    /// Exact match
    SupportPriority? equals,
    /// Not equal to
    SupportPriority? not,
    /// In list of values
    @JsonKey(name: 'in') List<SupportPriority>? in_,
    /// Not in list of values
    List<SupportPriority>? notIn,
  }) = _SupportPriorityFilter;

  factory SupportPriorityFilter.fromJson(Map<String, dynamic> json) =>
      _$SupportPriorityFilterFromJson(json);
}

/// Filter for CancellationReason enum fields
@freezed
class CancellationReasonFilter with _$CancellationReasonFilter {
  const factory CancellationReasonFilter({
    /// Exact match
    CancellationReason? equals,
    /// Not equal to
    CancellationReason? not,
    /// In list of values
    @JsonKey(name: 'in') List<CancellationReason>? in_,
    /// Not in list of values
    List<CancellationReason>? notIn,
  }) = _CancellationReasonFilter;

  factory CancellationReasonFilter.fromJson(Map<String, dynamic> json) =>
      _$CancellationReasonFilterFromJson(json);
}

/// Filter for SupportIssueType enum fields
@freezed
class SupportIssueTypeFilter with _$SupportIssueTypeFilter {
  const factory SupportIssueTypeFilter({
    /// Exact match
    SupportIssueType? equals,
    /// Not equal to
    SupportIssueType? not,
    /// In list of values
    @JsonKey(name: 'in') List<SupportIssueType>? in_,
    /// Not in list of values
    List<SupportIssueType>? notIn,
  }) = _SupportIssueTypeFilter;

  factory SupportIssueTypeFilter.fromJson(Map<String, dynamic> json) =>
      _$SupportIssueTypeFilterFromJson(json);
}

/// Filter for AchievementType enum fields
@freezed
class AchievementTypeFilter with _$AchievementTypeFilter {
  const factory AchievementTypeFilter({
    /// Exact match
    AchievementType? equals,
    /// Not equal to
    AchievementType? not,
    /// In list of values
    @JsonKey(name: 'in') List<AchievementType>? in_,
    /// Not in list of values
    List<AchievementType>? notIn,
  }) = _AchievementTypeFilter;

  factory AchievementTypeFilter.fromJson(Map<String, dynamic> json) =>
      _$AchievementTypeFilterFromJson(json);
}

/// Filter for RequestStatus enum fields
@freezed
class RequestStatusFilter with _$RequestStatusFilter {
  const factory RequestStatusFilter({
    /// Exact match
    RequestStatus? equals,
    /// Not equal to
    RequestStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<RequestStatus>? in_,
    /// Not in list of values
    List<RequestStatus>? notIn,
  }) = _RequestStatusFilter;

  factory RequestStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$RequestStatusFilterFromJson(json);
}

/// Filter for TrialSessionStatus enum fields
@freezed
class TrialSessionStatusFilter with _$TrialSessionStatusFilter {
  const factory TrialSessionStatusFilter({
    /// Exact match
    TrialSessionStatus? equals,
    /// Not equal to
    TrialSessionStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<TrialSessionStatus>? in_,
    /// Not in list of values
    List<TrialSessionStatus>? notIn,
  }) = _TrialSessionStatusFilter;

  factory TrialSessionStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$TrialSessionStatusFilterFromJson(json);
}

/// Filter for ActivityType enum fields
@freezed
class ActivityTypeFilter with _$ActivityTypeFilter {
  const factory ActivityTypeFilter({
    /// Exact match
    ActivityType? equals,
    /// Not equal to
    ActivityType? not,
    /// In list of values
    @JsonKey(name: 'in') List<ActivityType>? in_,
    /// Not in list of values
    List<ActivityType>? notIn,
  }) = _ActivityTypeFilter;

  factory ActivityTypeFilter.fromJson(Map<String, dynamic> json) =>
      _$ActivityTypeFilterFromJson(json);
}

/// Filter for BookingSource enum fields
@freezed
class BookingSourceFilter with _$BookingSourceFilter {
  const factory BookingSourceFilter({
    /// Exact match
    BookingSource? equals,
    /// Not equal to
    BookingSource? not,
    /// In list of values
    @JsonKey(name: 'in') List<BookingSource>? in_,
    /// Not in list of values
    List<BookingSource>? notIn,
  }) = _BookingSourceFilter;

  factory BookingSourceFilter.fromJson(Map<String, dynamic> json) =>
      _$BookingSourceFilterFromJson(json);
}

/// Filter for WebinarStatus enum fields
@freezed
class WebinarStatusFilter with _$WebinarStatusFilter {
  const factory WebinarStatusFilter({
    /// Exact match
    WebinarStatus? equals,
    /// Not equal to
    WebinarStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<WebinarStatus>? in_,
    /// Not in list of values
    List<WebinarStatus>? notIn,
  }) = _WebinarStatusFilter;

  factory WebinarStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$WebinarStatusFilterFromJson(json);
}

/// Filter for ClassStatus enum fields
@freezed
class ClassStatusFilter with _$ClassStatusFilter {
  const factory ClassStatusFilter({
    /// Exact match
    ClassStatus? equals,
    /// Not equal to
    ClassStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<ClassStatus>? in_,
    /// Not in list of values
    List<ClassStatus>? notIn,
  }) = _ClassStatusFilter;

  factory ClassStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$ClassStatusFilterFromJson(json);
}

/// Filter for WaitlistStatus enum fields
@freezed
class WaitlistStatusFilter with _$WaitlistStatusFilter {
  const factory WaitlistStatusFilter({
    /// Exact match
    WaitlistStatus? equals,
    /// Not equal to
    WaitlistStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<WaitlistStatus>? in_,
    /// Not in list of values
    List<WaitlistStatus>? notIn,
  }) = _WaitlistStatusFilter;

  factory WaitlistStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$WaitlistStatusFilterFromJson(json);
}

/// Filter for AppointmentsType enum fields
@freezed
class AppointmentsTypeFilter with _$AppointmentsTypeFilter {
  const factory AppointmentsTypeFilter({
    /// Exact match
    AppointmentsType? equals,
    /// Not equal to
    AppointmentsType? not,
    /// In list of values
    @JsonKey(name: 'in') List<AppointmentsType>? in_,
    /// Not in list of values
    List<AppointmentsType>? notIn,
  }) = _AppointmentsTypeFilter;

  factory AppointmentsTypeFilter.fromJson(Map<String, dynamic> json) =>
      _$AppointmentsTypeFilterFromJson(json);
}

/// Filter for DocumentReviewStatus enum fields
@freezed
class DocumentReviewStatusFilter with _$DocumentReviewStatusFilter {
  const factory DocumentReviewStatusFilter({
    /// Exact match
    DocumentReviewStatus? equals,
    /// Not equal to
    DocumentReviewStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<DocumentReviewStatus>? in_,
    /// Not in list of values
    List<DocumentReviewStatus>? notIn,
  }) = _DocumentReviewStatusFilter;

  factory DocumentReviewStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$DocumentReviewStatusFilterFromJson(json);
}

/// Filter for DocumentUploadRole enum fields
@freezed
class DocumentUploadRoleFilter with _$DocumentUploadRoleFilter {
  const factory DocumentUploadRoleFilter({
    /// Exact match
    DocumentUploadRole? equals,
    /// Not equal to
    DocumentUploadRole? not,
    /// In list of values
    @JsonKey(name: 'in') List<DocumentUploadRole>? in_,
    /// Not in list of values
    List<DocumentUploadRole>? notIn,
  }) = _DocumentUploadRoleFilter;

  factory DocumentUploadRoleFilter.fromJson(Map<String, dynamic> json) =>
      _$DocumentUploadRoleFilterFromJson(json);
}

/// Filter for SlotCompletionStatus enum fields
@freezed
class SlotCompletionStatusFilter with _$SlotCompletionStatusFilter {
  const factory SlotCompletionStatusFilter({
    /// Exact match
    SlotCompletionStatus? equals,
    /// Not equal to
    SlotCompletionStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<SlotCompletionStatus>? in_,
    /// Not in list of values
    List<SlotCompletionStatus>? notIn,
  }) = _SlotCompletionStatusFilter;

  factory SlotCompletionStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$SlotCompletionStatusFilterFromJson(json);
}

/// Filter for RecordingStorageType enum fields
@freezed
class RecordingStorageTypeFilter with _$RecordingStorageTypeFilter {
  const factory RecordingStorageTypeFilter({
    /// Exact match
    RecordingStorageType? equals,
    /// Not equal to
    RecordingStorageType? not,
    /// In list of values
    @JsonKey(name: 'in') List<RecordingStorageType>? in_,
    /// Not in list of values
    List<RecordingStorageType>? notIn,
  }) = _RecordingStorageTypeFilter;

  factory RecordingStorageTypeFilter.fromJson(Map<String, dynamic> json) =>
      _$RecordingStorageTypeFilterFromJson(json);
}

/// Filter for RecordingStoragePolicy enum fields
@freezed
class RecordingStoragePolicyFilter with _$RecordingStoragePolicyFilter {
  const factory RecordingStoragePolicyFilter({
    /// Exact match
    RecordingStoragePolicy? equals,
    /// Not equal to
    RecordingStoragePolicy? not,
    /// In list of values
    @JsonKey(name: 'in') List<RecordingStoragePolicy>? in_,
    /// Not in list of values
    List<RecordingStoragePolicy>? notIn,
  }) = _RecordingStoragePolicyFilter;

  factory RecordingStoragePolicyFilter.fromJson(Map<String, dynamic> json) =>
      _$RecordingStoragePolicyFilterFromJson(json);
}

/// Filter for RecordingStatus enum fields
@freezed
class RecordingStatusFilter with _$RecordingStatusFilter {
  const factory RecordingStatusFilter({
    /// Exact match
    RecordingStatus? equals,
    /// Not equal to
    RecordingStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<RecordingStatus>? in_,
    /// Not in list of values
    List<RecordingStatus>? notIn,
  }) = _RecordingStatusFilter;

  factory RecordingStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$RecordingStatusFilterFromJson(json);
}

/// Filter for Platform enum fields
@freezed
class PlatformFilter with _$PlatformFilter {
  const factory PlatformFilter({
    /// Exact match
    Platform? equals,
    /// Not equal to
    Platform? not,
    /// In list of values
    @JsonKey(name: 'in') List<Platform>? in_,
    /// Not in list of values
    List<Platform>? notIn,
  }) = _PlatformFilter;

  factory PlatformFilter.fromJson(Map<String, dynamic> json) =>
      _$PlatformFilterFromJson(json);
}

/// Filter for PaymentGateway enum fields
@freezed
class PaymentGatewayFilter with _$PaymentGatewayFilter {
  const factory PaymentGatewayFilter({
    /// Exact match
    PaymentGateway? equals,
    /// Not equal to
    PaymentGateway? not,
    /// In list of values
    @JsonKey(name: 'in') List<PaymentGateway>? in_,
    /// Not in list of values
    List<PaymentGateway>? notIn,
  }) = _PaymentGatewayFilter;

  factory PaymentGatewayFilter.fromJson(Map<String, dynamic> json) =>
      _$PaymentGatewayFilterFromJson(json);
}

/// Filter for PaymentStatus enum fields
@freezed
class PaymentStatusFilter with _$PaymentStatusFilter {
  const factory PaymentStatusFilter({
    /// Exact match
    PaymentStatus? equals,
    /// Not equal to
    PaymentStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<PaymentStatus>? in_,
    /// Not in list of values
    List<PaymentStatus>? notIn,
  }) = _PaymentStatusFilter;

  factory PaymentStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$PaymentStatusFilterFromJson(json);
}

/// Filter for RefundStatus enum fields
@freezed
class RefundStatusFilter with _$RefundStatusFilter {
  const factory RefundStatusFilter({
    /// Exact match
    RefundStatus? equals,
    /// Not equal to
    RefundStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<RefundStatus>? in_,
    /// Not in list of values
    List<RefundStatus>? notIn,
  }) = _RefundStatusFilter;

  factory RefundStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$RefundStatusFilterFromJson(json);
}

/// Filter for DisputeStatus enum fields
@freezed
class DisputeStatusFilter with _$DisputeStatusFilter {
  const factory DisputeStatusFilter({
    /// Exact match
    DisputeStatus? equals,
    /// Not equal to
    DisputeStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<DisputeStatus>? in_,
    /// Not in list of values
    List<DisputeStatus>? notIn,
  }) = _DisputeStatusFilter;

  factory DisputeStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$DisputeStatusFilterFromJson(json);
}

/// Filter for EarningStatus enum fields
@freezed
class EarningStatusFilter with _$EarningStatusFilter {
  const factory EarningStatusFilter({
    /// Exact match
    EarningStatus? equals,
    /// Not equal to
    EarningStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<EarningStatus>? in_,
    /// Not in list of values
    List<EarningStatus>? notIn,
  }) = _EarningStatusFilter;

  factory EarningStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$EarningStatusFilterFromJson(json);
}

/// Filter for PayoutStatus enum fields
@freezed
class PayoutStatusFilter with _$PayoutStatusFilter {
  const factory PayoutStatusFilter({
    /// Exact match
    PayoutStatus? equals,
    /// Not equal to
    PayoutStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<PayoutStatus>? in_,
    /// Not in list of values
    List<PayoutStatus>? notIn,
  }) = _PayoutStatusFilter;

  factory PayoutStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$PayoutStatusFilterFromJson(json);
}

/// Filter for PayoutMethod enum fields
@freezed
class PayoutMethodFilter with _$PayoutMethodFilter {
  const factory PayoutMethodFilter({
    /// Exact match
    PayoutMethod? equals,
    /// Not equal to
    PayoutMethod? not,
    /// In list of values
    @JsonKey(name: 'in') List<PayoutMethod>? in_,
    /// Not in list of values
    List<PayoutMethod>? notIn,
  }) = _PayoutMethodFilter;

  factory PayoutMethodFilter.fromJson(Map<String, dynamic> json) =>
      _$PayoutMethodFilterFromJson(json);
}

/// Filter for PayoutAccountType enum fields
@freezed
class PayoutAccountTypeFilter with _$PayoutAccountTypeFilter {
  const factory PayoutAccountTypeFilter({
    /// Exact match
    PayoutAccountType? equals,
    /// Not equal to
    PayoutAccountType? not,
    /// In list of values
    @JsonKey(name: 'in') List<PayoutAccountType>? in_,
    /// Not in list of values
    List<PayoutAccountType>? notIn,
  }) = _PayoutAccountTypeFilter;

  factory PayoutAccountTypeFilter.fromJson(Map<String, dynamic> json) =>
      _$PayoutAccountTypeFilterFromJson(json);
}

/// Filter for DiscountType enum fields
@freezed
class DiscountTypeFilter with _$DiscountTypeFilter {
  const factory DiscountTypeFilter({
    /// Exact match
    DiscountType? equals,
    /// Not equal to
    DiscountType? not,
    /// In list of values
    @JsonKey(name: 'in') List<DiscountType>? in_,
    /// Not in list of values
    List<DiscountType>? notIn,
  }) = _DiscountTypeFilter;

  factory DiscountTypeFilter.fromJson(Map<String, dynamic> json) =>
      _$DiscountTypeFilterFromJson(json);
}

/// Filter for ReferralStatus enum fields
@freezed
class ReferralStatusFilter with _$ReferralStatusFilter {
  const factory ReferralStatusFilter({
    /// Exact match
    ReferralStatus? equals,
    /// Not equal to
    ReferralStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<ReferralStatus>? in_,
    /// Not in list of values
    List<ReferralStatus>? notIn,
  }) = _ReferralStatusFilter;

  factory ReferralStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$ReferralStatusFilterFromJson(json);
}

/// Filter for CreditSource enum fields
@freezed
class CreditSourceFilter with _$CreditSourceFilter {
  const factory CreditSourceFilter({
    /// Exact match
    CreditSource? equals,
    /// Not equal to
    CreditSource? not,
    /// In list of values
    @JsonKey(name: 'in') List<CreditSource>? in_,
    /// Not in list of values
    List<CreditSource>? notIn,
  }) = _CreditSourceFilter;

  factory CreditSourceFilter.fromJson(Map<String, dynamic> json) =>
      _$CreditSourceFilterFromJson(json);
}

/// Filter for CollaboratorStatus enum fields
@freezed
class CollaboratorStatusFilter with _$CollaboratorStatusFilter {
  const factory CollaboratorStatusFilter({
    /// Exact match
    CollaboratorStatus? equals,
    /// Not equal to
    CollaboratorStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<CollaboratorStatus>? in_,
    /// Not in list of values
    List<CollaboratorStatus>? notIn,
  }) = _CollaboratorStatusFilter;

  factory CollaboratorStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$CollaboratorStatusFilterFromJson(json);
}

/// Filter for WebinarCollaboratorRole enum fields
@freezed
class WebinarCollaboratorRoleFilter with _$WebinarCollaboratorRoleFilter {
  const factory WebinarCollaboratorRoleFilter({
    /// Exact match
    WebinarCollaboratorRole? equals,
    /// Not equal to
    WebinarCollaboratorRole? not,
    /// In list of values
    @JsonKey(name: 'in') List<WebinarCollaboratorRole>? in_,
    /// Not in list of values
    List<WebinarCollaboratorRole>? notIn,
  }) = _WebinarCollaboratorRoleFilter;

  factory WebinarCollaboratorRoleFilter.fromJson(Map<String, dynamic> json) =>
      _$WebinarCollaboratorRoleFilterFromJson(json);
}

/// Filter for ClassCollaboratorRole enum fields
@freezed
class ClassCollaboratorRoleFilter with _$ClassCollaboratorRoleFilter {
  const factory ClassCollaboratorRoleFilter({
    /// Exact match
    ClassCollaboratorRole? equals,
    /// Not equal to
    ClassCollaboratorRole? not,
    /// In list of values
    @JsonKey(name: 'in') List<ClassCollaboratorRole>? in_,
    /// Not in list of values
    List<ClassCollaboratorRole>? notIn,
  }) = _ClassCollaboratorRoleFilter;

  factory ClassCollaboratorRoleFilter.fromJson(Map<String, dynamic> json) =>
      _$ClassCollaboratorRoleFilterFromJson(json);
}

/// Filter for EarningRole enum fields
@freezed
class EarningRoleFilter with _$EarningRoleFilter {
  const factory EarningRoleFilter({
    /// Exact match
    EarningRole? equals,
    /// Not equal to
    EarningRole? not,
    /// In list of values
    @JsonKey(name: 'in') List<EarningRole>? in_,
    /// Not in list of values
    List<EarningRole>? notIn,
  }) = _EarningRoleFilter;

  factory EarningRoleFilter.fromJson(Map<String, dynamic> json) =>
      _$EarningRoleFilterFromJson(json);
}

/// Filter for PlanDuration enum fields
@freezed
class PlanDurationFilter with _$PlanDurationFilter {
  const factory PlanDurationFilter({
    /// Exact match
    PlanDuration? equals,
    /// Not equal to
    PlanDuration? not,
    /// In list of values
    @JsonKey(name: 'in') List<PlanDuration>? in_,
    /// Not in list of values
    List<PlanDuration>? notIn,
  }) = _PlanDurationFilter;

  factory PlanDurationFilter.fromJson(Map<String, dynamic> json) =>
      _$PlanDurationFilterFromJson(json);
}

/// Filter for PlanEmailSupport enum fields
@freezed
class PlanEmailSupportFilter with _$PlanEmailSupportFilter {
  const factory PlanEmailSupportFilter({
    /// Exact match
    PlanEmailSupport? equals,
    /// Not equal to
    PlanEmailSupport? not,
    /// In list of values
    @JsonKey(name: 'in') List<PlanEmailSupport>? in_,
    /// Not in list of values
    List<PlanEmailSupport>? notIn,
  }) = _PlanEmailSupportFilter;

  factory PlanEmailSupportFilter.fromJson(Map<String, dynamic> json) =>
      _$PlanEmailSupportFilterFromJson(json);
}

/// Filter for UserRole enum fields
@freezed
class UserRoleFilter with _$UserRoleFilter {
  const factory UserRoleFilter({
    /// Exact match
    UserRole? equals,
    /// Not equal to
    UserRole? not,
    /// In list of values
    @JsonKey(name: 'in') List<UserRole>? in_,
    /// Not in list of values
    List<UserRole>? notIn,
  }) = _UserRoleFilter;

  factory UserRoleFilter.fromJson(Map<String, dynamic> json) =>
      _$UserRoleFilterFromJson(json);
}

/// Filter for DayOfWeek enum fields
@freezed
class DayOfWeekFilter with _$DayOfWeekFilter {
  const factory DayOfWeekFilter({
    /// Exact match
    DayOfWeek? equals,
    /// Not equal to
    DayOfWeek? not,
    /// In list of values
    @JsonKey(name: 'in') List<DayOfWeek>? in_,
    /// Not in list of values
    List<DayOfWeek>? notIn,
  }) = _DayOfWeekFilter;

  factory DayOfWeekFilter.fromJson(Map<String, dynamic> json) =>
      _$DayOfWeekFilterFromJson(json);
}

/// Filter for ScheduleType enum fields
@freezed
class ScheduleTypeFilter with _$ScheduleTypeFilter {
  const factory ScheduleTypeFilter({
    /// Exact match
    ScheduleType? equals,
    /// Not equal to
    ScheduleType? not,
    /// In list of values
    @JsonKey(name: 'in') List<ScheduleType>? in_,
    /// Not in list of values
    List<ScheduleType>? notIn,
  }) = _ScheduleTypeFilter;

  factory ScheduleTypeFilter.fromJson(Map<String, dynamic> json) =>
      _$ScheduleTypeFilterFromJson(json);
}

/// Filter for Gender enum fields
@freezed
class GenderFilter with _$GenderFilter {
  const factory GenderFilter({
    /// Exact match
    Gender? equals,
    /// Not equal to
    Gender? not,
    /// In list of values
    @JsonKey(name: 'in') List<Gender>? in_,
    /// Not in list of values
    List<Gender>? notIn,
  }) = _GenderFilter;

  factory GenderFilter.fromJson(Map<String, dynamic> json) =>
      _$GenderFilterFromJson(json);
}

/// Filter for CareerStage enum fields
@freezed
class CareerStageFilter with _$CareerStageFilter {
  const factory CareerStageFilter({
    /// Exact match
    CareerStage? equals,
    /// Not equal to
    CareerStage? not,
    /// In list of values
    @JsonKey(name: 'in') List<CareerStage>? in_,
    /// Not in list of values
    List<CareerStage>? notIn,
  }) = _CareerStageFilter;

  factory CareerStageFilter.fromJson(Map<String, dynamic> json) =>
      _$CareerStageFilterFromJson(json);
}

/// Filter for AdminLevel enum fields
@freezed
class AdminLevelFilter with _$AdminLevelFilter {
  const factory AdminLevelFilter({
    /// Exact match
    AdminLevel? equals,
    /// Not equal to
    AdminLevel? not,
    /// In list of values
    @JsonKey(name: 'in') List<AdminLevel>? in_,
    /// Not in list of values
    List<AdminLevel>? notIn,
  }) = _AdminLevelFilter;

  factory AdminLevelFilter.fromJson(Map<String, dynamic> json) =>
      _$AdminLevelFilterFromJson(json);
}

/// Filter for BudgetPreference enum fields
@freezed
class BudgetPreferenceFilter with _$BudgetPreferenceFilter {
  const factory BudgetPreferenceFilter({
    /// Exact match
    BudgetPreference? equals,
    /// Not equal to
    BudgetPreference? not,
    /// In list of values
    @JsonKey(name: 'in') List<BudgetPreference>? in_,
    /// Not in list of values
    List<BudgetPreference>? notIn,
  }) = _BudgetPreferenceFilter;

  factory BudgetPreferenceFilter.fromJson(Map<String, dynamic> json) =>
      _$BudgetPreferenceFilterFromJson(json);
}

/// Filter for SessionType enum fields
@freezed
class SessionTypeFilter with _$SessionTypeFilter {
  const factory SessionTypeFilter({
    /// Exact match
    SessionType? equals,
    /// Not equal to
    SessionType? not,
    /// In list of values
    @JsonKey(name: 'in') List<SessionType>? in_,
    /// Not in list of values
    List<SessionType>? notIn,
  }) = _SessionTypeFilter;

  factory SessionTypeFilter.fromJson(Map<String, dynamic> json) =>
      _$SessionTypeFilterFromJson(json);
}

/// Filter for ModerationReportType enum fields
@freezed
class ModerationReportTypeFilter with _$ModerationReportTypeFilter {
  const factory ModerationReportTypeFilter({
    /// Exact match
    ModerationReportType? equals,
    /// Not equal to
    ModerationReportType? not,
    /// In list of values
    @JsonKey(name: 'in') List<ModerationReportType>? in_,
    /// Not in list of values
    List<ModerationReportType>? notIn,
  }) = _ModerationReportTypeFilter;

  factory ModerationReportTypeFilter.fromJson(Map<String, dynamic> json) =>
      _$ModerationReportTypeFilterFromJson(json);
}

/// Filter for ModerationReportStatus enum fields
@freezed
class ModerationReportStatusFilter with _$ModerationReportStatusFilter {
  const factory ModerationReportStatusFilter({
    /// Exact match
    ModerationReportStatus? equals,
    /// Not equal to
    ModerationReportStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<ModerationReportStatus>? in_,
    /// Not in list of values
    List<ModerationReportStatus>? notIn,
  }) = _ModerationReportStatusFilter;

  factory ModerationReportStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$ModerationReportStatusFilterFromJson(json);
}

/// Filter for ModerationActionType enum fields
@freezed
class ModerationActionTypeFilter with _$ModerationActionTypeFilter {
  const factory ModerationActionTypeFilter({
    /// Exact match
    ModerationActionType? equals,
    /// Not equal to
    ModerationActionType? not,
    /// In list of values
    @JsonKey(name: 'in') List<ModerationActionType>? in_,
    /// Not in list of values
    List<ModerationActionType>? notIn,
  }) = _ModerationActionTypeFilter;

  factory ModerationActionTypeFilter.fromJson(Map<String, dynamic> json) =>
      _$ModerationActionTypeFilterFromJson(json);
}

/// Filter for ProfileVerificationStatus enum fields
@freezed
class ProfileVerificationStatusFilter with _$ProfileVerificationStatusFilter {
  const factory ProfileVerificationStatusFilter({
    /// Exact match
    ProfileVerificationStatus? equals,
    /// Not equal to
    ProfileVerificationStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<ProfileVerificationStatus>? in_,
    /// Not in list of values
    List<ProfileVerificationStatus>? notIn,
  }) = _ProfileVerificationStatusFilter;

  factory ProfileVerificationStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$ProfileVerificationStatusFilterFromJson(json);
}

/// Filter for SystemJobStatus enum fields
@freezed
class SystemJobStatusFilter with _$SystemJobStatusFilter {
  const factory SystemJobStatusFilter({
    /// Exact match
    SystemJobStatus? equals,
    /// Not equal to
    SystemJobStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<SystemJobStatus>? in_,
    /// Not in list of values
    List<SystemJobStatus>? notIn,
  }) = _SystemJobStatusFilter;

  factory SystemJobStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$SystemJobStatusFilterFromJson(json);
}

/// Filter for ConsultantVerificationStatus enum fields
@freezed
class ConsultantVerificationStatusFilter with _$ConsultantVerificationStatusFilter {
  const factory ConsultantVerificationStatusFilter({
    /// Exact match
    ConsultantVerificationStatus? equals,
    /// Not equal to
    ConsultantVerificationStatus? not,
    /// In list of values
    @JsonKey(name: 'in') List<ConsultantVerificationStatus>? in_,
    /// Not in list of values
    List<ConsultantVerificationStatus>? notIn,
  }) = _ConsultantVerificationStatusFilter;

  factory ConsultantVerificationStatusFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsultantVerificationStatusFilterFromJson(json);
}

/// Filter for MaintenancePhase enum fields
@freezed
class MaintenancePhaseFilter with _$MaintenancePhaseFilter {
  const factory MaintenancePhaseFilter({
    /// Exact match
    MaintenancePhase? equals,
    /// Not equal to
    MaintenancePhase? not,
    /// In list of values
    @JsonKey(name: 'in') List<MaintenancePhase>? in_,
    /// Not in list of values
    List<MaintenancePhase>? notIn,
  }) = _MaintenancePhaseFilter;

  factory MaintenancePhaseFilter.fromJson(Map<String, dynamic> json) =>
      _$MaintenancePhaseFilterFromJson(json);
}

/// Filter for String list fields
@freezed
class StringListFilter with _$StringListFilter {
  const factory StringListFilter({
    /// Has specific value
    String? has,
    /// Has every value in list
    List<String>? hasEvery,
    /// Has some value in list
    List<String>? hasSome,
    /// Is empty list
    bool? isEmpty,
  }) = _StringListFilter;

  factory StringListFilter.fromJson(Map<String, dynamic> json) =>
      _$StringListFilterFromJson(json);
}

/// Filter for Int list fields
@freezed
class IntListFilter with _$IntListFilter {
  const factory IntListFilter({
    /// Has specific value
    int? has,
    /// Has every value in list
    List<int>? hasEvery,
    /// Has some value in list
    List<int>? hasSome,
    /// Is empty list
    bool? isEmpty,
  }) = _IntListFilter;

  factory IntListFilter.fromJson(Map<String, dynamic> json) =>
      _$IntListFilterFromJson(json);
}

/// Sort order for ordering results
enum SortOrder {
  @JsonValue('asc')
  asc,
  @JsonValue('desc')
  desc,
}

