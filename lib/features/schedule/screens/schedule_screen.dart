import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../domain/entities/booking/booking.dart';
import '../../../shared/utils/fake_data.dart';
import '../../dashboard/widgets/upcoming_session_card.dart';
import '../providers/consultant_schedule_provider.dart';

/// Schedule screen for consultant - shows upcoming sessions grouped by day
class ScheduleScreen extends ConsumerWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scheduleAsync = ref.watch(consultantScheduleProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(consultantScheduleProvider);
        },
        child: scheduleAsync.when(
          data: (sessions) => _buildContent(context, sessions),
          loading: () => _buildSkeleton(context),
          error: (error, _) => _buildError(context, ref, error),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, List<Booking> sessions) {
    if (sessions.isEmpty) {
      return _buildEmptyState(context);
    }

    // Group sessions by day
    final grouped = <String, List<Booking>>{};
    for (final session in sessions) {
      final slot = session.slots.isNotEmpty ? session.slots.first : null;
      final date = slot?.startsAt.toLocal() ?? session.createdAt?.toLocal();
      final key = date != null
          ? DateFormat('EEEE, MMMM d').format(date)
          : 'Unscheduled';
      grouped.putIfAbsent(key, () => []).add(session);
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: grouped.length,
      itemBuilder: (context, index) {
        final entry = grouped.entries.elementAt(index);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (index > 0) const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                entry.key,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
            ...entry.value.map(
              (booking) => UpcomingSessionCard(
                booking: booking,
                showConsulteeInfo: true,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.calendar_month_outlined,
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
            'Your scheduled sessions will appear here',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkeleton(BuildContext context) {
    return Skeletonizer(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: FakeData.bookings(3)
            .map(
              (booking) => UpcomingSessionCard(
                booking: booking,
                showConsulteeInfo: true,
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildError(BuildContext context, WidgetRef ref, Object error) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: theme.colorScheme.error),
          const SizedBox(height: 16),
          Text('Failed to load schedule', style: theme.textTheme.titleMedium),
          const SizedBox(height: 16),
          FilledButton.tonal(
            onPressed: () => ref.invalidate(consultantScheduleProvider),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
