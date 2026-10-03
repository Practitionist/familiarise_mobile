import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/formatters.dart';
import '../../../domain/entities/organization/organization_entities.dart';
import '../providers/organization_provider.dart';

/// View of the user's organization memberships, program seat utilization,
/// credit pool balance, and Enterprise Learner Seat Redemption CTA.
class MyOrganizationScreen extends ConsumerWidget {
  const MyOrganizationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final membershipsAsync = ref.watch(myMembershipsProvider);
    final assignmentsAsync = ref.watch(myProgramAssignmentsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('My Organization')),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(myMembershipsProvider);
          ref.invalidate(myProgramAssignmentsProvider);
          // Keep the spinner active until the refetch completes
          await Future.wait([
            ref.read(myMembershipsProvider.future),
            ref.read(myProgramAssignmentsProvider.future),
          ]);
        },
        child: membershipsAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, _) => _ErrorView(
            onRetry: () => ref.invalidate(myMembershipsProvider),
          ),
          data: (memberships) {
            if (memberships.isEmpty) {
              return const _EmptyView();
            }
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                for (final membership in memberships)
                  _MembershipCard(membership: membership),
                const SizedBox(height: 8),
                assignmentsAsync.when(
                  loading: () => const Padding(
                    padding: EdgeInsets.all(24),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                  error: (error, _) => const SizedBox.shrink(),
                  data: (assignments) {
                    if (assignments.isEmpty) return const SizedBox.shrink();
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            'Your Programs & Assigned Seats',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                        for (final assignment in assignments)
                          _AssignmentCard(assignment: assignment),
                      ],
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _MembershipCard extends StatelessWidget {
  const _MembershipCard({required this.membership});

  final OrgMembership membership;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final org = membership.organization;

    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerHighest,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: theme.colorScheme.primaryContainer,
              child: Icon(
                Icons.business,
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    org.name,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    [
                      _roleLabel(membership.role),
                      if (membership.departmentLabel != null)
                        membership.departmentLabel!,
                    ].join(' · '),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _roleLabel(String role) {
    return switch (role) {
      'OWNER' => 'Owner',
      'MAINTAINER' => 'Maintainer',
      'BILLING_ADMIN' => 'Billing Admin',
      'MANAGER' => 'Manager',
      'EXPERT' => 'Expert',
      'LEARNER' => 'Learner',
      'SUPPORT' => 'Support',
      _ => role,
    };
  }
}

class _AssignmentCard extends StatelessWidget {
  const _AssignmentCard({required this.assignment});

  final ProgramAssignmentInfo assignment;

  bool _canBookSeat(ProgramEntitlement entitlement) {
    if (entitlement.type == 'LICENSED_SEAT') {
      final allocated =
          entitlement.sessionsAllocated ?? entitlement.coveredEngagementsPerCycle;
      final used = entitlement.sessionsUsed ?? entitlement.engagementsUsed ?? 0;
      final remaining = entitlement.remainingSeats ??
          entitlement.engagementsRemaining ??
          (allocated != null
              ? (allocated - used).clamp(0, allocated)
              : null);
      return remaining == null || remaining > 0;
    }
    final creditRemaining =
        entitlement.creditPoolBalancePaise ?? entitlement.creditRemainingPaise;
    return creditRemaining == null || creditRemaining > 0;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final entitlement = assignment.entitlement;
    final canRedeemSeat = _canBookSeat(entitlement);

    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerHighest,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        assignment.program.name,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Sponsored by ${assignment.organization.name}',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: canRedeemSeat
                        ? theme.colorScheme.primaryContainer
                        : theme.colorScheme.surfaceContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    entitlement.type == 'LICENSED_SEAT'
                        ? 'Licensed Seat'
                        : 'Credit Pool',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: canRedeemSeat
                          ? theme.colorScheme.onPrimaryContainer
                          : theme.colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            if (assignment.program.description != null &&
                assignment.program.description!.trim().isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                assignment.program.description!,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
            const SizedBox(height: 14),
            _EntitlementMeter(entitlement: entitlement),
            if (assignment.periodEnd != null) ...[
              const SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.autorenew,
                    size: 14,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Cycle renews ${Formatters.date(assignment.periodEnd!)}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ],
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: canRedeemSeat
                    ? () => context.go(
                          '/explore?programAssignmentId=${Uri.encodeComponent(assignment.id)}',
                        )
                    : null,
                icon: const Icon(Icons.event_seat_outlined, size: 18),
                label: Text(
                  canRedeemSeat
                      ? 'Book Session with Org Seat'
                      : 'All Cycle Seats Used',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EntitlementMeter extends StatelessWidget {
  const _EntitlementMeter({required this.entitlement});

  final ProgramEntitlement entitlement;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (entitlement.type == 'LICENSED_SEAT') {
      final sessionsAllocated =
          entitlement.sessionsAllocated ?? entitlement.coveredEngagementsPerCycle;
      final sessionsUsed =
          entitlement.sessionsUsed ?? entitlement.engagementsUsed ?? 0;
      final remainingSeats = entitlement.remainingSeats ??
          entitlement.engagementsRemaining ??
          (sessionsAllocated != null
              ? (sessionsAllocated - sessionsUsed).clamp(0, sessionsAllocated)
              : null);
      final sessionsHeld = entitlement.sessionsHeld ??
          (sessionsAllocated != null && remainingSeats != null
              ? (sessionsAllocated - sessionsUsed - remainingSeats)
                  .clamp(0, sessionsAllocated)
              : 0);

      if (sessionsAllocated == null) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Unlimited sessions this cycle · $sessionsUsed used',
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 6,
              children: [
                _StatPill(
                  label: 'Allocated',
                  value: 'Unlimited',
                  color: theme.colorScheme.primary,
                ),
                _StatPill(
                  label: 'Used',
                  value: '$sessionsUsed',
                  color: theme.colorScheme.secondary,
                ),
              ],
            ),
          ],
        );
      }

      final utilizationFraction = sessionsAllocated == 0
          ? 0.0
          : ((sessionsUsed + sessionsHeld) / sessionsAllocated).clamp(0.0, 1.0);

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${remainingSeats ?? 0} of $sessionsAllocated seats remaining',
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '${(utilizationFraction * 100).round()}% used',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LinearProgressIndicator(
              value: utilizationFraction,
              minHeight: 8,
              backgroundColor: theme.colorScheme.surfaceContainer,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 6,
            children: [
              _StatPill(
                label: 'Allocated',
                value: '$sessionsAllocated',
                color: theme.colorScheme.primary,
              ),
              _StatPill(
                label: 'Used',
                value: '$sessionsUsed',
                color: theme.colorScheme.secondary,
              ),
              _StatPill(
                label: 'Held',
                value: '$sessionsHeld',
                color: Colors.orange.shade700,
              ),
              _StatPill(
                label: 'Remaining',
                value: '${remainingSeats ?? 0}',
                color: Colors.green.shade700,
              ),
            ],
          ),
        ],
      );
    }

    // Credit Pool entitlement
    final budget =
        entitlement.creditPoolBudgetPaise ?? entitlement.creditBudgetPaise;
    final remaining = entitlement.creditPoolBalancePaise ??
        entitlement.creditRemainingPaise ??
        0;
    final consumed = entitlement.consumedPaise ??
        (budget != null ? (budget - remaining).clamp(0, budget) : 0);

    if (budget == null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Credit-funded sessions',
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          if (remaining > 0) ...[
            const SizedBox(height: 4),
            Text(
              'Credit Pool Balance: '
              '${Formatters.currency(Formatters.fromMinorUnits(remaining), 'INR')}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ],
      );
    }

    final remainingFraction =
        budget == 0 ? 0.0 : (remaining / budget).clamp(0.0, 1.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'Credit Pool Balance: '
                '${Formatters.currency(Formatters.fromMinorUnits(remaining), 'INR')} '
                'of ${Formatters.currency(Formatters.fromMinorUnits(budget), 'INR')}',
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: LinearProgressIndicator(
            value: remainingFraction,
            minHeight: 8,
            backgroundColor: theme.colorScheme.surfaceContainer,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 8,
          runSpacing: 6,
          children: [
            _StatPill(
              label: 'Budget',
              value: Formatters.currency(
                Formatters.fromMinorUnits(budget),
                'INR',
              ),
              color: theme.colorScheme.primary,
            ),
            _StatPill(
              label: 'Used',
              value: Formatters.currency(
                Formatters.fromMinorUnits(consumed),
                'INR',
              ),
              color: theme.colorScheme.secondary,
            ),
            _StatPill(
              label: 'Balance',
              value: Formatters.currency(
                Formatters.fromMinorUnits(remaining),
                'INR',
              ),
              color: Colors.green.shade700,
            ),
          ],
        ),
      ],
    );
  }
}

class _StatPill extends StatelessWidget {
  const _StatPill({
    required this.label,
    required this.value,
    required this.color,
  });

  final String label;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.6),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$label: ',
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          Text(
            value,
            style: theme.textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
      children: [
        const SizedBox(height: 120),
        Icon(
          Icons.business_outlined,
          size: 64,
          color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
        ),
        const SizedBox(height: 16),
        Text(
          'No organization yet',
          textAlign: TextAlign.center,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: Text(
            'When your employer or institution adds you to their '
            'Familiarise organization, it will appear here.',
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 120),
        const Icon(Icons.error_outline, size: 48),
        const SizedBox(height: 16),
        const Text(
          'Could not load your organization',
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Center(
          child: OutlinedButton(
            onPressed: onRetry,
            child: const Text('Retry'),
          ),
        ),
      ],
    );
  }
}
