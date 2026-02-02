import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/config/env_config.dart';
import '../../../core/errors/exceptions.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../../core/network/dio_client.dart' show AuthInterceptor;
import '../../models/user_model.dart';

part 'auth_remote_source.g.dart';

/// Provider for AuthRemoteSource
@riverpod
AuthRemoteSource authRemoteSource(Ref ref) {
  if (kIsWeb) {
    return AuthRemoteSourceWebImpl();
  }
  return AuthRemoteSourceImpl();
}

/// Remote data source interface for authentication
abstract class AuthRemoteSource {
  /// Sign in with email and password
  Future<UserModel> signInWithEmail(String email, String password);

  /// Sign up with email and password
  Future<UserModel> signUpWithEmail(
      String email, String password, String? name);

  /// Sign in with Google OAuth
  Future<UserModel> signInWithGoogle();

  /// Sign in with GitHub OAuth
  Future<UserModel> signInWithGitHub();

  /// Sign out
  Future<void> signOut();

  /// Get current user from session
  Future<UserModel?> getCurrentUser();

  /// Send password reset email (forgot password flow)
  Future<void> forgotPassword(String email);

  /// Reset password with token
  Future<void> resetPassword(String token, String newPassword);

  /// Change password (authenticated)
  Future<void> changePassword(String currentPassword, String newPassword);

  /// Set password for OAuth-only users
  Future<void> setPassword(String newPassword);

  /// Request email verification
  Future<void> requestEmailVerification();

  /// Delete account
  Future<void> deleteAccount();

  /// List active sessions
  Future<List<Map<String, dynamic>>> listSessions();

  /// Revoke a specific session
  Future<void> revokeSession(String sessionId);

  /// Revoke all other sessions
  Future<void> revokeOtherSessions();

  /// Update user profile
  Future<UserModel> updateProfile(String userId, Map<String, dynamic> data);

  /// Stream of auth state changes
  Stream<UserModel?> get authStateChanges;
}

/// Implementation using direct HTTP calls to the backend API
class AuthRemoteSourceImpl implements AuthRemoteSource {
  GoogleSignIn? _googleSignIn;
  final StreamController<UserModel?> _authStateController =
      StreamController<UserModel?>.broadcast();

  /// Lazily initialize GoogleSignIn only when needed
  GoogleSignIn get googleSignIn {
    if (_googleSignIn == null) {
      final clientId = EnvConfig.googleClientId;
      // serverClientId is not supported on Web - only use on mobile
      _googleSignIn = GoogleSignIn(
        scopes: ['email', 'profile'],
        serverClientId: kIsWeb ? null : (clientId.isNotEmpty ? clientId : null),
      );
    }
    return _googleSignIn!;
  }

  @override
  Future<UserModel> signInWithEmail(String email, String password) async {
    try {
      // Use HTTP call to get token (same pattern as Google sign-in)
      final baseUrl = EnvConfig.apiBaseUrl;
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/email/sign-in'),
        headers: {'Content-Type': 'application/json'},
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

      // Store token for future requests (uses SecureStorage on mobile)
      await AuthInterceptor.saveToken(token);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('auth_user', jsonEncode(userModel.toJson()));

      _authStateController.add(userModel);
      return userModel;
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.signInWithEmail');
      throw const AuthException(
          message: 'Sign in failed. Please try again.');
    }
  }

