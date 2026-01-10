import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// POST /api/stream/fix-group-channels
///
/// Migration endpoint to fix existing group channels with 0 members.
/// Queries all webinar/class appointments and creates/updates their channels.
///
/// This creates the channel if it doesn't exist, then adds members.
/// Uses rate limiting (500ms delay) to avoid hitting Stream API limits.
///
/// This is an idempotent operation - safe to run multiple times.
///
/// Response:
/// ```json
/// {
///   "fixed": ["webinar_abc123", "class_xyz789"],
///   "failed": [{"channelId": "...", "error": "..."}],
///   "skipped": ["webinar_def456"],
///   "summary": { "total": 10, "fixed": 8, "failed": 1, "skipped": 1 }
/// }
/// ```
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }
  return _handleFixChannels(context);
}

Future<Response> _handleFixChannels(RequestContext context) async {
  final db = context.read<DatabaseClient>();
  final streamService = context.read<StreamService>();

  if (!streamService.isConfigured) {
    return Response.json(
      statusCode: HttpStatus.serviceUnavailable,
      body: {
        'error': {'message': 'Stream service not configured'},
      },
    );
  }

  final fixed = <String>[];
  final failed = <Map<String, String>>[];
  final skipped = <String>[];

  try {
    SentryLogger.info(
      'Starting group channel migration',
      context: 'FixGroupChannelsRoute',
    );

    // Query all webinar/class appointments with related data
    final query = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findMany)
        .where({
          'OR': [
            {'appointmentType': 'WEBINAR'},
            {'appointmentType': 'CLASS'},
          ],
        })
        .include({
          'webinar': {
            'include': {
              'webinarPlan': {
                'include': {
                  'consultantProfile': {
                    'include': {'user': true},
                  },
                },
              },
            },
          },
          'class': {
            'include': {
              'classPlan': {
                'include': {
                  'consultantProfile': {
                    'include': {'user': true},
                  },
                },
              },
            },
          },
          'slots': {
            'include': {'user': true},
          },
        })
        .build();

    final appointments = await db.executor.executeQueryAsMaps(query);

    SentryLogger.info(
      'Found ${appointments.length} webinar/class appointments to process',
      context: 'FixGroupChannelsRoute',
    );

    for (final appointment in appointments) {
      final webinar = appointment['webinar'] as Map<String, dynamic>?;
      final classRecord = appointment['class'] as Map<String, dynamic>?;

      String? channelId;
      String? channelName;
      String? programType;
      String? programId;
      String? instructorUserId;
      String? instructorName;
      String? instructorImage;
      String? participantUserId;
      String? participantName;
      String? participantImage;

      if (webinar != null) {
        final webinarId = appointment['webinarId'] as String;
        channelId = 'webinar_$webinarId';
        programType = 'WEBINAR';
        programId = webinarId;

        final plan = webinar['webinarPlan'] as Map<String, dynamic>?;
        channelName = plan?['title'] as String? ?? 'Webinar';
        final profile = plan?['consultantProfile'] as Map<String, dynamic>?;
        final user = profile?['user'] as Map<String, dynamic>?;
        instructorUserId = user?['id'] as String?;
        instructorName = user?['name'] as String?;
        instructorImage = user?['image'] as String?;
      } else if (classRecord != null) {
        final classId = appointment['classId'] as String;
        channelId = 'class_$classId';
        programType = 'CLASS';
        programId = classId;

        final plan = classRecord['classPlan'] as Map<String, dynamic>?;
        channelName = plan?['title'] as String? ?? 'Class';
        final profile = plan?['consultantProfile'] as Map<String, dynamic>?;
        final user = profile?['user'] as Map<String, dynamic>?;
        instructorUserId = user?['id'] as String?;
        instructorName = user?['name'] as String?;
        instructorImage = user?['image'] as String?;
      }

      // Get participant from slots
      final slots = appointment['slots'] as List<dynamic>?;
      if (slots != null && slots.isNotEmpty) {
        final firstSlot = slots.first as Map<String, dynamic>;
        final users = firstSlot['user'] as List<dynamic>?;
        if (users != null && users.isNotEmpty) {
          final participant = users.first as Map<String, dynamic>;
          participantUserId = participant['id'] as String?;
          participantName = participant['name'] as String?;
          participantImage = participant['image'] as String?;
        }
      }

      if (channelId == null ||
          instructorUserId == null ||
          participantUserId == null ||
          programType == null ||
          programId == null) {
        if (channelId != null) {
          skipped.add(channelId);
          SentryLogger.debug(
            'Skipping channel $channelId: missing required data',
            context: 'FixGroupChannelsRoute',
          );
        }
        continue;
      }

      try {
        // Use getOrCreateGroupChannelAndAddMember which:
        // 1. Creates the channel if it doesn't exist
        // 2. Adds both instructor and participant as members
        await streamService.getOrCreateGroupChannelAndAddMember(
          channelId: channelId,
          channelName: channelName ?? 'Group Chat',
          instructorUserId: instructorUserId,
          participantUserId: participantUserId,
          programType: programType,
          programId: programId,
          instructorName: instructorName,
          instructorImage: instructorImage,
          participantName: participantName,
          participantImage: participantImage,
        );
        fixed.add(channelId);

        SentryLogger.debug(
          'Fixed channel $channelId: '
          'added $instructorUserId, $participantUserId',
          context: 'FixGroupChannelsRoute',
        );

        // Rate limiting: wait 500ms between requests to avoid 429 errors
        await Future<void>.delayed(const Duration(milliseconds: 500));
      } catch (e) {
        failed.add({'channelId': channelId, 'error': e.toString()});
        await SentryLogger.warning(
          'Failed to fix channel $channelId: $e',
          context: 'FixGroupChannelsRoute',
        );
      }
    }

    SentryLogger.info(
      'Migration complete: fixed=${fixed.length}, '
      'failed=${failed.length}, skipped=${skipped.length}',
      context: 'FixGroupChannelsRoute',
    );

    return Response.json(
      body: {
        'fixed': fixed,
        'failed': failed,
        'skipped': skipped,
        'summary': {
          'total': appointments.length,
          'fixed': fixed.length,
          'failed': failed.length,
          'skipped': skipped.length,
        },
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Migration failed',
      context: 'FixGroupChannelsRoute',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Migration failed: $e'},
      },
    );
  }
}
