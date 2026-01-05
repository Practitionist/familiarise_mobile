import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

import 'base_repository.dart';

/// Repository for MeetingSession database operations
class MeetingSessionRepository extends BaseRepository {
  MeetingSessionRepository(super.executor);

  static const _uuid = Uuid();

  /// Check if user has access to an appointment
  ///
  /// Returns true if the user is a participant in the appointment's slots.
  Future<bool> userHasAccessToAppointment({
    required String appointmentId,
    required String userId,
  }) async {
    final results = await executeRaw('''
      SELECT 1 FROM "Appointment" a
      JOIN "SlotOfAppointment" soa ON soa."appointmentId" = a.id
      JOIN "_SlotOfAppointmentToUser" sotau ON sotau."A" = soa.id
      WHERE a.id = \$1 AND sotau."B" = \$2
      LIMIT 1
    ''', [appointmentId, userId]);

    return results.isNotEmpty;
  }

  /// Get meeting session by appointment ID
  ///
  /// Returns the meeting session if one exists for any slot of the appointment.
  Future<Map<String, dynamic>?> getMeetingByAppointmentId(
    String appointmentId,
  ) async {
    final results = await executeRaw('''
      SELECT ms.*, soa."startsAt", soa."endsAt"
      FROM "MeetingSession" ms
      JOIN "SlotOfAppointment" soa ON soa.id = ms."slotOfAppointmentId"
      WHERE soa."appointmentId" = \$1
      ORDER BY soa."startsAt" ASC
      LIMIT 1
    ''', [appointmentId]);

    return results.isEmpty ? null : results.first;
  }

  /// Get meeting session with slot and consultant info
  ///
  /// Returns detailed meeting information including scheduled time and
  /// consultant details.
  Future<Map<String, dynamic>?> getMeetingDetailsForAppointment(
    String appointmentId,
  ) async {
    final results = await executeRaw('''
      SELECT
        ms.id,
        ms."streamCallId",
        ms.passcode,
        ms."createdAt",
        soa.id as "slotId",
        soa."startsAt" as "scheduledAt",
        soa."endsAt",
        soa."appointmentId",
        -- Get consultant info via the appointment
        u.name as "consultantName",
        u.image as "consultantImage",
        -- Get consultee info
        cu.image as "consulteeImage"
      FROM "MeetingSession" ms
      JOIN "SlotOfAppointment" soa ON soa.id = ms."slotOfAppointmentId"
      JOIN "_SlotOfAppointmentToUser" sotau ON sotau."A" = soa.id
      JOIN "users" u ON u.id = sotau."B"
      LEFT JOIN "_SlotOfAppointmentToUser" sotau2 ON sotau2."A" = soa.id AND sotau2."B" != u.id
      LEFT JOIN "users" cu ON cu.id = sotau2."B"
      WHERE soa."appointmentId" = \$1
        AND u.role = 'CONSULTANT'
      ORDER BY soa."startsAt" ASC
      LIMIT 1
    ''', [appointmentId]);

    return results.isEmpty ? null : results.first;
  }

  /// Get or create a meeting session for an appointment
  ///
  /// If a meeting session already exists, returns it.
  /// Otherwise, creates a new meeting session with a unique Stream call ID.
  Future<Map<String, dynamic>> getOrCreateMeetingSession({
    required String appointmentId,
  }) async {
    // First, check if meeting already exists
    final existing = await getMeetingByAppointmentId(appointmentId);
    if (existing != null) {
      return existing;
    }

    // Get the first slot for this appointment
    final slots = await executeRaw('''
      SELECT id FROM "SlotOfAppointment"
      WHERE "appointmentId" = \$1
      ORDER BY "startsAt" ASC
      LIMIT 1
    ''', [appointmentId]);

    if (slots.isEmpty) {
      throw StateError('No slots found for appointment $appointmentId');
    }

    final slotId = slots.first['id'] as String;
    final meetingId = _uuid.v4().replaceAll('-', '');
    final streamCallId = 'meeting_${_uuid.v4().replaceAll('-', '')}';
    final now = DateTime.now().toUtc().toIso8601String();

    // Create the meeting session
    await executeMutationRaw('''
      INSERT INTO "MeetingSession" (id, "streamCallId", platform, "slotOfAppointmentId", "createdAt", "updatedAt")
      VALUES (\$1, \$2, 'STREAM', \$3, \$4, \$4)
    ''', [meetingId, streamCallId, slotId, now]);

    // Return the created meeting
    return (await getMeetingByAppointmentId(appointmentId))!;
  }

  /// Update meeting session status (e.g., when meeting starts or ends)
  Future<void> updateMeetingStatus({
    required String meetingId,
    required String status,
  }) async {
    // Note: The current schema doesn't have a status field on MeetingSession
    // This could be added via a migration if needed
    // For now, we could track this via the SlotOfAppointment or Appointment status
  }

  /// Get meeting session by Stream call ID
  Future<Map<String, dynamic>?> getMeetingByStreamCallId(
    String streamCallId,
  ) async {
    final results = await executeRaw('''
      SELECT ms.*, soa."startsAt", soa."endsAt", soa."appointmentId"
      FROM "MeetingSession" ms
      JOIN "SlotOfAppointment" soa ON soa.id = ms."slotOfAppointmentId"
      WHERE ms."streamCallId" = \$1
      LIMIT 1
    ''', [streamCallId]);

    return results.isEmpty ? null : results.first;
  }
}
