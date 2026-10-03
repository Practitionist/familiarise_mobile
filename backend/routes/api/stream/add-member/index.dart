import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Stream Chat add member endpoint
///
/// POST /api/stream/add-member - Add members to a channel
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  return _handleAddMember(context);
}

Future<Response> _handleAddMember(RequestContext context) async {
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
    final memberIds =
        (body['memberIds'] as List<dynamic>?)?.map((e) => e as String).toList();

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

    final db = context.read<DatabaseClient>();
    final streamService = context.read<StreamService>();

    final hasAccess = await streamService.verifyChannelAccess(
      db,
      channelId: channelId,
      userId: currentUserId,
      memberIds: memberIds,
    );

    if (!hasAccess) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {
            'message': 'Forbidden: you are not a participant, host '
                'consultant, or accepted collaborator for this channel',
          },
        },
      );
    }

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
