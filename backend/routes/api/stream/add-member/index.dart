import 'dart:io';

import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Stream Chat add member endpoint
///
/// POST /api/stream/add-member - Add members to a channel
///
/// This endpoint adds new members to an existing channel.
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  return _handleAddMember(context);
}

/// POST /api/stream/add-member
///
/// Adds members to an existing channel.
///
/// Request body:
/// ```json
/// {
///   "channelType": "team",
///   "channelId": "class_abc123",
///   "memberIds": ["newUser1", "newUser2"]
/// }
/// ```
///
/// Response:
/// ```json
/// { "success": true }
/// ```
Future<Response> _handleAddMember(RequestContext context) async {
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
    final channelType = body['channelType'] as String? ?? 'team';
    final channelId = body['channelId'] as String?;
    final memberIds = (body['memberIds'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList();

    // Validate required fields
    if (channelId == null || channelId.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'channelId is required'},
        },
      );
    }

    if (memberIds == null || memberIds.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'memberIds is required and cannot be empty'},
        },
      );
    }

    // Get Stream service from provider
    final streamService = context.read<StreamService>();

    if (!streamService.isConfigured) {
      await SentryLogger.error(
        'Stream API not configured',
        context: 'AddMemberRoute',
      );
      return Response.json(
        statusCode: HttpStatus.serviceUnavailable,
        body: {
          'error': {'message': 'Chat service is not configured'},
        },
      );
    }

    // Add members to channel
    await streamService.addChannelMembers(
      channelType: channelType,
      channelId: channelId,
      memberIds: memberIds,
    );

    return Response.json(
      body: {'success': true},
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in POST /api/stream/add-member',
      context: 'AddMemberRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to add members to channel'},
      },
    );
  }
}
