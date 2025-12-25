import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/booking/booking_entities.dart';
import '../providers/my_bookings_provider.dart';
import '../widgets/booking_card.dart';

/// Category tabs for bookings
enum BookingCategory {
  consultations('Consultations', 'CONSULTATION', Icons.videocam_outlined),
  subscriptions('Subscriptions', 'SUBSCRIPTION', Icons.repeat),
  webinars('Webinars', 'WEBINAR', Icons.groups_outlined),
  classes('Classes', 'CLASS', Icons.school_outlined);

  final String label;
  final String value;
  final IconData icon;
  const BookingCategory(this.label, this.value, this.icon);
}

/// Status filter options
enum StatusFilter {
  all('All', null),
  pending('Pending', 'PENDING'),
  approved('Approved', 'APPROVED'),
  scheduled('Scheduled', 'SCHEDULED'),
  completed('Completed', 'COMPLETED'),
  cancelled('Cancelled', 'CANCELLED');

  final String label;
  final String? value;
  const StatusFilter(this.label, this.value);
}

/// Screen showing user's booking history organized by category
class MyBookingsScreen extends ConsumerStatefulWidget {
  const MyBookingsScreen({super.key});

  @override
  ConsumerState<MyBookingsScreen> createState() => _MyBookingsScreenState();
}

class _MyBookingsScreenState extends ConsumerState<MyBookingsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  StatusFilter _selectedStatus = StatusFilter.all;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: BookingCategory.values.length, vsync: this);
    _tabController.addListener(_onTabChanged);
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  void _onTabChanged() {
    if (_tabController.indexIsChanging) return;
    final category = BookingCategory.values[_tabController.index];
    ref.read(myBookingsProvider.notifier).filterByType(category.value);
  }

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

            // Category tabs
            _buildCategoryTabs(theme),

            // Status filter chips
            _buildStatusFilters(theme),

            // Bookings list
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: BookingCategory.values.map((category) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      await ref.read(myBookingsProvider.notifier).refresh();
                    },
                    child: bookingsAsync.when(
                      data: (bookings) {
                        // Filter by current category
                        final filteredBookings = bookings.where((b) {
                          final matchesCategory = b.bookingType.value == category.value;
                          final matchesStatus = _selectedStatus.value == null ||
                              b.status.value == _selectedStatus.value;
                          return matchesCategory && matchesStatus;
                        }).toList();

                        if (filteredBookings.isEmpty) {
                          return _buildEmptyState(theme, category);
                        }
                        return _buildBookingsList(context, ref, filteredBookings, category);
                      },
                      loading: () => _buildLoadingState(),
                      error: (error, _) => _buildError(theme, error.toString()),
                    ),
                  );
                }).toList(),
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
                color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
              ),
            ),
            child: IconButton(
              onPressed: () {
                if (context.canPop()) {
                  context.pop();
                } else {
                  context.go('/dashboard');
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
                  'Manage your sessions',
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

  Widget _buildCategoryTabs(ThemeData theme) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TabBar(
        controller: _tabController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.all(4),
        labelColor: theme.colorScheme.onPrimary,
        unselectedLabelColor: theme.colorScheme.onSurfaceVariant,
        labelStyle: theme.textTheme.labelMedium?.copyWith(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: theme.textTheme.labelMedium,
        dividerColor: Colors.transparent,
        splashBorderRadius: BorderRadius.circular(10),
        tabs: BookingCategory.values.map((category) {
          return Tab(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(category.icon, size: 16),
                  const SizedBox(width: 6),
                  Text(category.label),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildStatusFilters(ThemeData theme) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: StatusFilter.values.map((status) {
          final isSelected = _selectedStatus == status;

          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: FilterChip(
              label: Text(
                status.label,
                style: TextStyle(
                  color: isSelected
                      ? theme.colorScheme.onPrimary
                      : theme.colorScheme.onSurfaceVariant,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                  fontSize: 12,
                ),
              ),
              selected: isSelected,
              onSelected: (_) {
                setState(() => _selectedStatus = status);
              },
              backgroundColor: theme.colorScheme.surface,
              selectedColor: theme.colorScheme.primary,
              showCheckmark: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  color: isSelected
                      ? theme.colorScheme.primary
                      : theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              visualDensity: VisualDensity.compact,
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

  Widget _buildEmptyState(ThemeData theme, BookingCategory category) {
    final (icon, message, submessage) = _getEmptyStateContent(category);

    return ListView(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
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
                    color: theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Icon(icon, size: 40, color: theme.colorScheme.primary),
                ),
                const SizedBox(height: 24),
                Text(
                  message,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  submessage,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                if (_selectedStatus == StatusFilter.all)
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

  (IconData, String, String) _getEmptyStateContent(BookingCategory category) {
    final statusText = _selectedStatus == StatusFilter.all
        ? ''
        : '${_selectedStatus.label.toLowerCase()} ';

    switch (category) {
      case BookingCategory.consultations:
        return (
          Icons.videocam_outlined,
          'No ${statusText}consultations',
          'Book a one-on-one session\nwith an expert',
        );
      case BookingCategory.subscriptions:
        return (
          Icons.repeat,
          'No ${statusText}subscriptions',
          'Subscribe to ongoing mentorship\nfrom your favorite consultants',
        );
      case BookingCategory.webinars:
        return (
          Icons.groups_outlined,
          'No ${statusText}webinars',
          'Join live group sessions\nand workshops',
        );
      case BookingCategory.classes:
        return (
          Icons.school_outlined,
          'No ${statusText}classes',
          'Enroll in structured courses\nand programs',
        );
    }
  }

  Widget _buildBookingsList(
    BuildContext context,
    WidgetRef ref,
    List<Booking> bookings,
    BookingCategory category,
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
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
        itemCount: bookings.length,
        itemBuilder: (context, index) {
          final booking = bookings[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: BookingCard(
              booking: booking,
              onTap: () {
                // Navigate to booking detail (when implemented)
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Booking details: ${booking.id}'),
                    duration: const Duration(seconds: 1),
                  ),
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
                    color: theme.colorScheme.errorContainer.withValues(alpha: 0.3),
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
          color: colorScheme.outlineVariant.withValues(alpha: 0.3),
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
          Container(height: 1, color: colorScheme.outlineVariant.withValues(alpha: 0.2)),
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
        color: colorScheme.outlineVariant.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
