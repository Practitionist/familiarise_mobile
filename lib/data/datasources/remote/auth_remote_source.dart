import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/user_model.dart';
import 'auth_remote_source_mobile.dart';
import 'auth_remote_source_web.dart';

part 'auth_remote_source.g.dart';

/// Provider for AuthRemoteSource — selects platform implementation at runtime.
@riverpod
AuthRemoteSource authRemoteSource(Ref ref) {
  final source = kIsWeb ? AuthRemoteSourceWebImpl() : AuthRemoteSourceImpl();
  ref.onDispose(source.dispose);
  return source;
}

/// Remote data source interface for authentication.
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

  /// Dispose of resources (StreamControllers, etc.)
  void dispose() {}
}
