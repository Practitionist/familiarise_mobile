import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/errors/exceptions.dart';
import '../../../shared/providers/core_providers.dart';

part 'auth_local_source.g.dart';

/// Provider for AuthLocalSource
@riverpod
AuthLocalSource authLocalSource(Ref ref) {
  return AuthLocalSourceImpl(
    ref.watch(secureStorageProvider),
    ref.watch(sharedPreferencesProvider).requireValue,
  );
}

/// Local data source interface for auth-related storage
abstract class AuthLocalSource {
  /// Save user ID
  Future<void> saveUserId(String userId);

  /// Get user ID
  Future<String?> getUserId();

  /// Clear user ID
  Future<void> clearUserId();

  /// Set onboarding completion status
  Future<void> setOnboardingCompleted(bool completed);

  /// Check if onboarding is completed
  Future<bool> isOnboardingCompleted();

  /// Clear all auth-related data
  Future<void> clearAll();
}

/// Implementation using FlutterSecureStorage and SharedPreferences
class AuthLocalSourceImpl implements AuthLocalSource {
  final FlutterSecureStorage _secureStorage;
  final SharedPreferences _prefs;

  AuthLocalSourceImpl(this._secureStorage, this._prefs);

  @override
  Future<void> saveUserId(String userId) async {
    try {
      await _secureStorage.write(key: StorageKeys.userId, value: userId);
    } catch (e) {
      throw CacheException(message: 'Failed to save user ID: $e');
    }
  }

  @override
  Future<String?> getUserId() async {
    try {
      return await _secureStorage.read(key: StorageKeys.userId);
    } catch (e) {
      throw CacheException(message: 'Failed to read user ID: $e');
    }
  }

  @override
  Future<void> clearUserId() async {
    try {
      await _secureStorage.delete(key: StorageKeys.userId);
    } catch (e) {
      throw CacheException(message: 'Failed to clear user ID: $e');
    }
  }

  @override
  Future<void> setOnboardingCompleted(bool completed) async {
    await _prefs.setBool(StorageKeys.onboardingCompleted, completed);
  }

  @override
  Future<bool> isOnboardingCompleted() async {
    return _prefs.getBool(StorageKeys.onboardingCompleted) ?? false;
  }

  @override
  Future<void> clearAll() async {
    try {
      await Future.wait([
        _secureStorage.delete(key: StorageKeys.userId),
        _secureStorage.delete(key: StorageKeys.authToken),
        _secureStorage.delete(key: StorageKeys.refreshToken),
      ]);
      await _prefs.remove(StorageKeys.onboardingCompleted);
    } catch (e) {
      throw CacheException(message: 'Failed to clear auth data: $e');
    }
  }
}
