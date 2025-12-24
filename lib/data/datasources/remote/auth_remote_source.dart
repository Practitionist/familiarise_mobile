import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Conditionally import better_auth_flutter (not supported on web)
import 'package:better_auth_flutter/better_auth_flutter.dart'
    if (dart.library.html) '../../../core/utils/better_auth_stub.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';

import '../../../core/config/env_config.dart';
import '../../../core/errors/exceptions.dart';
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

  /// Send password reset email
  Future<void> sendPasswordResetEmail(String email);

  /// Update user profile
  Future<UserModel> updateProfile(Map<String, dynamic> data);

  /// Stream of auth state changes
  Stream<UserModel?> get authStateChanges;
}

/// Implementation using Better Auth Flutter SDK
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
      final (userData, error) = await BetterAuth.instance.client
          .signInWithEmailAndPassword(email: email, password: password);

      if (error != null) {
        throw AuthException(message: _mapAuthError(error.message));
      }

      if (userData == null) {
        throw const AuthException(message: 'Sign in failed');
      }

      final userModel = _parseUserData(userData);
      _authStateController.add(userModel);
      return userModel;
    } catch (e) {
      if (e is AuthException) rethrow;
      throw AuthException(message: e.toString());
    }
  }

  @override
  Future<UserModel> signUpWithEmail(
    String email,
    String password,
    String? name,
  ) async {
    try {
      final (userData, error) =
          await BetterAuth.instance.client.signUpWithEmailAndPassword(
        email: email,
        password: password,
        name: name ?? '',
      );

      if (error != null) {
        throw AuthException(message: _mapAuthError(error.message));
      }

      if (userData == null) {
        throw const AuthException(message: 'Sign up failed');
      }

      final userModel = _parseUserData(userData);
      _authStateController.add(userModel);
      return userModel;
    } catch (e) {
      if (e is AuthException) rethrow;
      throw AuthException(message: e.toString());
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
        Uri.parse('$baseUrl/api/auth/google'),
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
    } catch (e) {
      if (e is AuthException) rethrow;
      throw AuthException(message: e.toString());
    }
  }

  @override
  Future<UserModel> signInWithGitHub() async {
    try {
      // Get the OAuth URL from Better Auth
      final (url, error) = await BetterAuth.instance.client.socialSignIn(
        provider: SocialProvider.github,
        callbackUrl: 'familiarise://auth/callback',
        callbackUrlScheme: 'familiarise',
      );

      if (error != null) {
        throw AuthException(message: _mapAuthError(error.message));
      }

      if (url == null || url.isEmpty) {
        throw const AuthException(message: 'Failed to get GitHub auth URL');
      }

      // Open the URL in a web view and wait for callback
      await FlutterWebAuth2.authenticate(
        url: url,
        callbackUrlScheme: 'familiarise',
      );

      // After OAuth redirect, fetch the current user
      final currentUser = await getCurrentUser();

      if (currentUser == null) {
        throw const AuthException(message: 'GitHub sign in failed');
      }

      _authStateController.add(currentUser);
      return currentUser;
    } catch (e) {
      if (e is AuthException) rethrow;
      throw AuthException(message: e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await googleSignIn.signOut();
      final error = await BetterAuth.instance.client.signOut();
      if (error != null) {
        throw AuthException(message: error.message);
      }
      _authStateController.add(null);
    } catch (e) {
      if (e is AuthException) rethrow;
      throw AuthException(message: e.toString());
    }
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    try {
      // getSession returns ((Session?, User?)?, BetterAuthFailure?) tuple
      final result = await BetterAuth.instance.client.getSession();
      final sessionUserTuple = result.$1;
      final error = result.$2;

      if (error != null || sessionUserTuple == null) {
        return null;
      }

      final session = sessionUserTuple.$1;
      final user = sessionUserTuple.$2;

      if (session == null) {
        return null;
      }

      // If we have user data, use it
      if (user != null) {
        return _parseUserData(user);
      }

      // If we only have session, create a minimal UserModel
      return UserModel(
        id: session.userId,
        createdAt: session.createdAt,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> sendPasswordResetEmail(String email) async {
    // Better Auth handles forgot password through web interface
    // The client may not expose this directly
    throw const AuthException(
      message:
          'Please use the "Forgot Password" link on the web to reset your password.',
    );
  }

  @override
  Future<UserModel> updateProfile(Map<String, dynamic> data) async {
    // Profile updates may need to go through the backend API directly
    throw const AuthException(
      message: 'Profile updates are not available through the auth client.',
    );
  }

  @override
  Stream<UserModel?> get authStateChanges => _authStateController.stream;

  /// Parse user data from API response
  /// Handles both User object and Map responses
  UserModel _parseUserData(dynamic userData) {
    if (userData is User) {
      return UserModel(
        id: userData.id,
        email: userData.email,
        name: userData.name,
        image: userData.image,
        emailVerified: userData.emailVerified,
        createdAt: userData.createdAt,
      );
    } else if (userData is Map<String, dynamic>) {
      return UserModel(
        id: userData['id'] as String? ?? '',
        email: userData['email'] as String?,
        name: userData['name'] as String?,
        image: userData['image'] as String?,
        emailVerified: userData['emailVerified'] as bool? ?? false,
        createdAt: userData['createdAt'] != null
            ? DateTime.tryParse(userData['createdAt'].toString())
            : null,
      );
    } else {
      throw const AuthException(message: 'Invalid user data format');
    }
  }

  /// Map auth errors to user-friendly messages
  String _mapAuthError(String message) {
    final lowerMessage = message.toLowerCase();

    if (lowerMessage.contains('invalid') &&
        (lowerMessage.contains('email') || lowerMessage.contains('password'))) {
      return 'Invalid email or password';
    }
    if (lowerMessage.contains('not confirmed') ||
        lowerMessage.contains('not verified')) {
      return 'Please verify your email address';
    }
    if (lowerMessage.contains('already') &&
        (lowerMessage.contains('registered') ||
            lowerMessage.contains('exists'))) {
      return 'An account with this email already exists';
    }
    if (lowerMessage.contains('password') &&
        (lowerMessage.contains('short') || lowerMessage.contains('weak'))) {
      return 'Password must be at least 8 characters';
    }
    if (lowerMessage.contains('network') ||
        lowerMessage.contains('connection')) {
      return 'Network error. Please check your connection.';
    }

    return message;
  }

  void dispose() {
    _authStateController.close();
  }
}

/// Web-specific implementation using direct HTTP calls
/// This bypasses better_auth_flutter which doesn't support web
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
        Uri.parse('$_baseUrl/api/auth/sign-in/email'),
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
    } catch (e) {
      if (e is AuthException) rethrow;
      throw AuthException(message: e.toString());
    }
  }

  @override
  Future<UserModel> signUpWithEmail(
      String email, String password, String? name) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/api/auth/sign-up/email'),
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
    } catch (e) {
      if (e is AuthException) rethrow;
      throw AuthException(message: e.toString());
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
        Uri.parse('$_baseUrl/api/auth/google'),
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
    } catch (e) {
      if (e is AuthException) rethrow;
      throw AuthException(message: e.toString());
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
  Future<void> sendPasswordResetEmail(String email) async {
    throw const AuthException(
      message:
          'Please use the "Forgot Password" link on the web to reset your password.',
    );
  }

  @override
  Future<UserModel> updateProfile(Map<String, dynamic> data) async {
    throw const AuthException(
      message: 'Profile updates are not available yet.',
    );
  }

  @override
  Stream<UserModel?> get authStateChanges => _authStateController.stream;

  void dispose() {
    _authStateController.close();
  }
}
