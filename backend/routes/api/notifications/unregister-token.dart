import 'dart:io';

import 'package:backend/services/novu/subscriber_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Unregister FCM device token endpoint
///
/// POST /api/notifications/unregister-token - Remove a push notification token
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.post) {
    return _handleUnregisterToken(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// POST /api/notifications/unregister-token
///
/// Unregister an FCM device token (uses POST since DELETE with body is awkward).
///
/// Request body:
/// ```json
/// {
///   "token": "fcm-token-string"
/// }
/// ```
Future<Response> _handleUnregisterToken(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'}
        },
      );
    }

    final data = await context.request.json() as Map<String, dynamic>;

    final token = data['token'] as String?;
    if (token == null || token.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Token is required'}
        },
      );
    }

    final subscriberService = context.read<SubscriberService>();

    await subscriberService.removeDeviceToken(
      subscriberId: userId,
      providerId: 'fcm',
    );

    return Response.json(
      body: {'success': true},
    );
  } on FormatException catch (_) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'Invalid request body format'},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in POST /api/notifications/unregister-token',
      context: 'NotificationsUnregisterTokenRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to unregister device token'}
      },
    );
  }
}
