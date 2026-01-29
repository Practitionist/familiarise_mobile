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

  /// Send password reset email
  Future<Result<void>> sendPasswordResetEmail(String email);

  /// Reset password with token
  Future<Result<void>> resetPassword({
    required String token,
    required String newPassword,
  });

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
