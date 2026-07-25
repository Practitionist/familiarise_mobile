import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/config/env_config.dart';
import '../../../core/constants/storage_keys.dart';
import '../../../core/errors/exceptions.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../models/user_model.dart';
import 'auth_remote_source.dart';

/// Shared implementation for auth methods that are identical on mobile and web.
///
/// Platform-specific behavior (token storage, Google/GitHub OAuth, sign-out)
/// is delegated to abstract bridge methods that each platform overrides.
mixin AuthRemoteSourceMixin implements AuthRemoteSource {
  // ---------------------------------------------------------------------------
  // Bridge methods — implemented differently per platform
  // ---------------------------------------------------------------------------

  /// Read the stored auth token (SecureStorage on mobile, SharedPrefs on web).
  Future<String?> getAuthToken();

  /// Persist token + user after a successful sign-in / sign-up.
  Future<void> saveAuthCredentials(String token, UserModel user);

  /// Remove stored token + user from local storage.
  /// Must NOT touch the auth state controller — the mixin handles that.
  Future<void> clearAuthCredentials();

  /// Sign out of the Google SDK (platform-specific).
  /// Should NOT clear credentials or update auth state — the mixin handles that.
  Future<void> signOutGoogleSdk();

  /// The broadcast controller that drives [authStateChanges].
  StreamController<UserModel?> get authStateController;

  // ---------------------------------------------------------------------------
  // Shared helpers
  // ---------------------------------------------------------------------------

  String get baseUrl => EnvConfig.apiBaseUrl;

  Map<String, String> get _jsonHeaders => {'Content-Type': 'application/json'};

  Future<Map<String, String>> _authHeaders() async {
    final token = await getAuthToken();
    if (token == null || token.isEmpty) {
      throw const AuthException(message: 'Not authenticated');
    }
    return {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }

  // ---------------------------------------------------------------------------
  // Shared implementations
  // ---------------------------------------------------------------------------

  @override
  Future<UserModel> signInWithEmail(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/email/sign-in'),
        headers: _jsonHeaders,
        body: jsonEncode({'email': email, 'password': password}),
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
            message: error['error']?['message'] ?? 'Sign in failed');
      }

      final data = jsonDecode(response.body);
      final userModel = UserModel.fromJson(data['user']);
      final token = data['token'] as String;

      await saveAuthCredentials(token, userModel);
      authStateController.add(userModel);
      return userModel;
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.signInWithEmail');
      throw const AuthException(message: 'Sign in failed. Please try again.');
    }
  }

  @override
  Future<UserModel> signUpWithEmail(
    String email,
    String password,
    String? name,
  ) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/email/sign-up'),
        headers: _jsonHeaders,
        body: jsonEncode({
          'email': email,
          'password': password,
          'name': name ?? '',
        }),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        final error = jsonDecode(response.body);
        throw AuthException(
            message: error['error']?['message'] ?? 'Sign up failed');
      }

      final data = jsonDecode(response.body);
      final userModel = UserModel.fromJson(data['user']);
      final token = data['token'] as String;

      await saveAuthCredentials(token, userModel);
      authStateController.add(userModel);
      return userModel;
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.signUpWithEmail');
      throw const AuthException(message: 'Sign up failed. Please try again.');
    }
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    try {
      final token = await getAuthToken();

      if (token != null && token.isNotEmpty) {
        try {
          final response = await http.get(
            Uri.parse('$baseUrl/api/auth/session'),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $token',
            },
          );

          if (response.statusCode == 200) {
            final data = jsonDecode(response.body);
            final userModel = UserModel.fromJson(data['user']);
            // Update cached user data
            final prefs = await SharedPreferences.getInstance();
            await prefs.setString(
                StorageKeys.authUser, jsonEncode(userModel.toJson()));
            return userModel;
          }

          // Token invalid — clear local storage
          if (response.statusCode == 401) {
            await clearAuthCredentials();
            authStateController.add(null);
            return null;
          }
        } catch (_) {
          // Network error — try cached user
          return await _getCachedUser();
        }
      }

      return null;
    } catch (_) {
      return await _getCachedUser();
    }
  }

  Future<UserModel?> _getCachedUser() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userJson = prefs.getString(StorageKeys.authUser);
      if (userJson != null && userJson.isNotEmpty) {
        return UserModel.fromJson(jsonDecode(userJson));
      }
      return null;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/forgot-password'),
        headers: _jsonHeaders,
        body: jsonEncode({'email': email}),
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
          message: error['error']?['message'] ?? 'Failed to send reset email',
        );
      }
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.forgotPassword');
      throw const AuthException(
        message: 'Failed to send reset email. Please try again.',
      );
    }
  }

  @override
  Future<void> resetPassword(String token, String newPassword) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/reset-password'),
        headers: _jsonHeaders,
        body: jsonEncode({
          'token': token,
          'newPassword': newPassword,
        }),
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
          message: error['error']?['message'] ?? 'Failed to reset password',
        );
      }
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.resetPassword');
      throw const AuthException(
        message: 'Failed to reset password. Please try again.',
      );
    }
  }

  @override
  Future<void> changePassword(
    String currentPassword,
    String newPassword,
  ) async {
    try {
      final headers = await _authHeaders();
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/change-password'),
        headers: headers,
        body: jsonEncode({
          'currentPassword': currentPassword,
          'newPassword': newPassword,
        }),
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
          message: error['error']?['message'] ?? 'Failed to change password',
        );
      }
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.changePassword');
      throw const AuthException(
        message: 'Failed to change password. Please try again.',
      );
    }
  }

  @override
  Future<void> setPassword(String newPassword) async {
    try {
      final headers = await _authHeaders();
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/set-password'),
        headers: headers,
        body: jsonEncode({'newPassword': newPassword}),
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
          message: error['error']?['message'] ?? 'Failed to set password',
        );
      }
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.setPassword');
      throw const AuthException(
        message: 'Failed to set password. Please try again.',
      );
    }
  }

  @override
  Future<void> requestEmailVerification() async {
    try {
      final headers = await _authHeaders();
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/verify-email'),
        headers: headers,
        body: jsonEncode({}),
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
          message:
              error['error']?['message'] ?? 'Failed to send verification email',
        );
      }
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace,
          context: 'AuthRemoteSource.requestEmailVerification');
      throw const AuthException(
        message: 'Failed to send verification email. Please try again.',
      );
    }
  }

  @override
  Future<void> deleteAccount() async {
    try {
      final headers = await _authHeaders();
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/delete-account'),
        headers: headers,
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
          message: error['error']?['message'] ?? 'Failed to delete account',
        );
      }

      await clearAuthCredentials();
      authStateController.add(null);
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.deleteAccount');
      throw const AuthException(
        message: 'Failed to delete account. Please try again.',
      );
    }
  }

  @override
  Future<List<Map<String, dynamic>>> listSessions() async {
    try {
      final headers = await _authHeaders();
      final response = await http.get(
        Uri.parse('$baseUrl/api/auth/sessions'),
        headers: headers,
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
          message: error['error']?['message'] ?? 'Failed to list sessions',
        );
      }

      final data = jsonDecode(response.body);
      final sessions = data['sessions'] as List<dynamic>;
      return sessions.cast<Map<String, dynamic>>();
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.listSessions');
      throw const AuthException(
        message: 'Failed to list sessions. Please try again.',
      );
    }
  }

  @override
  Future<void> revokeSession(String sessionId) async {
    try {
      final headers = await _authHeaders();
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/revoke-session'),
        headers: headers,
        body: jsonEncode({'sessionId': sessionId}),
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
          message: error['error']?['message'] ?? 'Failed to revoke session',
        );
      }
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.revokeSession');
      throw const AuthException(
        message: 'Failed to revoke session. Please try again.',
      );
    }
  }

  @override
  Future<void> revokeOtherSessions() async {
    try {
      final headers = await _authHeaders();
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/revoke-other-sessions'),
        headers: headers,
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
          message:
              error['error']?['message'] ?? 'Failed to revoke other sessions',
        );
      }
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace,
          context: 'AuthRemoteSource.revokeOtherSessions');
      throw const AuthException(
        message: 'Failed to revoke other sessions. Please try again.',
      );
    }
  }

  @override
  Future<UserModel> updateProfile(
    String userId,
    Map<String, dynamic> data,
  ) async {
    try {
      final headers = await _authHeaders();
      final response = await http.put(
        Uri.parse('$baseUrl/api/user/$userId'),
        headers: headers,
        body: jsonEncode(data),
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
          message: error['error']?['message'] ?? 'Failed to update profile',
        );
      }

      final responseData = jsonDecode(response.body);
      final userModel = UserModel.fromJson(responseData['data']);

      // Update cached user
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
          StorageKeys.authUser, jsonEncode(userModel.toJson()));

      authStateController.add(userModel);
      return userModel;
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.updateProfile');
      throw const AuthException(
        message: 'Failed to update profile. Please try again.',
      );
    }
  }

  @override
  Future<void> signOut() async {
    try {
      // Invalidate server-side session
      final token = await getAuthToken();
      if (token != null && token.isNotEmpty) {
        try {
          await http.post(
            Uri.parse('$baseUrl/api/auth/sign-out'),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $token',
            },
          );
        } catch (_) {
          // Server sign-out failure is non-critical — still clear local auth
        }
      }
      await signOutGoogleSdk();
      await clearAuthCredentials();
      authStateController.add(null);
    } catch (e, stackTrace) {
      // Even if sign out fails, still clear local auth
      await clearAuthCredentials();
      authStateController.add(null);
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'AuthRemoteSource.signOut',
      );
    }
  }

  @override
  Stream<UserModel?> get authStateChanges => authStateController.stream;

  @override
  void dispose() {
    authStateController.close();
  }
}
