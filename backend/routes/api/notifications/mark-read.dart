import 'dart:convert';
import 'dart:io';

import 'package:backend/services/novu/novu_config.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:http/http.dart' as http;

/// Mark notifications as read endpoint
///
/// POST /api/notifications/mark-read - Mark one or more notifications as read
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.post) {
    return _handleMarkRead(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// POST /api/notifications/mark-read
///
/// Mark notifications as read via the Novu API.
///
/// Request body (individual):
/// ```json
/// { "notificationIds": ["id1", "id2"] }
/// ```
///
/// Request body (all):
/// ```json
/// { "all": true }
/// ```
Future<Response> _handleMarkRead(RequestContext context) async {
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

    final data = await context.request.json() as Map<String, dynamic>;
    final markAll = data['all'] as bool? ?? false;

    final headers = {
      'Authorization': 'ApiKey ${novuConfig.secretKey}',
      'Content-Type': 'application/json',
    };

    if (markAll) {
      // Batch mark all as read
      final url = Uri.parse('${novuConfig.apiUrl}/notifications/read');
      final response = await http.post(
        url,
        headers: headers,
        body: jsonEncode({'subscriberId': userId}),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        SentryLogger.debug(
          'Novu batch mark-read failed: ${response.statusCode} ${response.body}',
          context: 'NotificationsMarkReadRoute',
        );
        return Response.json(
          statusCode: HttpStatus.badGateway,
          body: {
            'error': {'message': 'Failed to mark all notifications as read'}
          },
        );
      }
    } else {
      // Mark individual notifications as read
      final notificationIds = (data['notificationIds'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          [];

      if (notificationIds.isEmpty) {
        return Response.json(
          statusCode: HttpStatus.badRequest,
          body: {
            'error': {
              'message': 'Either "notificationIds" or "all": true is required',
            }
          },
        );
      }

      for (final id in notificationIds) {
        final url = Uri.parse('${novuConfig.apiUrl}/notifications/$id/read');
        final response = await http.post(url, headers: headers);

        if (response.statusCode != 200 && response.statusCode != 201) {
          SentryLogger.debug(
            'Novu mark-read failed for $id: '
            '${response.statusCode} ${response.body}',
            context: 'NotificationsMarkReadRoute',
          );
        }
      }
    }

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
      'Error in POST /api/notifications/mark-read',
      context: 'NotificationsMarkReadRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to mark notifications as read'}
      },
    );
  }
}
