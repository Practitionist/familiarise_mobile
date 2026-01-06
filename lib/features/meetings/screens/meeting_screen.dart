import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

import '../../../app/theme/app_theme.dart';
import '../../../domain/entities/meeting/meeting_entities.dart';
import '../../../shared/widgets/loading_indicator.dart';
import '../providers/meeting_provider.dart';
import '../widgets/meeting_widgets.dart';

/// Main screen for video meetings
class MeetingScreen extends ConsumerStatefulWidget {
  const MeetingScreen({
    super.key,
    required this.appointmentId,
  });

  final String appointmentId;

  @override
  ConsumerState<MeetingScreen> createState() => _MeetingScreenState();
}

class _MeetingScreenState extends ConsumerState<MeetingScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeMeeting();
    });
  }

  Future<void> _initializeMeeting() async {
    final controller = ref.read(meetingControllerProvider.notifier);

    // Request permissions first
    final permissionsGranted = await controller.requestPermissions();
    if (!permissionsGranted) {
      if (mounted) {
        _showPermissionDialog();
      }
      return;
    }

    // Initialize Stream Video
    await controller.initialize(widget.appointmentId);
  }

  void _showPermissionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Permissions Required'),
        content: const Text(
          'Camera and microphone permissions are required for video calls. '
          'Please grant permissions in your device settings.',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              context.pop();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              await _initializeMeeting();
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Future<void> _handleLeave() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Leave Meeting'),
        content: const Text('Are you sure you want to leave this meeting?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: AppTheme.destructive),
            child: const Text('Leave'),
          ),
        ],
      ),
    );

    if (confirmed == true && mounted) {
      final controller = ref.read(meetingControllerProvider.notifier);
      await controller.notifyMeetingEnded(widget.appointmentId);
      await controller.leaveCall();
      if (mounted) {
        context.pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final meetingState = ref.watch(meetingControllerProvider);
    final controller = ref.read(meetingControllerProvider.notifier);

    return Scaffold(
      backgroundColor: Colors.black,
      body: _buildBody(meetingState, controller),
    );
  }

  Widget _buildBody(MeetingState meetingState, MeetingController controller) {
    // Loading state
    if (meetingState.isLoading) {
      return const _LoadingView();
    }

    // Error state
    if (meetingState.hasError) {
      return _ErrorView(
        message: meetingState.error!,
        onRetry: _initializeMeeting,
        onBack: () => context.pop(),
      );
    }

    // In-call state
    if (meetingState.isInCall && controller.activeCall != null) {
      return _InCallView(
        call: controller.activeCall!,
        meetingState: meetingState,
        onMicrophoneToggle: controller.toggleMicrophone,
        onCameraToggle: controller.toggleCamera,
        onFlipCamera: controller.flipCamera,
        onLeave: _handleLeave,
      );
    }

    // Pre-join state
    if (meetingState.isInitialized && controller.activeCall != null) {
      return _PreJoinView(
        call: controller.activeCall!,
        meetingState: meetingState,
        isJoining: meetingState.isJoining,
        onMicrophoneToggle: controller.toggleMicrophone,
        onCameraToggle: controller.toggleCamera,
        onFlipCamera: controller.flipCamera,
        onJoin: () async {
          final call = await controller.joinCall();
          if (call != null) {
            await controller.notifyMeetingStarted(widget.appointmentId);
          }
        },
        onBack: () => context.pop(),
      );
    }

    // Waiting for initialization
    return const _LoadingView(message: 'Connecting...');
  }
}

