# Phase 7: Video Meetings

## Overview

This phase integrates Stream Video SDK for 1-on-1 video consultations. Users can join scheduled meetings, manage audio/video settings, and participate in high-quality video calls with consultants.

**Prerequisites:** Phases 1-6 completed
**Target Completion:** Functional video calling

---

## Key Features

1. **Meeting Room** - Video call interface with participant views
2. **Audio/Video Controls** - Mute, camera toggle, speaker
3. **Meeting Lifecycle** - Join, leave, connection handling
4. **Pre-Meeting Setup** - Camera preview, device selection

---

## 1. Additional Dependencies

Add to `pubspec.yaml`:

```yaml
dependencies:
  stream_video_flutter: ^0.5.3
  permission_handler: ^11.3.0
```

---

## 2. Domain Layer

### 2.1 Meeting Entity

Create `lib/domain/entities/meeting.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting.freezed.dart';

@freezed
class MeetingSession with _$MeetingSession {
  const factory MeetingSession({
    required String id,
    required String callId,
    required String appointmentId,
    required DateTime scheduledAt,
    required DateTime endsAt,
    String? consultantName,
    String? consultantImage,
    String? consulteeImage,
    @Default(MeetingStatus.scheduled) MeetingStatus status,
  }) = _MeetingSession;
}

enum MeetingStatus {
  scheduled,
  live,
  ended,
  cancelled,
}

@freezed
class MeetingToken with _$MeetingToken {
  const factory MeetingToken({
    required String token,
    required String apiKey,
    required String callId,
    required String userId,
  }) = _MeetingToken;
}
```

### 2.2 Meeting Repository Interface

Create `lib/domain/repositories/meeting_repository.dart`:

```dart
import '../entities/meeting.dart';
import '../../core/errors/result.dart';

abstract class MeetingRepository {
  /// Get meeting token for joining a call
  AsyncResult<MeetingToken> getMeetingToken(String appointmentId);

  /// Get meeting details
  AsyncResult<MeetingSession> getMeetingDetails(String appointmentId);

  /// Mark meeting as started
  AsyncResult<void> startMeeting(String appointmentId);

  /// Mark meeting as ended
  AsyncResult<void> endMeeting(String appointmentId);
}
```

---

## 3. Data Layer

### 3.1 Meeting Remote Source

Create `lib/data/datasources/remote/meeting_remote_source.dart`:

```dart
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../core/network/dio_client.dart';
import '../../../domain/entities/meeting.dart';

part 'meeting_remote_source.g.dart';

@riverpod
MeetingRemoteSource meetingRemoteSource(MeetingRemoteSourceRef ref) {
  return MeetingRemoteSourceImpl(ref.watch(dioProvider));
}

abstract class MeetingRemoteSource {
  Future<MeetingToken> getMeetingToken(String appointmentId);
  Future<MeetingSession> getMeetingDetails(String appointmentId);
}

class MeetingRemoteSourceImpl implements MeetingRemoteSource {
  final Dio _dio;

  MeetingRemoteSourceImpl(this._dio);

  @override
  Future<MeetingToken> getMeetingToken(String appointmentId) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.streamToken,
        data: {'appointmentId': appointmentId},
      );

      final data = response.data as Map<String, dynamic>;
      return MeetingToken(
        token: data['token'] as String,
        apiKey: data['apiKey'] as String,
        callId: data['callId'] as String,
        userId: data['userId'] as String,
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<MeetingSession> getMeetingDetails(String appointmentId) async {
    try {
      final response = await _dio.get(
        '${ApiEndpoints.appointmentById(appointmentId)}/meeting',
      );

      final data = response.data as Map<String, dynamic>;
      return MeetingSession(
        id: data['id'] as String,
        callId: data['callId'] as String,
        appointmentId: appointmentId,
        scheduledAt: DateTime.parse(data['scheduledAt'] as String),
        endsAt: DateTime.parse(data['endsAt'] as String),
        consultantName: data['consultantName'] as String?,
        consultantImage: data['consultantImage'] as String?,
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }
}
```

---

## 4. Presentation Layer

### 4.1 Meeting Provider

Create `lib/features/meetings/providers/meeting_provider.dart`:

