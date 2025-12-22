import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/booking/booking_entities.dart';
import '../providers/my_bookings_provider.dart';
import '../widgets/booking_card.dart';

/// Screen showing user's booking history
class MyBookingsScreen extends ConsumerWidget {
  const MyBookingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookingsAsync = ref.watch(myBookingsProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bookings'),
        actions: [
          PopupMenuButton<String?>(
            icon: const Icon(Icons.filter_list),
            onSelected: (status) {
              ref.read(myBookingsProvider.notifier).filterByStatus(status);
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: null,
                child: Text('All'),
              ),
              const PopupMenuItem(
                value: 'PENDING',
                child: Text('Pending'),
              ),
              const PopupMenuItem(
                value: 'APPROVED',
                child: Text('Approved'),
              ),
              const PopupMenuItem(
                value: 'SCHEDULED',
                child: Text('Scheduled'),
              ),
              const PopupMenuItem(
                value: 'CANCELLED',
                child: Text('Cancelled'),
              ),
            ],
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(myBookingsProvider.notifier).refresh();
        },
        child: bookingsAsync.when(
          data: (bookings) {
            if (bookings.isEmpty) {
              return _buildEmptyState(theme);
            }
            return _buildBookingsList(context, ref, bookings);
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, _) => _buildError(theme, error.toString()),
        ),
      ),
    );
  }

  Widget _buildEmptyState(ThemeData theme) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.calendar_today,
              size: 64,
              color: theme.colorScheme.outline,
            ),
            const SizedBox(height: 16),
            Text(
              'No bookings yet',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Your booking history will appear here',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookingsList(
    BuildContext context,
    WidgetRef ref,
    List<Booking> bookings,
  ) {
    final notifier = ref.read(myBookingsProvider.notifier);

    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollEndNotification) {
          final metrics = notification.metrics;
          if (metrics.pixels >= metrics.maxScrollExtent - 200) {
            notifier.loadMore();
          }
        }
        return false;
      },
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: bookings.length,
        itemBuilder: (context, index) {
          final booking = bookings[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: BookingCard(
              booking: booking,
              onTap: () {
                context.pushNamed(
                  'bookingDetail',
                  pathParameters: {'id': booking.id},
                  queryParameters: {'type': booking.bookingType.value},
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildError(ThemeData theme, String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              size: 48,
              color: theme.colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              'Failed to load bookings',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              message,
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
}
