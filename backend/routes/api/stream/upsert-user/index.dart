import 'dart:io';

import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Stream Chat user upsert endpoint
///
/// POST /api/stream/upsert-user - Upsert a user in Stream Chat
///
/// This endpoint allows authenticated users to create/update users in
/// Stream Chat before creating channels with them.
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  return _handleUpsertUser(context);
}

/// POST /api/stream/upsert-user
///
/// Creates or updates a user in Stream Chat using server-side authentication.
///
/// Request body:
/// ```json
/// {
///   "userId": "user-id-to-upsert",
///   "name": "User Name (optional)",
///   "image": "https://example.com/avatar.jpg (optional)"
/// }
/// ```
///
/// Response:
/// ```json
/// { "success": true }
/// ```
Future<Response> _handleUpsertUser(RequestContext context) async {
  try {
    // Verify user is authenticated
    final currentUserId = getUserIdFromToken(context);
    if (currentUserId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    // Parse request body
    final body = await context.request.json() as Map<String, dynamic>;
    final userId = body['userId'] as String?;
    final name = body['name'] as String?;
    final image = body['image'] as String?;

    if (userId == null || userId.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'userId is required'},
        },
      );
    }

    // Get Stream service from provider
    final streamService = context.read<StreamService>();

    if (!streamService.isConfigured) {
      await SentryLogger.error(
        'Stream API not configured',
        context: 'StreamUpsertUserRoute',
      );
      return Response.json(
        statusCode: HttpStatus.serviceUnavailable,
        body: {
          'error': {'message': 'Chat service is not configured'},
        },
      );
    }

    // Upsert user in Stream Chat
    await streamService.upsertUser(
      userId: userId,
      name: name,
      image: image,
    );

    return Response.json(
      body: {'success': true},
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in POST /api/stream/upsert-user',
      context: 'StreamUpsertUserRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to upsert user in chat service'},
      },
    );
  }
}