```dart
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

import '../../../core/config/env_config.dart';
import '../../../data/repositories/meeting_repository_impl.dart';
import '../../../domain/entities/meeting.dart';
import '../../../features/auth/providers/auth_provider.dart';

part 'meeting_provider.g.dart';

@riverpod
class MeetingController extends _$MeetingController {
  StreamVideo? _streamVideo;
  Call? _activeCall;

  @override
  MeetingState build() {
    ref.onDispose(() {
      _cleanup();
    });

    return const MeetingState();
  }

  Future<void> _cleanup() async {
    await _activeCall?.leave();
    _streamVideo?.dispose();
    _activeCall = null;
    _streamVideo = null;
  }

  Future<bool> requestPermissions() async {
    final camera = await Permission.camera.request();
    final microphone = await Permission.microphone.request();

    final granted = camera.isGranted && microphone.isGranted;
    state = state.copyWith(permissionsGranted: granted);
    return granted;
  }

  Future<bool> initialize(String appointmentId) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      // Get meeting token
      final repository = ref.read(meetingRepositoryProvider);
      final tokenResult = await repository.getMeetingToken(appointmentId);

      return tokenResult.fold(
        (failure) {
          state = state.copyWith(
            isLoading: false,
            error: failure.userMessage,
          );
          return false;
        },
        (token) async {
          // Get current user
          final user = ref.read(currentUserProvider);
          if (user == null) {
            state = state.copyWith(
              isLoading: false,
              error: 'User not authenticated',
            );
            return false;
          }

          // Initialize Stream Video
          _streamVideo = StreamVideo(
            token.apiKey,
            user: User(
              id: token.userId,
              name: user.name ?? 'User',
              image: user.image,
            ),
            userToken: token.token,
          );

          await _streamVideo!.connect();

          state = state.copyWith(
            isLoading: false,
            isInitialized: true,
            callId: token.callId,
          );

          return true;
        },
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      return false;
    }
  }

  Future<Call?> joinCall() async {
    if (_streamVideo == null || state.callId == null) {
      state = state.copyWith(error: 'Not initialized');
      return null;
    }

    state = state.copyWith(isJoining: true, error: null);

    try {
      _activeCall = _streamVideo!.makeCall(
        callType: StreamCallType(),
        id: state.callId!,
      );

      await _activeCall!.getOrCreate();
      await _activeCall!.join();

      state = state.copyWith(
        isJoining: false,
        isInCall: true,
        call: _activeCall,
      );

      return _activeCall;
    } catch (e) {
      state = state.copyWith(
        isJoining: false,
        error: 'Failed to join call: $e',
      );
      return null;
    }
  }

  Future<void> leaveCall() async {
    try {
      await _activeCall?.leave();
      state = state.copyWith(
        isInCall: false,
        call: null,
      );
    } catch (e) {
      state = state.copyWith(error: 'Failed to leave call: $e');
    }
  }

  void toggleMicrophone() {
    _activeCall?.setMicrophoneEnabled(!state.isMicrophoneEnabled);
    state = state.copyWith(isMicrophoneEnabled: !state.isMicrophoneEnabled);
  }

  void toggleCamera() {
    _activeCall?.setCameraEnabled(!state.isCameraEnabled);
    state = state.copyWith(isCameraEnabled: !state.isCameraEnabled);
  }

  void flipCamera() {
    _activeCall?.flipCamera();
  }

  void toggleSpeaker() {
    // Toggle between earpiece and speaker
    state = state.copyWith(isSpeakerOn: !state.isSpeakerOn);
  }
}

class MeetingState {
  final bool isLoading;
  final bool isInitialized;
  final bool isJoining;
  final bool isInCall;
  final bool permissionsGranted;
  final bool isMicrophoneEnabled;
  final bool isCameraEnabled;
  final bool isSpeakerOn;
  final String? callId;
  final String? error;
  final Call? call;

  const MeetingState({
    this.isLoading = false,
    this.isInitialized = false,
    this.isJoining = false,
    this.isInCall = false,
    this.permissionsGranted = false,
    this.isMicrophoneEnabled = true,
    this.isCameraEnabled = true,
    this.isSpeakerOn = true,
    this.callId,
    this.error,
    this.call,
  });

  MeetingState copyWith({
    bool? isLoading,
    bool? isInitialized,
    bool? isJoining,
    bool? isInCall,
    bool? permissionsGranted,
    bool? isMicrophoneEnabled,
    bool? isCameraEnabled,
    bool? isSpeakerOn,
    String? callId,
    String? error,
    Call? call,
  }) {
    return MeetingState(
      isLoading: isLoading ?? this.isLoading,
      isInitialized: isInitialized ?? this.isInitialized,
      isJoining: isJoining ?? this.isJoining,
      isInCall: isInCall ?? this.isInCall,
      permissionsGranted: permissionsGranted ?? this.permissionsGranted,
      isMicrophoneEnabled: isMicrophoneEnabled ?? this.isMicrophoneEnabled,
      isCameraEnabled: isCameraEnabled ?? this.isCameraEnabled,
      isSpeakerOn: isSpeakerOn ?? this.isSpeakerOn,
      callId: callId ?? this.callId,
      error: error,
      call: call ?? this.call,
    );
  }
}
```

