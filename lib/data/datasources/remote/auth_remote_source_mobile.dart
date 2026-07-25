import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/config/env_config.dart';
import '../../../core/constants/storage_keys.dart';
import '../../../core/errors/exceptions.dart';
import '../../../core/network/dio_client.dart' show AuthInterceptor;
import '../../../core/utils/sentry_logger.dart';
import '../../models/user_model.dart';
import 'auth_remote_source.dart';
import 'auth_remote_source_mixin.dart';

/// Mobile implementation of [AuthRemoteSource].
///
/// Uses [AuthInterceptor] (FlutterSecureStorage) for token storage and
/// platform-native OAuth flows (GoogleSignIn, FlutterWebAuth2).
class AuthRemoteSourceImpl
    with AuthRemoteSourceMixin
    implements AuthRemoteSource {
  GoogleSignIn? _googleSignIn;

  @override
  final StreamController<UserModel?> authStateController =
      StreamController<UserModel?>.broadcast();

  /// Lazily initialize GoogleSignIn only when needed.
  GoogleSignIn get googleSignIn {
    if (_googleSignIn == null) {
      final clientId = EnvConfig.googleClientId;
      _googleSignIn = GoogleSignIn(
        scopes: ['email', 'profile'],
        serverClientId: kIsWeb ? null : (clientId.isNotEmpty ? clientId : null),
      );
    }
    return _googleSignIn!;
  }

  // ---------------------------------------------------------------------------
  // Bridge methods
  // ---------------------------------------------------------------------------

  @override
  Future<String?> getAuthToken() => AuthInterceptor.getToken();

  @override
  Future<void> saveAuthCredentials(String token, UserModel user) async {
    await AuthInterceptor.saveToken(token);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(StorageKeys.authUser, jsonEncode(user.toJson()));
  }

  @override
  Future<void> clearAuthCredentials() async {
    await AuthInterceptor.clearToken();
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(StorageKeys.authUser);
  }

  // ---------------------------------------------------------------------------
  // Platform-specific methods
  // ---------------------------------------------------------------------------

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

      await saveAuthCredentials(token, userModel);
      authStateController.add(userModel);
      return userModel;
    } catch (e, stackTrace) {
      if (e is AuthException) rethrow;
      final msg = e.toString().toLowerCase();
      if (msg.contains('popup_closed') || msg.contains('popup closed')) {
        throw const AuthException(message: 'Google sign in cancelled');
      }
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'AuthRemoteSource.signInWithGoogle');
      throw const AuthException(
          message: 'Google sign in failed. Please try again.');
    }
  }

  @override
  Future<UserModel> signInWithGitHub() async {
    try {
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

      await saveAuthCredentials(token, userModel);
      authStateController.add(userModel);
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
  Future<void> signOutGoogleSdk() async {
    try {
      await googleSignIn.signOut();
    } catch (_) {
      // Google SDK sign-out failure is non-critical
    }
  }
}
