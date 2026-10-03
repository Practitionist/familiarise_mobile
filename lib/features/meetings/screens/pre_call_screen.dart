import 'package:flutter/material.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

import '../../../app/theme/app_theme.dart';
import '../../../domain/entities/meeting/meeting_entities.dart';
import '../widgets/meeting_widgets.dart';

/// Pre-call screen shown before entering an active video session.
///
/// Includes a DPDP Act 2023 Recording Consent banner and explicit consent
/// modal before joining a recorded session.
class PreCallScreen extends StatefulWidget {
  const PreCallScreen({
    super.key,
    required this.call,
    required this.meetingState,
    required this.isJoining,
    required this.isEmulator,
    required this.onMicrophoneToggle,
    required this.onCameraToggle,
    required this.onFlipCamera,
    required this.onJoin,
    required this.onBack,
  });

  final Call call;
  final MeetingState meetingState;
  final bool isJoining;
  final bool isEmulator;
  final VoidCallback onMicrophoneToggle;
  final VoidCallback onCameraToggle;
  final VoidCallback onFlipCamera;
  final Future<void> Function() onJoin;
  final VoidCallback onBack;

  @override
  State<PreCallScreen> createState() => _PreCallScreenState();
}

class _PreCallScreenState extends State<PreCallScreen> {
  bool _recordingConsentAccepted = false;

  Future<void> _handleJoinPressed() async {
    if (!_recordingConsentAccepted) {
      final consented = await _showRecordingConsentModal(context);
      if (!mounted) return;
      if (consented != true) {
        widget.onBack();
        return;
      }
      setState(() {
        _recordingConsentAccepted = true;
      });
    }
    await widget.onJoin();
  }

  Future<bool?> _showRecordingConsentModal(BuildContext context) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: const Color(0xFF1E1E24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Colors.white24),
        ),
        title: const Row(
          children: [
            Icon(
              Icons.privacy_tip_outlined,
              color: Colors.amberAccent,
              size: 24,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                'Recording Consent (DPDP Act 2023)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        content: const Text(
          'In accordance with the Digital Personal Data Protection (DPDP) '
          'Act 2023, please note that this video session may be recorded '
          'for quality assurance, compliance, and session review purposes.\n\n'
          'By joining this session, you explicitly consent to the audio and '
          'video recording of your participation.',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 14,
            height: 1.45,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text(
              'Decline & Leave',
              style: TextStyle(color: Colors.white70),
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.success,
              foregroundColor: Colors.white,
            ),
            child: const Text('I Acknowledge & Consent'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final meetingState = widget.meetingState;

    return SafeArea(
      child: Column(
        children: [
          // Top bar
          Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Row(
              children: [
                IconButton(
                  onPressed: widget.onBack,
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
                const SizedBox(width: 48),
              ],
            ),
          ),

          // Camera preview or emulator placeholder
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: widget.isEmulator
                  ? const _EmulatorPreCallPlaceholder()
                  : CameraPreview(
                      call: widget.call,
                      isCameraEnabled: meetingState.isCameraEnabled,
                    ),
            ),
          ),

          // DPDP Act 2023 Recording Consent Banner
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.lg,
              AppSpacing.md,
              AppSpacing.lg,
              0,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                setState(() {
                  _recordingConsentAccepted = !_recordingConsentAccepted;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: _recordingConsentAccepted
                        ? AppTheme.success.withValues(alpha: 0.6)
                        : Colors.amberAccent.withValues(alpha: 0.5),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: _recordingConsentAccepted,
                      onChanged: (value) {
                        setState(() {
                          _recordingConsentAccepted = value ?? false;
                        });
                      },
                      activeColor: AppTheme.success,
                      side: const BorderSide(color: Colors.white70),
                      visualDensity: VisualDensity.compact,
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.fiber_manual_record,
                                size: 12,
                                color: Colors.redAccent,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                meetingState.isRecording
                                    ? 'Recorded Session • DPDP Act 2023 Consent'
                                    : 'DPDP Act 2023 Recording Consent',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'I acknowledge and consent that this session may '
                            'be recorded for quality and review under the '
                            'DPDP Act 2023.',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 11.5,
                              height: 1.35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                  onPressed: widget.onMicrophoneToggle,
                  size: 48,
                ),
                const SizedBox(width: 16),
                MeetingControlButton(
                  icon: meetingState.isCameraEnabled
                      ? Icons.videocam
                      : Icons.videocam_off,
                  isEnabled: meetingState.isCameraEnabled,
                  onPressed: widget.onCameraToggle,
                  size: 48,
                ),
                const SizedBox(width: 16),
                MeetingControlButton(
                  icon: Icons.flip_camera_ios,
                  onPressed: widget.onFlipCamera,
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
                onPressed: widget.isJoining ? null : _handleJoinPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.success,
                  foregroundColor: Colors.white,
                  minimumSize: const Size.fromHeight(52),
                ),
                child: widget.isJoining
                    ? const SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : Text(
                        _recordingConsentAccepted
                            ? 'Join Meeting'
                            : 'Review Consent & Join Meeting',
                        style: const TextStyle(
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

class _EmulatorPreCallPlaceholder extends StatelessWidget {
  const _EmulatorPreCallPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[800],
                border: Border.all(color: Colors.white24, width: 2),
              ),
              child: const Icon(
                Icons.person,
                size: 64,
                color: Colors.white54,
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            Text(
              'Camera Preview',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                  ),
            ),
            const SizedBox(height: AppSpacing.sm),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.xl),
              child: Text(
                'Camera preview unavailable on emulator.\n'
                'Video will work on physical devices.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
