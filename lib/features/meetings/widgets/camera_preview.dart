import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

import '../../../app/theme/app_theme.dart';

/// Camera preview widget for pre-join screen
class CameraPreview extends StatelessWidget {
  const CameraPreview({
    super.key,
    required this.call,
    required this.isCameraEnabled,
    this.borderRadius = 16,
    this.placeholderIcon = Icons.videocam_off,
  });

  final Call call;
  final bool isCameraEnabled;
  final double borderRadius;
  final IconData placeholderIcon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Skip StreamLobbyVideo in debug mode (crashes on iOS simulator)
    // WebRTC video rendering doesn't work reliably on simulators
    final showVideoPreview = isCameraEnabled && !kDebugMode;

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        color: theme.colorScheme.surface,
        child: showVideoPreview
            ? StreamLobbyVideo(call: call)
            : _CameraOffPlaceholder(
                icon: placeholderIcon,
                borderRadius: borderRadius,
              ),
      ),
    );
  }
}

/// Placeholder widget when camera is off
class _CameraOffPlaceholder extends StatelessWidget {
  const _CameraOffPlaceholder({
    required this.icon,
    required this.borderRadius,
  });

  final IconData icon;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 64,
              color: theme.colorScheme.onSecondary.withValues(alpha: 0.5),
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              'Camera is off',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSecondary.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Pre-join preview card with camera and info
class PreJoinPreviewCard extends StatelessWidget {
  const PreJoinPreviewCard({
    super.key,
    required this.call,
    required this.isCameraEnabled,
    this.consultantName,
    this.scheduledTime,
  });

  final Call call;
  final bool isCameraEnabled;
  final String? consultantName;
  final DateTime? scheduledTime;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Camera preview
        AspectRatio(
          aspectRatio: 4 / 3,
          child: CameraPreview(
            call: call,
            isCameraEnabled: isCameraEnabled,
          ),
        ),
        if (consultantName != null || scheduledTime != null) ...[
          const SizedBox(height: AppSpacing.md),
          // Meeting info
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: AppRadius.lgBorder,
              border: Border.all(color: theme.colorScheme.outline),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (consultantName != null) ...[
                  Text(
                    'Meeting with',
                    style: theme.textTheme.bodySmall,
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    consultantName!,
                    style: theme.textTheme.titleMedium,
                  ),
                ],
                if (scheduledTime != null) ...[
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        size: 16,
                        color:
                            theme.colorScheme.onSurface.withValues(alpha: 0.7),
                      ),
                      const SizedBox(width: AppSpacing.xs),
                      Text(
                        _formatTime(scheduledTime!),
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ],
    );
  }

  String _formatTime(DateTime time) {
    final hour = time.hour > 12 ? time.hour - 12 : time.hour;
    final period = time.hour >= 12 ? 'PM' : 'AM';
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute $period';
  }
}
