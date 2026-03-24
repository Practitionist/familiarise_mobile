import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/novu/subscriber_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Notification preferences endpoint
///
/// GET /api/notifications/preferences - Get notification preferences
/// PUT /api/notifications/preferences - Update notification preferences
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _handleGetPreferences(context);
  } else if (method == HttpMethod.put) {
    return _handleUpdatePreferences(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// Default notification preferences returned when none exist in the DB.
Map<String, dynamic> _defaultPreferences(String userId) => {
      'userId': userId,
      'emailEnabled': true,
      'pushEnabled': true,
      'inAppEnabled': true,
      'categories': {
        'appointments': true,
        'payments': true,
        'messages': true,
        'reminders': true,
      },
      'quietHoursEnabled': false,
      'quietHoursStart': '22:00',
      'quietHoursEnd': '07:00',
    };

/// GET /api/notifications/preferences
///
/// Returns the authenticated user's notification preferences.
/// If none exist yet, returns sensible defaults.
Future<Response> _handleGetPreferences(RequestContext context) async {
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

    final query = JsonQueryBuilder()
        .model('NotificationPreference')
        .action(QueryAction.findFirst)
        .where({'userId': userId}).build();
    final result = await db.executor.executeQueryAsSingleMap(query);

    if (result == null) {
      return Response.json(
        body: serializeForJson(_defaultPreferences(userId)),
      );
    }

    return Response.json(
      body: serializeForJson(result),
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/notifications/preferences',
      context: 'NotificationPreferencesRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch notification preferences'}
      },
    );
  }
}

/// PUT /api/notifications/preferences
///
/// Update the authenticated user's notification preferences.
///
/// Request body:
/// ```json
/// {
///   "emailEnabled": true,
///   "pushEnabled": true,
///   "inAppEnabled": true,
///   "categories": {
///     "appointments": true,
///     "payments": true,
///     "messages": true,
///     "reminders": true
///   },
///   "quietHoursEnabled": false,
///   "quietHoursStart": "22:00",
///   "quietHoursEnd": "07:00"
/// }
/// ```
Future<Response> _handleUpdatePreferences(RequestContext context) async {
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

    final data = await context.request.json() as Map<String, dynamic>;
    final db = context.read<DatabaseClient>();

    final nowIso8601 = DateTime.now().toUtc().toIso8601String();

    final fields = <String, dynamic>{
      'userId': userId,
      if (data.containsKey('emailEnabled'))
        'emailEnabled': data['emailEnabled'] as bool,
      if (data.containsKey('pushEnabled'))
        'pushEnabled': data['pushEnabled'] as bool,
      if (data.containsKey('inAppEnabled'))
        'inAppEnabled': data['inAppEnabled'] as bool,
      if (data.containsKey('categories')) 'categories': data['categories'],
      if (data.containsKey('quietHoursEnabled'))
        'quietHoursEnabled': data['quietHoursEnabled'] as bool,
      if (data.containsKey('quietHoursStart'))
        'quietHoursStart': data['quietHoursStart'] as String,
      if (data.containsKey('quietHoursEnd'))
        'quietHoursEnd': data['quietHoursEnd'] as String,
      'updatedAt': nowIso8601,
    };

    final createData = <String, dynamic>{
      ...fields,
      'createdAt': nowIso8601,
    };

    final query = JsonQueryBuilder()
        .model('NotificationPreference')
        .action(QueryAction.upsert)
        .where({'userId': userId}).data({
      'create': createData,
      'update': fields,
    }).build();

    final result = await db.executor.executeQueryAsSingleMap(query);

    // Fire-and-forget: sync preferences to Novu subscriber
    _syncPreferencesToNovu(context, userId, data);

    return Response.json(
      body: serializeForJson(result ?? fields),
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
      'Error in PUT /api/notifications/preferences',
      context: 'NotificationPreferencesRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to update notification preferences'}
      },
    );
  }
}

/// Sync notification preferences to Novu subscriber (fire-and-forget).
///
/// This runs asynchronously and does not block the response. Failures are
/// logged but do not cause an error response to the client.
void _syncPreferencesToNovu(
  RequestContext context,
  String userId,
  Map<String, dynamic> preferences,
) {
  // ignore: unawaited_futures
  Future(() async {
    try {
      final subscriberService = context.read<SubscriberService>();
      // Sync the subscriber profile; Novu handles channel preferences
      // at the workflow level based on subscriber data
      await subscriberService.syncSubscriber(subscriberId: userId);
    } catch (e, stackTrace) {
      await SentryLogger.error(
        'Failed to sync preferences to Novu for user $userId',
        context: 'NotificationPreferencesRoute',
        error: e,
        stackTrace: stackTrace,
      );
    }
  });
}
