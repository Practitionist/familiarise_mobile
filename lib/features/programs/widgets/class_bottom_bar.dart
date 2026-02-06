import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../domain/entities/explore/class_plan.dart';

/// Frosted-glass bottom bar with price display and enrollment action button.
class ClassBottomBar extends StatelessWidget {
  final ClassPlan classPlan;
  final VoidCallback? onEnroll;

  const ClassBottomBar({
    super.key,
    required this.classPlan,
    this.onEnroll,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface.withValues(alpha: 0.9),
            border: Border(
              top: BorderSide(
                color: theme.colorScheme.outline.withValues(alpha: 0.1),
              ),
            ),
          ),
          child: SafeArea(
            child: Row(
              children: [
                // Price display
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full course',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    Text(
                      classPlan.formattedPrice,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 24),
                // Enroll button
                Expanded(
                  child: FilledButton(
                    onPressed: classPlan.canEnroll ? onEnroll : null,
                    style: FilledButton.styleFrom(
                      minimumSize: const Size.fromHeight(54),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _getButtonText(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        if (classPlan.canEnroll) ...[
                          const SizedBox(width: 8),
                          const Icon(Icons.arrow_forward_rounded, size: 20),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getButtonText() {
    if (classPlan.isFull) return 'Class Full';
    if (classPlan.enrollmentStatus == ClassEnrollmentStatus.closed) {
      return 'Enrollment Closed';
    }
    if (classPlan.enrollmentStatus == ClassEnrollmentStatus.upcoming) {
      return 'Coming Soon';
    }
    return 'Enroll Now';
  }
}

/// Banner indicating how many spots remain, with urgency styling when low.
class ClassSpotsRemainingBanner extends StatelessWidget {
  final int spotsRemaining;

  const ClassSpotsRemainingBanner({super.key, required this.spotsRemaining});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isLow = spotsRemaining <= 5;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isLow
            ? theme.colorScheme.errorContainer
            : theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            isLow ? Icons.warning_rounded : Icons.people_rounded,
            size: 22,
            color: isLow
                ? theme.colorScheme.onErrorContainer
                : theme.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 10),
          Text(
            '$spotsRemaining spots remaining',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: isLow
                  ? theme.colorScheme.onErrorContainer
                  : theme.colorScheme.onSurfaceVariant,
            ),
          ),
          if (isLow) ...[
            const SizedBox(width: 6),
            Text(
              '— Enroll soon!',
              style: theme.textTheme.bodyMedium?.copyWith(
                color:
                    theme.colorScheme.onErrorContainer.withValues(alpha: 0.8),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
