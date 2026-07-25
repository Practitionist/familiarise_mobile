import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/trial/trial_entities.dart';

class TrialCard extends StatelessWidget {
  const TrialCard({
    required this.trial,
    this.isConsultantView = false,
    this.onTap,
    this.onAccept,
    this.onReject,
    this.showActions = false,
    super.key,
  });

  final TrialSession trial;
  final bool isConsultantView;
  final VoidCallback? onTap;
  final VoidCallback? onAccept;
  final VoidCallback? onReject;
  final bool showActions;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final (statusColor, statusIcon) = _statusDecoration(trial.status);

    // Show the counterparty's name
    final displayName = isConsultantView
        ? (trial.consulteeName ?? 'Consultee')
        : (trial.consultantName ?? 'Consultant');
    final displayImage =
        isConsultantView ? trial.consulteeImage : trial.consultantImage;

    return Material(
      color: colorScheme.surface,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: colorScheme.outlineVariant.withValues(alpha: 0.5),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row 1: Avatar + Name/Plan + Status badge
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor:
                        colorScheme.primaryContainer.withValues(alpha: 0.5),
                    backgroundImage: displayImage != null
                        ? NetworkImage(displayImage)
                        : null,
                    child: displayImage == null
                        ? Text(
                            displayName.isNotEmpty
                                ? displayName[0].toUpperCase()
                                : '?',
                            style: TextStyle(
                              color: colorScheme.onPrimaryContainer,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        : null,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          displayName,
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        if (trial.planTitle != null)
                          Text(
                            trial.planTitle!,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Status badge
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: statusColor.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(statusIcon, size: 14, color: statusColor),
                        const SizedBox(width: 4),
                        Text(
                          trial.status.displayLabel,
                          style: TextStyle(
                            color: statusColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Row 2: Notes
              if (trial.notes != null && trial.notes!.isNotEmpty) ...[
                const SizedBox(height: 10),
                Text(
                  trial.notes!,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],

              // Row 3: Date + Actions
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    size: 14,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    DateFormat.yMMMd().format(trial.requestedAt),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const Spacer(),
                  if (showActions) ...[
                    SizedBox(
                      width: 76,
                      height: 32,
                      child: OutlinedButton(
                        onPressed: onReject,
                        style: OutlinedButton.styleFrom(
                          foregroundColor: colorScheme.error,
                          side: BorderSide(
                            color: colorScheme.error.withValues(alpha: 0.5),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          visualDensity: VisualDensity.compact,
                        ),
                        child: const Text('Reject',
                            style: TextStyle(fontSize: 12)),
                      ),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(
                      width: 76,
                      height: 32,
                      child: FilledButton(
                        onPressed: onAccept,
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          visualDensity: VisualDensity.compact,
                        ),
                        child: const Text('Accept',
                            style: TextStyle(fontSize: 12)),
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  (Color, IconData) _statusDecoration(TrialStatus status) => switch (status) {
        TrialStatus.pending => (Colors.orange, Icons.hourglass_top),
        TrialStatus.scheduled => (Colors.blue, Icons.event),
        TrialStatus.completed => (Colors.green, Icons.check_circle),
        TrialStatus.converted => (Colors.purple, Icons.star),
        TrialStatus.cancelled => (Colors.grey, Icons.cancel),
        TrialStatus.rejected => (Colors.red, Icons.block),
      };
}
