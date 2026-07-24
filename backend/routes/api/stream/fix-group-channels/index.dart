import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

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
    // (typed delegate + AppointmentInclude; relation names follow the
    // re-synced schema: classRef / slotsOfAppointment).
    final appointments = await db.prisma.appointment.findMany(
      where: const AppointmentWhereInput(
        OR: [
          AppointmentWhereInput(
            appointmentType:
                AppointmentsTypeFilter(equals: AppointmentsType.webinar),
          ),
          AppointmentWhereInput(
            appointmentType:
                AppointmentsTypeFilter(equals: AppointmentsType.classValue),
          ),
        ],
      ),
      include: const AppointmentInclude(
        webinar: WebinarInclude(
          webinarPlan: WebinarPlanInclude(
            consultantProfile: ConsultantProfileInclude(
              user: UserInclude(),
            ),
          ),
        ),
        classRef: ClassModelInclude(
          classPlan: ClassPlanInclude(
            consultantProfile: ConsultantProfileInclude(
              user: UserInclude(),
            ),
          ),
        ),
        slotsOfAppointment: SlotOfAppointmentInclude(
          user: UserInclude(),
        ),
      ),
    );

    SentryLogger.info(
      'Found ${appointments.length} webinar/class appointments to process',
      context: 'FixGroupChannelsRoute',
    );

    // Pre-pass: batch-upsert every UNIQUE user once (instructors repeat
    // across hundreds of appointments). Previously each appointment upserted
    // its 2 users twice (4 UpdateUsers calls each) — ~1,700 calls per run,
    // which tripped Stream's 300 UpdateUsers/min rate limit. Now it's a
    // handful of batched calls for the whole migration.
    final uniqueUsers = <String, Map<String, dynamic>>{};
    for (final appointment in appointments) {
      final instructor = appointment.webinar?.webinarPlan?.consultantProfile
              ?.user ??
          appointment.classRef?.classPlan?.consultantProfile?.user;
      if (instructor != null) {
        uniqueUsers[instructor.id] = {
          'id': instructor.id,
          if (instructor.name != null) 'name': instructor.name,
          if (instructor.image != null) 'image': instructor.image,
        };
      }
      final slots = appointment.slotsOfAppointment;
      if (slots != null && slots.isNotEmpty) {
        final users = slots.first.user;
        if (users != null && users.isNotEmpty) {
          final participant = users.first;
          uniqueUsers[participant.id] = {
            'id': participant.id,
            if (participant.name != null) 'name': participant.name,
            if (participant.image != null) 'image': participant.image,
          };
        }
      }
    }
    await streamService.upsertUsers(uniqueUsers.values.toList());
    SentryLogger.info(
      'Pre-upserted ${uniqueUsers.length} unique users in batch',
      context: 'FixGroupChannelsRoute',
    );

    for (final appointment in appointments) {
      final webinar = appointment.webinar;
      final classRecord = appointment.classRef;

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
        final webinarId = appointment.webinarId!;
        channelId = 'webinar_$webinarId';
        programType = 'WEBINAR';
        programId = webinarId;

        final plan = webinar.webinarPlan;
        channelName = plan?.title ?? 'Webinar';
        final user = plan?.consultantProfile?.user;
        instructorUserId = user?.id;
        instructorName = user?.name;
        instructorImage = user?.image;
      } else if (classRecord != null) {
        final classId = appointment.classId!;
        channelId = 'class_$classId';
        programType = 'CLASS';
        programId = classId;

        final plan = classRecord.classPlan;
        channelName = plan?.title ?? 'Class';
        final user = plan?.consultantProfile?.user;
        instructorUserId = user?.id;
        instructorName = user?.name;
        instructorImage = user?.image;
      }

      // Get participant from slots
      final slots = appointment.slotsOfAppointment;
      if (slots != null && slots.isNotEmpty) {
        final users = slots.first.user;
        if (users != null && users.isNotEmpty) {
          final participant = users.first;
          participantUserId = participant.id;
          participantName = participant.name;
          participantImage = participant.image;
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
          // All unique users were batch-upserted in the pre-pass above.
          ensureUsers: false,
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
