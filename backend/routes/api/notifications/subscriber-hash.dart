import 'dart:io';

import 'package:backend/services/novu/subscriber_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Subscriber hash endpoint
///
/// GET /api/notifications/subscriber-hash - Get HMAC hash for Novu Inbox auth
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _handleGetSubscriberHash(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// GET /api/notifications/subscriber-hash
///
/// Returns an HMAC subscriber hash for authenticating the Novu Inbox widget.
///
/// Response:
/// ```json
/// {
///   "hash": "hex-string"
/// }
/// ```
Future<Response> _handleGetSubscriberHash(RequestContext context) async {
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

    final subscriberService = context.read<SubscriberService>();

    final hash = subscriberService.generateSubscriberHash(userId);

    return Response.json(
      body: {'hash': hash},
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/notifications/subscriber-hash',
      context: 'NotificationsSubscriberHashRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to generate subscriber hash'}
      },
    );
  }
}
