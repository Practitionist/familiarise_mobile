import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/novu/subscriber_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Subscriber sync endpoint
///
/// POST /api/notifications/subscriber/sync - Force-sync user profile to Novu
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.post) {
    return _handleSyncSubscriber(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// POST /api/notifications/subscriber/sync
///
/// Force-sync the authenticated user's profile to Novu as a subscriber.
/// This ensures the Novu subscriber record matches the user's current data
/// (name, email, avatar, etc.).
///
/// Response:
/// ```json
/// { "success": true }
/// ```
Future<Response> _handleSyncSubscriber(RequestContext context) async {
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

    final db = context.read<DatabaseClient>();

    // Look up the user from the database
    final userQuery = JsonQueryBuilder()
        .model('User')
        .action(QueryAction.findUnique)
        .where({'id': userId}).build();
    final user = await db.executor.executeQueryAsSingleMap(userQuery);

    if (user == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'User not found'}
        },
      );
    }

    final subscriberService = context.read<SubscriberService>();

    await subscriberService.syncSubscriber(
      subscriberId: userId,
      email: user['email'] as String?,
      firstName: user['name'] as String?,
      avatar: user['image'] as String?,
    );

    return Response.json(
      body: {'success': true},
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in POST /api/notifications/subscriber/sync',
      context: 'NotificationsSubscriberSyncRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to sync subscriber'}
      },
    );
  }
}
