import '../entities/meeting/meeting_entities.dart';

/// Repository interface for meeting operations
abstract class MeetingRepository {
  /// Get meeting token for joining a video call
  ///
  /// Returns token, API key, call ID, and user ID needed to join Stream video.
  Future<MeetingToken> getMeetingToken(String appointmentId);

  /// Get meeting session details
  ///
  /// Returns meeting session info including scheduled time, participants, etc.
  Future<MeetingSession> getMeetingDetails(String appointmentId);

  /// Mark meeting as started
  ///
  /// Called when user joins the meeting.
  Future<void> startMeeting(String appointmentId);

  /// Mark meeting as ended
  ///
  /// Called when user leaves the meeting.
  Future<void> endMeeting(String appointmentId);
}
