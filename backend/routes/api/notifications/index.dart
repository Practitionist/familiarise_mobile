import 'dart:convert';
import 'dart:io';

import 'package:backend/services/novu/novu_config.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:http/http.dart' as http;

/// Notifications endpoint
///
/// GET /api/notifications - List notifications for the authenticated user
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _handleListNotifications(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// GET /api/notifications
///
/// Lists notifications by proxying to the Novu API.
///
/// Query Parameters:
/// - page: Page number (default: 0)
/// - limit: Items per page (default: 10)
Future<Response> _handleListNotifications(RequestContext context) async {
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

    final novuConfig = context.read<NovuConfig>();
    if (!novuConfig.isConfigured) {
      return Response.json(
        statusCode: HttpStatus.serviceUnavailable,
        body: {
          'error': {'message': 'Notification service is not configured'},
        },
      );
    }

    final params = context.request.uri.queryParameters;
    final page = params['page'] ?? '0';
    final limit = params['limit'] ?? '10';

    final url = Uri.parse(
      '${novuConfig.apiUrl}/notifications'
      '?subscriberId=$userId&page=$page&limit=$limit',
    );

    final novuResponse = await http.get(
      url,
      headers: {
        'Authorization': 'ApiKey ${novuConfig.secretKey}',
        'Content-Type': 'application/json',
      },
    );

    final responseBody = jsonDecode(novuResponse.body) as Map<String, dynamic>;

    return Response.json(
      statusCode: novuResponse.statusCode,
      body: responseBody,
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/notifications',
      context: 'NotificationsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch notifications'}
      },
    );
  }
}
