import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/support/support_entities.dart';

/// Card widget displaying a support ticket summary
class TicketCard extends StatelessWidget {
  final SupportTicket ticket;
  final VoidCallback? onTap;

  const TicketCard({
    super.key,
    required this.ticket,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final dateFormat = DateFormat('MMM d, yyyy');

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
              color: colorScheme.outlineVariant.withValues(alpha: 0.3),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header row
              Row(
                children: [
                  // Title
                  Expanded(
                    child: Text(
                      ticket.title,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Status badge
                  _buildStatusBadge(theme, ticket.status),
                ],
              ),
              const SizedBox(height: 8),

              // Description preview
              Text(
                ticket.description,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),

              // Meta row
              Row(
                children: [
                  // Issue type chip
                  if (ticket.issueType != null) ...[
                    _buildChip(
                      theme,
                      ticket.issueType!.displayName,
                      colorScheme.primaryContainer.withValues(alpha: 0.5),
                      colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                  ],
                  // Priority chip
                  _buildPriorityChip(theme, ticket.priority),
                  const Spacer(),
                  // Date
                  if (ticket.createdAt != null)
                    Text(
                      dateFormat.format(ticket.createdAt!),
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusBadge(ThemeData theme, TicketStatus status) {
    final (color, bgColor) = _getStatusColors(theme, status);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        status.displayName,
        style: theme.textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  (Color, Color) _getStatusColors(ThemeData theme, TicketStatus status) {
    switch (status) {
      case TicketStatus.open:
        return (
          theme.colorScheme.primary,
          theme.colorScheme.primaryContainer.withValues(alpha: 0.5),
        );
      case TicketStatus.inProgress:
        return (
          Colors.orange.shade700,
          Colors.orange.shade50,
        );
      case TicketStatus.onHold:
        return (
          Colors.amber.shade700,
          Colors.amber.shade50,
        );
      case TicketStatus.resolved:
        return (
          Colors.green.shade700,
          Colors.green.shade50,
        );
      case TicketStatus.closed:
        return (
          theme.colorScheme.onSurfaceVariant,
          theme.colorScheme.surfaceContainerHighest,
        );
    }
  }

  Widget _buildChip(
    ThemeData theme,
    String label,
    Color bgColor,
    Color textColor,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: theme.textTheme.labelSmall?.copyWith(
          color: textColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildPriorityChip(ThemeData theme, TicketPriority priority) {
    final (color, bgColor) = _getPriorityColors(priority);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.flag, size: 12, color: color),
          const SizedBox(width: 4),
          Text(
            priority.displayName,
            style: theme.textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  (Color, Color) _getPriorityColors(TicketPriority priority) {
    switch (priority) {
      case TicketPriority.low:
        return (Colors.grey.shade600, Colors.grey.shade100);
      case TicketPriority.medium:
        return (Colors.blue.shade600, Colors.blue.shade50);
      case TicketPriority.high:
        return (Colors.orange.shade600, Colors.orange.shade50);
      case TicketPriority.urgent:
        return (Colors.red.shade600, Colors.red.shade50);
    }
  }
}
