import 'dart:convert';
import 'dart:math';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/services/email/email_service.dart';
import 'package:bcrypt/bcrypt.dart';
import 'package:uuid/uuid.dart';

/// Service for user profile operations
///
/// Handles: change password, forgot/reset password, email verification,
/// set password (for OAuth-only users), delete account, session management.
class ProfileService {
  /// Creates a ProfileService with required dependencies
  ///
  /// [emailService] is optional - if not provided, email-dependent features
  /// (forgot password, email verification) will throw an appropriate error.
  ProfileService(
    this._db, {
    EmailService? emailService,
    required String appBaseUrl,
  })  : _emailService = emailService,
        _appBaseUrl = appBaseUrl;

  final DatabaseClient _db;
  final EmailService? _emailService;
  final String _appBaseUrl;
  final _uuid = const Uuid();
  final _random = Random.secure();

  /// Check if email service is available
  bool get hasEmailService => _emailService != null;

  /// BCrypt cost factor — matches BetterAuth web config
  static const int _bcryptCost = 12;

  /// Generate a random token (URL-safe base64)
  String _generateToken() {
    final bytes = List<int>.generate(32, (_) => _random.nextInt(256));
    return base64Url.encode(bytes).replaceAll('=', '');
  }

  /// Change password for an authenticated user
  ///
  /// Verifies the current password before updating.
  Future<void> changePassword({
    required String userId,
    required String currentPassword,
    required String newPassword,
  }) async {
    final account = await _db.accounts.findCredentialAccount(userId);

    if (account == null) {
      throw AuthException(
        'No password set for this account. Use "Set Password" instead.',
        statusCode: 400,
      );
    }

    final storedHash = account['password'] as String?;
    if (storedHash == null || !BCrypt.checkpw(currentPassword, storedHash)) {
      throw AuthException('Current password is incorrect');
    }

    final newHash =
        BCrypt.hashpw(newPassword, BCrypt.gensalt(logRounds: _bcryptCost));

    await _db.accounts.updatePassword(
      accountId: account['id'] as String,
      hashedPassword: newHash,
    );
  }

  /// Initiate forgot password flow
  ///
  /// Generates a verification token and sends a reset email.
  /// Always returns success to prevent email enumeration.
  Future<void> forgotPassword({required String email}) async {
    if (_emailService == null) {
      throw AuthException(
        'Email service is not configured. Password reset is unavailable.',
        statusCode: 503,
      );
    }

    final user = await _db.users.findByEmail(email);
    if (user == null) {
      // Don't reveal whether the email exists — always return success
      return;
    }

    // Delete any existing reset tokens for this user
    await _db.verifications.deleteByIdentifier('password-reset:$email');

    // Create verification token
    final token = _generateToken();
    await _db.verifications.create(
      id: _uuid.v4(),
      identifier: 'password-reset:$email',
      value: token,
      expiresAt: DateTime.now().toUtc().add(const Duration(minutes: 30)),
    );

    // Send reset email (fire-and-forget)
    try {
      await _emailService.sendPasswordResetEmail(
        to: email,
        resetToken: token,
        resetUrl: '$_appBaseUrl/auth/reset-password',
      );
    } catch (_) {
      // Don't fail the request if email sending fails
    }
  }

  /// Reset password with verification token
  Future<void> resetPassword({
    required String token,
    required String newPassword,
  }) async {
    // Find the verification token by value and identifier prefix
    final verification = await _db.verifications.findByValueAndIdentifierPrefix(
      value: token,
      identifierPrefix: 'password-reset:',
    );

    if (verification == null) {
      throw AuthException(
        'Invalid or expired reset token',
        statusCode: 400,
      );
    }
    final expiresAtValue = verification['expiresAt'];
    final expiresAt = expiresAtValue is DateTime
        ? expiresAtValue
        : DateTime.parse(expiresAtValue.toString());

    if (expiresAt.isBefore(DateTime.now().toUtc())) {
      await _db.verifications.delete(
        verification['id'] as String,
      );
      throw AuthException(
        'Reset token has expired',
        statusCode: 400,
      );
    }

    // Extract email from identifier
    // Format: "password-reset:email@example.com"
    final identifier = verification['identifier'] as String;
    final email = identifier.replaceFirst('password-reset:', '');

    final user = await _db.users.findByEmail(email);
    if (user == null) {
      throw AuthException('User not found', statusCode: 404);
    }

    final userId = user['id'] as String;
    final account = await _db.accounts.findCredentialAccount(userId);

    if (account == null) {
      // User only has OAuth — create a credential account
      final newHash = BCrypt.hashpw(
        newPassword,
        BCrypt.gensalt(logRounds: _bcryptCost),
      );
      await _db.accounts.createCredentials(
        id: _uuid.v4(),
        userId: userId,
        hashedPassword: newHash,
      );
    } else {
      // Update existing credential account password
      final newHash = BCrypt.hashpw(
        newPassword,
        BCrypt.gensalt(logRounds: _bcryptCost),
      );
      await _db.accounts.updatePassword(
        accountId: account['id'] as String,
        hashedPassword: newHash,
      );
    }

    // Delete the used verification token
    await _db.verifications.delete(verification['id'] as String);
  }

