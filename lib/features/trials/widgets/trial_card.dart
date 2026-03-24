import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/trial/trial_entities.dart';

class TrialCard extends StatelessWidget {
  const TrialCard({
    required this.trial,
    this.onTap,
    this.onAccept,
    this.onReject,
    this.showActions = false,
    super.key,
  });

  final TrialSession trial;
  final VoidCallback? onTap;
  final VoidCallback? onAccept;
  final VoidCallback? onReject;
  final bool showActions;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final (color, icon) = _statusDecoration(trial.status);

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon, size: 18, color: color),
                  const SizedBox(width: 8),
                  Chip(
                    label: Text(
                      trial.status.displayLabel,
                      style: TextStyle(color: color, fontSize: 11),
                    ),
                    backgroundColor: color.withValues(alpha: 0.1),
                    side: BorderSide.none,
                    visualDensity: VisualDensity.compact,
                    padding: EdgeInsets.zero,
                  ),
                  const Spacer(),
                  Text(
                    DateFormat.yMMMd().format(trial.createdAt),
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
              if (trial.notes != null && trial.notes!.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(
                  trial.notes!,
                  style: theme.textTheme.bodyMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              if (showActions && trial.status.isPending) ...[
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: onReject,
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.red,
                      ),
                      child: const Text('Reject'),
                    ),
                    const SizedBox(width: 8),
                    FilledButton(
                      onPressed: onAccept,
                      child: const Text('Accept'),
                    ),
                  ],
                ),
              ],
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
