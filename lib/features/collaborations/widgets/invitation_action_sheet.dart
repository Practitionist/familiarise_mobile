import 'package:flutter/material.dart';

import '../../../domain/entities/collaborator/collaborator_entities.dart';

/// Modal bottom sheet confirming accept/decline of a collaboration invitation
class InvitationActionSheet extends StatelessWidget {
  const InvitationActionSheet({
    required this.collaboration,
    required this.action,
    super.key,
  });

  final Collaboration collaboration;

  /// 'ACCEPTED' or 'DECLINED'
  final String action;

  bool get isAccept => action == 'ACCEPTED';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.fromLTRB(
        24,
        24,
        24,
        24 + MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isAccept ? 'Accept Invitation?' : 'Decline Invitation?',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            isAccept
                ? 'You will join "${collaboration.planTitle}" as a collaborator '
                    'with ${collaboration.revenueSharePercentage.toStringAsFixed(0)}% revenue share.'
                : 'Are you sure you want to decline the invitation to '
                    '"${collaboration.planTitle}"?',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text('Cancel'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: FilledButton(
                  onPressed: () => Navigator.pop(context, true),
                  style: isAccept
                      ? null
                      : FilledButton.styleFrom(
                          backgroundColor: theme.colorScheme.error,
                        ),
                  child: Text(isAccept ? 'Accept' : 'Decline'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
