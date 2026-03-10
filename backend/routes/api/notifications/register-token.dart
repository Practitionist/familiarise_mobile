import 'dart:io';

import 'package:backend/services/novu/subscriber_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Register FCM device token endpoint
///
/// POST /api/notifications/register-token - Register a push notification token
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.post) {
    return _handleRegisterToken(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// POST /api/notifications/register-token
///
/// Register an FCM device token for push notifications.
///
/// Request body:
/// ```json
/// {
///   "token": "fcm-token-string",
///   "platform": "android" | "ios"
/// }
/// ```
Future<Response> _handleRegisterToken(RequestContext context) async {
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

    final platform = data['platform'] as String?;
    if (platform == null || (platform != 'android' && platform != 'ios')) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Platform must be "android" or "ios"',
          }
        },
      );
    }

    final subscriberService = context.read<SubscriberService>();

    // Novu uses "fcm" as the provider ID for both Android and iOS
    await subscriberService.setDeviceToken(
      subscriberId: userId,
      token: token,
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
      'Error in POST /api/notifications/register-token',
      context: 'NotificationsRegisterTokenRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to register device token'}
      },
    );
  }
}
