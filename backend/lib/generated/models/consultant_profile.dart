import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'session_type.dart';
import 'consultant_verification_status.dart';
import 'domain.dart';
import 'sub_domain.dart';
import 'tag.dart';
import 'consultant_review.dart';
import 'schedule_type.dart';
import 'slot_of_availability_weekly.dart';
import 'slot_of_availability_custom.dart';
import 'consultation_plan.dart';
import 'subscription_plan.dart';
import 'webinar_plan.dart';
import 'class_plan.dart';
import 'webinar_collaborator.dart';
import 'class_collaborator.dart';
import 'trial_session.dart';
import 'activity_log.dart';
import 'achievement.dart';
import 'user.dart';
import 'consultant_earnings.dart';
import 'payout.dart';
import 'payout_account.dart';
import 'consultant_tax_info.dart';
import 't_d_s_record.dart';
import 'consultant_profile_verification.dart';

part 'consultant_profile.freezed.dart';
part 'consultant_profile.g.dart';

@freezed
class ConsultantProfile with _$ConsultantProfile {
  const factory ConsultantProfile({
    required String id,
    String? description,
    double? experience,
    @Default(0)
    double rating,
    String? headline,
    String? websiteUrl,
    String? twitterUrl,
    String? githubUrl,
    String? videoIntroUrl,
    @Default(<String>[])
    List<String>? languages,
    @Default(<String>[])
    List<String>? toolsAndTechnologies,
    String? mentoringStyle,
    @Default(<SessionType>[])
    List<SessionType>? sessionTypes,
    @Default(0)
    int profileCompletionPercentage,
    @Default(false)
    bool isVerified,
    @Default(ConsultantVerificationStatus.pendingVerification)
    ConsultantVerificationStatus verificationStatus,
    @Default(0)
    int totalMenteesHelped,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Domain? domain,
    required String domainId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<SubDomain>? subDomains,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<Tag>? tags,
    required List<ConsultantReview> reviews,
    required ScheduleType scheduleType,
    required List<SlotOfAvailabilityWeekly> slotsOfAvailabilityWeekly,
    required List<SlotOfAvailabilityCustom> slotsOfAvailabilityCustom,
    required List<ConsultationPlan> consultationPlans,
    required List<SubscriptionPlan> subscriptionPlans,
    required List<WebinarPlan> webinarPlans,
    required List<ClassPlan> classPlans,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<WebinarCollaborator>? webinarCollaborations,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<ClassCollaborator>? classCollaborations,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<WebinarCollaborator>? invitedWebinarCollabs,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<ClassCollaborator>? invitedClassCollabs,
    required List<TrialSession> trialSessions,
    required List<ActivityLog> activityLogs,
    required List<Achievement> achievements,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required String userId,
    required List<ConsultantEarnings> earnings,
    required List<Payout> payouts,
    required List<PayoutAccount> payoutAccounts,
    ConsultantTaxInfo? taxInfo,
    required List<TDSRecord> tdsRecords,
    required List<ConsultantProfileVerification> verificationRequests,
    @Default(0)
    int totalRevenue,
    @Default(0)
    int pendingRevenue,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ConsultantProfile;

  factory ConsultantProfile.fromJson(Map<String, dynamic> json) =>
      _$ConsultantProfileFromJson(json);
}

/// Input for creating a new ConsultantProfile
@freezed
class CreateConsultantProfileInput with _$CreateConsultantProfileInput {
  const factory CreateConsultantProfileInput({
    String? description,
    double? experience,
    @Default(0)
    double? rating,
    String? headline,
    String? websiteUrl,
    String? twitterUrl,
    String? githubUrl,
    String? videoIntroUrl,
    @Default(<String>[])
    List<String>? languages,
    @Default(<String>[])
    List<String>? toolsAndTechnologies,
    String? mentoringStyle,
    @Default(<SessionType>[])
    List<SessionType>? sessionTypes,
    @Default(0)
    int? profileCompletionPercentage,
    @Default(false)
    bool? isVerified,
    @Default(ConsultantVerificationStatus.pendingVerification)
    ConsultantVerificationStatus verificationStatus,
    @Default(0)
    int? totalMenteesHelped,
    required String domainId,
    required ScheduleType scheduleType,
    required String userId,
    @Default(0)
    int? totalRevenue,
    @Default(0)
    int? pendingRevenue,
  }) = _CreateConsultantProfileInput;

  factory CreateConsultantProfileInput.fromJson(Map<String, dynamic> json) =>
      _$CreateConsultantProfileInputFromJson(json);
}

/// Input for updating an existing ConsultantProfile
@freezed
class UpdateConsultantProfileInput with _$UpdateConsultantProfileInput {
  const factory UpdateConsultantProfileInput({
    String? description,
    double? experience,
    double? rating,
    String? headline,
    String? websiteUrl,
    String? twitterUrl,
    String? githubUrl,
    String? videoIntroUrl,
    List<String>? languages,
    List<String>? toolsAndTechnologies,
    String? mentoringStyle,
    List<SessionType>? sessionTypes,
    int? profileCompletionPercentage,
    bool? isVerified,
    ConsultantVerificationStatus? verificationStatus,
    int? totalMenteesHelped,
    String? domainId,
    ScheduleType? scheduleType,
    String? userId,
    int? totalRevenue,
    int? pendingRevenue,
  }) = _UpdateConsultantProfileInput;

  factory UpdateConsultantProfileInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateConsultantProfileInputFromJson(json);
}

/// Unique where input for ConsultantProfile
/// At least one field must be provided
@freezed
class ConsultantProfileWhereUniqueInput with _$ConsultantProfileWhereUniqueInput {
  const factory ConsultantProfileWhereUniqueInput({
    String? id,
    String? userId,
  }) = _ConsultantProfileWhereUniqueInput;

  factory ConsultantProfileWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultantProfileWhereUniqueInputFromJson(json);
}

/// Where input for filtering ConsultantProfile records
@freezed
class ConsultantProfileWhereInput with _$ConsultantProfileWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ConsultantProfileWhereInput({
    StringFilter? id,
    StringFilter? description,
    FloatFilter? experience,
    FloatFilter? rating,
    StringFilter? headline,
    StringFilter? websiteUrl,
    StringFilter? twitterUrl,
    StringFilter? githubUrl,
    StringFilter? videoIntroUrl,
    StringListFilter? languages,
    StringListFilter? toolsAndTechnologies,
    StringFilter? mentoringStyle,
    IntFilter? profileCompletionPercentage,
    BooleanFilter? isVerified,
    ConsultantVerificationStatusFilter? verificationStatus,
    IntFilter? totalMenteesHelped,
    /// Filter by domain relation
    DomainRelationFilter? domain,
    StringFilter? domainId,
    /// Filter by subDomains relation
    SubDomainListRelationFilter? subDomains,
    /// Filter by tags relation
    TagListRelationFilter? tags,
    ScheduleTypeFilter? scheduleType,
    /// Filter by webinarCollaborations relation
    WebinarCollaboratorListRelationFilter? webinarCollaborations,
    /// Filter by classCollaborations relation
    ClassCollaboratorListRelationFilter? classCollaborations,
    /// Filter by invitedWebinarCollabs relation
    WebinarCollaboratorListRelationFilter? invitedWebinarCollabs,
    /// Filter by invitedClassCollabs relation
    ClassCollaboratorListRelationFilter? invitedClassCollabs,
    /// Filter by user relation
    UserRelationFilter? user,
    StringFilter? userId,
    IntFilter? totalRevenue,
    IntFilter? pendingRevenue,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<ConsultantProfileWhereInput>? AND,
    List<ConsultantProfileWhereInput>? OR,
    ConsultantProfileWhereInput? NOT,
  }) = _ConsultantProfileWhereInput;

  factory ConsultantProfileWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultantProfileWhereInputFromJson(json);
}

/// Filter for ConsultantProfile list relations (one-to-many, many-to-many)
@freezed
class ConsultantProfileListRelationFilter with _$ConsultantProfileListRelationFilter {
  const factory ConsultantProfileListRelationFilter({
    /// At least one related record matches
    ConsultantProfileWhereInput? some,
    /// All related records match
    ConsultantProfileWhereInput? every,
    /// No related records match
    ConsultantProfileWhereInput? none,
  }) = _ConsultantProfileListRelationFilter;

