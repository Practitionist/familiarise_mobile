import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/collaborator/collaborator_entities.dart';

/// Dashboard card showing collaboration counts with navigation to detail screen
class CollaborationsSummaryCard extends StatelessWidget {
  const CollaborationsSummaryCard({
    required this.counts,
    super.key,
  });

  final CollaborationCounts counts;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasPending = counts.pendingCount > 0;

    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerHighest,
      child: InkWell(
        onTap: () => context.push('/collaborations'),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                Icons.group_outlined,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Collaborations',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '${counts.acceptedCount} active'
                      '${hasPending ? ' \u2022 ${counts.pendingCount} pending' : ''}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              if (hasPending)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.error,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '${counts.pendingCount}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              const SizedBox(width: 4),
              Icon(
                Icons.chevron_right,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
