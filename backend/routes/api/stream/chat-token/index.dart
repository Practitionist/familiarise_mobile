import 'dart:io';

import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Stream Chat token endpoint
///
/// POST /api/stream/chat-token - Get Stream Chat token for messaging
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.post) {
    return _handleGetChatToken(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// POST /api/stream/chat-token
///
/// Get a Stream Chat token for real-time messaging.
/// Unlike video tokens, chat tokens don't require an appointment -
/// any authenticated user can access their chat channels.
///
/// Request: No body required (uses auth token)
///
/// Response:
/// ```json
/// {
///   "token": "jwt-token",
///   "apiKey": "stream-api-key",
///   "userId": "user-id"
/// }
/// ```
Future<Response> _handleGetChatToken(RequestContext context) async {
  try {
    // Verify user is authenticated
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    // Get Stream service from provider
    final streamService = context.read<StreamService>();

    if (!streamService.isConfigured) {
      await SentryLogger.error(
        'Stream API not configured',
        context: 'StreamChatTokenRoute',
      );
      return Response.json(
        statusCode: HttpStatus.serviceUnavailable,
        body: {
          'error': {'message': 'Chat service is not configured'},
        },
      );
    }

    // Generate user token (valid for 24 hours)
    // Chat and Video use the same token format
    final token = streamService.generateUserToken(userId);

    return Response.json(
      body: {
        'token': token,
        'apiKey': streamService.apiKey,
        'userId': userId,
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in POST /api/stream/chat-token',
      context: 'StreamChatTokenRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to generate Stream chat token'},
      },
    );
  }
}
