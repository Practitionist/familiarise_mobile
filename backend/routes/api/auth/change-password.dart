import 'dart:io';

import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/services/profile/profile_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/change-password
/// Change password for an authenticated user
///
/// Request body:
/// - currentPassword: User's current password
/// - newPassword: User's new password
///
/// Response:
/// - message: Success confirmation
Future<Response> onRequest(RequestContext context) async {
  // Only allow POST
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

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

    final body =
        await context.request.json() as Map<String, dynamic>;
    final currentPassword = body['currentPassword'] as String?;
    final newPassword = body['newPassword'] as String?;

    if (currentPassword == null || newPassword == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message':
                'currentPassword and newPassword are required',
          },
        },
      );
    }

    final profileService = context.read<ProfileService>();
    await profileService.changePassword(
      userId: userId,
      currentPassword: currentPassword,
      newPassword: newPassword,
    );

    return Response.json(
      body: {'message': 'Password changed successfully'},
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
      'Change password failed',
      context: 'AuthChangePassword',
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
