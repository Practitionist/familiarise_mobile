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

  // Notifications
  static const String notifications = '$api/notifications';
  static const String notificationsMarkRead = '$notifications/mark-read';

  // Reviews
  static const String reviews = '$api/reviews';
  static String reviewById(String id) => '$reviews/$id';

  // Upload
  static const String upload = '$api/upload';
  static const String uploadImage = '$upload/image';
}
