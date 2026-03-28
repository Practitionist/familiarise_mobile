/// Generated Prisma Client for Dart/Flutter
///
/// This client provides type-safe database access using adapters.
/// No GraphQL backend required - connects directly to your database!
///
/// Usage:
/// ```dart
/// final adapter = PostgresAdapter(connection);
/// final prisma = PrismaClient(adapter: adapter);
///
/// final users = await prisma.user.findMany();
/// ```
library;

import 'package:prisma_flutter_connector/runtime_server.dart';

import 'delegates/user_delegate.dart';
import 'delegates/feedback_delegate.dart';
import 'delegates/support_ticket_delegate.dart';
import 'delegates/support_response_delegate.dart';
import 'delegates/support_ticket_attachment_delegate.dart';
import 'delegates/cookie_preference_delegate.dart';
import 'delegates/notification_preference_delegate.dart';
import 'delegates/account_delegate.dart';
import 'delegates/session_delegate.dart';
import 'delegates/verification_delegate.dart';
import 'delegates/organization_delegate.dart';
import 'delegates/member_delegate.dart';
import 'delegates/invitation_delegate.dart';
import 'delegates/consultant_profile_delegate.dart';
import 'delegates/domain_delegate.dart';
import 'delegates/sub_domain_delegate.dart';
import 'delegates/tag_delegate.dart';
import 'delegates/consultant_review_delegate.dart';
import 'delegates/consultee_profile_delegate.dart';
import 'delegates/staff_profile_delegate.dart';
import 'delegates/admin_profile_delegate.dart';
import 'delegates/work_experience_delegate.dart';
import 'delegates/certification_delegate.dart';
import 'delegates/education_delegate.dart';
import 'delegates/achievement_delegate.dart';
import 'delegates/slot_of_availability_weekly_delegate.dart';
import 'delegates/slot_of_availability_custom_delegate.dart';
import 'delegates/consultation_plan_delegate.dart';
import 'delegates/consultation_delegate.dart';
import 'delegates/subscription_plan_delegate.dart';
import 'delegates/subscription_delegate.dart';
import 'delegates/trial_session_delegate.dart';
import 'delegates/activity_log_delegate.dart';
import 'delegates/webinar_plan_delegate.dart';
import 'delegates/webinar_delegate.dart';
import 'delegates/class_plan_delegate.dart';
import 'delegates/class_model_delegate.dart';
import 'delegates/class_content_delegate.dart';
import 'delegates/subscription_content_delegate.dart';
import 'delegates/topic_delegate.dart';
import 'delegates/newsletter_delegate.dart';
import 'delegates/waitlist_delegate.dart';
import 'delegates/appointment_delegate.dart';
import 'delegates/appointment_document_delegate.dart';
import 'delegates/plan_material_delegate.dart';
import 'delegates/slot_of_appointment_delegate.dart';
import 'delegates/meeting_session_delegate.dart';
import 'delegates/recording_delegate.dart';
import 'delegates/payment_delegate.dart';
import 'delegates/refund_delegate.dart';
import 'delegates/dispute_delegate.dart';
import 'delegates/consultant_earnings_delegate.dart';
import 'delegates/payout_delegate.dart';
import 'delegates/payout_account_delegate.dart';
import 'delegates/consultant_tax_info_delegate.dart';
import 'delegates/t_d_s_record_delegate.dart';
import 'delegates/invoice_delegate.dart';
import 'delegates/webhook_event_delegate.dart';
import 'delegates/discount_code_delegate.dart';
import 'delegates/referral_code_delegate.dart';
import 'delegates/referral_delegate.dart';
import 'delegates/referral_credit_delegate.dart';
import 'delegates/referral_credit_usage_delegate.dart';
import 'delegates/webinar_collaborator_delegate.dart';
import 'delegates/class_collaborator_delegate.dart';
import 'delegates/moderation_report_delegate.dart';
import 'delegates/moderation_action_delegate.dart';
import 'delegates/consultant_profile_verification_delegate.dart';
import 'delegates/profile_verification_document_delegate.dart';
import 'delegates/system_job_execution_delegate.dart';
import 'delegates/announcement_delegate.dart';
import 'delegates/maintenance_window_delegate.dart';

