/// Centralized storage keys for SecureStorage and SharedPreferences
///
/// Use these constants instead of hardcoded strings to:
/// - Prevent typos and inconsistencies
/// - Enable easy refactoring
/// - Avoid circular dependencies
abstract final class StorageKeys {
  // Auth keys (SecureStorage)
  static const String authToken = 'auth_token';
  static const String authUser = 'auth_user';
  static const String refreshToken = 'refresh_token';
  static const String userId = 'user_id';

  // Preference keys (SharedPreferences)
  static const String onboardingCompleted = 'onboarding_completed';
  static const String themeMode = 'theme_mode';
  static const String locale = 'locale';
  static const String notificationsEnabled = 'notifications_enabled';

  // Notification keys
  static const String fcmToken = 'fcm_token';
  static const String novuSubscriberHash = 'novu_subscriber_hash';
}
