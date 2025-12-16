import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constants/storage_keys.dart';

// Re-export network providers and constants
export '../../core/constants/storage_keys.dart';
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