  factory ConsultantProfileListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsultantProfileListRelationFilterFromJson(json);
}

/// Filter for ConsultantProfile single relations (one-to-one, many-to-one)
@freezed
class ConsultantProfileRelationFilter with _$ConsultantProfileRelationFilter {
  const factory ConsultantProfileRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ConsultantProfileWhereInput? is_,
    /// Related record does not match
    ConsultantProfileWhereInput? isNot,
  }) = _ConsultantProfileRelationFilter;

  factory ConsultantProfileRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsultantProfileRelationFilterFromJson(json);
}

/// Order by input for sorting ConsultantProfile records
@freezed
class ConsultantProfileOrderByInput with _$ConsultantProfileOrderByInput {
  const factory ConsultantProfileOrderByInput({
    SortOrder? id,
    SortOrder? description,
    SortOrder? experience,
    SortOrder? rating,
    SortOrder? headline,
    SortOrder? websiteUrl,
    SortOrder? twitterUrl,
    SortOrder? githubUrl,
    SortOrder? videoIntroUrl,
    SortOrder? languages,
    SortOrder? toolsAndTechnologies,
    SortOrder? mentoringStyle,
    SortOrder? profileCompletionPercentage,
    SortOrder? isVerified,
    SortOrder? totalMenteesHelped,
    SortOrder? domainId,
    SortOrder? userId,
    SortOrder? totalRevenue,
    SortOrder? pendingRevenue,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _ConsultantProfileOrderByInput;

  factory ConsultantProfileOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultantProfileOrderByInputFromJson(json);
}