  /// Request email verification
  ///
  /// Generates a token and sends a verification email.
  Future<void> requestEmailVerification({required String userId}) async {
    if (_emailService == null) {
      throw AuthException(
        'Email service is not configured. Email verification is unavailable.',
        statusCode: 503,
      );
    }

    final user = await _db.users.findById(userId);
    if (user == null) {
      throw AuthException('User not found', statusCode: 404);
    }

    final emailVerified = user['emailVerified'];
    if (emailVerified == true) {
      throw AuthException(
        'Email is already verified',
        statusCode: 400,
      );
    }

    final email = user['email'] as String;

    // Delete any existing verification tokens
    await _db.verifications.deleteByIdentifier('email-verify:$email');

    // Create token
    final token = _generateToken();
    await _db.verifications.create(
      id: _uuid.v4(),
      identifier: 'email-verify:$email',
      value: token,
      expiresAt: DateTime.now().toUtc().add(const Duration(hours: 24)),
    );

    // Send verification email
    await _emailService.sendVerificationEmail(
      to: email,
      verificationToken: token,
      verifyUrl: '$_appBaseUrl/auth/verify-email',
    );
  }

  /// Confirm email verification with token
  Future<void> confirmEmailVerification({required String token}) async {
    // Find the verification token by value and identifier prefix
    final verification = await _db.verifications.findByValueAndIdentifierPrefix(
      value: token,
      identifierPrefix: 'email-verify:',
    );

    if (verification == null) {
      throw AuthException(
        'Invalid or expired verification token',
        statusCode: 400,
      );
    }
    final expiresAtValue = verification['expiresAt'];
    final expiresAt = expiresAtValue is DateTime
        ? expiresAtValue
        : DateTime.parse(expiresAtValue.toString());

    if (expiresAt.isBefore(DateTime.now().toUtc())) {
      await _db.verifications.delete(
        verification['id'] as String,
      );
      throw AuthException(
        'Verification token has expired',
        statusCode: 400,
      );
    }

    // Extract email from identifier
    final identifier = verification['identifier'] as String;
    final email = identifier.replaceFirst('email-verify:', '');

    final user = await _db.users.findByEmail(email);
    if (user == null) {
      throw AuthException('User not found', statusCode: 404);
    }

    // Mark email as verified
    await _db.users.updateEmailVerified(
      id: user['id'] as String,
      verified: true,
    );

    // Delete the used token
    await _db.verifications.delete(
      verification['id'] as String,
    );
  }

  /// Set password for an OAuth-only user
  ///
  /// Creates a credential account for users who only have OAuth accounts.
  Future<void> setPassword({
    required String userId,
    required String newPassword,
  }) async {
    // Check if user already has a credential account
    final existing = await _db.accounts.findCredentialAccount(userId);
    if (existing != null) {
      throw AuthException(
        'Password already set. Use "Change Password" instead.',
        statusCode: 400,
      );
    }

    final hashedPassword = BCrypt.hashpw(
      newPassword,
      BCrypt.gensalt(logRounds: _bcryptCost),
    );

    await _db.accounts.createCredentials(
      id: _uuid.v4(),
      userId: userId,
      hashedPassword: hashedPassword,
    );
  }

  /// Delete a user account and all associated data
  Future<void> deleteAccount({required String userId}) async {
    // Delete all sessions first
    await _db.sessions.deleteByUserId(userId);

    // Delete the user (cascading deletes should handle related records)
    await _db.users.delete(userId);
  }

  /// List all active sessions for a user
  Future<List<Map<String, dynamic>>> listSessions({
    required String userId,
  }) async {
    final sessions = await _db.sessions.findByUserId(userId);
    final now = DateTime.now().toUtc();

    // Filter out expired sessions and sanitize
    return sessions
        .where((s) {
          final expiresAtValue = s['expiresAt'];
          if (expiresAtValue == null) return false;
          final expiresAt = expiresAtValue is DateTime
              ? expiresAtValue
              : DateTime.parse(expiresAtValue.toString());
          return expiresAt.isAfter(now);
        })
        .map(
          (s) => {
            'id': s['id'],
            'ipAddress': s['ipAddress'],
            'userAgent': s['userAgent'],
            'createdAt': s['createdAt']?.toString(),
            'expiresAt': s['expiresAt']?.toString(),
          },
        )
        .toList();
  }

  /// Revoke a specific session
  Future<void> revokeSession({
    required String userId,
    required String sessionId,
  }) async {
    // Verify the session belongs to this user
    final session = await _db.sessions.findById(sessionId);
    if (session == null || session['userId'] != userId) {
      throw AuthException('Session not found', statusCode: 404);
    }

    await _db.sessions.delete(sessionId);
  }

  /// Revoke all sessions except the current one
  Future<void> revokeOtherSessions({
    required String userId,
    required String currentSessionId,
  }) async {
    await _db.sessions.deleteOtherSessions(
      userId: userId,
      keepSessionId: currentSessionId,
    );
  }
}
