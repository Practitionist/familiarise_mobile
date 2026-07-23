/// Centralized API endpoint constants
/// All API routes used by the mobile app
abstract final class ApiEndpoints {
  // Base paths
  static const String api = '/api';

  // Authentication
  static const String authSignIn = '$api/auth/sign-in';
  static const String authSignUp = '$api/auth/sign-up';
  static const String authSignOut = '$api/auth/sign-out';
  static const String authSession = '$api/auth/session';
  static const String authRefresh = '$api/auth/refresh';

  // Auth — Profile operations
  static const String authChangePassword = '$api/auth/change-password';
  static const String authForgotPassword = '$api/auth/forgot-password';
  static const String authResetPassword = '$api/auth/reset-password';
  static const String authVerifyEmail = '$api/auth/verify-email';
  static const String authSetPassword = '$api/auth/set-password';
  static const String authDeleteAccount = '$api/auth/delete-account';
  static const String authSessions = '$api/auth/sessions';
  static const String authRevokeSession = '$api/auth/revoke-session';
  static const String authRevokeOtherSessions =
      '$api/auth/revoke-other-sessions';

  // User Profile
  static const String user = '$api/user';
  static const String userProfile = '$api/user/profile';
  static const String userOnboarding = '$api/user/onboarding';

  // Consultants
  static const String consultants = '$api/consultants';
  static String consultantById(String id) => '$consultants/$id';
  static String consultantAvailability(String id) =>
      '$consultants/$id/availability';
  static String consultantReviews(String id) => '$consultants/$id/reviews';

  // Domains
  static const String domains = '$api/domains';
  static String domainById(String id) => '$domains/$id';

  // Appointments
  static const String appointments = '$api/appointments';
  static String appointmentById(String id) => '$appointments/$id';
  static String appointmentCancel(String id) => '$appointments/$id/cancel';

  // Programs (Webinars & Classes)
  static const String webinars = '$api/webinars';
  static String webinarById(String id) => '$webinars/$id';
  static const String classes = '$api/classes';
  static String classById(String id) => '$classes/$id';

  // Slots & Availability
  static const String slots = '$api/slots';
  static const String slotsAvailability = '$slots/availability';

  // Checkout & Payments
  static const String checkout = '$api/checkout';
  static const String checkoutVerify = '$checkout/verify';
  static const String checkoutCreateOrder = '$checkout/create-order';

  // Stream (Video & Chat)
  static const String streamToken = '$api/stream/token';
  static const String streamVideoToken = '$api/stream/video-token';
  static const String streamChatToken = '$api/stream/chat-token';
  static const String streamUpsertUser = '$api/stream/upsert-user';
  static const String streamCreateGroupChannel =
      '$api/stream/create-group-channel';
  static const String streamAddMember = '$api/stream/add-member';
  static const String streamSetMemberRole = '$api/stream/set-member-role';
  static const String streamToggleArchive = '$api/stream/toggle-archive';

  // Meetings
  static String meetingByAppointmentId(String appointmentId) =>
      '$appointments/$appointmentId/meeting';
  static String meetingStart(String appointmentId) =>
      '$appointments/$appointmentId/meeting/start';
  static String meetingEnd(String appointmentId) =>
      '$appointments/$appointmentId/meeting/end';

  // Notifications
  static const String notifications = '$api/notifications';
  static const String notificationsMarkRead = '$notifications/mark-read';

  // Reviews
  static const String reviews = '$api/reviews';
  static String reviewById(String id) => '$reviews/$id';

  // Upload
  static const String upload = '$api/upload';
  static const String uploadImage = '$upload/image';

  // Dashboard
  static const String dashboardStats = '$api/dashboard/stats';
  static const String consultantDashboardStats =
      '$api/consultant/dashboard/stats';
  static const String consultantPendingRequests =
      '$api/consultant/dashboard/pending-requests';
  static const String consultantRecentReviews =
      '$api/consultant/dashboard/recent-reviews';
  static const String consultantEarnings =
      '$api/consultant/dashboard/earnings';

  // Profile update (role-specific)
  static const String consultantProfile = '$api/consultant/profile';
  static const String consulteeProfile = '$api/consultee/profile';

  // Collaborations
  static const String collaborations = '$api/collaborations';
  static String collaborationRespond(String id) =>
      '$collaborations/$id/respond';

  // Referrals
  static const String referralApply = '$api/referrals/apply';
  static const String referralCode = '$api/referrals/code';
  static const String referralCreditsAvailable =
      '$api/referrals/credits/available';

  // Enterprise org context (read-only)
  static const String myOrganization = '$api/me/organization';
  static const String myProgramAssignments = '$api/me/program-assignments';
}
