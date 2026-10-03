import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Stream Chat set member role endpoint
///
/// POST /api/stream/set-member-role - Update a member's role in a channel
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  return _handleSetMemberRole(context);
}

Future<Response> _handleSetMemberRole(RequestContext context) async {
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
    final userId = body['userId'] as String?;
    final role = body['role'] as String?;

    if (channelId == null || channelId.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'channelId is required'},
        },
      );
    }

    if (userId == null || userId.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'userId is required'},
        },
      );
    }

    if (role == null || role.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'role is required'},
        },
      );
    }

    final validRoles = ['owner', 'channel_moderator', 'channel_member'];
    if (!validRoles.contains(role)) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Invalid role. Must be one of: ${validRoles.join(", ")}',
          },
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
                'collaborator can update member roles',
          },
        },
      );
    }

    if (!streamService.isConfigured) {
      await SentryLogger.error(
        'Stream API not configured',
        context: 'SetMemberRoleRoute',
      );
      return Response.json(
        statusCode: HttpStatus.serviceUnavailable,
        body: {
          'error': {'message': 'Chat service is not configured'},
        },
      );
    }

    await streamService.updateMemberRole(
      channelType: channelType,
      channelId: channelId,
      userId: userId,
      role: role,
    );

    return Response.json(
      body: {'success': true},
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in POST /api/stream/set-member-role',
      context: 'SetMemberRoleRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to update member role'},
      },
    );
  }
}
