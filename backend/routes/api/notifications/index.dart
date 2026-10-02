import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Per-user read notification IDs & mark-all-read watermarks.
final Map<String, Set<String>> _readNotificationIdsByUser = {};
final Map<String, DateTime> _markAllReadWatermarksByUser = {};

/// Notifications list and read-state endpoint
///
/// GET /api/notifications - List in-app notifications for the user
/// PATCH /api/notifications - Mark single or all notifications as read
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _handleGetNotifications(context);
  } else if (method == HttpMethod.patch || method == HttpMethod.post) {
    return _handleMarkRead(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGetNotifications(RequestContext context) async {
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
    final params = context.request.uri.queryParameters;
    final unreadOnly = params['unreadOnly'] == 'true';
    final limit = (int.tryParse(params['limit'] ?? '30') ?? 30).clamp(1, 100);

    final pref = await db.prisma.notificationPreference.findUnique(
      where: NotificationPreferenceWhereUniqueInput(userId: userId),
    );

    if (pref != null && (!pref.allNotifications || !pref.inAppEnabled)) {
      return Response.json(
        body: serializeForJson({
          'notifications': <Map<String, dynamic>>[],
          'unreadCount': 0,
          'totalCount': 0,
        }),
      );
    }

    final items = await _collectUserNotifications(db, userId, pref);
    final filtered = unreadOnly
        ? items.where((item) => item['isRead'] != true).toList()
        : items;
    final unreadCount = items.where((item) => item['isRead'] != true).length;

    return Response.json(
      body: serializeForJson({
        'notifications': filtered.take(limit).toList(),
        'unreadCount': unreadCount,
        'totalCount': items.length,
      }),
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/notifications',
      context: 'NotificationsRoute',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch notifications'},
      },
    );
  }
}

Future<Response> _handleMarkRead(RequestContext context) async {
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

    final body = await context.request.json() as Map<String, dynamic>;
    final markAllRead = body['markAllRead'] == true || body['all'] == true;
    final singleId = (body['id'] ?? body['notificationId']) as String?;
    final multipleIds = body['ids'];

    final readSet = _readNotificationIdsByUser.putIfAbsent(
      userId,
      () => <String>{},
    );

    if (markAllRead) {
      _markAllReadWatermarksByUser[userId] = DateTime.now().toUtc();
    }
    if (singleId != null && singleId.isNotEmpty) {
      readSet.add(singleId);
    }
    if (multipleIds is List) {
      for (final rawId in multipleIds) {
        if (rawId is String && rawId.isNotEmpty) {
          readSet.add(rawId);
        }
      }
    }

    final db = context.read<DatabaseClient>();
    final pref = await db.prisma.notificationPreference.findUnique(
      where: NotificationPreferenceWhereUniqueInput(userId: userId),
    );
    final items = await _collectUserNotifications(db, userId, pref);
    if (markAllRead) {
      for (final item in items) {
        final id = item['id'] as String?;
        if (id != null) {
          readSet.add(id);
        }
      }
    }
    final unreadCount = items
        .where(
          (item) => !readSet.contains(item['id']) && item['isRead'] != true,
        )
        .length;

    return Response.json(
      body: serializeForJson({
        'success': true,
        'unreadCount': markAllRead ? 0 : unreadCount,
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
      'Error in PATCH /api/notifications',
      context: 'NotificationsRoute',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to update notification status'},
      },
    );
  }
}

