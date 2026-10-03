import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Notification preferences endpoint
///
/// GET /api/notifications/preferences - Get user's notification preferences
/// PUT /api/notifications/preferences - Update user's notification preferences
/// PATCH /api/notifications/preferences - Partially update preferences
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _handleGetPreferences(context);
  } else if (method == HttpMethod.put || method == HttpMethod.patch) {
    return _handleUpdatePreferences(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGetPreferences(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    final db = context.read<DatabaseClient>();
    var pref = await db.prisma.notificationPreference.findUnique(
      where: NotificationPreferenceWhereUniqueInput(userId: userId),
    );

    pref ??= await db.prisma.notificationPreference.create(
      data: CreateNotificationPreferenceInput(userId: userId),
    );

    final json = pref.toJson();
    return Response.json(
      body: serializeForJson({
        ...json,
        'data': json,
      }),
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
        'error': {'message': 'Failed to fetch notification preferences'},
      },
    );
  }
}

Future<Response> _handleUpdatePreferences(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    final rawBody = await context.request.json();
    if (rawBody is! Map<String, dynamic>) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Request body must be a JSON object'},
        },
      );
    }
    final body = rawBody;
    final db = context.read<DatabaseClient>();

    bool? readBool(String key) {
      final v = body[key];
      return v is bool ? v : null;
    }

    String? readString(String key) {
      final v = body[key];
      return v is String ? v : null;
    }

    final updated = await db.prisma.notificationPreference.upsert(
      where: NotificationPreferenceWhereUniqueInput(userId: userId),
      create: CreateNotificationPreferenceInput(
        userId: userId,
        allNotifications: readBool('allNotifications') ?? true,
        inAppEnabled: readBool('inAppEnabled') ?? true,
        emailEnabled: readBool('emailEnabled') ?? true,
        pushEnabled: readBool('pushEnabled') ?? false,
        mentions: readBool('mentions') ?? false,
        directMessages: readBool('directMessages') ?? false,
        updates: readBool('updates') ?? false,
        appointmentReminders: readBool('appointmentReminders') ?? true,
        paymentNotifications: readBool('paymentNotifications') ?? true,
        supportUpdates: readBool('supportUpdates') ?? true,
        feedbackAlerts: readBool('feedbackAlerts') ?? true,
        trialNotifications: readBool('trialNotifications') ?? true,
        subscriptionAlerts: readBool('subscriptionAlerts') ?? true,
        marketingEmails: readBool('marketingEmails') ?? false,
        quietHoursEnabled: readBool('quietHoursEnabled') ?? false,
        quietHoursStart: readString('quietHoursStart'),
        quietHoursEnd: readString('quietHoursEnd'),
        quietHoursTimezone: readString('quietHoursTimezone'),
      ),
      update: UpdateNotificationPreferenceInput(
        allNotifications: readBool('allNotifications'),
        inAppEnabled: readBool('inAppEnabled'),
        emailEnabled: readBool('emailEnabled'),
        pushEnabled: readBool('pushEnabled'),
        mentions: readBool('mentions'),
        directMessages: readBool('directMessages'),
        updates: readBool('updates'),
        appointmentReminders: readBool('appointmentReminders'),
        paymentNotifications: readBool('paymentNotifications'),
        supportUpdates: readBool('supportUpdates'),
        feedbackAlerts: readBool('feedbackAlerts'),
        trialNotifications: readBool('trialNotifications'),
        subscriptionAlerts: readBool('subscriptionAlerts'),
        marketingEmails: readBool('marketingEmails'),
        quietHoursEnabled: readBool('quietHoursEnabled'),
        quietHoursStart: readString('quietHoursStart'),
        quietHoursEnd: readString('quietHoursEnd'),
        quietHoursTimezone: readString('quietHoursTimezone'),
      ),
    );

    final json = updated.toJson();
    return Response.json(
      body: serializeForJson({
        ...json,
        'data': json,
      }),
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
        'error': {'message': 'Failed to update notification preferences'},
      },
    );
  }
}
