import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'user_role.dart';
import 'gender.dart';
import 'work_experience.dart';
import 'certification.dart';
import 'education.dart';
import 'cookie_preference.dart';
import 'notification_preference.dart';
import 'payment.dart';
import 'consultant_profile.dart';
import 'consultee_profile.dart';
import 'staff_profile.dart';
import 'admin_profile.dart';
import 'slot_of_appointment.dart';
import 'waitlist.dart';
import 'feedback.dart';
import 'support_ticket.dart';
import 'support_response.dart';
import 'account.dart';
import 'session.dart';
import 'member.dart';
import 'moderation_report.dart';
import 'moderation_action.dart';
import 'referral_code.dart';
import 'referral.dart';
import 'referral_credit.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
    @Default(false)
    bool emailVerified,
    String? image,
    String? phone,
    String? address,
    @Default(false)
    bool onlineStatus,
    String? timezone,
    @Default(false)
    bool onboardingCompleted,
    @Default(UserRole.consultee)
    UserRole? role,
    DateTime? dateOfBirth,
    Gender? gender,
    String? city,
    String? country,
    String? linkedinUrl,
    String? bio,
    String? profileDisplayImage,
    DateTime? termsAcceptedAt,
    DateTime? privacyAcceptedAt,
    required List<WorkExperience> workExperiences,
    required List<Certification> certifications,
    required List<Education> education,
    CookiePreference? cookiePreferences,
    NotificationPreference? notificationPreferences,
    @JsonKey(name: 'Payment')
    required List<Payment> payment,
    ConsultantProfile? consultantProfile,
    String? consultantProfileId,
    ConsulteeProfile? consulteeProfile,
    String? consulteeProfileId,
    StaffProfile? staffProfile,
    String? staffProfileId,
    AdminProfile? adminProfile,
    String? adminProfileId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<SlotOfAppointment>? slotsOfAppointment,
    @JsonKey(name: 'Waitlist')
    required List<Waitlist> waitlist,
    required List<Feedback> feedbacks,
    required List<SupportTicket> supportTickets,
    required List<SupportResponse> supportResponses,
    required List<Account> accounts,
    required List<Session> sessions,
    required List<Member> members,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<ModerationReport>? reportsSubmitted,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<ModerationReport>? reportsReceived,
    required List<ModerationAction> moderationActions,
    ReferralCode? referralCode,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Referral? referral,
    required List<ReferralCredit> referralCredits,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}

/// Input for creating a new User
@freezed
class CreateUserInput with _$CreateUserInput {
  const factory CreateUserInput({
    required String name,
    required String email,
    @Default(false)
    bool? emailVerified,
    String? image,
    String? phone,
    String? address,
    @Default(false)
    bool? onlineStatus,
    String? timezone,
    @Default(false)
    bool? onboardingCompleted,
    @Default(UserRole.consultee)
    UserRole role,
    DateTime? dateOfBirth,
    Gender? gender,
    String? city,
    String? country,
    String? linkedinUrl,
    String? bio,
    String? profileDisplayImage,
    DateTime? termsAcceptedAt,
    DateTime? privacyAcceptedAt,
    String? consultantProfileId,
    String? consulteeProfileId,
    String? staffProfileId,
    String? adminProfileId,
  }) = _CreateUserInput;

  factory CreateUserInput.fromJson(Map<String, dynamic> json) =>
      _$CreateUserInputFromJson(json);
}

/// Input for updating an existing User
@freezed
class UpdateUserInput with _$UpdateUserInput {
  const factory UpdateUserInput({
    String? name,
    String? email,
    bool? emailVerified,
    String? image,
    String? phone,
    String? address,
    bool? onlineStatus,
    String? timezone,
    bool? onboardingCompleted,
    UserRole? role,
    DateTime? dateOfBirth,
    Gender? gender,
    String? city,
    String? country,
    String? linkedinUrl,
    String? bio,
    String? profileDisplayImage,
    DateTime? termsAcceptedAt,
    DateTime? privacyAcceptedAt,
    String? consultantProfileId,
    String? consulteeProfileId,
    String? staffProfileId,
    String? adminProfileId,
  }) = _UpdateUserInput;

