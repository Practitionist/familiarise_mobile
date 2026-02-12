import 'package:flutter/material.dart';

import '../../../domain/entities/collaborator/collaborator_entities.dart';

/// Card displaying a single collaboration (pending or active)
class CollaborationCard extends StatelessWidget {
  const CollaborationCard({
    required this.collaboration,
    this.onAccept,
    this.onDecline,
    this.isResponding = false,
    super.key,
  });

  final Collaboration collaboration;
  final VoidCallback? onAccept;
  final VoidCallback? onDecline;
  final bool isResponding;

  bool get isPending => collaboration.status == 'PENDING';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final symbol = '\u20B9';

    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerHighest,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Plan title + type badge
            Row(
              children: [
                Expanded(
                  child: Text(
                    collaboration.planTitle,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 8),
                _TypeBadge(planType: collaboration.planType),
              ],
            ),
            const SizedBox(height: 12),

            // Role + Revenue share
            Row(
              children: [
                _RoleBadge(role: collaboration.role),
                const Spacer(),
                if (collaboration.revenueSharePercentage > 0) ...[
                  Icon(
                    Icons.pie_chart_outline,
                    size: 14,
                    color: theme.colorScheme.primary,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${collaboration.revenueSharePercentage.toStringAsFixed(0)}% share',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 8),

            // Host info
            Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundImage: collaboration.hostImage != null
                      ? NetworkImage(collaboration.hostImage!)
                      : null,
                  child: collaboration.hostImage == null
                      ? Text(
                          collaboration.hostName.isNotEmpty
                              ? collaboration.hostName[0].toUpperCase()
                              : '?',
                          style: const TextStyle(fontSize: 10),
                        )
                      : null,
                ),
                const SizedBox(width: 8),
                Text(
                  'Host: ${collaboration.hostName}',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                if (collaboration.planPrice > 0) ...[
                  const Spacer(),
                  Text(
                    '$symbol${collaboration.planPrice}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ],
            ),

            // Invited by (if different from host)
            if (collaboration.inviterName.isNotEmpty &&
                collaboration.inviterName != collaboration.hostName) ...[
              const SizedBox(height: 4),
              Text(
                'Invited by ${collaboration.inviterName}',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  fontSize: 11,
                ),
              ),
            ],

            // Accept/Decline buttons for pending
            if (isPending) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: isResponding ? null : onDecline,
                      child: const Text('Decline'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FilledButton(
                      onPressed: isResponding ? null : onAccept,
                      child: isResponding
                          ? const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                              ),
                            )
                          : const Text('Accept'),
                    ),
                  ),
                ],
              ),
            ],

            // Status badge for accepted
            if (!isPending) ...[
              const SizedBox(height: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.green.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'Active',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _TypeBadge extends StatelessWidget {
  const _TypeBadge({required this.planType});
  final String planType;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isWebinar = planType == 'webinar';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: (isWebinar ? Colors.purple : Colors.blue)
            .withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        isWebinar ? 'Webinar' : 'Class',
        style: theme.textTheme.labelSmall?.copyWith(
          color: isWebinar ? Colors.purple : Colors.blue,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _RoleBadge extends StatelessWidget {
  const _RoleBadge({required this.role});
  final String role;

  String get _displayRole {
    switch (role) {
      case 'CO_HOST':
        return 'Co-Host';
      case 'MODERATOR':
        return 'Moderator';
      case 'GUEST_SPEAKER':
        return 'Guest Speaker';
      case 'TECHNICAL_SUPPORT':
        return 'Tech Support';
      case 'CO_INSTRUCTOR':
        return 'Co-Instructor';
      case 'TEACHING_ASSISTANT':
        return 'TA';
      case 'GUEST_LECTURER':
        return 'Guest Lecturer';
      case 'CONTENT_CREATOR':
        return 'Content Creator';
      default:
        return role;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        _displayRole,
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.onSecondaryContainer,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