  @override
  Future<UserModel> signUpWithEmail(
    String email,
    String password,
    String? name,
  ) async {
    try {
      // Use HTTP call to get token (same pattern as Google sign-in)
      final baseUrl = EnvConfig.apiBaseUrl;
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/email/sign-up'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': email,
          'password': password,
          'name': name ?? '',
        }),
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
            message: error['error']?['message'] ?? 'Sign up failed');
      }

      final data = jsonDecode(response.body);
      final userModel = UserModel.fromJson(data['user']);
      final token = data['token'] as String;

      // Store token for future requests (uses SecureStorage on mobile)
      await AuthInterceptor.saveToken(token);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('auth_user', jsonEncode(userModel.toJson()));

      _authStateController.add(userModel);
      return userModel;
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.signUpWithEmail');
      throw const AuthException(
          message: 'Sign up failed. Please try again.');
    }
  }

  @override
  Future<UserModel> signInWithGoogle() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        throw const AuthException(message: 'Google sign in cancelled');
      }

      final googleAuth = await googleUser.authentication;
      final idToken = googleAuth.idToken;
      final accessToken = googleAuth.accessToken;

      if (idToken == null && accessToken == null) {
        throw const AuthException(message: 'Failed to get Google credentials');
      }

      // Use HTTP call to our backend instead of BetterAuth client
      final baseUrl = EnvConfig.apiBaseUrl;
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/google/callback'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'idToken': idToken,
          'accessToken': accessToken,
        }),
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        final errorMsg = error['error']?['message'] ?? 'Google sign in failed';
        throw AuthException(message: errorMsg);
      }

      final data = jsonDecode(response.body);
      final userModel = UserModel.fromJson(data['user']);
      final token = data['token'] as String;

      // Store token for future requests (uses SecureStorage on mobile, SharedPrefs on web)
      await AuthInterceptor.saveToken(token);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('auth_user', jsonEncode(userModel.toJson()));

      _authStateController.add(userModel);
      return userModel;
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.signInWithGoogle');
      throw const AuthException(
          message: 'Google sign in failed. Please try again.');
    }
  }

  @override
  Future<UserModel> signInWithGitHub() async {
    try {
      final baseUrl = EnvConfig.apiBaseUrl;

      // Step 1: Get the OAuth URL and state from our backend
      final urlResponse = await http.get(
        Uri.parse('$baseUrl/api/auth/github/url'),
        headers: {'Content-Type': 'application/json'},
      );

      if (urlResponse.statusCode != 200) {
        final error = jsonDecode(urlResponse.body);
        throw AuthException(
          message:
              error['error']?['message'] ?? 'Failed to get GitHub auth URL',
        );
      }

      final urlData = jsonDecode(urlResponse.body);
      final oauthUrl = urlData['url'] as String?;
      final state = urlData['state'] as String?;

      if (oauthUrl == null || oauthUrl.isEmpty) {
        throw const AuthException(message: 'Failed to get GitHub auth URL');
      }

      // Step 2: Open the OAuth URL in a web view and wait for callback
      final callbackResult = await FlutterWebAuth2.authenticate(
        url: oauthUrl,
        callbackUrlScheme: 'familiarise',
      );

      // Step 3: Extract the authorization code from the callback URL
      final callbackUri = Uri.parse(callbackResult);
      final code = callbackUri.queryParameters['code'];

      if (code == null || code.isEmpty) {
        throw const AuthException(message: 'GitHub authorization failed');
      }

      // Step 4: Exchange the code for user credentials via our backend
      final callbackResponse = await http.post(
        Uri.parse('$baseUrl/api/auth/github/callback'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'code': code,
          'state': state,
        }),
      );

      if (callbackResponse.statusCode != 200) {
        final error = jsonDecode(callbackResponse.body);
        throw AuthException(
          message: error['error']?['message'] ?? 'GitHub sign in failed',
        );
      }

      final data = jsonDecode(callbackResponse.body);
      final userModel = UserModel.fromJson(data['user']);
      final token = data['token'] as String;

      // Store token for future requests
      await AuthInterceptor.saveToken(token);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('auth_user', jsonEncode(userModel.toJson()));

      _authStateController.add(userModel);
      return userModel;
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.signInWithGitHub');
      throw const AuthException(
          message: 'GitHub sign in failed. Please try again.');
    }
  }

  @override
  Future<void> signOut() async {
    try {
      // Sign out from Google
      await googleSignIn.signOut();

      // Clear all locally stored auth data
      await _clearLocalAuth();
    } catch (e, stackTrace) {
      // Even if sign out fails, still clear local auth
      await _clearLocalAuth();
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.signOut');
    }
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    try {
      // First, try to get the stored token from local storage
      final token = await AuthInterceptor.getToken();

      if (token != null && token.isNotEmpty) {
        // Validate token with backend
        final baseUrl = EnvConfig.apiBaseUrl;
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
            await prefs.setString('auth_user', jsonEncode(userModel.toJson()));
            return userModel;
          }

          // Token invalid (401, user deleted, etc.) - clear local storage
          if (response.statusCode == 401) {
            await _clearLocalAuth();
            return null;
          }
        } catch (e) {
          // Network error - try to return cached user data
          return await _getCachedUser();
        }
      }

      // No stored token - return null (user must sign in)
      return null;
    } catch (e) {
      // On any error, try cached user as last resort
      return await _getCachedUser();
    }
  }

  /// Get cached user from SharedPreferences
  Future<UserModel?> _getCachedUser() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userJson = prefs.getString('auth_user');
      if (userJson != null && userJson.isNotEmpty) {
        return UserModel.fromJson(jsonDecode(userJson));
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  /// Clear all locally stored auth data
  Future<void> _clearLocalAuth() async {
    await AuthInterceptor.clearToken();
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_user');
    _authStateController.add(null);
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      final baseUrl = EnvConfig.apiBaseUrl;
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/forgot-password'),
        headers: {'Content-Type': 'application/json'},
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
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'AuthRemoteSource.forgotPassword',
      );
      throw const AuthException(
        message: 'Failed to send reset email. Please try again.',
      );
    }
  }

  @override
  Future<void> resetPassword(String token, String newPassword) async {
    try {
      final baseUrl = EnvConfig.apiBaseUrl;
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/reset-password'),
        headers: {'Content-Type': 'application/json'},
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
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'AuthRemoteSource.resetPassword',
      );
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
      final baseUrl = EnvConfig.apiBaseUrl;
      final token = await AuthInterceptor.getToken();

      if (token == null || token.isEmpty) {
        throw const AuthException(message: 'Not authenticated');
      }

      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/change-password'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
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
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'AuthRemoteSource.changePassword',
      );
      throw const AuthException(
        message: 'Failed to change password. Please try again.',
      );
    }
  }

  @override
  Future<void> setPassword(String newPassword) async {
    try {
      final baseUrl = EnvConfig.apiBaseUrl;
      final token = await AuthInterceptor.getToken();

      if (token == null || token.isEmpty) {
        throw const AuthException(message: 'Not authenticated');
      }

      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/set-password'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
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
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'AuthRemoteSource.setPassword',
      );
      throw const AuthException(
        message: 'Failed to set password. Please try again.',
      );
    }
  }

  @override
  Future<void> requestEmailVerification() async {
    try {
      final baseUrl = EnvConfig.apiBaseUrl;
      final token = await AuthInterceptor.getToken();

      if (token == null || token.isEmpty) {
        throw const AuthException(message: 'Not authenticated');
      }

      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/verify-email'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({}),
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
          message: error['error']?['message'] ??
              'Failed to send verification email',
        );
      }
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'AuthRemoteSource.requestEmailVerification',
      );
      throw const AuthException(
        message: 'Failed to send verification email. Please try again.',
      );
    }
  }

  @override
  Future<void> deleteAccount() async {
    try {
      final baseUrl = EnvConfig.apiBaseUrl;
      final token = await AuthInterceptor.getToken();

      if (token == null || token.isEmpty) {
        throw const AuthException(message: 'Not authenticated');
      }

      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/delete-account'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
          message: error['error']?['message'] ?? 'Failed to delete account',
        );
      }

      // Clear local auth data
      await _clearLocalAuth();
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'AuthRemoteSource.deleteAccount',
      );
      throw const AuthException(
        message: 'Failed to delete account. Please try again.',
      );
    }
  }

  @override
  Future<List<Map<String, dynamic>>> listSessions() async {
    try {
      final baseUrl = EnvConfig.apiBaseUrl;
      final token = await AuthInterceptor.getToken();

      if (token == null || token.isEmpty) {
        throw const AuthException(message: 'Not authenticated');
      }

      final response = await http.get(
        Uri.parse('$baseUrl/api/auth/sessions'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
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
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'AuthRemoteSource.listSessions',
      );
      throw const AuthException(
        message: 'Failed to list sessions. Please try again.',
      );
    }
  }

  @override
  Future<void> revokeSession(String sessionId) async {
    try {
      final baseUrl = EnvConfig.apiBaseUrl;
      final token = await AuthInterceptor.getToken();

      if (token == null || token.isEmpty) {
        throw const AuthException(message: 'Not authenticated');
      }

      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/revoke-session'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
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
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'AuthRemoteSource.revokeSession',
      );
      throw const AuthException(
        message: 'Failed to revoke session. Please try again.',
      );
    }
  }

  @override
  Future<void> revokeOtherSessions() async {
    try {
      final baseUrl = EnvConfig.apiBaseUrl;
      final token = await AuthInterceptor.getToken();

      if (token == null || token.isEmpty) {
        throw const AuthException(message: 'Not authenticated');
      }

      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/revoke-other-sessions'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
          message: error['error']?['message'] ??
              'Failed to revoke other sessions',
        );
      }
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'AuthRemoteSource.revokeOtherSessions',
      );
      throw const AuthException(
        message: 'Failed to revoke other sessions. Please try again.',
      );
    }
  }

  @override
  Future<UserModel> updateProfile(String userId, Map<String, dynamic> data) async {
    try {
      final baseUrl = EnvConfig.apiBaseUrl;
      final token = await AuthInterceptor.getToken();

      if (token == null || token.isEmpty) {
        throw const AuthException(message: 'Not authenticated');
      }

      final response = await http.put(
        Uri.parse('$baseUrl/api/user/$userId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
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
      await prefs.setString('auth_user', jsonEncode(userModel.toJson()));

      _authStateController.add(userModel);
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
  Stream<UserModel?> get authStateChanges => _authStateController.stream;

  void dispose() {
    _authStateController.close();
  }
}

/// Web-specific implementation using direct HTTP calls
class AuthRemoteSourceWebImpl implements AuthRemoteSource {
  static const String _tokenKey = 'auth_token';
  static const String _userKey = 'auth_user';

  GoogleSignIn? _googleSignIn;
  final StreamController<UserModel?> _authStateController =
      StreamController<UserModel?>.broadcast();

  String get _baseUrl => EnvConfig.apiBaseUrl;

  GoogleSignIn get googleSignIn {
    // On web, don't pass clientId - it's read from the meta tag in index.html
    // Passing both can cause conflicts with google_sign_in 6.x (GIS)
    _googleSignIn ??= GoogleSignIn(
      scopes: ['email', 'profile', 'openid'],
    );
    return _googleSignIn!;
  }

  Future<SharedPreferences> get _prefs => SharedPreferences.getInstance();

  Future<String?> _getToken() async {
    final prefs = await _prefs;
    return prefs.getString(_tokenKey);
  }

  Future<void> _saveToken(String token) async {
    final prefs = await _prefs;
    await prefs.setString(_tokenKey, token);
  }

  Future<void> _saveUser(UserModel user) async {
    final prefs = await _prefs;
    await prefs.setString(_userKey, jsonEncode(user.toJson()));
  }

  Future<void> _clearAuth() async {
    final prefs = await _prefs;
    await prefs.remove(_tokenKey);
    await prefs.remove(_userKey);
  }

  @override
  Future<UserModel> signInWithEmail(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/api/auth/email/sign-in'),
        headers: {'Content-Type': 'application/json'},
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

      await _saveToken(token);
      await _saveUser(userModel);
      _authStateController.add(userModel);

      return userModel;
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSourceWeb.signInWithEmail');
      throw const AuthException(
          message: 'Sign in failed. Please try again.');
    }
  }

  @override
  Future<UserModel> signUpWithEmail(
      String email, String password, String? name) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/api/auth/email/sign-up'),
        headers: {'Content-Type': 'application/json'},
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

      await _saveToken(token);
      await _saveUser(userModel);
      _authStateController.add(userModel);

      return userModel;
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSourceWeb.signUpWithEmail');
      throw const AuthException(
          message: 'Sign up failed. Please try again.');
    }
  }

  @override
  Future<UserModel> signInWithGoogle() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        throw const AuthException(message: 'Google sign in cancelled');
      }

      final googleAuth = await googleUser.authentication;
      final idToken = googleAuth.idToken;
      final accessToken = googleAuth.accessToken;

      // On web, google_sign_in cannot provide an ID token with signIn() method
      // (this is a known GIS limitation). We use the access token instead.
      // The backend will use Google's userinfo endpoint to fetch verified user data.
      if (accessToken == null) {
        throw const AuthException(
          message: 'Failed to get Google credentials. Please try again.',
        );
      }

      // Send tokens to backend - it will use whichever is available
      // Mobile: ID token (preferred) | Web: Access token
      final response = await http.post(
        Uri.parse('$_baseUrl/api/auth/google/callback'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'idToken': idToken, // May be null on web
          'accessToken': accessToken,
        }),
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        final errorMsg = error['error']?['message'] ?? 'Google sign in failed';
        throw AuthException(message: errorMsg);
      }

      final data = jsonDecode(response.body);
      final userModel = UserModel.fromJson(data['user']);
      final token = data['token'] as String;

      await _saveToken(token);
      await _saveUser(userModel);
      _authStateController.add(userModel);

      return userModel;
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSourceWeb.signInWithGoogle');
      throw const AuthException(
          message: 'Google sign in failed. Please try again.');
    }
  }

  @override
  Future<UserModel> signInWithGitHub() async {
    throw const AuthException(
        message: 'GitHub sign in not supported on web yet');
  }

  @override
  Future<void> signOut() async {
    try {
      await googleSignIn.signOut();
      final token = await _getToken();
      if (token != null) {
        await http.post(
          Uri.parse('$_baseUrl/api/auth/sign-out'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          },
        );
      }
      await _clearAuth();
      _authStateController.add(null);
    } catch (e) {
      // Even if sign out fails on server, clear local auth
      await _clearAuth();
      _authStateController.add(null);
    }
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    try {
      final token = await _getToken();
      if (token == null) return null;

      final response = await http.get(
        Uri.parse('$_baseUrl/api/auth/session'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode != 200) {
        await _clearAuth();
        return null;
      }

      final data = jsonDecode(response.body);
      final userModel = UserModel.fromJson(data['user']);
      return userModel;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/api/auth/forgot-password'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email}),
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
          message:
              error['error']?['message'] ?? 'Failed to send reset email',
        );
      }
    } catch (e) {
      if (e is AuthException) rethrow;
      throw const AuthException(
        message: 'Failed to send reset email. Please try again.',
      );
    }
  }

  @override
  Future<void> resetPassword(String token, String newPassword) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/api/auth/reset-password'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'token': token,
          'newPassword': newPassword,
        }),
      );

      if (response.statusCode != 200) {
        final error = jsonDecode(response.body);
        throw AuthException(
          message:
              error['error']?['message'] ?? 'Failed to reset password',
        );
      }
    } catch (e) {
      if (e is AuthException) rethrow;
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
    final token = await _getToken();
    if (token == null) {
      throw const AuthException(message: 'Not authenticated');
    }

    final response = await http.post(
      Uri.parse('$_baseUrl/api/auth/change-password'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode({
        'currentPassword': currentPassword,
        'newPassword': newPassword,
      }),
    );

    if (response.statusCode != 200) {
      final error = jsonDecode(response.body);
      throw AuthException(
        message:
            error['error']?['message'] ?? 'Failed to change password',
      );
    }
  }

  @override
  Future<void> setPassword(String newPassword) async {
    final token = await _getToken();
    if (token == null) {
      throw const AuthException(message: 'Not authenticated');
    }

    final response = await http.post(
      Uri.parse('$_baseUrl/api/auth/set-password'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode({'newPassword': newPassword}),
    );

    if (response.statusCode != 200) {
      final error = jsonDecode(response.body);
      throw AuthException(
        message:
            error['error']?['message'] ?? 'Failed to set password',
      );
    }
  }

  @override
  Future<void> requestEmailVerification() async {
    final token = await _getToken();
    if (token == null) {
      throw const AuthException(message: 'Not authenticated');
    }

    final response = await http.post(
      Uri.parse('$_baseUrl/api/auth/verify-email'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode({}),
    );

    if (response.statusCode != 200) {
      final error = jsonDecode(response.body);
      throw AuthException(
        message: error['error']?['message'] ??
            'Failed to send verification email',
      );
    }
  }

  @override
  Future<void> deleteAccount() async {
    final token = await _getToken();
    if (token == null) {
      throw const AuthException(message: 'Not authenticated');
    }

    final response = await http.post(
      Uri.parse('$_baseUrl/api/auth/delete-account'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode != 200) {
      final error = jsonDecode(response.body);
      throw AuthException(
        message:
            error['error']?['message'] ?? 'Failed to delete account',
      );
    }

    await _clearAuth();
  }

  @override
  Future<List<Map<String, dynamic>>> listSessions() async {
    final token = await _getToken();
    if (token == null) {
      throw const AuthException(message: 'Not authenticated');
    }

    final response = await http.get(
      Uri.parse('$_baseUrl/api/auth/sessions'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode != 200) {
      final error = jsonDecode(response.body);
      throw AuthException(
        message:
            error['error']?['message'] ?? 'Failed to list sessions',
      );
    }

    final data = jsonDecode(response.body);
    final sessions = data['sessions'] as List<dynamic>;
    return sessions.cast<Map<String, dynamic>>();
  }

  @override
  Future<void> revokeSession(String sessionId) async {
    final token = await _getToken();
    if (token == null) {
      throw const AuthException(message: 'Not authenticated');
    }

    final response = await http.post(
      Uri.parse('$_baseUrl/api/auth/revoke-session'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode({'sessionId': sessionId}),
    );

    if (response.statusCode != 200) {
      final error = jsonDecode(response.body);
      throw AuthException(
        message:
            error['error']?['message'] ?? 'Failed to revoke session',
      );
    }
  }

  @override
  Future<void> revokeOtherSessions() async {
    final token = await _getToken();
    if (token == null) {
      throw const AuthException(message: 'Not authenticated');
    }

    final response = await http.post(
      Uri.parse('$_baseUrl/api/auth/revoke-other-sessions'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode != 200) {
      final error = jsonDecode(response.body);
      throw AuthException(
        message: error['error']?['message'] ??
            'Failed to revoke other sessions',
      );
    }
  }

  @override
  Future<UserModel> updateProfile(
    String userId,
    Map<String, dynamic> data,
  ) async {
    try {
      final token = await _getToken();

      if (token == null || token.isEmpty) {
        throw const AuthException(message: 'Not authenticated');
      }

      final response = await http.put(
        Uri.parse('$_baseUrl/api/user/$userId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
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
      await _saveUser(userModel);

      _authStateController.add(userModel);
      return userModel;
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSourceWeb.updateProfile');
      throw const AuthException(
        message: 'Failed to update profile. Please try again.',
      );
    }
  }

  @override
  Stream<UserModel?> get authStateChanges => _authStateController.stream;

  void dispose() {
    _authStateController.close();
  }
}
