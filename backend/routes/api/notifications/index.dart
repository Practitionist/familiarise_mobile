import 'dart:convert';
import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

const List<ActivityType> _appointmentActivityTypes = [
  ActivityType.consultationBooked,
  ActivityType.appointmentRescheduled,
  ActivityType.consultationCompleted,
  ActivityType.consultationCancelled,
  ActivityType.subscriptionRequested,
  ActivityType.subscriptionApproved,
  ActivityType.subscriptionCancelled,
  ActivityType.webinarRegistered,
  ActivityType.classEnrolled,
  ActivityType.trialRequested,
  ActivityType.trialScheduled,
  ActivityType.trialCompleted,
];

class _NotificationReadState {
  _NotificationReadState({
    required this.readIds,
    required this.watermark,
  });

  final Set<String> readIds;
  DateTime? watermark;
}

String _readStateIdentifier(String userId) => 'notification-read-state:$userId';

Future<_NotificationReadState> _loadReadState(
  DatabaseClient db,
  String userId,
) async {
  try {
    final record = await db.prisma.verification.findFirst(
      where: VerificationWhereInput(
        identifier: StringFilter(equals: _readStateIdentifier(userId)),
      ),
    );
    if (record == null || record.value.isEmpty) {
      return _NotificationReadState(readIds: <String>{}, watermark: null);
    }
    final decoded = jsonDecode(record.value);
    if (decoded is! Map<String, dynamic>) {
      return _NotificationReadState(readIds: <String>{}, watermark: null);
    }
    final rawIds = decoded['readIds'];
    final readIds = <String>{
      if (rawIds is List)
        for (final item in rawIds)
          if (item is String && item.isNotEmpty) item,
    };
    final rawWatermark = decoded['markAllReadAt'];
    final watermark = rawWatermark is String
        ? DateTime.tryParse(rawWatermark)?.toUtc()
        : null;
    return _NotificationReadState(readIds: readIds, watermark: watermark);
  } catch (_) {
    return _NotificationReadState(readIds: <String>{}, watermark: null);
  }
}

Future<void> _saveReadState(
  DatabaseClient db,
  String userId,
  _NotificationReadState state,
) async {
  final identifier = _readStateIdentifier(userId);
  final payload = jsonEncode({
    'readIds': state.readIds.toList(),
    'markAllReadAt': state.watermark?.toIso8601String(),
  });
  await db.prisma.verification.deleteMany(
    where: VerificationWhereInput(
      identifier: StringFilter(equals: identifier),
    ),
  );
  await db.prisma.verification.create(
    data: CreateVerificationInput(
      identifier: identifier,
      value: payload,
      expiresAt: DateTime.utc(2099, 12, 31),
    ),
  );
}

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
    final rawSingleId = body['id'] ?? body['notificationId'];
    if (rawSingleId != null && rawSingleId is! String) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'id/notificationId must be a string'},
        },
      );
    }
    final multipleIds = body['ids'];
    if (multipleIds != null &&
        (multipleIds is! List || multipleIds.any((id) => id is! String))) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'ids must be a list of strings'},
        },
      );
    }

    final markAllRead = body['markAllRead'] == true || body['all'] == true;
    final singleId = rawSingleId as String?;

    final db = context.read<DatabaseClient>();
    final readState = await _loadReadState(db, userId);
    final readSet = readState.readIds;

    if (markAllRead) {
      readState.watermark = DateTime.now().toUtc();
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

    final pref = await db.prisma.notificationPreference.findUnique(
      where: NotificationPreferenceWhereUniqueInput(userId: userId),
    );
    final items = await _collectUserNotifications(
      db,
      userId,
      pref,
      readState: readState,
    );
    if (markAllRead) {
      for (final item in items) {
        final id = item['id'] as String?;
        if (id != null) {
          readSet.add(id);
        }
      }
    }
    await _saveReadState(db, userId, readState);

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
  NotificationPreference? pref, {
  _NotificationReadState? readState,
}) async {
  final resolvedReadState = readState ?? await _loadReadState(db, userId);
  final readIds = resolvedReadState.readIds;
  final watermark = resolvedReadState.watermark;
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
  if (pref == null || pref.updates) {
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

  // 3. Recent appointment activity log items addressed to this user
  if (pref == null || pref.appointmentReminders) {
    try {
      final user = await db.users.findById(userId);
      final consultantProfileId = user?['consultantProfileId'] as String?;
      final consulteeProfileId = user?['consulteeProfileId'] as String?;

      final recipientFilters = <ActivityLogWhereInput>[];
      if (consultantProfileId != null && consultantProfileId.isNotEmpty) {
        recipientFilters.add(
          ActivityLogWhereInput(
            consultantProfileId: StringFilter(equals: consultantProfileId),
          ),
        );
      }
      if (consulteeProfileId != null && consulteeProfileId.isNotEmpty) {
        final consultations = await db.prisma.consultation.findMany(
          where: ConsultationWhereInput(
            requestedById: StringFilter(equals: consulteeProfileId),
          ),
        );
        final consultationIds = <String>[
          for (final c in consultations) c.id,
        ];
        if (consultationIds.isNotEmpty) {
          recipientFilters.add(
            ActivityLogWhereInput(
              consultationId: StringFilter(in_: consultationIds),
            ),
          );
        }

        final subscriptions = await db.prisma.subscription.findMany(
          where: SubscriptionWhereInput(
            requestedById: StringFilter(equals: consulteeProfileId),
          ),
        );
        final subscriptionIds = <String>[
          for (final s in subscriptions) s.id,
        ];
        if (subscriptionIds.isNotEmpty) {
          recipientFilters.add(
            ActivityLogWhereInput(
              subscriptionId: StringFilter(in_: subscriptionIds),
            ),
          );
        }

        final trialSessions = await db.prisma.trialSession.findMany(
          where: TrialSessionWhereInput(
            consulteeProfileId: StringFilter(equals: consulteeProfileId),
          ),
        );
        final trialIds = <String>[
          for (final t in trialSessions) t.id,
        ];
        if (trialIds.isNotEmpty) {
          recipientFilters.add(
            ActivityLogWhereInput(
              trialSessionId: StringFilter(in_: trialIds),
            ),
          );
        }
      }

      if (recipientFilters.isNotEmpty) {
        final logs = await db.prisma.activityLog.findMany(
          where: ActivityLogWhereInput(
            actorId: StringFilter(not: userId),
            activityType: const ActivityTypeFilter(
              in_: _appointmentActivityTypes,
            ),
            OR: recipientFilters,
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
    case 'CONSULTATION_BOOKED':
    case 'SUBSCRIPTION_REQUESTED':
    case 'SUBSCRIPTION_APPROVED':
    case 'WEBINAR_REGISTERED':
    case 'CLASS_ENROLLED':
    case 'TRIAL_REQUESTED':
    case 'TRIAL_SCHEDULED':
      return 'Booking Confirmed';
    case 'APPOINTMENT_CANCELLED':
    case 'CONSULTATION_CANCELLED':
    case 'SUBSCRIPTION_CANCELLED':
      return 'Appointment Cancelled';
    case 'APPOINTMENT_RESCHEDULED':
      return 'Appointment Rescheduled';
    case 'MEETING_STARTED':
      return 'Session Started';
    case 'MEETING_ENDED':
    case 'CONSULTATION_COMPLETED':
    case 'TRIAL_COMPLETED':
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
