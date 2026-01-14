import 'dart:io';

import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Stream Chat toggle archive endpoint
///
/// POST /api/stream/toggle-archive - Archive or unarchive a channel
///
/// This endpoint freezes/unfreezes a channel to archive it.
/// Frozen channels don't allow new messages from regular members.
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  return _handleToggleArchive(context);
}

/// POST /api/stream/toggle-archive
///
/// Archives or unarchives a channel by freezing it.
///
/// Request body:
/// ```json
/// {
///   "channelType": "team",
///   "channelId": "class_abc123",
///   "archived": true
/// }
/// ```
///
/// Response:
/// ```json
/// {
///   "success": true,
///   "archived": true
/// }
/// ```
Future<Response> _handleToggleArchive(RequestContext context) async {
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
    final archived = body['archived'] as bool?;

    // Validate required fields
    if (channelId == null || channelId.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'channelId is required'},
        },
      );
    }

    if (archived == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'archived is required (true or false)'},
        },
      );
    }

    // Get Stream service from provider
    final streamService = context.read<StreamService>();

    if (!streamService.isConfigured) {
      await SentryLogger.error(
        'Stream API not configured',
        context: 'ToggleArchiveRoute',
      );
      return Response.json(
        statusCode: HttpStatus.serviceUnavailable,
        body: {
          'error': {'message': 'Chat service is not configured'},
        },
      );
    }

    // Freeze/unfreeze channel and update archived metadata
    await streamService.setChannelFrozen(
      channelType: channelType,
      channelId: channelId,
      frozen: archived,
    );

    // Also update the isArchived flag in channel extra data
    await streamService.updateChannelData(
      channelType: channelType,
      channelId: channelId,
      setData: {
        'isArchived': archived,
        if (archived) 'archivedAt': DateTime.now().toUtc().toIso8601String(),
      },
      unsetData: archived ? null : ['archivedAt'],
    );

    return Response.json(
      body: {
        'success': true,
        'archived': archived,
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in POST /api/stream/toggle-archive',
      context: 'ToggleArchiveRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to toggle archive status'},
      },
    );
  }
}
