import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Re-export network providers
export '../../core/network/dio_client.dart';
export '../../core/network/network_info.dart';

part 'core_providers.g.dart';

/// Secure storage provider for sensitive data (tokens, credentials)
@riverpod
FlutterSecureStorage secureStorage(Ref ref) {
  return const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock,
    ),
  );
}

/// Shared preferences provider for non-sensitive data
/// Must be initialized before use with SharedPreferences.getInstance()
@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPreferences(Ref ref) async {
  return SharedPreferences.getInstance();
}

/// Provider for checking if user has completed onboarding
@riverpod
Future<bool> hasCompletedOnboarding(Ref ref) async {
  final prefs = await ref.watch(sharedPreferencesProvider.future);
  return prefs.getBool(StorageKeys.onboardingCompleted) ?? false;
}

/// Provider for checking if user is logged in
@riverpod
Future<bool> isLoggedIn(Ref ref) async {
  final storage = ref.watch(secureStorageProvider);
  final token = await storage.read(key: StorageKeys.authToken);
  return token != null;
}

/// Secure storage keys for easy reference
abstract final class StorageKeys {
  // Auth
  static const String authToken = 'auth_token';
  static const String refreshToken = 'refresh_token';
  static const String userId = 'user_id';

  // Preferences (SharedPreferences)
  static const String onboardingCompleted = 'onboarding_completed';
  static const String themeMode = 'theme_mode';
  static const String locale = 'locale';
  static const String notificationsEnabled = 'notifications_enabled';
}
