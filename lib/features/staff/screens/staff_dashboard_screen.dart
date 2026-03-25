import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../providers/staff_provider.dart';

class StaffDashboardScreen extends ConsumerWidget {
  const StaffDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statsAsync = ref.watch(staffStatsProvider);
    final ticketsAsync = ref.watch(staffTicketsProvider);
    final verificationsAsync =
        ref.watch(pendingVerificationsProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Staff Dashboard')),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(staffStatsProvider);
          ref.invalidate(staffTicketsProvider);
          ref.invalidate(pendingVerificationsProvider);
        },
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Stats cards
            statsAsync.when(
              data: (stats) => Row(
                children: [
                  _StatCard(
                    label: 'Open Tickets',
                    value: stats['openTickets'] ?? 0,
                    icon: Icons.support_agent,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 12),
                  _StatCard(
                    label: 'Pending Verify',
                    value: stats['pendingVerifications'] ?? 0,
                    icon: Icons.verified_user,
                    color: Colors.orange,
                  ),
                  const SizedBox(width: 12),
                  _StatCard(
                    label: 'Feedback',
                    value: stats['pendingFeedback'] ?? 0,
                    icon: Icons.feedback,
                    color: Colors.purple,
                  ),
                ],
              ),
              loading: () => const SizedBox(
                height: 100,
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (_, __) =>
                  const Text('Failed to load stats'),
            ),

            const SizedBox(height: 24),

            // Pending verifications
            Text(
              'Pending Verifications',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            verificationsAsync.when(
              data: (verifications) {
                if (verifications.isEmpty) {
                  return const Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text('No pending verifications'),
                    ),
                  );
                }
                return Column(
                  children: verifications.take(5).map((v) {
                    return Card(
                      child: ListTile(
                        leading: const Icon(
                          Icons.verified_user,
                          color: Colors.orange,
                        ),
                        title: Text(
                          v['consultantProfileId'] as String? ??
                              'Unknown',
                        ),
                        subtitle: Text(
                          'Submitted ${_formatDate(v['submittedAt'])}',
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        ),
                      ),
                    );
                  }).toList(),
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (_, __) =>
                  const Text('Failed to load verifications'),
            ),

            const SizedBox(height: 24),

            // Recent tickets
            Text(
              'Recent Support Tickets',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            ticketsAsync.when(
              data: (tickets) {
                if (tickets.isEmpty) {
                  return const Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text('No tickets'),
                    ),
                  );
                }
                return Column(
                  children: tickets.take(10).map((t) {
                    return Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.support_agent,
                          color: t['status'] == 'OPEN'
                              ? Colors.blue
                              : Colors.grey,
                        ),
                        title: Text(
                          t['subject'] as String? ?? 'No subject',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          t['status'] as String? ?? 'Unknown',
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        ),
                      ),
                    );
                  }).toList(),
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (_, __) =>
                  const Text('Failed to load tickets'),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(dynamic dateValue) {
    if (dateValue == null) return 'Unknown';
    if (dateValue is String) {
      final date = DateTime.tryParse(dateValue);
      if (date != null) return DateFormat.yMMMd().format(date);
    }
    return dateValue.toString();
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });

  final String label;
  final int value;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Icon(icon, color: color, size: 24),
              const SizedBox(height: 8),
              Text(
                '$value',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
