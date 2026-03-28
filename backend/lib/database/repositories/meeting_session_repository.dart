import 'package:backend/generated/index.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

import 'base_repository.dart';

/// Repository for MeetingSession database operations using Prisma ORM
///
/// Handles creation, retrieval, and management of meeting sessions
/// for video consultations via Stream Video SDK.
class MeetingSessionRepository extends BaseRepository {
  MeetingSessionRepository(super.executor, this._prisma);
  final PrismaClient _prisma;

  static const _uuid = Uuid();

  /// Check if user has access to an appointment
  ///
  /// Returns true if the user is a participant in any of the appointment's slots.
  /// Uses ORM with relation filter to check M2M relationship.
  Future<bool> userHasAccessToAppointment({
    required String appointmentId,
    required String userId,
  }) async {
    // Use relation filter to check if any slot has this user
    final countQuery = JsonQueryBuilder()
        .model('SlotOfAppointment')
        .action(QueryAction.count)
        .where({
      'appointmentId': appointmentId,
      'user': FilterOperators.some({'id': userId}),
    }).build();
    final count = await executeCount(countQuery);
    return count > 0;
  }

  /// Get meeting session by appointment ID
  ///
  /// Returns the meeting session if one exists for any slot of the appointment.
  /// Includes the slot information for scheduled time data.
  Future<Map<String, dynamic>?> getMeetingByAppointmentId(
    String appointmentId,
  ) async {
    // Step 1: Get slot IDs for this appointment, ordered by start time
    final slots = await _prisma.slotOfAppointment.findManyRaw(
      where: {'appointmentId': appointmentId},
      selectFields: ['id'],
      orderBy: {'startsAt': 'asc'},
    );
    if (slots.isEmpty) return null;

    final slotIds = slots.map((s) => s['id'] as String).toList();

    // Step 2: Get meeting session for any of these slots
    return _prisma.meetingSession.findFirstRaw(
      where: {'slotOfAppointmentId': FilterOperators.in_(slotIds)},
      include: {'slotOfAppointment': true},
    );
  }

  /// Get meeting session with detailed information for the API response
  ///
  /// Returns meeting info including scheduled time, consultant and consultee details.
  /// Uses multi-step queries to gather all related data.
  Future<Map<String, dynamic>?> getMeetingDetailsForAppointment(
    String appointmentId,
  ) async {
    // Step 1: Get meeting with slot
    final meeting = await getMeetingByAppointmentId(appointmentId);
    if (meeting == null) return null;

    final slotId = meeting['slotOfAppointmentId'] as String;

    // Step 2: Get slot with users (participants)
    final slot = await _prisma.slotOfAppointment.findFirstRaw(
      where: {'id': slotId},
      include: {
        'user': {
          'select': {'id': true, 'name': true, 'image': true, 'role': true},
        },
      },
    );

    // Step 3: Extract consultant and consultee from users
    final users = slot?['user'] as List<dynamic>? ?? [];
    final consultant = users.cast<Map<String, dynamic>>().firstWhere(
          (u) => u['role'] == 'CONSULTANT',
          orElse: () => <String, dynamic>{},
        );
    final consultee = users.cast<Map<String, dynamic>>().firstWhere(
          (u) => u['role'] == 'CONSULTEE',
          orElse: () => <String, dynamic>{},
        );

    return {
      'id': meeting['id'],
      'streamCallId': meeting['streamCallId'],
      'passcode': meeting['passcode'],
      'createdAt': meeting['createdAt'],
      'slotId': slotId,
      'scheduledAt': slot?['startsAt'],
      'endsAt': slot?['endsAt'],
      'appointmentId': appointmentId,
      'consultantName': consultant['name'],
      'consultantImage': consultant['image'],
      'consulteeImage': consultee['image'],
    };
  }

  /// Get or create a meeting session for an appointment
  ///
  /// If a meeting session already exists, returns it.
  /// Otherwise, creates a new meeting session with a unique Stream call ID.
  Future<Map<String, dynamic>> getOrCreateMeetingSession({
    required String appointmentId,
  }) async {
    // Check if meeting already exists
    final existing = await getMeetingByAppointmentId(appointmentId);
    if (existing != null) return existing;

    // Get first slot for this appointment (ordered by start time)
    final slot = await _prisma.slotOfAppointment.findFirstRaw(
      where: {'appointmentId': appointmentId},
      orderBy: {'startsAt': 'asc'},
    );

    if (slot == null) {
      throw StateError('No slots found for appointment $appointmentId');
    }

    final slotId = slot['id'] as String;
    final meetingId = _uuid.v4().replaceAll('-', '');
    final streamCallId = 'meeting_${_uuid.v4().replaceAll('-', '')}';
    final now = nowIso8601;

    // Create meeting session using ORM
    final createQuery = JsonQueryBuilder()
        .model('MeetingSession')
        .action(QueryAction.create)
        .data({
      'id': meetingId,
      'streamCallId': streamCallId,
      'platform': 'STREAM',
      'slotOfAppointmentId': slotId,
      'createdAt': now,
      'updatedAt': now,
    }).build();
    await executeMutation(createQuery);

    return (await getMeetingByAppointmentId(appointmentId))!;
  }

  /// Update meeting session status
  ///
  /// Note: The current schema doesn't have a status field on MeetingSession.
  /// This could be added via a migration if needed.
  /// For now, meeting state is tracked via the SlotOfAppointment or Appointment.
  Future<void> updateMeetingStatus({
    required String meetingId,
    required String status,
  }) async {
    // Placeholder for future implementation
    // Could update the associated appointment status instead
  }

  /// Get meeting session by Stream call ID
  ///
  /// Useful for looking up meeting details when only the Stream call ID is known.
  Future<Map<String, dynamic>?> getMeetingByStreamCallId(
    String streamCallId,
  ) async {
    return _prisma.meetingSession.findFirstRaw(
      where: {'streamCallId': streamCallId},
      include: {'slotOfAppointment': true},
    );
  }
}