### 4.2 Meeting Screen

Create `lib/features/meetings/screens/meeting_screen.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/extensions/context_extensions.dart';
import '../providers/meeting_provider.dart';
import '../widgets/meeting_controls.dart';

class MeetingScreen extends ConsumerStatefulWidget {
  final String appointmentId;

  const MeetingScreen({
    super.key,
    required this.appointmentId,
  });

  @override
  ConsumerState<MeetingScreen> createState() => _MeetingScreenState();
}

class _MeetingScreenState extends ConsumerState<MeetingScreen> {
  @override
  void initState() {
    super.initState();
    _initializeMeeting();
  }

  Future<void> _initializeMeeting() async {
    final controller = ref.read(meetingControllerProvider.notifier);

    // Request permissions first
    final hasPermissions = await controller.requestPermissions();
    if (!hasPermissions) {
      if (mounted) {
        context.showErrorSnackBar(
          'Camera and microphone permissions are required',
        );
      }
      return;
    }

    // Initialize meeting
    final initialized = await controller.initialize(widget.appointmentId);
    if (!initialized && mounted) {
      final error = ref.read(meetingControllerProvider).error;
      context.showErrorSnackBar(error ?? 'Failed to initialize meeting');
    }
  }

  @override
  Widget build(BuildContext context) {
    final meetingState = ref.watch(meetingControllerProvider);

    if (meetingState.isLoading) {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(color: Colors.white),
              SizedBox(height: AppTheme.space4),
              Text(
                'Connecting to meeting...',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      );
    }

    if (!meetingState.isInitialized) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () => context.pop(),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                meetingState.error ?? 'Failed to connect',
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppTheme.space4),
              ElevatedButton(
                onPressed: _initializeMeeting,
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }

    // Pre-join screen
    if (!meetingState.isInCall) {
      return _buildPreJoinScreen(meetingState);
    }

    // In-call screen
    return _buildCallScreen(meetingState);
  }

  Widget _buildPreJoinScreen(MeetingState state) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Ready to join?',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () => context.pop(),
        ),
      ),
      body: Column(
        children: [
          // Camera preview
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(AppTheme.space4),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(AppTheme.radiusLg),
              ),
              child: Center(
                child: state.isCameraEnabled
                    ? const Icon(
                        Icons.videocam,
                        size: 64,
                        color: Colors.white54,
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.videocam_off,
                            size: 64,
                            color: Colors.white54,
                          ),
                          const SizedBox(height: AppTheme.space2),
                          Text(
                            'Camera is off',
                            style: AppTypography.body.copyWith(
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ),

          // Pre-join controls
          Padding(
            padding: const EdgeInsets.all(AppTheme.space4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildPreJoinControl(
                  icon: state.isMicrophoneEnabled
                      ? Icons.mic
                      : Icons.mic_off,
                  isEnabled: state.isMicrophoneEnabled,
                  onTap: () {
                    ref
                        .read(meetingControllerProvider.notifier)
                        .toggleMicrophone();
                  },
                ),
                const SizedBox(width: AppTheme.space4),
                _buildPreJoinControl(
                  icon: state.isCameraEnabled
                      ? Icons.videocam
                      : Icons.videocam_off,
                  isEnabled: state.isCameraEnabled,
                  onTap: () {
                    ref
                        .read(meetingControllerProvider.notifier)
                        .toggleCamera();
                  },
                ),
              ],
            ),
          ),

          // Join button
          Padding(
            padding: EdgeInsets.only(
              left: AppTheme.space4,
              right: AppTheme.space4,
              bottom: context.bottomPadding + AppTheme.space4,
            ),
            child: ElevatedButton(
              onPressed: state.isJoining
                  ? null
                  : () async {
                      final call = await ref
                          .read(meetingControllerProvider.notifier)
                          .joinCall();
                      if (call == null && mounted) {
                        final error =
                            ref.read(meetingControllerProvider).error;
                        context.showErrorSnackBar(
                          error ?? 'Failed to join meeting',
                        );
                      }
                    },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, AppTheme.buttonHeight),
                backgroundColor: AppColors.success,
              ),
              child: state.isJoining
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : const Text('Join Meeting'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPreJoinControl({
    required IconData icon,
    required bool isEnabled,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: isEnabled ? Colors.white24 : Colors.red,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white),
      ),
    );
  }

  Widget _buildCallScreen(MeetingState state) {
    final call = state.call;
    if (call == null) {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            'Call not available',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            // Video grid
            StreamCallContent(
              call: call,
              callState: call.state,
              onBackPressed: () => _showLeaveConfirmation(),
              onLeaveCallTap: () => _showLeaveConfirmation(),
            ),

            // Custom controls overlay
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: MeetingControls(
                isMicEnabled: state.isMicrophoneEnabled,
                isCameraEnabled: state.isCameraEnabled,
                onMicToggle: () {
                  ref
                      .read(meetingControllerProvider.notifier)
                      .toggleMicrophone();
                },
                onCameraToggle: () {
                  ref.read(meetingControllerProvider.notifier).toggleCamera();
                },
                onFlipCamera: () {
                  ref.read(meetingControllerProvider.notifier).flipCamera();
                },
                onLeave: () => _showLeaveConfirmation(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showLeaveConfirmation() async {
    final shouldLeave = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Leave Meeting?'),
        content: const Text(
          'Are you sure you want to leave this meeting?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.destructive,
            ),
            child: const Text('Leave'),
          ),
        ],
      ),
    );

    if (shouldLeave == true) {
      await ref.read(meetingControllerProvider.notifier).leaveCall();
      if (mounted) {
        context.pop();
      }
    }
  }
}
```

