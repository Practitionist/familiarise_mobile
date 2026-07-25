import 'dart:io';

import 'package:backend/services/profile/profile_service.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/forgot-password
/// Initiate forgot password flow
///
/// Request body:
/// - email: User's email address
///
/// Response:
/// - message: Always returns success to prevent email enumeration
Future<Response> onRequest(RequestContext context) async {
  // Only allow POST
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final body = await context.request.json() as Map<String, dynamic>;
    final email = body['email'] as String?;

    if (email == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Email is required'},
        },
      );
    }

    final profileService = context.read<ProfileService>();
    await profileService.forgotPassword(email: email);

    // Always return 200 to prevent email enumeration
    return Response.json(
      body: {
        'message': 'If an account exists, a reset link has been sent',
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Forgot password failed',
      context: 'AuthForgotPassword',
      error: e,
      stackTrace: stackTrace,
    );
    // Still return 200 to prevent email enumeration
    return Response.json(
      body: {
        'message': 'If an account exists, a reset link has been sent',
      },
    );
  }
}
