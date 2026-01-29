import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../shared/utils/fake_data.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/consultant_dashboard_provider.dart';
import '../widgets/dashboard_section_header.dart';
import '../widgets/earnings_summary_card.dart';
import '../widgets/pending_request_card.dart';
import '../widgets/recent_review_card.dart';
import '../widgets/stats_overview_card.dart';
import '../widgets/upcoming_session_card.dart';

/// Dashboard screen for consultant users
class ConsultantDashboardScreen extends ConsumerWidget {
  const ConsultantDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final user = ref.watch(currentUserProvider);
    final dashboardAsync = ref.watch(consultantDashboardProvider);

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
              'Your consultant dashboard',
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
          ref.invalidate(consultantDashboardProvider);
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
    ConsultantDashboardData data,
  ) {
    final stats = data.stats;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Stats overview card
        StatsOverviewCard(
          items: [
            StatItem(
              label: 'Total Clients',
              value: '${stats.totalClients}',
              icon: Icons.people_outline,
            ),
            StatItem(
              label: 'Sessions',
              value: '${stats.totalSessionsConducted}',
              icon: Icons.event_available,
            ),
            StatItem(
              label: 'Avg Rating',
              value: stats.averageRating > 0
                  ? stats.averageRating.toStringAsFixed(1)
                  : '-',
              icon: Icons.star_outline,
            ),
            StatItem(
              label: 'Earnings',
              value: '\u20B9${stats.totalEarnings.toStringAsFixed(0)}',
              icon: Icons.payments_outlined,
            ),
          ],
        ),
        const SizedBox(height: 20),

        // Today's schedule / upcoming sessions
        if (data.upcomingSessions.isNotEmpty) ...[
          const DashboardSectionHeader(title: "Today's Schedule"),
          ...data.upcomingSessions.map(
            (booking) => UpcomingSessionCard(
              booking: booking,
              showConsulteeInfo: true,
            ),
          ),
          const SizedBox(height: 16),
        ],

        // Pending booking requests
        if (data.pendingRequests.isNotEmpty) ...[
          DashboardSectionHeader(
            title: 'Pending Requests',
            trailing: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.error,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '${data.pendingRequests.length}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ...data.pendingRequests.map(
            (booking) => PendingRequestCard(booking: booking),
          ),
          const SizedBox(height: 16),
        ],

        // Recent reviews
        if (data.recentReviews.isNotEmpty) ...[
          const DashboardSectionHeader(title: 'Recent Reviews'),
          ...data.recentReviews.take(3).map(
                (review) => RecentReviewCard(review: review),
              ),
          const SizedBox(height: 16),
        ],

        // Earnings summary
        EarningsSummaryCard(earnings: data.earnings),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildSkeleton(BuildContext context) {
    return Skeletonizer(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          StatsOverviewCard(
            items: [
              const StatItem(label: 'Clients', value: '0'),
              const StatItem(label: 'Sessions', value: '0'),
              const StatItem(label: 'Rating', value: '-'),
              const StatItem(label: 'Earnings', value: '\u20B90'),
            ],
          ),
          const SizedBox(height: 20),
          ...FakeData.bookings(2).map(
            (booking) => UpcomingSessionCard(
              booking: booking,
              showConsulteeInfo: true,
            ),
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
              onPressed: () => ref.invalidate(consultantDashboardProvider),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