import 'models/user.dart';
import 'models/feedback.dart';
import 'models/support_ticket.dart';
import 'models/support_response.dart';
import 'models/support_ticket_attachment.dart';
import 'models/cookie_preference.dart';
import 'models/notification_preference.dart';
import 'models/account.dart';
import 'models/session.dart';
import 'models/verification.dart';
import 'models/organization.dart';
import 'models/member.dart';
import 'models/invitation.dart';
import 'models/consultant_profile.dart';
import 'models/domain.dart';
import 'models/sub_domain.dart';
import 'models/tag.dart';
import 'models/consultant_review.dart';
import 'models/consultee_profile.dart';
import 'models/staff_profile.dart';
import 'models/admin_profile.dart';
import 'models/work_experience.dart';
import 'models/certification.dart';
import 'models/education.dart';
import 'models/achievement.dart';
import 'models/slot_of_availability_weekly.dart';
import 'models/slot_of_availability_custom.dart';
import 'models/consultation_plan.dart';
import 'models/consultation.dart';
import 'models/subscription_plan.dart';
import 'models/subscription.dart';
import 'models/trial_session.dart';
import 'models/activity_log.dart';
import 'models/webinar_plan.dart';
import 'models/webinar.dart';
import 'models/class_plan.dart';
import 'models/class_model.dart';
import 'models/class_content.dart';
import 'models/subscription_content.dart';
import 'models/topic.dart';
import 'models/newsletter.dart';
import 'models/waitlist.dart';
import 'models/appointment.dart';
import 'models/appointment_document.dart';
import 'models/plan_material.dart';
import 'models/slot_of_appointment.dart';
import 'models/meeting_session.dart';
import 'models/recording.dart';
import 'models/payment.dart';
import 'models/refund.dart';
import 'models/dispute.dart';
import 'models/consultant_earnings.dart';
import 'models/payout.dart';
import 'models/payout_account.dart';
import 'models/consultant_tax_info.dart';
import 'models/t_d_s_record.dart';
import 'models/invoice.dart';
import 'models/webhook_event.dart';
import 'models/discount_code.dart';
import 'models/referral_code.dart';
import 'models/referral.dart';
import 'models/referral_credit.dart';
import 'models/referral_credit_usage.dart';
import 'models/webinar_collaborator.dart';
import 'models/class_collaborator.dart';
import 'models/moderation_report.dart';
import 'models/moderation_action.dart';
import 'models/consultant_profile_verification.dart';
import 'models/profile_verification_document.dart';
import 'models/system_job_execution.dart';
import 'models/announcement.dart';
import 'models/maintenance_window.dart';

/// Main Prisma client for database operations
///
/// This client provides access to all your models through
/// type-safe delegate classes.
class PrismaClient {
  /// The database adapter (PostgreSQL, Supabase, SQLite, etc.)
  final SqlDriverAdapter adapter;

  /// The query executor
  final BaseExecutor _executor;

