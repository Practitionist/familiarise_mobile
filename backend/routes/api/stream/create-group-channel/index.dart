import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Stream Chat group channel creation endpoint
///
/// POST /api/stream/create-group-channel - Create a group channel
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  return _handleCreateGroupChannel(context);
}

Future<Response> _handleCreateGroupChannel(RequestContext context) async {
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
    final channelId = body['channelId'] as String?;
    final channelName = body['channelName'] as String?;
    final memberIds =
        (body['memberIds'] as List<dynamic>?)?.map((e) => e as String).toList();
    final extraData = body['extraData'] as Map<String, dynamic>?;

    if (channelId == null || channelId.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'channelId is required'},
        },
      );
    }

    if (channelName == null || channelName.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'channelName is required'},
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

    final db = context.read<DatabaseClient>();
    final streamService = context.read<StreamService>();

    final hasAccess = await streamService.verifyChannelAccess(
      db,
      channelId: channelId,
      userId: currentUserId,
      requireHostOrCollaborator: true,
      memberIds: memberIds,
    );

    if (!hasAccess) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {
            'message': 'Forbidden: only the host consultant or an accepted '
                'collaborator can create or update a group channel',
          },
        },
      );
    }

    if (!streamService.isConfigured) {
      await SentryLogger.error(
        'Stream API not configured',
        context: 'CreateGroupChannelRoute',
      );
      return Response.json(
        statusCode: HttpStatus.serviceUnavailable,
        body: {
          'error': {'message': 'Chat service is not configured'},
        },
      );
    }

    final result = await streamService.createGroupChannel(
      channelId: channelId,
      channelName: channelName,
      memberIds: memberIds,
      createdByUserId: currentUserId,
      extraData: extraData,
    );

    return Response.json(
      body: {
        'success': true,
        'channelId': channelId,
        'channelType': 'team',
        'channel': result['channel'],
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in POST /api/stream/create-group-channel',
      context: 'CreateGroupChannelRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to create group channel'},
      },
    );
  }
}
