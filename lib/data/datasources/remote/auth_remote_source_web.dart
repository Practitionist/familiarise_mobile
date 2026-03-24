import 'dart:async';
import 'dart:convert';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/config/env_config.dart';
import '../../../core/constants/storage_keys.dart';
import '../../../core/errors/exceptions.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../models/user_model.dart';
import 'auth_remote_source.dart';
import 'auth_remote_source_mixin.dart';

/// Web-specific implementation of [AuthRemoteSource].
///
/// Uses [SharedPreferences] for token storage (no FlutterSecureStorage on web)
/// and web-specific Google Identity Services (GIS) flow.
class AuthRemoteSourceWebImpl
    with AuthRemoteSourceMixin
    implements AuthRemoteSource {
  GoogleSignIn? _googleSignIn;

  @override
  final StreamController<UserModel?> authStateController =
      StreamController<UserModel?>.broadcast();

  /// On web, don't pass clientId — it's read from the meta tag in index.html.
  GoogleSignIn get googleSignIn {
    _googleSignIn ??= GoogleSignIn(
      scopes: ['email', 'profile', 'openid'],
    );
    return _googleSignIn!;
  }

  // ---------------------------------------------------------------------------
  // Bridge methods — web uses SharedPreferences for everything
  // ---------------------------------------------------------------------------

  @override
  Future<String?> getAuthToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(StorageKeys.authToken);
  }

  @override
  Future<void> saveAuthCredentials(String token, UserModel user) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(StorageKeys.authToken, token);
    await prefs.setString(StorageKeys.authUser, jsonEncode(user.toJson()));
  }

  @override
  Future<void> clearAuthCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(StorageKeys.authToken);
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

      // On web, google_sign_in cannot provide an ID token with signIn()
      // (known GIS limitation). We use the access token instead.
      if (accessToken == null) {
        throw const AuthException(
          message: 'Failed to get Google credentials. Please try again.',
        );
      }

      final response = await http.post(
        Uri.parse('${EnvConfig.apiBaseUrl}/api/auth/google/callback'),
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
          stackTrace: stackTrace,
          context: 'AuthRemoteSourceWeb.signInWithGoogle');
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
  Future<void> signOutGoogleSdk() async {
    try {
      await googleSignIn.signOut();
    } catch (_) {
      // Google SDK sign-out failure is non-critical
    }
  }
}
