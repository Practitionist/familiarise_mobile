import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/utils/web_dashboard_launcher.dart';
import '../../../domain/entities/booking/booking.dart';
import '../../../shared/utils/fake_data.dart';
import '../providers/consultant_schedule_provider.dart';

/// Schedule screen for consultant - Companion Starter UX showing upcoming
/// session countdowns, 1-tap "Join Video Call", and Web handoff for calendar
/// grid / availability mutations.
class ScheduleScreen extends ConsumerWidget {
  const ScheduleScreen({super.key});

  Future<void> _launchWebDashboard(BuildContext context) =>
      launchFamiliariseWebDashboard(context);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scheduleAsync = ref.watch(consultantScheduleProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => _launchWebDashboard(context),
            icon: const Icon(Icons.open_in_new),
            tooltip: 'Manage Availability / Reschedule on Web',
          ),
        ],
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

    final entries = grouped.entries.toList();

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: entries.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: _WebScheduleCompanionBanner(
              onManageOnWeb: () => _launchWebDashboard(context),
            ),
          );
        }

        final entry = entries[index - 1];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (index > 1) const SizedBox(height: 16),
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
              (booking) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: _CompanionSessionCard(
                  booking: booking,
                  onManageOnWeb: () => _launchWebDashboard(context),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        _WebScheduleCompanionBanner(
          onManageOnWeb: () => _launchWebDashboard(context),
        ),
        const SizedBox(height: 48),
        Icon(
          Icons.calendar_month_outlined,
          size: 64,
          color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
        ),
        const SizedBox(height: 16),
        Text(
          'No upcoming sessions',
          textAlign: TextAlign.center,
          style: theme.textTheme.titleMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Your scheduled sessions and live video call links will appear here.',
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  Widget _buildSkeleton(BuildContext context) {
    return Skeletonizer(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: FakeData.bookings(3)
            .map(
              (booking) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: _CompanionSessionCard(
                  booking: booking,
                  onManageOnWeb: () {},
                ),
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

class _WebScheduleCompanionBanner extends StatelessWidget {
  const _WebScheduleCompanionBanner({required this.onManageOnWeb});

  final VoidCallback onManageOnWeb;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: 0,
      color: colorScheme.primaryContainer.withValues(alpha: 0.35),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: colorScheme.primary.withValues(alpha: 0.2),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.edit_calendar_outlined,
                  size: 20,
                  color: colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Companion Schedule View',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              'Join upcoming calls in 1 tap on mobile. Manage weekly availability '
              'slots and calendar rescheduling on the Familiarise web dashboard.',
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: onManageOnWeb,
                icon: const Icon(Icons.open_in_new, size: 18),
                label: const Text('Manage Availability / Reschedule on Web'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum _CountdownState { live, imminent, upcoming, future, past }

class _CompanionSessionCard extends StatelessWidget {
  const _CompanionSessionCard({
    required this.booking,
    required this.onManageOnWeb,
  });

  final Booking booking;
  final VoidCallback onManageOnWeb;

  (_CountdownState, String) _computeCountdown(BookingSlot? slot) {
    if (slot == null) {
      return (_CountdownState.upcoming, 'Scheduled');
    }

    final now = DateTime.now();
    if (now.isAfter(slot.startsAt) && now.isBefore(slot.endsAt)) {
      final minsLeft = slot.endsAt.difference(now).inMinutes.clamp(1, 999);
      return (_CountdownState.live, 'LIVE NOW • ${minsLeft}m left');
    }

    if (now.isBefore(slot.startsAt)) {
      final diff = slot.startsAt.difference(now);
      if (diff.inMinutes <= 15) {
        final mins = diff.inMinutes.clamp(1, 15);
        return (_CountdownState.imminent, 'Starts in ${mins}m');
      }
      if (diff.inHours < 1) {
        return (_CountdownState.upcoming, 'Starts in ${diff.inMinutes}m');
      }
      if (diff.inHours < 24) {
        final hours = diff.inHours;
        final mins = diff.inMinutes % 60;
        return (
          _CountdownState.upcoming,
          mins > 0 ? 'Starts in ${hours}h ${mins}m' : 'Starts in ${hours}h',
        );
      }
      final days = diff.inDays;
      return (
        _CountdownState.future,
        'Starts in $days day${days == 1 ? '' : 's'}',
      );
    }

    return (_CountdownState.past, 'Session ended');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final slot = booking.slots.isNotEmpty ? booking.slots.first : null;
    final (countdownState, countdownLabel) = _computeCountdown(slot);

    final isLiveOrUpcoming = countdownState == _CountdownState.live ||
        countdownState == _CountdownState.imminent ||
        booking.canJoinMeeting;

    final counterpartName = booking.isGroupProgram
        ? booking.bookingType.value
        : (booking.consulteeName ?? booking.consultantName ?? 'Participant');

    Color badgeBg;
    Color badgeFg;
    switch (countdownState) {
      case _CountdownState.live:
        badgeBg = Colors.green.withValues(alpha: 0.15);
        badgeFg = Colors.green.shade700;
      case _CountdownState.imminent:
        badgeBg = Colors.orange.withValues(alpha: 0.15);
        badgeFg = Colors.orange.shade800;
      case _CountdownState.upcoming:
      case _CountdownState.future:
        badgeBg = colorScheme.primaryContainer;
        badgeFg = colorScheme.onPrimaryContainer;
      case _CountdownState.past:
        badgeBg = colorScheme.surfaceContainerHighest;
        badgeFg = colorScheme.onSurfaceVariant;
    }

    return Card(
      elevation: 0,
      color: colorScheme.surfaceContainerHighest,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          final typeValue = booking.bookingType.value;
          context.push('/booking-details/${booking.id}?type=$typeValue');
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (slot != null) ...[
                    Container(
                      width: 52,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Text(
                            DateFormat('dd').format(slot.startsAt.toLocal()),
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                          Text(
                            DateFormat('MMM').format(slot.startsAt.toLocal()),
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                  ],
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                color: badgeBg,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    countdownState == _CountdownState.live
                                        ? Icons.sensors
                                        : Icons.schedule,
                                    size: 13,
                                    color: badgeFg,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    countdownLabel,
                                    style: theme.textTheme.labelSmall?.copyWith(
                                      color: badgeFg,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Text(
                          booking.planTitle ?? 'Session',
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          counterpartName,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                        if (slot != null) ...[
                          const SizedBox(height: 4),
                          Text(
                            '${DateFormat('h:mm a').format(slot.startsAt.toLocal())}'
                            ' - ${DateFormat('h:mm a').format(slot.endsAt.toLocal())}',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
              if (booking.appointmentId != null &&
                  (isLiveOrUpcoming ||
                      (booking.status == RequestStatus.scheduled &&
                          countdownState != _CountdownState.past))) ...[
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: () {
                      context.push('/meeting/${booking.appointmentId}');
                    },
                    icon: const Icon(Icons.videocam_outlined, size: 18),
                    label: const Text('Join Video Call'),
                    style: FilledButton.styleFrom(
                      backgroundColor: countdownState == _CountdownState.live
                          ? Colors.green
                          : null,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
