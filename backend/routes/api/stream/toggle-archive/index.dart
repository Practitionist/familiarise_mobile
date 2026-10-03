import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Stream Chat toggle archive endpoint
///
/// POST /api/stream/toggle-archive - Archive or unarchive a channel
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  return _handleToggleArchive(context);
}

Future<Response> _handleToggleArchive(RequestContext context) async {
  try {
    final currentUserId = getUserIdFromToken(context);
    if (currentUserId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final channelType = body['channelType'] as String? ?? 'team';
    final channelId = body['channelId'] as String?;
    final archived = body['archived'] as bool?;

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

    final db = context.read<DatabaseClient>();
    final streamService = context.read<StreamService>();

    final hasAccess = await streamService.verifyChannelAccess(
      db,
      channelId: channelId,
      userId: currentUserId,
      requireHostOrCollaborator: true,
    );

    if (!hasAccess) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {
            'message': 'Forbidden: only the host consultant or an accepted '
                'collaborator can archive/freeze this channel',
          },
        },
      );
    }

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

    await streamService.setChannelFrozen(
      channelType: channelType,
      channelId: channelId,
      frozen: archived,
    );

    final nowIso = DateTime.now().toUtc().toIso8601String();
    await streamService.updateChannelData(
      channelType: channelType,
      channelId: channelId,
      setData: {
        'isArchived': archived,
        if (archived) 'archivedAt': nowIso,
        if (archived) 'chatFrozenAt': nowIso,
      },
      unsetData: archived ? null : ['archivedAt', 'chatFrozenAt'],
    );

    return Response.json(
      body: {
        'success': true,
        'archived': archived,
        if (archived) 'chatFrozenAt': nowIso,
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
