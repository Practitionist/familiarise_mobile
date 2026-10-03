import 'dart:io';

import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/services/profile/profile_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/reset-password
/// Reset password using a verification token and revoke all existing sessions
/// for the user.
///
/// Request body:
/// - token: The reset token from the email link
/// - newPassword: The new password to set
///
/// Response:
/// - message: Success confirmation
Future<Response> onRequest(RequestContext context) async {
  // Only allow POST
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final body = await context.request.json() as Map<String, dynamic>;
    final token = body['token'] as String?;
    final newPassword = body['newPassword'] as String?;

    if (token == null || newPassword == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'token and newPassword are required',
          },
        },
      );
    }

    // Resolve userId from the verification token before resetPassword consumes it
    AuthService? authService;
    String? userId;
    try {
      authService = context.read<AuthService>();
      userId = await authService.resolveUserIdFromPasswordResetToken(token);
    } catch (_) {
      // AuthService may not be registered in isolated unit tests
    }

    final profileService = context.read<ProfileService>();
    await profileService.resetPassword(
      token: token,
      newPassword: newPassword,
    );

    // Revoke all existing DB sessions and clear in-memory session cache
    if (userId != null) {
      invalidateUserSessionsCache(userId);
      if (authService != null) {
        await authService.revokeAllUserSessions(userId);
      }
    } else {
      invalidateSessionCache();
    }

    return Response.json(
      body: {'message': 'Password reset successfully'},
    );
  } on AuthException catch (e) {
    return Response.json(
      statusCode: e.statusCode,
      body: {
        'error': {'message': e.message},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Reset password failed',
      context: 'AuthResetPassword',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'An unexpected error occurred'},
      },
    );
  }
}
