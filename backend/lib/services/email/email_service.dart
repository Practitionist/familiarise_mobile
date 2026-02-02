import 'dart:convert';

import 'package:http/http.dart' as http;

/// Service for sending transactional emails via Resend API
class EmailService {
  /// Creates an EmailService with the given API key and sender address
  EmailService({
    required String apiKey,
    this.fromAddress = 'Familiarise <noreply@familiarise.com>',
  }) : _apiKey = apiKey;

  final String _apiKey;

  /// The sender email address
  final String fromAddress;

  static const _resendUrl = 'https://api.resend.com/emails';

  /// Send a password reset email
  Future<void> sendPasswordResetEmail({
    required String to,
    required String resetToken,
    required String resetUrl,
  }) async {
    final html = '''
<div style="font-family: sans-serif; max-width: 600px; margin: 0 auto;">
  <h2>Reset Your Password</h2>
  <p>You requested a password reset for your Familiarise account.</p>
  <p>Click the button below to reset your password. This link will expire in 30 minutes.</p>
  <a href="$resetUrl?token=$resetToken"
     style="display: inline-block; padding: 12px 24px; background-color: #4F46E5; color: white; text-decoration: none; border-radius: 6px; margin: 16px 0;">
    Reset Password
  </a>
  <p style="color: #666; font-size: 14px;">If you didn't request this, you can safely ignore this email.</p>
</div>
''';

    await _send(
      to: to,
      subject: 'Reset your Familiarise password',
      html: html,
    );
  }

  /// Send an email verification email
  Future<void> sendVerificationEmail({
    required String to,
    required String verificationToken,
    required String verifyUrl,
  }) async {
    final html = '''
<div style="font-family: sans-serif; max-width: 600px; margin: 0 auto;">
  <h2>Verify Your Email</h2>
  <p>Please verify your email address for your Familiarise account.</p>
  <a href="$verifyUrl?token=$verificationToken"
     style="display: inline-block; padding: 12px 24px; background-color: #4F46E5; color: white; text-decoration: none; border-radius: 6px; margin: 16px 0;">
    Verify Email
  </a>
  <p style="color: #666; font-size: 14px;">If you didn't create an account, you can safely ignore this email.</p>
</div>
''';

    await _send(
      to: to,
      subject: 'Verify your Familiarise email',
      html: html,
    );
  }

  /// Send an email via Resend API
  Future<void> _send({
    required String to,
    required String subject,
    required String html,
  }) async {
    final response = await http.post(
      Uri.parse(_resendUrl),
      headers: {
        'Authorization': 'Bearer $_apiKey',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'from': fromAddress,
        'to': [to],
        'subject': subject,
        'html': html,
      }),
    );

    if (response.statusCode != 200) {
      throw Exception(
        'Failed to send email: ${response.statusCode} ${response.body}',
      );
    }
  }
}
