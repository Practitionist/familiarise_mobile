import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/explore/class_plan.dart';

/// Enrollment status badge (Open, Closed, Full, Coming Soon).
class ClassEnrollmentBadge extends StatelessWidget {
  final ClassEnrollmentStatus enrollmentStatus;

  const ClassEnrollmentBadge({super.key, required this.enrollmentStatus});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Color backgroundColor;
    Color textColor;
    String text;
    IconData icon;

    switch (enrollmentStatus) {
      case ClassEnrollmentStatus.open:
        backgroundColor = Colors.green.shade100;
        textColor = Colors.green.shade800;
        text = 'Enrolling';
        icon = Icons.check_circle_rounded;
      case ClassEnrollmentStatus.closed:
        backgroundColor = theme.colorScheme.surfaceContainerHighest;
        textColor = theme.colorScheme.onSurfaceVariant;
        text = 'Closed';
        icon = Icons.lock_rounded;
      case ClassEnrollmentStatus.full:
        backgroundColor = theme.colorScheme.errorContainer;
        textColor = theme.colorScheme.onErrorContainer;
        text = 'Full';
        icon = Icons.block_rounded;
      case ClassEnrollmentStatus.upcoming:
        backgroundColor = theme.colorScheme.tertiaryContainer;
        textColor = theme.colorScheme.onTertiaryContainer;
        text = 'Coming Soon';
        icon = Icons.schedule_rounded;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: textColor),
          const SizedBox(width: 6),
          Text(
            text,
            style: theme.textTheme.labelMedium?.copyWith(
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

/// Card displaying the consultant's avatar, name, and headline.
class ClassConsultantCard extends StatelessWidget {
  final String name;
  final String? image;
  final String? headline;

  const ClassConsultantCard({
    super.key,
    required this.name,
    this.image,
    this.headline,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.1),
        ),
      ),
      child: Row(
        children: [
          // Avatar
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: theme.colorScheme.primary.withValues(alpha: 0.2),
                width: 2,
              ),
            ),
            child: CircleAvatar(
              radius: 26,
              backgroundImage: image != null ? NetworkImage(image!) : null,
              backgroundColor: theme.colorScheme.primaryContainer,
              child: image == null
                  ? Text(
                      name[0].toUpperCase(),
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: theme.colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : null,
            ),
          ),
          const SizedBox(width: 16),
          // Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (headline != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    headline!,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
          Icon(
            Icons.chevron_right_rounded,
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ],
      ),
    );
  }
}

/// Horizontal wrap of info chips (duration, sessions, max participants, etc.)
class ClassInfoChips extends StatelessWidget {
  final ClassPlan classPlan;

  const ClassInfoChips({super.key, required this.classPlan});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        _ClassInfoChip(
          icon: Icons.calendar_month_rounded,
          label: classPlan.formattedDuration,
          accentColor: theme.colorScheme.primary,
        ),
        _ClassInfoChip(
          icon: Icons.format_list_numbered_rounded,
          label: '${classPlan.totalSessions} sessions',
          accentColor: theme.colorScheme.secondary,
        ),
        _ClassInfoChip(
          icon: Icons.group_rounded,
          label: 'Max ${classPlan.maxParticipants}',
          accentColor: theme.colorScheme.tertiary,
        ),
        if (classPlan.language != null)
          _ClassInfoChip(
            icon: Icons.language_rounded,
            label: classPlan.language!,
            accentColor: Colors.teal,
          ),
        if (classPlan.level != null)
          _ClassInfoChip(
            icon: Icons.signal_cellular_alt_rounded,
            label: classPlan.level!,
            accentColor: theme.colorScheme.error,
          ),
        if (classPlan.certificateProvided)
          _ClassInfoChip(
            icon: Icons.workspace_premium_rounded,
            label: 'Certificate',
            accentColor: Colors.amber.shade700,
          ),
      ],
    );
  }
}

/// A single info chip with icon, label, and accent color.
class _ClassInfoChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color accentColor;

  const _ClassInfoChip({
    required this.icon,
    required this.label,
    required this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Ensure text has good contrast by using a darker variant
    final textColor = HSLColor.fromColor(accentColor).lightness > 0.5
        ? HSLColor.fromColor(accentColor).withLightness(0.35).toColor()
        : accentColor;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: accentColor.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: accentColor.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: textColor),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              label,
              style: theme.textTheme.labelLarge?.copyWith(
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

/// Banner showing the class start date.
class ClassStartDateBanner extends StatelessWidget {
  final DateTime classStartDate;

  const ClassStartDateBanner({super.key, required this.classStartDate});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            theme.colorScheme.primaryContainer,
            theme.colorScheme.primaryContainer.withValues(alpha: 0.8),
          ],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.event_available_rounded,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Class starts',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onPrimaryContainer
                        .withValues(alpha: 0.8),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  DateFormat('EEEE, MMMM d, yyyy').format(classStartDate),
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