  /// Delegate for User operations
  late final UserDelegate user;
  /// Delegate for Feedback operations
  late final FeedbackDelegate feedback;
  /// Delegate for SupportTicket operations
  late final SupportTicketDelegate supportTicket;
  /// Delegate for SupportResponse operations
  late final SupportResponseDelegate supportResponse;
  /// Delegate for SupportTicketAttachment operations
  late final SupportTicketAttachmentDelegate supportTicketAttachment;
  /// Delegate for CookiePreference operations
  late final CookiePreferenceDelegate cookiePreference;
  /// Delegate for NotificationPreference operations
  late final NotificationPreferenceDelegate notificationPreference;
  /// Delegate for Account operations
  late final AccountDelegate account;
  /// Delegate for Session operations
  late final SessionDelegate session;
  /// Delegate for Verification operations
  late final VerificationDelegate verification;
  /// Delegate for Organization operations
  late final OrganizationDelegate organization;
  /// Delegate for Member operations
  late final MemberDelegate member;
  /// Delegate for Invitation operations
  late final InvitationDelegate invitation;
  /// Delegate for ConsultantProfile operations
  late final ConsultantProfileDelegate consultantProfile;
  /// Delegate for Domain operations
  late final DomainDelegate domain;
  /// Delegate for SubDomain operations
  late final SubDomainDelegate subDomain;
  /// Delegate for Tag operations
  late final TagDelegate tag;
  /// Delegate for ConsultantReview operations
  late final ConsultantReviewDelegate consultantReview;
  /// Delegate for ConsulteeProfile operations
  late final ConsulteeProfileDelegate consulteeProfile;
  /// Delegate for StaffProfile operations
  late final StaffProfileDelegate staffProfile;
  /// Delegate for AdminProfile operations
  late final AdminProfileDelegate adminProfile;
  /// Delegate for WorkExperience operations
  late final WorkExperienceDelegate workExperience;
  /// Delegate for Certification operations
  late final CertificationDelegate certification;
  /// Delegate for Education operations
  late final EducationDelegate education;
  /// Delegate for Achievement operations
  late final AchievementDelegate achievement;
  /// Delegate for SlotOfAvailabilityWeekly operations
  late final SlotOfAvailabilityWeeklyDelegate slotOfAvailabilityWeekly;
  /// Delegate for SlotOfAvailabilityCustom operations
  late final SlotOfAvailabilityCustomDelegate slotOfAvailabilityCustom;
  /// Delegate for ConsultationPlan operations
  late final ConsultationPlanDelegate consultationPlan;
  /// Delegate for Consultation operations
  late final ConsultationDelegate consultation;
  /// Delegate for SubscriptionPlan operations
  late final SubscriptionPlanDelegate subscriptionPlan;
  /// Delegate for Subscription operations
  late final SubscriptionDelegate subscription;
  /// Delegate for TrialSession operations
  late final TrialSessionDelegate trialSession;
  /// Delegate for ActivityLog operations
  late final ActivityLogDelegate activityLog;
  /// Delegate for WebinarPlan operations
  late final WebinarPlanDelegate webinarPlan;
  /// Delegate for Webinar operations
  late final WebinarDelegate webinar;
  /// Delegate for ClassPlan operations
  late final ClassPlanDelegate classPlan;
  /// Delegate for ClassModel operations
  late final ClassModelDelegate classModel;
  /// Delegate for ClassContent operations
  late final ClassContentDelegate classContent;
  /// Delegate for SubscriptionContent operations
  late final SubscriptionContentDelegate subscriptionContent;
  /// Delegate for Topic operations
  late final TopicDelegate topic;
  /// Delegate for Newsletter operations
  late final NewsletterDelegate newsletter;
  /// Delegate for Waitlist operations
  late final WaitlistDelegate waitlist;
  /// Delegate for Appointment operations
  late final AppointmentDelegate appointment;
  /// Delegate for AppointmentDocument operations
  late final AppointmentDocumentDelegate appointmentDocument;
  /// Delegate for PlanMaterial operations
  late final PlanMaterialDelegate planMaterial;
  /// Delegate for SlotOfAppointment operations
  late final SlotOfAppointmentDelegate slotOfAppointment;
  /// Delegate for MeetingSession operations
  late final MeetingSessionDelegate meetingSession;
  /// Delegate for Recording operations
  late final RecordingDelegate recording;
  /// Delegate for Payment operations
  late final PaymentDelegate payment;
  /// Delegate for Refund operations
  late final RefundDelegate refund;
  /// Delegate for Dispute operations
  late final DisputeDelegate dispute;
  /// Delegate for ConsultantEarnings operations
  late final ConsultantEarningsDelegate consultantEarnings;
  /// Delegate for Payout operations
  late final PayoutDelegate payout;
  /// Delegate for PayoutAccount operations
  late final PayoutAccountDelegate payoutAccount;
  /// Delegate for ConsultantTaxInfo operations
  late final ConsultantTaxInfoDelegate consultantTaxInfo;
  /// Delegate for TDSRecord operations
  late final TDSRecordDelegate tDSRecord;
  /// Delegate for Invoice operations
  late final InvoiceDelegate invoice;
  /// Delegate for WebhookEvent operations
  late final WebhookEventDelegate webhookEvent;
  /// Delegate for DiscountCode operations
  late final DiscountCodeDelegate discountCode;
  /// Delegate for ReferralCode operations
  late final ReferralCodeDelegate referralCode;
  /// Delegate for Referral operations
  late final ReferralDelegate referral;
  /// Delegate for ReferralCredit operations
  late final ReferralCreditDelegate referralCredit;
  /// Delegate for ReferralCreditUsage operations
  late final ReferralCreditUsageDelegate referralCreditUsage;
  /// Delegate for WebinarCollaborator operations
  late final WebinarCollaboratorDelegate webinarCollaborator;
  /// Delegate for ClassCollaborator operations
  late final ClassCollaboratorDelegate classCollaborator;
  /// Delegate for ModerationReport operations
  late final ModerationReportDelegate moderationReport;
  /// Delegate for ModerationAction operations
  late final ModerationActionDelegate moderationAction;
  /// Delegate for ConsultantProfileVerification operations
  late final ConsultantProfileVerificationDelegate consultantProfileVerification;
  /// Delegate for ProfileVerificationDocument operations
  late final ProfileVerificationDocumentDelegate profileVerificationDocument;
  /// Delegate for SystemJobExecution operations
  late final SystemJobExecutionDelegate systemJobExecution;
  /// Delegate for Announcement operations
  late final AnnouncementDelegate announcement;
  /// Delegate for MaintenanceWindow operations
  late final MaintenanceWindowDelegate maintenanceWindow;

