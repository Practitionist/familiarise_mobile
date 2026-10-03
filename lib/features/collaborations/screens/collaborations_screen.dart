import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/collaborator/collaborator_entities.dart';
import '../providers/collaborations_provider.dart';
import '../widgets/collaboration_card.dart';

/// Invitee Inbox screen showing webinar/class collaboration invites and active
/// collaborations, allowing consultants to accept or decline in 1 tap.
class CollaborationsScreen extends ConsumerWidget {
  const CollaborationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collaborationsAsync = ref.watch(collaborationsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Collaboration Invites'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(collaborationsProvider);
        },
        child: collaborationsAsync.when(
          data: (data) => _buildContent(context, ref, data),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, _) => _buildError(context, ref, error),
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    WidgetRef ref,
    CollaborationsResponse data,
  ) {
    final theme = Theme.of(context);
    final allCollaborations = [
      ...data.webinarCollaborations,
      ...data.classCollaborations,
    ];

    final pending =
        allCollaborations.where((c) => c.status == 'PENDING').toList();
    final active =
        allCollaborations.where((c) => c.status == 'ACCEPTED').toList();

    if (allCollaborations.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.inbox_outlined,
                size: 64,
                color:
                    theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
              ),
              const SizedBox(height: 16),
              Text(
                'Your Invitee Inbox is empty',
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                'When other consultants invite you to collaborate on '
                'webinars or classes, they will appear here with role '
                'and revenue share details.',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Pending invitations (Invitee Inbox)
        if (pending.isNotEmpty) ...[
          Row(
            children: [
              Icon(
                Icons.mail_outline,
                size: 20,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: 8),
              Text(
                'Invitee Inbox',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: theme.colorScheme.error,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '${pending.length}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...pending.map(
            (c) => _PendingCollaborationCard(collaboration: c),
          ),
          const SizedBox(height: 24),
        ],

        // Active collaborations
        if (active.isNotEmpty) ...[
          Text(
            'Active Collaborations',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          ...active.map(
            (c) => CollaborationCard(collaboration: c),
          ),
        ],
      ],
    );
  }

  Widget _buildError(BuildContext context, WidgetRef ref, Object error) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: theme.colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              'Failed to load collaborations',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            FilledButton.tonal(
              onPressed: () => ref.invalidate(collaborationsProvider),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}

/// Wrapper for pending collaboration cards with 1-tap accept/decline handling
class _PendingCollaborationCard extends ConsumerWidget {
  const _PendingCollaborationCard({required this.collaboration});

  final Collaboration collaboration;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final respondState = ref.watch(respondToCollaborationProvider);
    final isResponding = respondState is AsyncLoading;

    return CollaborationCard(
      collaboration: collaboration,
      isResponding: isResponding,
      onAccept: () => _handleOneTapResponse(context, ref, 'ACCEPTED'),
      onDecline: () => _handleOneTapResponse(context, ref, 'DECLINED'),
    );
  }

  Future<void> _handleOneTapResponse(
    BuildContext context,
    WidgetRef ref,
    String action,
  ) async {
    final success =
        await ref.read(respondToCollaborationProvider.notifier).respond(
              id: collaboration.id,
              response: action,
              planType: collaboration.planType,
            );

    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            success
                ? (action == 'ACCEPTED'
                    ? 'Collaboration invite accepted!'
                    : 'Collaboration invite declined')
                : 'Failed to respond. Please try again.',
          ),
        ),
      );
    }
  }
}
