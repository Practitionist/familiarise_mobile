import 'package:flutter/material.dart';

import '../../../domain/entities/booking/booking.dart';

/// Card showing a booking request with approve/reject actions (consultant)
class PendingRequestCard extends StatelessWidget {
  const PendingRequestCard({
    required this.booking,
    this.onApprove,
    this.onReject,
    this.isResponding = false,
    super.key,
  });

  final Booking booking;

  /// Approve the request (omit to hide the action row).
  final VoidCallback? onApprove;

  /// Reject the request (omit to hide the action row).
  final VoidCallback? onReject;

  /// Disables the action buttons while a response is in flight.
  final bool isResponding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: theme.colorScheme.primaryContainer,
                  child: Text(
                    _getInitials(booking.consultantName ?? 'U'),
                    style: TextStyle(
                      color: theme.colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        booking.consultantName ?? 'Unknown',
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        booking.planTitle ?? 'Consultation',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                if (booking.planPrice != null)
                  Text(
                    booking.formattedPrice,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    ),
                  ),
              ],
            ),
            if (booking.message != null && booking.message!.isNotEmpty) ...[
              const SizedBox(height: 12),
              Text(
                booking.message!,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            if (onApprove != null || onReject != null) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: isResponding ? null : onReject,
                      style: OutlinedButton.styleFrom(
                        foregroundColor: theme.colorScheme.error,
                      ),
                      child: const Text('Decline'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FilledButton(
                      onPressed: isResponding ? null : onApprove,
                      child: const Text('Approve'),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _getInitials(String name) {
    final words = name.trim().split(RegExp(r'\s+'));
    if (words.isEmpty || words.first.isEmpty) return '?';
    if (words.length >= 2 && words[1].isNotEmpty) {
      return '${words.first[0]}${words[1][0]}'.toUpperCase();
    }
    return words.first[0].toUpperCase();
  }
}
