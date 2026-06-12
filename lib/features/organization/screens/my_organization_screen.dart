import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/formatters.dart';
import '../../../domain/entities/organization/organization_entities.dart';
import '../providers/organization_provider.dart';

/// Read-only view of the user's organization memberships and entitlements.
///
/// Org administration (members, contracts, billing, invoices) lives on the
/// web — mobile only surfaces what the member needs while booking.
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
                            'Your Programs',
                            style: Theme.of(context).textTheme.titleMedium,
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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final entitlement = assignment.entitlement;

    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerHighest,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              assignment.program.name,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              'Sponsored by ${assignment.organization.name}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 12),
            _EntitlementMeter(entitlement: entitlement),
            if (assignment.periodEnd != null) ...[
              const SizedBox(height: 8),
              Text(
                'Cycle renews ${Formatters.date(assignment.periodEnd!)}',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
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
      final covered = entitlement.coveredEngagementsPerCycle;
      final used = entitlement.engagementsUsed ?? 0;
      if (covered == null) {
        return Text(
          'Unlimited sessions this cycle · $used used',
          style: theme.textTheme.bodyMedium,
        );
      }
      return _meter(
        theme,
        label: '${entitlement.engagementsRemaining ?? 0} of $covered '
            'sessions left this cycle',
        fraction: covered == 0 ? 0 : (covered - used).clamp(0, covered) / covered,
      );
    }

    final budget = entitlement.creditBudgetPaise;
    final remaining = entitlement.creditRemainingPaise ?? 0;
    if (budget == null) {
      return Text(
        'Credit-funded sessions',
        style: theme.textTheme.bodyMedium,
      );
    }
    return _meter(
      theme,
      label:
          '${Formatters.currency(Formatters.fromMinorUnits(remaining), 'INR')} '
          'of ${Formatters.currency(Formatters.fromMinorUnits(budget), 'INR')} '
          'credits left this cycle',
      fraction: budget == 0 ? 0 : remaining / budget,
    );
  }

  Widget _meter(ThemeData theme,
      {required String label, required double fraction}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: theme.textTheme.bodyMedium),
        const SizedBox(height: 6),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: fraction.clamp(0.0, 1.0),
            minHeight: 6,
          ),
        ),
      ],
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
