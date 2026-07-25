import 'dart:io';

import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/services/profile/profile_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/verify-email
/// Request a verification email for the authenticated user
///
/// GET /api/auth/verify-email?token=<token>
/// Confirm email verification with the provided token
Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.post => _handlePost(context),
    HttpMethod.get => _handleGet(context),
    _ => Future.value(
        Response(statusCode: HttpStatus.methodNotAllowed),
      ),
  };
}

/// POST — request verification email (requires auth)
Future<Response> _handlePost(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    final profileService = context.read<ProfileService>();
    await profileService.requestEmailVerification(
      userId: userId,
    );

    return Response.json(
      body: {'message': 'Verification email sent'},
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
      'Request email verification failed',
      context: 'AuthVerifyEmail',
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

/// GET — confirm email verification with token
Future<Response> _handleGet(RequestContext context) async {
  try {
    final token = context.request.uri.queryParameters['token'];

    if (token == null || token.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'token is required'},
        },
      );
    }

    final profileService = context.read<ProfileService>();
    await profileService.confirmEmailVerification(
      token: token,
    );

    return Response.json(
      body: {'message': 'Email verified successfully'},
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
      'Email verification confirmation failed',
      context: 'AuthVerifyEmailConfirm',
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
