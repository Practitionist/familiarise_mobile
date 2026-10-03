import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
  AuthRemoteSourceImpl({Dio? dio})
      : dio = dio ??
            Dio(
              BaseOptions(
                baseUrl: EnvConfig.apiBaseUrl,
                headers: const {
                  'Content-Type': 'application/json',
                  'Accept': 'application/json',
                },
              ),
            );

  @override
  final Dio dio;

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

  Map<String, dynamic> _asMap(dynamic data) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    if (data is String && data.isNotEmpty) {
      final decoded = jsonDecode(data);
      if (decoded is Map) return Map<String, dynamic>.from(decoded);
    }
    return <String, dynamic>{};
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

      final response = await dio.post<dynamic>(
        '$baseUrl/api/auth/google/callback',
        options: Options(headers: {'Content-Type': 'application/json'}),
        data: {
          'idToken': idToken,
          'accessToken': accessToken,
        },
      );

      final data = _asMap(response.data);
      if (response.statusCode != 200) {
        final errorObj = data['error'];
        final errorMsg = (errorObj is Map
                ? errorObj['message']?.toString()
                : errorObj?.toString()) ??
            'Google sign in failed';
        throw AuthException(message: errorMsg);
      }

      final userModel = UserModel.fromJson(_asMap(data['user']));
      final token = data['token'] as String;

      await saveAuthCredentials(token, userModel);
      authStateController.add(userModel);
      return userModel;
    } on DioException catch (e) {
      throw AuthException(
        message: extractAuthErrorMessage(e, 'Google sign in failed'),
        statusCode: e.response?.statusCode,
        originalError: e,
      );
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
      final urlResponse = await dio.get<dynamic>(
        '$baseUrl/api/auth/github/url',
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      final urlData = _asMap(urlResponse.data);
      if (urlResponse.statusCode != 200) {
        final errorObj = urlData['error'];
        final errorMsg = (errorObj is Map
                ? errorObj['message']?.toString()
                : errorObj?.toString()) ??
            'Failed to get GitHub auth URL';
        throw AuthException(message: errorMsg);
      }

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
      final callbackResponse = await dio.post<dynamic>(
        '$baseUrl/api/auth/github/callback',
        options: Options(headers: {'Content-Type': 'application/json'}),
        data: {
          'code': code,
          'state': state,
        },
      );

      final data = _asMap(callbackResponse.data);
      if (callbackResponse.statusCode != 200) {
        final errorObj = data['error'];
        final errorMsg = (errorObj is Map
                ? errorObj['message']?.toString()
                : errorObj?.toString()) ??
            'GitHub sign in failed';
        throw AuthException(message: errorMsg);
      }

      final userModel = UserModel.fromJson(_asMap(data['user']));
      final token = data['token'] as String;

      await saveAuthCredentials(token, userModel);
      authStateController.add(userModel);
      return userModel;
    } on DioException catch (e) {
      throw AuthException(
        message: extractAuthErrorMessage(e, 'GitHub sign in failed'),
        statusCode: e.response?.statusCode,
        originalError: e,
      );
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