  /// Create a new PrismaClient with a database adapter
  ///
  /// Example:
  /// ```dart
  /// final connection = await pg.Connection.open(...);
  /// final adapter = PostgresAdapter(connection);
  /// final prisma = PrismaClient(adapter: adapter);
  /// ```
  PrismaClient({required this.adapter})
      : _executor = QueryExecutor(adapter: adapter) {
    user = UserDelegate(_executor);
    feedback = FeedbackDelegate(_executor);
    supportTicket = SupportTicketDelegate(_executor);
    supportResponse = SupportResponseDelegate(_executor);
    supportTicketAttachment = SupportTicketAttachmentDelegate(_executor);
    cookiePreference = CookiePreferenceDelegate(_executor);
    notificationPreference = NotificationPreferenceDelegate(_executor);
    account = AccountDelegate(_executor);
    session = SessionDelegate(_executor);
    verification = VerificationDelegate(_executor);
    organization = OrganizationDelegate(_executor);
    member = MemberDelegate(_executor);
    invitation = InvitationDelegate(_executor);
    consultantProfile = ConsultantProfileDelegate(_executor);
    domain = DomainDelegate(_executor);
    subDomain = SubDomainDelegate(_executor);
    tag = TagDelegate(_executor);
    consultantReview = ConsultantReviewDelegate(_executor);
    consulteeProfile = ConsulteeProfileDelegate(_executor);
    staffProfile = StaffProfileDelegate(_executor);
    adminProfile = AdminProfileDelegate(_executor);
    workExperience = WorkExperienceDelegate(_executor);
    certification = CertificationDelegate(_executor);
    education = EducationDelegate(_executor);
    achievement = AchievementDelegate(_executor);
    slotOfAvailabilityWeekly = SlotOfAvailabilityWeeklyDelegate(_executor);
    slotOfAvailabilityCustom = SlotOfAvailabilityCustomDelegate(_executor);
    consultationPlan = ConsultationPlanDelegate(_executor);
    consultation = ConsultationDelegate(_executor);
    subscriptionPlan = SubscriptionPlanDelegate(_executor);
    subscription = SubscriptionDelegate(_executor);
    trialSession = TrialSessionDelegate(_executor);
    activityLog = ActivityLogDelegate(_executor);
    webinarPlan = WebinarPlanDelegate(_executor);
    webinar = WebinarDelegate(_executor);
    classPlan = ClassPlanDelegate(_executor);
    classModel = ClassModelDelegate(_executor);
    classContent = ClassContentDelegate(_executor);
    subscriptionContent = SubscriptionContentDelegate(_executor);
    topic = TopicDelegate(_executor);
    newsletter = NewsletterDelegate(_executor);
    waitlist = WaitlistDelegate(_executor);
    appointment = AppointmentDelegate(_executor);
    appointmentDocument = AppointmentDocumentDelegate(_executor);
    planMaterial = PlanMaterialDelegate(_executor);
    slotOfAppointment = SlotOfAppointmentDelegate(_executor);
    meetingSession = MeetingSessionDelegate(_executor);
    recording = RecordingDelegate(_executor);
    payment = PaymentDelegate(_executor);
    refund = RefundDelegate(_executor);
    dispute = DisputeDelegate(_executor);
    consultantEarnings = ConsultantEarningsDelegate(_executor);
    payout = PayoutDelegate(_executor);
    payoutAccount = PayoutAccountDelegate(_executor);
    consultantTaxInfo = ConsultantTaxInfoDelegate(_executor);
    tDSRecord = TDSRecordDelegate(_executor);
    invoice = InvoiceDelegate(_executor);
    webhookEvent = WebhookEventDelegate(_executor);
    discountCode = DiscountCodeDelegate(_executor);
    referralCode = ReferralCodeDelegate(_executor);
    referral = ReferralDelegate(_executor);
    referralCredit = ReferralCreditDelegate(_executor);
    referralCreditUsage = ReferralCreditUsageDelegate(_executor);
    webinarCollaborator = WebinarCollaboratorDelegate(_executor);
    classCollaborator = ClassCollaboratorDelegate(_executor);
    moderationReport = ModerationReportDelegate(_executor);
    moderationAction = ModerationActionDelegate(_executor);
    consultantProfileVerification = ConsultantProfileVerificationDelegate(_executor);
    profileVerificationDocument = ProfileVerificationDocumentDelegate(_executor);
    systemJobExecution = SystemJobExecutionDelegate(_executor);
    announcement = AnnouncementDelegate(_executor);
    maintenanceWindow = MaintenanceWindowDelegate(_executor);
  }

