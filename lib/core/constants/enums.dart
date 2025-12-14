/// Enums matching the Prisma schema from the web app

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
}

enum RequestStatus {
  pending,
  approved,
  approvedPendingPayment,
  scheduled,
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
