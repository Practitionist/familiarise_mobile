import 'package:flutter/material.dart';

import '../../../app/theme/app_theme.dart';

/// Control button for meeting actions
class MeetingControlButton extends StatelessWidget {
  const MeetingControlButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.isEnabled = true,
    this.isDestructive = false,
    this.label,
    this.size = 56,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final bool isEnabled;
  final bool isDestructive;
  final String? label;
  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = isDestructive
        ? AppTheme.destructive
        : isEnabled
            ? theme.colorScheme.surface
            : theme.colorScheme.surface.withValues(alpha: 0.5);
    final iconColor = isDestructive
        ? Colors.white
        : isEnabled
            ? theme.colorScheme.onSurface
            : theme.colorScheme.onSurface.withValues(alpha: 0.5);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
            border: Border.all(
              color: isDestructive
                  ? AppTheme.destructive
                  : theme.colorScheme.outline.withValues(alpha: 0.3),
              width: 1,
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onPressed,
              customBorder: const CircleBorder(),
              child: Icon(
                icon,
                color: iconColor,
                size: size * 0.45,
              ),
            ),
          ),
        ),
        if (label != null) ...[
          const SizedBox(height: AppSpacing.xs),
          Text(
            label!,
            style: theme.textTheme.labelSmall?.copyWith(
              color: Colors.white.withValues(alpha: 0.8),
            ),
          ),
        ],
      ],
    );
  }
}

/// Bottom control bar for video meetings
class MeetingControlsBar extends StatelessWidget {
  const MeetingControlsBar({
    super.key,
    required this.isMicrophoneEnabled,
    required this.isCameraEnabled,
    required this.onMicrophoneToggle,
    required this.onCameraToggle,
    required this.onFlipCamera,
    required this.onLeave,
    this.showLabels = false,
  });

  final bool isMicrophoneEnabled;
  final bool isCameraEnabled;
  final VoidCallback onMicrophoneToggle;
  final VoidCallback onCameraToggle;
  final VoidCallback onFlipCamera;
  final VoidCallback onLeave;
  final bool showLabels;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.black.withValues(alpha: 0.7),
          ],
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MeetingControlButton(
              icon: isMicrophoneEnabled ? Icons.mic : Icons.mic_off,
              isEnabled: isMicrophoneEnabled,
              onPressed: onMicrophoneToggle,
              label: showLabels ? (isMicrophoneEnabled ? 'Mute' : 'Unmute') : null,
            ),
            MeetingControlButton(
              icon: isCameraEnabled ? Icons.videocam : Icons.videocam_off,
              isEnabled: isCameraEnabled,
              onPressed: onCameraToggle,
              label: showLabels ? (isCameraEnabled ? 'Stop' : 'Start') : null,
            ),
            MeetingControlButton(
              icon: Icons.flip_camera_ios,
              onPressed: onFlipCamera,
              label: showLabels ? 'Flip' : null,
            ),
            MeetingControlButton(
              icon: Icons.call_end,
              isDestructive: true,
              onPressed: onLeave,
              label: showLabels ? 'Leave' : null,
            ),
          ],
        ),
      ),
    );
  }
}