  /// Execute multiple operations in a transaction
  ///
  /// All operations succeed or all rollback on error.
  ///
  /// Example:
  /// ```dart
  /// await prisma.$transaction((tx) async {
  ///   await tx.user.create(data: {...});
  ///   await tx.profile.create(data: {...});
  ///   // Both succeed or both rollback
  /// });
  /// ```
  Future<T> $transaction<T>(
    Future<T> Function(PrismaClient) callback, {
    IsolationLevel? isolationLevel,
  }) async {
    final queryExecutor = _executor as QueryExecutor;
    return await queryExecutor.executeInTransaction((txExecutor) async {
      final txClient = PrismaClient._transaction(txExecutor);
      return await callback(txClient);
    }, isolationLevel: isolationLevel);
  }

  /// Private constructor for transaction client
  PrismaClient._transaction(BaseExecutor executor)
      : adapter = executor.adapter,
        _executor = executor {
    user = UserDelegate(_executor);
    feedback = FeedbackDelegate(_executor);
    supportTicket = SupportTicketDelegate(_executor);
    supportResponse = SupportResponseDelegate(_executor);
    supportTicketAttachment = SupportTicketAttachmentDelegate(_executor);
    cookiePreference = CookiePreferenceDelegate(_executor);
    notificationPreference = NotificationPreferenceDelegate(_executor);
    account = AccountDelegate(_executor);
    session = SessionDelegate(_executor);
    verification = VerificationDelegate(_executor);
    organization = OrganizationDelegate(_executor);
    member = MemberDelegate(_executor);
    invitation = InvitationDelegate(_executor);
    consultantProfile = ConsultantProfileDelegate(_executor);
    domain = DomainDelegate(_executor);
    subDomain = SubDomainDelegate(_executor);
    tag = TagDelegate(_executor);
    consultantReview = ConsultantReviewDelegate(_executor);
    consulteeProfile = ConsulteeProfileDelegate(_executor);
    staffProfile = StaffProfileDelegate(_executor);
    adminProfile = AdminProfileDelegate(_executor);
    workExperience = WorkExperienceDelegate(_executor);
    certification = CertificationDelegate(_executor);
    education = EducationDelegate(_executor);
    achievement = AchievementDelegate(_executor);
    slotOfAvailabilityWeekly = SlotOfAvailabilityWeeklyDelegate(_executor);
    slotOfAvailabilityCustom = SlotOfAvailabilityCustomDelegate(_executor);
    consultationPlan = ConsultationPlanDelegate(_executor);
    consultation = ConsultationDelegate(_executor);
    subscriptionPlan = SubscriptionPlanDelegate(_executor);
    subscription = SubscriptionDelegate(_executor);
    trialSession = TrialSessionDelegate(_executor);
    activityLog = ActivityLogDelegate(_executor);
    webinarPlan = WebinarPlanDelegate(_executor);
    webinar = WebinarDelegate(_executor);
    classPlan = ClassPlanDelegate(_executor);
    classModel = ClassModelDelegate(_executor);
    classContent = ClassContentDelegate(_executor);
    subscriptionContent = SubscriptionContentDelegate(_executor);
    topic = TopicDelegate(_executor);
    newsletter = NewsletterDelegate(_executor);
    waitlist = WaitlistDelegate(_executor);
    appointment = AppointmentDelegate(_executor);
    appointmentDocument = AppointmentDocumentDelegate(_executor);
    planMaterial = PlanMaterialDelegate(_executor);
    slotOfAppointment = SlotOfAppointmentDelegate(_executor);
    meetingSession = MeetingSessionDelegate(_executor);
    recording = RecordingDelegate(_executor);
    payment = PaymentDelegate(_executor);
    refund = RefundDelegate(_executor);
    dispute = DisputeDelegate(_executor);
    consultantEarnings = ConsultantEarningsDelegate(_executor);
    payout = PayoutDelegate(_executor);
    payoutAccount = PayoutAccountDelegate(_executor);
    consultantTaxInfo = ConsultantTaxInfoDelegate(_executor);
    tDSRecord = TDSRecordDelegate(_executor);
    invoice = InvoiceDelegate(_executor);
    webhookEvent = WebhookEventDelegate(_executor);
    discountCode = DiscountCodeDelegate(_executor);
    referralCode = ReferralCodeDelegate(_executor);
    referral = ReferralDelegate(_executor);
    referralCredit = ReferralCreditDelegate(_executor);
    referralCreditUsage = ReferralCreditUsageDelegate(_executor);
    webinarCollaborator = WebinarCollaboratorDelegate(_executor);
    classCollaborator = ClassCollaboratorDelegate(_executor);
    moderationReport = ModerationReportDelegate(_executor);
    moderationAction = ModerationActionDelegate(_executor);
    consultantProfileVerification = ConsultantProfileVerificationDelegate(_executor);
    profileVerificationDocument = ProfileVerificationDocumentDelegate(_executor);
    systemJobExecution = SystemJobExecutionDelegate(_executor);
    announcement = AnnouncementDelegate(_executor);
    maintenanceWindow = MaintenanceWindowDelegate(_executor);
  }

