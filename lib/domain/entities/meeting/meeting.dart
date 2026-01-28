import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/enums.dart';

part 'meeting.freezed.dart';
part 'meeting.g.dart';

/// Meeting status enumeration
enum MeetingStatus {
  scheduled('SCHEDULED'),
  live('LIVE'),
  ended('ENDED'),
  cancelled('CANCELLED');

  final String value;
  const MeetingStatus(this.value);

  factory MeetingStatus.fromString(String value) {
    return MeetingStatus.values.firstWhere(
      (e) => e.value == value,
      orElse: () => MeetingStatus.scheduled,
    );
  }
}

/// Represents a meeting session for video calls
@freezed
class MeetingSession with _$MeetingSession {
  const factory MeetingSession({
    required String id,
    required String streamCallId,
    required String appointmentId,
    required DateTime scheduledAt,
    required DateTime endsAt,
    String? consultantName,
    String? consultantImage,
    String? consulteeImage,
    String? passcode,
    @Default(Platform.stream) Platform platform,
    @Default([]) List<String> hostKeys,
    @Default(false) bool isRecording,
    DateTime? recordingStartedAt,
    DateTime? endedAt,
    String? endedReason,
    @Default(MeetingStatus.scheduled) MeetingStatus status,
  }) = _MeetingSession;

  factory MeetingSession.fromJson(Map<String, dynamic> json) =>
      _$MeetingSessionFromJson(json);
}

/// Token data for joining a Stream video call
@freezed
class MeetingToken with _$MeetingToken {
  const factory MeetingToken({
    required String token,
    required String apiKey,
    required String callId,
    required String userId,
  }) = _MeetingToken;

  factory MeetingToken.fromJson(Map<String, dynamic> json) =>
      _$MeetingTokenFromJson(json);
}
