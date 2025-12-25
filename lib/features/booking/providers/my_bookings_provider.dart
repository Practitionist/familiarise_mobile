import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/sentry_logger.dart';
import '../../../data/repositories/booking_repository_impl.dart';
import '../../../domain/entities/booking/booking_entities.dart';

part 'my_bookings_provider.g.dart';

/// Provider for user's bookings list with pagination
@riverpod
class MyBookings extends _$MyBookings {
  int _currentPage = 0;
  static const int _pageSize = 20;
  bool _hasMore = true;
  String? _statusFilter;

  @override
  Future<List<Booking>> build() async {
    _currentPage = 0;
    _hasMore = true;
    return _fetchBookings();
  }

  /// Fetch bookings for the current page
  Future<List<Booking>> _fetchBookings() async {
    final repository = ref.read(bookingRepositoryProvider);
    final response = await repository.getMyBookings(
      status: _statusFilter,
      page: _currentPage,
      pageSize: _pageSize,
    );

    _hasMore = response.pagination.page < response.pagination.totalPages - 1;
    return response.bookings;
  }

  /// Load more bookings
  Future<void> loadMore() async {
    if (!_hasMore || state is AsyncLoading) return;

    _currentPage++;
    final previousBookings = state.valueOrNull ?? [];

    try {
      final newBookings = await _fetchBookings();
      state = AsyncData([...previousBookings, ...newBookings]);
    } catch (e, stack) {
      // Keep previous data on error
      SentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'MyBookings.loadMore',
      );
      state = AsyncError(e, stack);
    }
  }

  /// Filter by status
  Future<void> filterByStatus(String? status) async {
    _statusFilter = status;
    _currentPage = 0;
    _hasMore = true;
    state = const AsyncLoading();

    try {
      final bookings = await _fetchBookings();
      state = AsyncData(bookings);
    } catch (e, stack) {
      SentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'MyBookings.filterByStatus',
      );
      state = AsyncError(e, stack);
    }
  }

  /// Filter by type (called when switching category tabs)
  /// Note: Currently the API fetches all types, so this just resets
  /// the state. Actual filtering is done client-side in the UI.
  void filterByType(String type) {
    // Could potentially add server-side filtering here in the future
    // For now, just reset status filter when changing categories
  }

  /// Refresh the bookings list
  Future<void> refresh() async {
    _currentPage = 0;
    _hasMore = true;
    ref.invalidateSelf();
  }

  /// Whether there are more items to load
  bool get hasMore => _hasMore;
}

/// Provider for a single booking detail
@riverpod
Future<Booking> bookingDetail(
  Ref ref, {
  required String id,
  required BookingType type,
}) async {
  final repository = ref.watch(bookingRepositoryProvider);
  return repository.getBookingById(id: id, type: type);
}