  /// Close the database connection
  ///
  /// Call this when you're done using the client to clean up resources.
  Future<void> $disconnect() async {
    final queryExecutor = _executor as QueryExecutor;
    await queryExecutor.dispose();
  }
}

/// Helper class for filter operators
///
/// Use these when building WHERE clauses.
class Where {
  /// Equals
  static Map<String, dynamic> equals(dynamic value) => FilterOperators.equals(value);

  /// Not equals
  static Map<String, dynamic> not(dynamic value) => FilterOperators.not(value);

  /// In list
  static Map<String, dynamic> in_(List<dynamic> values) => FilterOperators.in_(values);

  /// Not in list
  static Map<String, dynamic> notIn(List<dynamic> values) => FilterOperators.notIn(values);

  /// Less than
  static Map<String, dynamic> lt(dynamic value) => FilterOperators.lt(value);

  /// Less than or equal
  static Map<String, dynamic> lte(dynamic value) => FilterOperators.lte(value);

  /// Greater than
  static Map<String, dynamic> gt(dynamic value) => FilterOperators.gt(value);

  /// Greater than or equal
  static Map<String, dynamic> gte(dynamic value) => FilterOperators.gte(value);

  /// Contains (string)
  static Map<String, dynamic> contains(String value) => FilterOperators.contains(value);

  /// Starts with (string)
  static Map<String, dynamic> startsWith(String value) => FilterOperators.startsWith(value);

  /// Ends with (string)
  static Map<String, dynamic> endsWith(String value) => FilterOperators.endsWith(value);

  /// AND conditions
  static Map<String, dynamic> and(List<Map<String, dynamic>> conditions) => FilterOperators.and(conditions);

  /// OR conditions
  static Map<String, dynamic> or(List<Map<String, dynamic>> conditions) => FilterOperators.or(conditions);

  /// NOT condition
  static Map<String, dynamic> none(Map<String, dynamic> condition) => FilterOperators.none(condition);
}
