import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/explore/class_plan.dart';

/// Modern session card with date block design.
///
/// Displays a single [ClassSession] with its date, day of the week,
/// time range, and current status badge.
class ClassSessionCard extends StatelessWidget {
  final ClassSession session;

  const ClassSessionCard({super.key, required this.session});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isPast = session.startsAt.isBefore(DateTime.now());

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.1),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Date block
            _buildDateBlock(theme, isPast),
            const SizedBox(width: 16),
            // Session details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat('EEEE').format(session.startsAt),
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: isPast
                          ? theme.colorScheme.onSurfaceVariant
                          : theme.colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _formatTimeRange(),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            // Status badge
            _buildStatusBadge(theme),
          ],
        ),
      ),
    );
  }

  String _formatTimeRange() {
    final start = DateFormat('h:mm a').format(session.startsAt);
    if (session.endsAt != null) {
      final end = DateFormat('h:mm a').format(session.endsAt!);
      return '$start - $end';
    }
    return start;
  }

  Widget _buildDateBlock(ThemeData theme, bool isPast) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        gradient: isPast
            ? null
            : LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  theme.colorScheme.primaryContainer,
                  theme.colorScheme.primaryContainer.withValues(alpha: 0.8),
                ],
              ),
        color: isPast ? theme.colorScheme.surfaceContainerHighest : null,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            DateFormat('MMM').format(session.startsAt).toUpperCase(),
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: isPast
                  ? theme.colorScheme.onSurfaceVariant
                  : theme.colorScheme.primary,
              letterSpacing: 0.5,
            ),
          ),
          Text(
            DateFormat('d').format(session.startsAt),
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: isPast
                  ? theme.colorScheme.onSurfaceVariant
                  : theme.colorScheme.onPrimaryContainer,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusBadge(ThemeData theme) {
    Color backgroundColor;
    Color textColor;
    String text;
    IconData icon;

    switch (session.status) {
      case ClassSessionStatus.scheduled:
        backgroundColor = theme.colorScheme.primaryContainer;
        textColor = theme.colorScheme.onPrimaryContainer;
        text = 'Scheduled';
        icon = Icons.schedule_rounded;
      case ClassSessionStatus.inProgress:
        backgroundColor = Colors.green.shade100;
        textColor = Colors.green.shade800;
        text = 'Live';
        icon = Icons.play_circle_rounded;
      case ClassSessionStatus.completed:
        backgroundColor = theme.colorScheme.surfaceContainerHighest;
        textColor = theme.colorScheme.onSurfaceVariant;
        text = 'Completed';
        icon = Icons.check_circle_rounded;
      case ClassSessionStatus.cancelled:
        backgroundColor = theme.colorScheme.errorContainer;
        textColor = theme.colorScheme.onErrorContainer;
        text = 'Cancelled';
        icon = Icons.cancel_rounded;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: textColor),
          const SizedBox(width: 4),
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

/// "No upcoming sessions" placeholder card.
class ClassNoSessionsCard extends StatelessWidget {
  final DateTime? classStartDate;

  const ClassNoSessionsCard({super.key, this.classStartDate});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.1),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.event_busy_rounded,
              size: 32,
              color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'No upcoming sessions',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            classStartDate != null
                ? 'Sessions will be scheduled once the class begins on ${DateFormat('MMMM d').format(classStartDate!)}.'
                : 'Check back later for session schedules.',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
