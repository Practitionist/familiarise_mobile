/// Enums matching the Prisma schema from the web app
library;

enum UserRole {
  consultant,
  consultee,
  admin,
  staff,
}

enum Gender {
  male,
  female,
  nonBinary,
  preferNotToSay,
}

enum CareerStage {
  student,
  earlyCareer,
  midCareer,
  senior,
  executive,
}

enum BudgetPreference {
  budget,
  moderate,
  premium,
  flexible,
}

enum ConsultationMode {
  video,
  audio,
  inPerson,
}

enum AppointmentType {
  consultation,
  subscription,
  webinar,
  classType, // 'class' is a reserved word in Dart
  trial,
}

enum RequestStatus {
  pending,
  approved,
  approvedPendingPayment,
  scheduled,
  completed,
  rejected,
  cancelled,
  expired,
}

enum BookingSource {
  directCheckout,
  requestSubmitted,
}

enum WebinarStatus {
  scheduled,
  inProgress,
  completed,
  cancelled,
}

enum ClassStatus {
  scheduled,
  inProgress,
  completed,
  cancelled,
}

enum PaymentStatus {
  pending,
  succeeded,
  failed,
}

enum PaymentGateway {
  stripe,
  razorpay,
  lemonSqueezy,
  xflow,
  card,
}

enum RefundStatus {
  pending,
  succeeded,
  failed,
  cancelled,
}

enum FeedbackStatus {
  pending,
  acknowledged,
  inProgress,
  resolved,
  closed,
}

enum SupportTicketStatus {
  open,
  inProgress,
  onHold,
  resolved,
  closed,
}

enum SupportPriority {
  low,
  medium,
  high,
  urgent,
}

enum PlanEmailSupport {
  general,
  priority,
  dedicated,
}

enum DayOfWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

enum ScheduleType {
  weekly,
  custom,
}

enum SessionType {
  oneOnOne,
  group,
  asyncReview,
}

enum Platform {
  zoom,
  googleMeet,
  microsoftTeams,
  stream,
  custom,
}

// --- Enums below added to align with Prisma schema ---

enum CancellationReason {
  // User-initiated
  scheduleConflict,
  foundAlternative,
  financialReasons,
  personalEmergency,
  noLongerNeeded,
  // Consultant-initiated
  consultantUnavailable,
  consultantEmergency,
  // System-initiated
  paymentFailed,
  expired,
  // Issue-related
  consultantIssue,
  technicalIssue,
  // Other
  other,
}

enum DiscountType {
  percentage,
  fixedAmount,
  freeShipping,
}

enum PlanDuration {
  oneMonth,
  threeMonths,
  sixMonths,
  twelveMonths,
}

enum AdminLevel {
  superAdmin,
  admin,
  moderator,
}

enum TrialSessionStatus {
  pending,
  scheduled,
  completed,
  converted,
  cancelled,
  rejected,
}

enum ActivityType {
  consultationBooked,
  consultationCompleted,
  consultationCancelled,
  subscriptionRequested,
  subscriptionApproved,
  subscriptionCancelled,
  webinarRegistered,
  classEnrolled,
  trialRequested,
  trialScheduled,
  trialCompleted,
  trialConverted,
  reviewSubmitted,
  messageReceived,
}

enum WaitlistStatus {
  waiting,
  notified,
  booked,
  expired,
  cancelled,
  skipped,
}

enum DocumentReviewStatus {
  pending,
  inReview,
  approved,
  rejected,
  needsRevision,
}

enum DocumentUploadRole {
  consultee,
  consultant,
}

enum RecordingStorageType {
  streamS3,
  supabase,
}

enum RecordingStatus {
  recording,
  processing,
  ready,
  transferring,
  available,
  failed,
  expired,
}

enum DisputeStatus {
  warningNeedsResponse,
  warningUnderReview,
  warningClosed,
  needsResponse,
  underReview,
  chargeRefunded,
  won,
  lost,
}

enum EarningStatus {
  pending,
  held,
  ready,
  paid,
  refunded,
}

enum PayoutStatus {
  pending,
  approved,
  processing,
  completed,
  failed,
  cancelled,
}

enum PayoutMethod {
  bankTransfer,
  upi,
  stripeTransfer,
}

enum PayoutAccountType {
  bankAccount,
  upi,
  stripeConnect,
}

enum ModerationReportType {
  review,
  profile,
  message,
  document,
  other,
}

enum ModerationReportStatus {
  pending,
  underReview,
  dismissed,
  actionTaken,
  escalated,
}

enum ModerationActionType {
  warningIssued,
  contentRemoved,
  userSuspended,
  userBanned,
  profileUnverified,
  noAction,
}

enum ProfileVerificationStatus {
  pending,
  approved,
  rejected,
  needsInfo,
}

enum SystemJobStatus {
  running,
  completed,
  failed,
  cancelled,
}

enum ConsultantVerificationStatus {
  pendingVerification,
  underReview,
  verified,
  rejected,
}
