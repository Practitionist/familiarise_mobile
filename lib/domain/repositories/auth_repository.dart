import '../../core/errors/failures.dart';
import '../entities/user.dart';

/// Auth repository interface defining authentication operations
abstract class AuthRepository {
  /// Sign in with email and password
  Future<Result<User>> signInWithEmail({
    required String email,
    required String password,
  });

  /// Sign up with email and password
  Future<Result<User>> signUpWithEmail({
    required String email,
    required String password,
    String? name,
  });

  /// Sign in with Google OAuth
  Future<Result<User>> signInWithGoogle();

  /// Sign in with GitHub OAuth
  Future<Result<User>> signInWithGitHub();

  /// Sign out current user
  Future<Result<void>> signOut();

  /// Get current authenticated user (from session)
  Future<Result<User?>> getCurrentUser();

  /// Send password reset email (forgot password flow)
  Future<Result<void>> forgotPassword(String email);

  /// Reset password with token
  Future<Result<void>> resetPassword({
    required String token,
    required String newPassword,
  });

  /// Change password (authenticated)
  Future<Result<void>> changePassword({
    required String currentPassword,
    required String newPassword,
  });

  /// Set password for OAuth-only users
  Future<Result<void>> setPassword(String newPassword);

  /// Request email verification
  Future<Result<void>> requestEmailVerification();

  /// Delete account
  Future<Result<void>> deleteAccount();

  /// List active sessions
  Future<Result<List<Map<String, dynamic>>>> listSessions();

  /// Revoke a specific session
  Future<Result<void>> revokeSession(String sessionId);

  /// Revoke all other sessions
  Future<Result<void>> revokeOtherSessions();

  /// Update user profile
  Future<Result<User>> updateProfile({
    required String userId,
    String? name,
    String? phone,
    String? timezone,
    String? image,
    String? bio,
    DateTime? dateOfBirth,
    String? gender,
    String? city,
    String? country,
    String? address,
    String? linkedinUrl,
  });

  /// Stream of auth state changes
  Stream<User?> get authStateChanges;
}
