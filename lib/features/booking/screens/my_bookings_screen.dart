import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/booking/booking_entities.dart';
import '../providers/my_bookings_provider.dart';
import '../widgets/booking_card.dart';

/// Filter options for bookings
enum BookingFilter {
  all('All', null),
  pending('Pending', 'PENDING'),
  approved('Approved', 'APPROVED'),
  scheduled('Scheduled', 'SCHEDULED'),
  cancelled('Cancelled', 'CANCELLED');

  final String label;
  final String? value;
  const BookingFilter(this.label, this.value);
}

/// Screen showing user's booking history with modern UI
class MyBookingsScreen extends ConsumerStatefulWidget {
  const MyBookingsScreen({super.key});

  @override
  ConsumerState<MyBookingsScreen> createState() => _MyBookingsScreenState();
}

class _MyBookingsScreenState extends ConsumerState<MyBookingsScreen> {
  BookingFilter _selectedFilter = BookingFilter.all;

  @override
  Widget build(BuildContext context) {
    final bookingsAsync = ref.watch(myBookingsProvider);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Custom header
            _buildHeader(theme),

            // Filter chips
            _buildFilterChips(theme),

            // Bookings list
            Expanded(
              child: RefreshIndicator(
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
                  loading: () => _buildLoadingState(),
                  error: (error, _) => _buildError(theme, error.toString()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
      child: Row(
        children: [
          // Back button
          Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: theme.colorScheme.outlineVariant.withOpacity(0.5),
              ),
            ),
            child: IconButton(
              onPressed: () {
                // Check if we can pop, otherwise go to explore
                if (context.canPop()) {
                  context.pop();
                } else {
                  context.go('/explore');
                }
              },
              icon: const Icon(Icons.arrow_back, size: 20),
              visualDensity: VisualDensity.compact,
            ),
          ),
          const SizedBox(width: 16),
          // Title
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Bookings',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                ),
                Text(
                  'Track your consultations',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChips(ThemeData theme) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: BookingFilter.values.map((filter) {
          final isSelected = _selectedFilter == filter;

          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: FilterChip(
              label: Text(
                filter.label,
                style: TextStyle(
                  color: isSelected
                      ? theme.colorScheme.onPrimary
                      : theme.colorScheme.onSurfaceVariant,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                  fontSize: 13,
                ),
              ),
              selected: isSelected,
              onSelected: (_) {
                setState(() => _selectedFilter = filter);
                ref
                    .read(myBookingsProvider.notifier)
                    .filterByStatus(filter.value);
              },
              backgroundColor: theme.colorScheme.surface,
              selectedColor: theme.colorScheme.primary,
              showCheckmark: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: isSelected
                      ? theme.colorScheme.primary
                      : theme.colorScheme.outlineVariant.withOpacity(0.5),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildLoadingState() {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: 4,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: _ShimmerCard(),
      ),
    );
  }

  Widget _buildEmptyState(ThemeData theme) {
    return ListView(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.15),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Icon(
                    Icons.calendar_month_outlined,
                    size: 40,
                    color: theme.colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  _selectedFilter == BookingFilter.all
                      ? 'No bookings yet'
                      : 'No ${_selectedFilter.label.toLowerCase()} bookings',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  _selectedFilter == BookingFilter.all
                      ? 'Book a consultation with an expert\nto get started'
                      : 'You don\'t have any ${_selectedFilter.label.toLowerCase()}\nbookings at the moment',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                if (_selectedFilter == BookingFilter.all)
                  FilledButton.icon(
                    onPressed: () => context.go('/explore'),
                    icon: const Icon(Icons.search, size: 18),
                    label: const Text('Explore Consultants'),
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
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
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
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
    return ListView(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.15),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.errorContainer.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Icon(
                    Icons.error_outline,
                    size: 40,
                    color: theme.colorScheme.error,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Something went wrong',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  message,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 24),
                OutlinedButton.icon(
                  onPressed: () {
                    ref.read(myBookingsProvider.notifier).refresh();
                  },
                  icon: const Icon(Icons.refresh, size: 18),
                  label: const Text('Try Again'),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/// Shimmer loading card placeholder
class _ShimmerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: colorScheme.outlineVariant.withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _shimmerBox(48, 48, 12, colorScheme),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _shimmerBox(140, 16, 4, colorScheme),
                    const SizedBox(height: 8),
                    _shimmerBox(100, 12, 4, colorScheme),
                  ],
                ),
              ),
              _shimmerBox(70, 28, 14, colorScheme),
            ],
          ),
          const SizedBox(height: 16),
          Container(height: 1, color: colorScheme.outlineVariant.withOpacity(0.2)),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _shimmerBox(90, 24, 8, colorScheme),
              _shimmerBox(60, 20, 4, colorScheme),
            ],
          ),
        ],
      ),
    );
  }

  Widget _shimmerBox(double width, double height, double radius, ColorScheme colorScheme) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: colorScheme.outlineVariant.withOpacity(0.2),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