Future<List<Map<String, dynamic>>> _collectUserNotifications(
  DatabaseClient db,
  String userId,
  NotificationPreference? pref,
) async {
  final readIds = _readNotificationIdsByUser[userId] ?? const <String>{};
  final watermark = _markAllReadWatermarksByUser[userId];
  final items = <Map<String, dynamic>>[];

  bool isRead(String id, DateTime createdAt) {
    if (readIds.contains(id)) return true;
    if (watermark != null && !createdAt.isAfter(watermark)) return true;
    return false;
  }

  // 1. Support ticket updates (when supportUpdates is enabled)
  if (pref == null || pref.supportUpdates) {
    try {
      final tickets = await db.prisma.supportTicket.findMany(
        where: SupportTicketWhereInput(
          userId: StringFilter(equals: userId),
        ),
        orderBy: {'updatedAt': 'desc'},
        take: 10,
      );
      for (final ticket in tickets) {
        final statusText = ticket.status.toJson().replaceAll('_', ' ');
        final id = 'support_${ticket.id}_${ticket.status.toJson()}';
        final ts = ticket.updatedAt.toUtc();
        items.add({
          'id': id,
          'type': 'SUPPORT_UPDATE',
          'category': 'support',
          'title': 'Support Ticket: ${ticket.title}',
          'body': 'Your support ticket status is $statusText.',
          'actionRoute': '/support/${ticket.id}',
          'entityId': ticket.id,
          'isRead': isRead(id, ts),
          'createdAt': ts.toIso8601String(),
        });
      }
    } catch (_) {
      // Non-fatal if support tickets query fails
    }
  }

  // 2. Active platform announcements (when updates is enabled or by default)
  if (pref == null || pref.updates || pref.allNotifications) {
    try {
      final announcements = await db.announcements.getActive();
      for (final a in announcements.take(5)) {
        final rawId = a['id'] as String? ?? 'announcement';
        final id = 'announcement_$rawId';
        final rawDate = a['startDate'] ?? a['createdAt'];
        final ts = rawDate is DateTime
            ? rawDate.toUtc()
            : DateTime.tryParse(rawDate?.toString() ?? '')?.toUtc() ??
                DateTime.now().toUtc();
        items.add({
          'id': id,
          'type': 'ANNOUNCEMENT',
          'category': 'updates',
          'title': (a['title'] as String?) ?? 'Platform Update',
          'body': (a['content'] as String?) ?? '',
          'actionRoute': a['linkUrl'] as String?,
          'entityId': rawId,
          'isRead': isRead(id, ts),
          'createdAt': ts.toIso8601String(),
        });
      }
    } catch (_) {
      // Non-fatal
    }
  }

  // 3. Recent activity log items for this user
  if (pref == null || pref.appointmentReminders) {
    try {
      final logs = await db.prisma.activityLog.findMany(
        where: ActivityLogWhereInput(
          actorId: StringFilter(equals: userId),
        ),
        orderBy: {'createdAt': 'desc'},
        take: 10,
      );
      for (final log in logs) {
        final id = 'activity_${log.id}';
        final ts = log.createdAt.toUtc();
        final refId = log.consultationId ??
            log.subscriptionId ??
            log.webinarId ??
            log.classId ??
            log.trialSessionId ??
            log.id;
        items.add({
          'id': id,
          'type': log.activityType.toJson(),
          'category': 'appointments',
          'title': _titleForActivity(log.activityType.toJson()),
          'body': log.description,
          'actionRoute': '/schedule',
          'entityId': refId,
          'isRead': isRead(id, ts),
          'createdAt': ts.toIso8601String(),
        });
      }
    } catch (_) {
      // Non-fatal
    }
  }

  items.sort((a, b) {
    final da = DateTime.tryParse(a['createdAt'] as String? ?? '') ??
        DateTime.fromMillisecondsSinceEpoch(0);
    final dbTime = DateTime.tryParse(b['createdAt'] as String? ?? '') ??
        DateTime.fromMillisecondsSinceEpoch(0);
    return dbTime.compareTo(da);
  });

  return items;
}

String _titleForActivity(String activityType) {
  switch (activityType) {
    case 'APPOINTMENT_BOOKED':
    case 'CONSULTATION_REQUESTED':
      return 'Booking Confirmed';
    case 'APPOINTMENT_CANCELLED':
      return 'Appointment Cancelled';
    case 'APPOINTMENT_RESCHEDULED':
      return 'Appointment Rescheduled';
    case 'MEETING_STARTED':
      return 'Session Started';
    case 'MEETING_ENDED':
      return 'Session Completed';
    default:
      return activityType
          .split('_')
          .map(
            (w) => w.isEmpty
                ? ''
                : '${w[0].toUpperCase()}${w.substring(1).toLowerCase()}',
          )
          .join(' ');
  }
}