### 4.3 Meeting Controls Widget

Create `lib/features/meetings/widgets/meeting_controls.dart`:

```dart
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';

class MeetingControls extends StatelessWidget {
  final bool isMicEnabled;
  final bool isCameraEnabled;
  final VoidCallback onMicToggle;
  final VoidCallback onCameraToggle;
  final VoidCallback onFlipCamera;
  final VoidCallback onLeave;

  const MeetingControls({
    super.key,
    required this.isMicEnabled,
    required this.isCameraEnabled,
    required this.onMicToggle,
    required this.onCameraToggle,
    required this.onFlipCamera,
    required this.onLeave,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppTheme.space6,
        vertical: AppTheme.space4,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.black.withOpacity(0.7),
          ],
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _ControlButton(
              icon: isMicEnabled ? Icons.mic : Icons.mic_off,
              label: 'Mic',
              isEnabled: isMicEnabled,
              onTap: onMicToggle,
            ),
            _ControlButton(
              icon: isCameraEnabled ? Icons.videocam : Icons.videocam_off,
              label: 'Camera',
              isEnabled: isCameraEnabled,
              onTap: onCameraToggle,
            ),
            _ControlButton(
              icon: Icons.flip_camera_ios,
              label: 'Flip',
              isEnabled: true,
              onTap: onFlipCamera,
            ),
            _ControlButton(
              icon: Icons.call_end,
              label: 'Leave',
              isEnabled: true,
              isDestructive: true,
              onTap: onLeave,
            ),
          ],
        ),
      ),
    );
  }
}

class _ControlButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isEnabled;
  final bool isDestructive;
  final VoidCallback onTap;

  const _ControlButton({
    required this.icon,
    required this.label,
    required this.isEnabled,
    this.isDestructive = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: isDestructive
                  ? AppColors.destructive
                  : (isEnabled ? Colors.white24 : Colors.red),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
          ),
          const SizedBox(height: AppTheme.space1),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
```

---

## 5. Permissions Configuration

### iOS (Info.plist)

```xml
<key>NSCameraUsageDescription</key>
<string>Familiarise needs camera access for video calls</string>
<key>NSMicrophoneUsageDescription</key>
<string>Familiarise needs microphone access for video calls</string>
```

### Android (AndroidManifest.xml)

```xml
<uses-permission android:name="android.permission.CAMERA" />
<uses-permission android:name="android.permission.RECORD_AUDIO" />
<uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS" />
```

---

## 6. Acceptance Criteria

- [ ] Permission requests handled correctly
- [ ] Meeting initialization succeeds
- [ ] Pre-join camera preview works
- [ ] Join meeting successfully connects
- [ ] Video grid displays participants
- [ ] Microphone toggle works
- [ ] Camera toggle works
- [ ] Camera flip works
- [ ] Leave meeting with confirmation
- [ ] Error handling for connection issues

---

## 7. Next Phase

Proceed to **Phase 8: Chat & Messaging** to implement:
- Stream Chat SDK integration
- Chat list screen
- Chat room with real-time messaging
