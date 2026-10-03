import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
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

  /// Configured [Dio] client for API calls.
  Dio get dio;

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

  Options get _jsonOptions => Options(
        headers: {'Content-Type': 'application/json'},
      );

  Future<Options> _authOptions() async {
    final token = await getAuthToken();
    if (token == null || token.isEmpty) {
      throw const AuthException(message: 'Not authenticated');
    }
    return Options(
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
  }

  Map<String, dynamic> _asMap(dynamic data) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    if (data is String && data.isNotEmpty) {
      final decoded = jsonDecode(data);
      if (decoded is Map) return Map<String, dynamic>.from(decoded);
    }
    return <String, dynamic>{};
  }

  String extractAuthErrorMessage(DioException e, String fallback) {
    final rawData = e.response?.data;
    if (rawData != null) {
      try {
        final data = _asMap(rawData);
        final errorObj = data['error'];
        if (errorObj is Map) {
          final msg = errorObj['message']?.toString();
          if (msg != null && msg.isNotEmpty) return msg;
        } else if (errorObj is String && errorObj.isNotEmpty) {
          return errorObj;
        }
        final topMsg = data['message']?.toString();
        if (topMsg != null && topMsg.isNotEmpty) return topMsg;
      } catch (_) {}
    }

    final inner = e.error;
    if (inner is AppException &&
        inner.message.isNotEmpty &&
        inner.message != 'An error occurred') {
      return inner.message;
    }

    return fallback;
  }

  // ---------------------------------------------------------------------------
  // Shared implementations
  // ---------------------------------------------------------------------------

  @override
  Future<UserModel> signInWithEmail(String email, String password) async {
    try {
      final response = await dio.post<dynamic>(
        '$baseUrl/api/auth/email/sign-in',
        options: _jsonOptions,
        data: {'email': email, 'password': password},
      );

      final data = _asMap(response.data);
      if (response.statusCode != 200) {
        final errorObj = data['error'];
        final message = errorObj is Map
            ? errorObj['message']?.toString()
            : errorObj?.toString();
        throw AuthException(message: message ?? 'Sign in failed');
      }

      final userModel = UserModel.fromJson(_asMap(data['user']));
      final token = data['token'] as String;

      await saveAuthCredentials(token, userModel);
      authStateController.add(userModel);
      return userModel;
    } on DioException catch (e) {
      throw AuthException(
        message: extractAuthErrorMessage(e, 'Sign in failed'),
        statusCode: e.response?.statusCode,
        originalError: e,
      );
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
      final response = await dio.post<dynamic>(
        '$baseUrl/api/auth/email/sign-up',
        options: _jsonOptions,
        data: {
          'email': email,
          'password': password,
          'name': name ?? '',
        },
      );

      final data = _asMap(response.data);
      if (response.statusCode != 200 && response.statusCode != 201) {
        final errorObj = data['error'];
        final message = errorObj is Map
            ? errorObj['message']?.toString()
            : errorObj?.toString();
        throw AuthException(message: message ?? 'Sign up failed');
      }

      final userModel = UserModel.fromJson(_asMap(data['user']));
      final token = data['token'] as String;

      await saveAuthCredentials(token, userModel);
      authStateController.add(userModel);
      return userModel;
    } on DioException catch (e) {
      throw AuthException(
        message: extractAuthErrorMessage(e, 'Sign up failed'),
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.signUpWithEmail');
      throw const AuthException(message: 'Sign up failed. Please try again.');
    }
  }

  @override
  Future<UserModel?> getCurrentSession() async {
    try {
      final token = await getAuthToken();

      if (token != null && token.isNotEmpty) {
        try {
          final response = await dio.get<dynamic>(
            '$baseUrl/api/auth/session',
            options: Options(
              headers: {
                'Content-Type': 'application/json',
                'Authorization': 'Bearer $token',
              },
            ),
          );

          if (response.statusCode == 200) {
            final data = _asMap(response.data);
            final userRaw = data['user'];
            if (userRaw == null) {
              await clearAuthCredentials();
              authStateController.add(null);
              return null;
            }
            final userModel = UserModel.fromJson(_asMap(userRaw));
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
        } on DioException catch (e) {
          if (e.response?.statusCode == 401 || e.error is AuthException) {
            await clearAuthCredentials();
            authStateController.add(null);
            return null;
          }
          // Network / transient server error — try cached user
          return await _getCachedUser();
        } catch (e) {
          if (e is AuthException && e.statusCode == 401) {
            await clearAuthCredentials();
            authStateController.add(null);
            return null;
          }
          // Network error — try cached user
          return await _getCachedUser();
        }
      }

      return null;
    } catch (_) {
      return await _getCachedUser();
    }
  }

  @override
  Future<UserModel?> getCurrentUser() => getCurrentSession();

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
      final response = await dio.post<dynamic>(
        '$baseUrl/api/auth/forgot-password',
        options: _jsonOptions,
        data: {'email': email},
      );

      if (response.statusCode != 200) {
        final data = _asMap(response.data);
        final errorObj = data['error'];
        final message = errorObj is Map
            ? errorObj['message']?.toString()
            : errorObj?.toString();
        throw AuthException(
          message: message ?? 'Failed to send reset email',
        );
      }
    } on DioException catch (e) {
      throw AuthException(
        message: extractAuthErrorMessage(e, 'Failed to send reset email'),
        statusCode: e.response?.statusCode,
        originalError: e,
      );
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
      final response = await dio.post<dynamic>(
        '$baseUrl/api/auth/reset-password',
        options: _jsonOptions,
        data: {
          'token': token,
          'newPassword': newPassword,
        },
      );

      if (response.statusCode != 200) {
        final data = _asMap(response.data);
        final errorObj = data['error'];
        final message = errorObj is Map
            ? errorObj['message']?.toString()
            : errorObj?.toString();
        throw AuthException(
          message: message ?? 'Failed to reset password',
        );
      }
    } on DioException catch (e) {
      throw AuthException(
        message: extractAuthErrorMessage(e, 'Failed to reset password'),
        statusCode: e.response?.statusCode,
        originalError: e,
      );
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
      final options = await _authOptions();
      final response = await dio.post<dynamic>(
        '$baseUrl/api/auth/change-password',
        options: options,
        data: {
          'currentPassword': currentPassword,
          'newPassword': newPassword,
        },
      );

      if (response.statusCode != 200) {
        final data = _asMap(response.data);
        final errorObj = data['error'];
        final message = errorObj is Map
            ? errorObj['message']?.toString()
            : errorObj?.toString();
        throw AuthException(
          message: message ?? 'Failed to change password',
        );
      }
    } on DioException catch (e) {
      throw AuthException(
        message: extractAuthErrorMessage(e, 'Failed to change password'),
        statusCode: e.response?.statusCode,
        originalError: e,
      );
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
      final options = await _authOptions();
      final response = await dio.post<dynamic>(
        '$baseUrl/api/auth/set-password',
        options: options,
        data: {'newPassword': newPassword},
      );

      if (response.statusCode != 200) {
        final data = _asMap(response.data);
        final errorObj = data['error'];
        final message = errorObj is Map
            ? errorObj['message']?.toString()
            : errorObj?.toString();
        throw AuthException(
          message: message ?? 'Failed to set password',
        );
      }
    } on DioException catch (e) {
      throw AuthException(
        message: extractAuthErrorMessage(e, 'Failed to set password'),
        statusCode: e.response?.statusCode,
        originalError: e,
      );
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
      final options = await _authOptions();
      final response = await dio.post<dynamic>(
        '$baseUrl/api/auth/verify-email',
        options: options,
        data: <String, dynamic>{},
      );

      if (response.statusCode != 200) {
        final data = _asMap(response.data);
        final errorObj = data['error'];
        final message = errorObj is Map
            ? errorObj['message']?.toString()
            : errorObj?.toString();
        throw AuthException(
          message: message ?? 'Failed to send verification email',
        );
      }
    } on DioException catch (e) {
      throw AuthException(
        message:
            extractAuthErrorMessage(e, 'Failed to send verification email'),
        statusCode: e.response?.statusCode,
        originalError: e,
      );
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
      final options = await _authOptions();
      final response = await dio.post<dynamic>(
        '$baseUrl/api/auth/delete-account',
        options: options,
      );

      if (response.statusCode != 200) {
        final data = _asMap(response.data);
        final errorObj = data['error'];
        final message = errorObj is Map
            ? errorObj['message']?.toString()
            : errorObj?.toString();
        throw AuthException(
          message: message ?? 'Failed to delete account',
        );
      }

      await clearAuthCredentials();
      authStateController.add(null);
    } on DioException catch (e) {
      throw AuthException(
        message: extractAuthErrorMessage(e, 'Failed to delete account'),
        statusCode: e.response?.statusCode,
        originalError: e,
      );
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
      final options = await _authOptions();
      final response = await dio.get<dynamic>(
        '$baseUrl/api/auth/sessions',
        options: options,
      );

      final data = _asMap(response.data);
      if (response.statusCode != 200) {
        final errorObj = data['error'];
        final message = errorObj is Map
            ? errorObj['message']?.toString()
            : errorObj?.toString();
        throw AuthException(
          message: message ?? 'Failed to list sessions',
        );
      }

      final sessions = data['sessions'] as List<dynamic>;
      return sessions
          .map((item) => _asMap(item))
          .toList(growable: false);
    } on DioException catch (e) {
      throw AuthException(
        message: extractAuthErrorMessage(e, 'Failed to list sessions'),
        statusCode: e.response?.statusCode,
        originalError: e,
      );
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
      final options = await _authOptions();
      final response = await dio.post<dynamic>(
        '$baseUrl/api/auth/revoke-session',
        options: options,
        data: {'sessionId': sessionId},
      );

      if (response.statusCode != 200) {
        final data = _asMap(response.data);
        final errorObj = data['error'];
        final message = errorObj is Map
            ? errorObj['message']?.toString()
            : errorObj?.toString();
        throw AuthException(
          message: message ?? 'Failed to revoke session',
        );
      }
    } on DioException catch (e) {
      throw AuthException(
        message: extractAuthErrorMessage(e, 'Failed to revoke session'),
        statusCode: e.response?.statusCode,
        originalError: e,
      );
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
      final options = await _authOptions();
      final response = await dio.post<dynamic>(
        '$baseUrl/api/auth/revoke-other-sessions',
        options: options,
      );

      if (response.statusCode != 200) {
        final data = _asMap(response.data);
        final errorObj = data['error'];
        final message = errorObj is Map
            ? errorObj['message']?.toString()
            : errorObj?.toString();
        throw AuthException(
          message: message ?? 'Failed to revoke other sessions',
        );
      }
    } on DioException catch (e) {
      throw AuthException(
        message: extractAuthErrorMessage(e, 'Failed to revoke other sessions'),
        statusCode: e.response?.statusCode,
        originalError: e,
      );
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
      final options = await _authOptions();
      final response = await dio.put<dynamic>(
        '$baseUrl/api/user/$userId',
        options: options,
        data: data,
      );

      final responseData = _asMap(response.data);
      if (response.statusCode != 200) {
        final errorObj = responseData['error'];
        final message = errorObj is Map
            ? errorObj['message']?.toString()
            : errorObj?.toString();
        throw AuthException(
          message: message ?? 'Failed to update profile',
        );
      }

      final userModel = UserModel.fromJson(_asMap(responseData['data']));

      // Update cached user
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
          StorageKeys.authUser, jsonEncode(userModel.toJson()));

      authStateController.add(userModel);
      return userModel;
    } on DioException catch (e) {
      throw AuthException(
        message: extractAuthErrorMessage(e, 'Failed to update profile'),
        statusCode: e.response?.statusCode,
        originalError: e,
      );
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
      // Revoke server-side session in Postgres & invalidate backend cache
      final token = await getAuthToken();
      if (token != null && token.isNotEmpty) {
        try {
          await dio.post<dynamic>(
            '$baseUrl/api/auth/logout',
            options: Options(
              headers: {
                'Content-Type': 'application/json',
                'Authorization': 'Bearer $token',
              },
            ),
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
