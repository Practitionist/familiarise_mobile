import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../shared/utils/fake_data.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/consultee_dashboard_provider.dart';
import '../widgets/dashboard_section_header.dart';
import '../widgets/pending_payment_card.dart';
import '../widgets/quick_actions_row.dart';
import '../widgets/stats_overview_card.dart';
import '../widgets/upcoming_session_card.dart';

/// Dashboard screen for consultee users
class ConsulteeDashboardScreen extends ConsumerWidget {
  const ConsulteeDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final user = ref.watch(currentUserProvider);
    final dashboardAsync = ref.watch(consulteeDashboardProvider);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back${user?.name != null ? ", ${user!.name}" : ""}!',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Your consultation dashboard',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(consulteeDashboardProvider);
        },
        child: dashboardAsync.when(
          data: (data) => _buildContent(context, ref, data),
          loading: () => _buildSkeleton(context),
          error: (error, _) => _buildError(context, ref, error),
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    WidgetRef ref,
    ConsulteeDashboardData data,
  ) {
    final stats = data.stats;
    final sessions = data.upcomingSessions;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Stats overview card
        StatsOverviewCard(
          items: [
            StatItem(
              label: 'Upcoming',
              value: '${stats.upcomingSessions}',
              icon: Icons.event,
            ),
            StatItem(
              label: 'Completed',
              value: '${stats.completedSessions}',
              icon: Icons.check_circle_outline,
            ),
            StatItem(
              label: 'Subscriptions',
              value: '${stats.activeSubscriptions}',
              icon: Icons.repeat,
            ),
            StatItem(
              label: 'Total Spent',
              value: '\u20B9${stats.totalSpent.toStringAsFixed(0)}',
              icon: Icons.payments_outlined,
            ),
          ],
        ),
        const SizedBox(height: 20),

        // Quick links to destinations that are not bottom tabs
        QuickActionsRow(
          actions: [
            QuickAction(
              label: 'Programs',
              icon: Icons.school_outlined,
              onTap: () => context.push('/programs'),
            ),
            QuickAction(
              label: 'Organization',
              icon: Icons.business_outlined,
              onTap: () => context.push('/organization'),
            ),
            QuickAction(
              label: 'Support',
              icon: Icons.support_agent_outlined,
              onTap: () => context.push('/support'),
            ),
          ],
        ),
        const SizedBox(height: 20),

        // Pending payments
        if (stats.pendingPayments > 0) ...[
          PendingPaymentCard(
            count: stats.pendingPayments,
            onTap: () => context.push('/my-bookings'),
          ),
          const SizedBox(height: 16),
        ],

        // Upcoming sessions
        DashboardSectionHeader(
          title: 'Upcoming Sessions',
          onViewAll: sessions.isNotEmpty
              ? () => context.push('/my-bookings')
              : null,
        ),
        if (sessions.isEmpty)
          _buildEmptyState(context)
        else
          ...sessions.map(
            (booking) => UpcomingSessionCard(booking: booking),
          ),
      ],
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Column(
          children: [
            Icon(
              Icons.event_available,
              size: 64,
              color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
            ),
            const SizedBox(height: 16),
            Text(
              'No upcoming sessions',
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Find an expert and book your first consultation',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: () => context.go('/explore'),
              icon: const Icon(Icons.search),
              label: const Text('Explore Experts'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkeleton(BuildContext context) {
    return Skeletonizer(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          StatsOverviewCard(
            items: [
              const StatItem(label: 'Upcoming', value: '0'),
              const StatItem(label: 'Completed', value: '0'),
              const StatItem(label: 'Subscriptions', value: '0'),
              const StatItem(label: 'Total Spent', value: '\u20B90'),
            ],
          ),
          const SizedBox(height: 20),
          ...FakeData.bookings(3).map(
            (booking) => UpcomingSessionCard(booking: booking),
          ),
        ],
      ),
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
              'Failed to load dashboard',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              error.toString(),
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            FilledButton.tonal(
              onPressed: () => ref.invalidate(consulteeDashboardProvider),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
