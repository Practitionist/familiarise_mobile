import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_state.freezed.dart';

/// State for managing video meeting sessions
@freezed
class MeetingState with _$MeetingState {
  const factory MeetingState({
    /// Whether the meeting is currently loading
    @Default(false) bool isLoading,

    /// Whether Stream Video SDK is initialized
    @Default(false) bool isInitialized,

    /// Whether the user is currently joining a call
    @Default(false) bool isJoining,

    /// Whether the user is currently in a call
    @Default(false) bool isInCall,

    /// Whether camera/microphone permissions are granted
    @Default(false) bool permissionsGranted,

    /// Whether the microphone is currently enabled
    @Default(true) bool isMicrophoneEnabled,

    /// Whether the camera is currently enabled
    @Default(true) bool isCameraEnabled,

    /// Whether the speaker is currently on
    @Default(true) bool isSpeakerOn,

    /// Whether using front camera (true) or rear camera (false)
    @Default(true) bool isFrontCamera,

    /// Current call ID if in a call
    String? callId,

    /// Error message if any
    String? error,
  }) = _MeetingState;

  const MeetingState._();

  /// Whether the meeting can be joined (permissions granted and initialized)
  bool get canJoin => permissionsGranted && isInitialized && !isInCall;

  /// Whether there is an error
  bool get hasError => error != null;
}