/// Loading view while connecting
class _LoadingView extends StatelessWidget {
  const _LoadingView({this.message = 'Loading...'});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const LoadingIndicator(size: 48, color: Colors.white),
          const SizedBox(height: AppSpacing.md),
          Text(
            message,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

/// Error view with retry option
class _ErrorView extends StatelessWidget {
  const _ErrorView({
    required this.message,
    required this.onRetry,
    required this.onBack,
  });

  final String message;
  final VoidCallback onRetry;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.error_outline,
                size: 64,
                color: AppTheme.destructive,
              ),
              const SizedBox(height: AppSpacing.md),
              Text(
                'Unable to Connect',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white70),
              ),
              const SizedBox(height: AppSpacing.xl),
              Wrap(
                spacing: AppSpacing.md,
                alignment: WrapAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: onBack,
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white54),
                    ),
                    child: const Text('Go Back'),
                  ),
                  ElevatedButton(
                    onPressed: onRetry,
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Pre-join view with camera preview
class _PreJoinView extends StatelessWidget {
  const _PreJoinView({
    required this.call,
    required this.meetingState,
    required this.isJoining,
    required this.onMicrophoneToggle,
    required this.onCameraToggle,
    required this.onFlipCamera,
    required this.onJoin,
    required this.onBack,
  });

  final Call call;
  final MeetingState meetingState;
  final bool isJoining;
  final VoidCallback onMicrophoneToggle;
  final VoidCallback onCameraToggle;
  final VoidCallback onFlipCamera;
  final VoidCallback onJoin;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // Top bar
          Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Row(
              children: [
                IconButton(
                  onPressed: onBack,
                  icon: const Icon(Icons.close, color: Colors.white),
                ),
                const Spacer(),
                Text(
                  'Ready to join?',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                      ),
                ),
                const Spacer(),
                const SizedBox(width: 48), // Balance the close button
              ],
            ),
          ),

          // Camera preview
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: CameraPreview(
                call: call,
                isCameraEnabled: meetingState.isCameraEnabled,
              ),
            ),
          ),

          // Controls
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MeetingControlButton(
                  icon: meetingState.isMicrophoneEnabled
                      ? Icons.mic
                      : Icons.mic_off,
                  isEnabled: meetingState.isMicrophoneEnabled,
                  onPressed: onMicrophoneToggle,
                  size: 48,
                ),
                const SizedBox(width: AppSpacing.lg),
                MeetingControlButton(
                  icon: meetingState.isCameraEnabled
                      ? Icons.videocam
                      : Icons.videocam_off,
                  isEnabled: meetingState.isCameraEnabled,
                  onPressed: onCameraToggle,
                  size: 48,
                ),
                const SizedBox(width: AppSpacing.lg),
                MeetingControlButton(
                  icon: Icons.flip_camera_ios,
                  onPressed: onFlipCamera,
                  size: 48,
                ),
              ],
            ),
          ),

          // Join button
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.lg,
              0,
              AppSpacing.lg,
              AppSpacing.lg,
            ),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: isJoining ? null : onJoin,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.success,
                  foregroundColor: Colors.white,
                  minimumSize: const Size.fromHeight(52),
                ),
                child: isJoining
                    ? const SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Text(
                        'Join Meeting',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// In-call view with video grid
class _InCallView extends StatelessWidget {
  const _InCallView({
    required this.call,
    required this.meetingState,
    required this.onMicrophoneToggle,
    required this.onCameraToggle,
    required this.onFlipCamera,
    required this.onLeave,
  });

  final Call call;
  final MeetingState meetingState;
  final VoidCallback onMicrophoneToggle;
  final VoidCallback onCameraToggle;
  final VoidCallback onFlipCamera;
  final VoidCallback onLeave;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Video content from Stream SDK
        StreamCallContent(
          call: call,
          onLeaveCallTap: onLeave,
          // Hide default controls as we use custom ones
          callControlsWidgetBuilder: (context, call) {
            return const SizedBox.shrink();
          },
        ),

        // Bottom controls overlay
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: MeetingControlsBar(
            isMicrophoneEnabled: meetingState.isMicrophoneEnabled,
            isCameraEnabled: meetingState.isCameraEnabled,
            onMicrophoneToggle: onMicrophoneToggle,
            onCameraToggle: onCameraToggle,
            onFlipCamera: onFlipCamera,
            onLeave: onLeave,
          ),
        ),
      ],
    );
  }
}
