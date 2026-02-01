import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../shared/utils/fake_data.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/consultant_dashboard_provider.dart';
import '../widgets/dashboard_section_header.dart';
import '../widgets/earnings_summary_card.dart';
import '../widgets/pending_request_card.dart';
import '../widgets/recent_review_card.dart';
import '../widgets/stats_overview_card.dart';
import '../widgets/upcoming_session_card.dart';

const _webBannerDismissedKey = 'consultant_web_banner_dismissed';

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
              "Here's what needs your attention",
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
        // Quick stats overview (always visible, at top)
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
        const SizedBox(height: 16),

        // Web App features banner
        const _WebAppBanner(),

        // Pending booking requests (most urgent — needs action)
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

        // Upcoming sessions
        if (data.upcomingSessions.isNotEmpty) ...[
          const DashboardSectionHeader(title: 'Upcoming Sessions'),
          ...data.upcomingSessions.map(
            (booking) => UpcomingSessionCard(
              booking: booking,
              showConsulteeInfo: true,
            ),
          ),
          const SizedBox(height: 16),
        ],

        // Earnings Summary
        if (data.earnings.totalEarnings > 0 ||
            data.earnings.pendingEarnings > 0) ...[
          const DashboardSectionHeader(title: 'Earnings'),
          EarningsSummaryCard(earnings: data.earnings),
          const SizedBox(height: 16),
        ],

        // Recent Reviews
        if (data.recentReviews.isNotEmpty) ...[
          const DashboardSectionHeader(title: 'Recent Reviews'),
          ...data.recentReviews.map(
            (review) => RecentReviewCard(review: review),
          ),
          const SizedBox(height: 16),
        ],
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

/// Dismissible banner directing consultants to the web app for advanced features
class _WebAppBanner extends StatefulWidget {
  const _WebAppBanner();

  @override
  State<_WebAppBanner> createState() => _WebAppBannerState();
}

class _WebAppBannerState extends State<_WebAppBanner> {
  bool _dismissed = true; // hidden by default until prefs load

  @override
  void initState() {
    super.initState();
    _loadDismissState();
  }

  Future<void> _loadDismissState() async {
    final prefs = await SharedPreferences.getInstance();
    if (!mounted) return;
    setState(() {
      _dismissed = prefs.getBool(_webBannerDismissedKey) ?? false;
    });
  }

  Future<void> _dismiss() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_webBannerDismissedKey, true);
    if (mounted) {
      setState(() => _dismissed = true);
    }
  }

  Future<void> _openWebApp() async {
    final uri = Uri.parse('https://familiarise.io');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_dismissed) return const SizedBox.shrink();

    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Card(
        elevation: 0,
        color: theme.colorScheme.primaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.language,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Manage on Web',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: _dismiss,
                    icon: Icon(
                      Icons.close,
                      size: 18,
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                    visualDensity: VisualDensity.compact,
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'Set up availability, manage requests, and reschedule '
                'sessions on familiarise.io',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 32,
                child: FilledButton.tonal(
                  onPressed: _openWebApp,
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                  child: const Text('Open Web App'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
