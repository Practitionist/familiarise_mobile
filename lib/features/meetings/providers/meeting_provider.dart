import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

import '../../../core/utils/device_utils.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../../data/repositories/meeting_repository_impl.dart';
import '../../../domain/entities/meeting/meeting_entities.dart';
import '../../auth/providers/auth_provider.dart';

part 'meeting_provider.g.dart';

/// Provider for managing video meeting sessions
@riverpod
class MeetingController extends _$MeetingController {
  StreamVideo? _streamVideo;
  Call? _activeCall;

  @override
  MeetingState build() {
    ref.onDispose(_cleanup);
    return const MeetingState();
  }

  /// Clean up Stream resources
  Future<void> _cleanup() async {
    _activeCall?.leave();
    _activeCall = null;
    _streamVideo?.disconnect();
    _streamVideo = null;

    // Reset the singleton so it can be re-initialized
    if (StreamVideo.isInitialized()) {
      await StreamVideo.reset();
    }
  }

  /// Request camera and microphone permissions
  Future<bool> requestPermissions() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final cameraStatus = await Permission.camera.request();
      final microphoneStatus = await Permission.microphone.request();

      final granted = cameraStatus.isGranted && microphoneStatus.isGranted;

      state = state.copyWith(
        isLoading: false,
        permissionsGranted: granted,
        error: granted ? null : 'Camera and microphone permissions required',
      );

      return granted;
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'MeetingController.requestPermissions',
      );
      state = state.copyWith(
        isLoading: false,
        permissionsGranted: false,
        error: 'Failed to request permissions. Please try again.',
      );
      return false;
    }
  }

  /// Initialize Stream Video SDK and get meeting token
  Future<bool> initialize(String appointmentId) async {
    if (state.isInitialized) return true;

    state = state.copyWith(isLoading: true, error: null);

    try {
      // Detect if running on emulator/simulator
      final isEmulator = await DeviceUtils.isEmulator();

      // Get current user
      final user = ref.read(currentUserProvider);
      if (user == null) {
        state = state.copyWith(
          isLoading: false,
          error: 'User not authenticated',
        );
        return false;
      }

      // Get meeting token from backend
      final repository = ref.read(meetingRepositoryProvider);
      final meetingToken = await repository.getMeetingToken(appointmentId);

      // Defensive: Reset any stale singleton before creating new instance
      if (StreamVideo.isInitialized()) {
        await StreamVideo.reset();
      }

      // Initialize Stream Video SDK
      _streamVideo = StreamVideo(
        meetingToken.apiKey,
        user: User.regular(
          userId: meetingToken.userId,
          name: user.name ?? 'User',
          image: user.image,
        ),
        userToken: meetingToken.token,
      );

      // Skip Stream SDK on iOS simulator (WebRTC crashes)
      final isIOSSimulator = kDebugMode && Platform.isIOS;

      if (!isIOSSimulator) {
        await _streamVideo!.connect();

        // Create the call (but don't join yet - that happens in joinCall())
        _activeCall = _streamVideo!.makeCall(
          callType: StreamCallType.defaultType(),
          id: meetingToken.callId,
        );

        // Get or create the call on Stream's servers (required for camera preview)
        await _activeCall!.getOrCreate();
      }

      state = state.copyWith(
        isLoading: false,
        isInitialized: true,
        isEmulator: isEmulator,
        callId: meetingToken.callId,
      );

      return true;
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'MeetingController.initialize',
        extras: {'appointmentId': appointmentId},
      );
      state = state.copyWith(
        isLoading: false,
        isInitialized: false,
        error: 'Failed to initialize meeting. Please try again.',
      );
      return false;
    }
  }

  /// Join the video call
  Future<Call?> joinCall() async {
    if (_streamVideo == null || state.callId == null) {
      state = state.copyWith(error: 'Meeting not initialized');
      return null;
    }

    if (state.isInCall) {
      return _activeCall;
    }

    state = state.copyWith(isJoining: true, error: null);

    try {
      // _activeCall was already created in initialize()
      // Just join the existing call
      await _activeCall!.join();

      // Apply initial settings
      await _activeCall!
          .setMicrophoneEnabled(enabled: state.isMicrophoneEnabled);
      await _activeCall!.setCameraEnabled(enabled: state.isCameraEnabled);

      state = state.copyWith(
        isJoining: false,
        isInCall: true,
      );

      return _activeCall;
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'MeetingController.joinCall',
        extras: {'callId': state.callId},
      );
      state = state.copyWith(
        isJoining: false,
        isInCall: false,
        error: 'Failed to join call. Please check your connection.',
      );
      return null;
    }
  }

  /// Leave the video call
  Future<void> leaveCall() async {
    if (_activeCall == null) return;

    try {
      await _activeCall!.leave();
      _activeCall = null;

      state = state.copyWith(
        isInCall: false,
        callId: null,
      );
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'MeetingController.leaveCall',
      );
      state = state.copyWith(error: 'Failed to leave call properly.');
    }
  }

  /// Toggle microphone on/off
  Future<void> toggleMicrophone() async {
    final newState = !state.isMicrophoneEnabled;
    state = state.copyWith(isMicrophoneEnabled: newState);

    if (_activeCall != null) {
      await _activeCall!.setMicrophoneEnabled(enabled: newState);
    }
  }

  /// Toggle camera on/off
  Future<void> toggleCamera() async {
    final newState = !state.isCameraEnabled;
    state = state.copyWith(isCameraEnabled: newState);

    if (_activeCall != null) {
      await _activeCall!.setCameraEnabled(enabled: newState);
    }
  }

  /// Flip between front and rear camera
  Future<void> flipCamera() async {
    if (_activeCall == null) return;

    final newState = !state.isFrontCamera;
    state = state.copyWith(isFrontCamera: newState);

    await _activeCall!.flipCamera();
  }

  /// Toggle speaker on/off
  /// Note: Speaker toggle is handled via OS-level audio route selection
  void toggleSpeaker() {
    final newState = !state.isSpeakerOn;
    state = state.copyWith(isSpeakerOn: newState);
    // Speaker is controlled via the native audio route picker
    // On iOS, use RtcMediaDeviceNotifier.instance.triggeriOSAudioRouteSelectionUI()
  }

  /// Get the active call instance
  Call? get activeCall => _activeCall;

  /// Clear any error message
  void clearError() {
    state = state.copyWith(error: null);
  }

  /// Notify backend that meeting started
  Future<void> notifyMeetingStarted(String appointmentId) async {
    try {
      final repository = ref.read(meetingRepositoryProvider);
      await repository.startMeeting(appointmentId);
    } catch (e, stackTrace) {
      // Non-critical for user, but log for monitoring
      Sentry.captureException(e, stackTrace: stackTrace);
    }
  }

  /// Notify backend that meeting ended
  Future<void> notifyMeetingEnded(String appointmentId) async {
    try {
      final repository = ref.read(meetingRepositoryProvider);
      await repository.endMeeting(appointmentId);
    } catch (e, stackTrace) {
      // Non-critical for user, but log for monitoring
      Sentry.captureException(e, stackTrace: stackTrace);
    }
  }
}

/// Provider for meeting details by appointment ID
@riverpod
Future<MeetingSession> meetingDetails(
  Ref ref,
  String appointmentId,
) async {
  final repository = ref.watch(meetingRepositoryProvider);
  return repository.getMeetingDetails(appointmentId);
}