  factory UpdateUserInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserInputFromJson(json);
}

/// Unique where input for User
/// At least one field must be provided
@freezed
class UserWhereUniqueInput with _$UserWhereUniqueInput {
  const factory UserWhereUniqueInput({
    String? id,
    String? email,
    String? phone,
    String? consultantProfileId,
    String? consulteeProfileId,
    String? staffProfileId,
    String? adminProfileId,
  }) = _UserWhereUniqueInput;

  factory UserWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereUniqueInputFromJson(json);
}

/// Where input for filtering User records
@freezed
class UserWhereInput with _$UserWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory UserWhereInput({
    StringFilter? id,
    StringFilter? name,
    StringFilter? email,
    BooleanFilter? emailVerified,
    StringFilter? image,
    StringFilter? phone,
    StringFilter? address,
    BooleanFilter? onlineStatus,
    StringFilter? timezone,
    BooleanFilter? onboardingCompleted,
    UserRoleFilter? role,
    DateTimeFilter? dateOfBirth,
    GenderFilter? gender,
    StringFilter? city,
    StringFilter? country,
    StringFilter? linkedinUrl,
    StringFilter? bio,
    StringFilter? profileDisplayImage,
    DateTimeFilter? termsAcceptedAt,
    DateTimeFilter? privacyAcceptedAt,
    StringFilter? consultantProfileId,
    StringFilter? consulteeProfileId,
    StringFilter? staffProfileId,
    StringFilter? adminProfileId,
    /// Filter by slotsOfAppointment relation
    SlotOfAppointmentListRelationFilter? slotsOfAppointment,
    /// Filter by reportsSubmitted relation
    ModerationReportListRelationFilter? reportsSubmitted,
    /// Filter by reportsReceived relation
    ModerationReportListRelationFilter? reportsReceived,
    /// Filter by referral relation
    ReferralRelationFilter? referral,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<UserWhereInput>? AND,
    List<UserWhereInput>? OR,
    UserWhereInput? NOT,
  }) = _UserWhereInput;

  factory UserWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereInputFromJson(json);
}

/// Filter for User list relations (one-to-many, many-to-many)
@freezed
class UserListRelationFilter with _$UserListRelationFilter {
  const factory UserListRelationFilter({
    /// At least one related record matches
    UserWhereInput? some,
    /// All related records match
    UserWhereInput? every,
    /// No related records match
    UserWhereInput? none,
  }) = _UserListRelationFilter;

  factory UserListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$UserListRelationFilterFromJson(json);
}

/// Filter for User single relations (one-to-one, many-to-one)
@freezed
class UserRelationFilter with _$UserRelationFilter {
  const factory UserRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') UserWhereInput? is_,
    /// Related record does not match
    UserWhereInput? isNot,
  }) = _UserRelationFilter;

  factory UserRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$UserRelationFilterFromJson(json);
}

/// Order by input for sorting User records
@freezed
class UserOrderByInput with _$UserOrderByInput {
  const factory UserOrderByInput({
    SortOrder? id,
    SortOrder? name,
    SortOrder? email,
    SortOrder? emailVerified,
    SortOrder? image,
    SortOrder? phone,
    SortOrder? address,
    SortOrder? onlineStatus,
    SortOrder? timezone,
    SortOrder? onboardingCompleted,
    SortOrder? dateOfBirth,
    SortOrder? city,
    SortOrder? country,
    SortOrder? linkedinUrl,
    SortOrder? bio,
    SortOrder? profileDisplayImage,
    SortOrder? termsAcceptedAt,
    SortOrder? privacyAcceptedAt,
    SortOrder? consultantProfileId,
    SortOrder? consulteeProfileId,
    SortOrder? staffProfileId,
    SortOrder? adminProfileId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _UserOrderByInput;

  factory UserOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByInputFromJson(json);
}

