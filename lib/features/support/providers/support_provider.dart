import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/sentry_logger.dart';
import '../../../data/repositories/support_repository_impl.dart';
import '../../../domain/entities/support/support_entities.dart';

part 'support_provider.g.dart';

/// Provider for user's support tickets list with pagination
@riverpod
class SupportTickets extends _$SupportTickets {
  int _currentPage = 0;
  static const int _pageSize = 20;
  bool _hasMore = true;
  String? _statusFilter;

  @override
  Future<List<SupportTicket>> build() async {
    _currentPage = 0;
    _hasMore = true;
    return _fetchTickets();
  }

  /// Fetch tickets for the current page
  Future<List<SupportTicket>> _fetchTickets() async {
    final repository = ref.read(supportRepositoryProvider);
    final response = await repository.getTickets(
      status: _statusFilter,
      page: _currentPage,
      pageSize: _pageSize,
    );

    _hasMore = response.pagination.page < response.pagination.totalPages - 1;
    return response.tickets;
  }

  /// Load more tickets
  Future<void> loadMore() async {
    if (!_hasMore || state is AsyncLoading) return;

    _currentPage++;
    final previousTickets = state.valueOrNull ?? [];

    try {
      final newTickets = await _fetchTickets();
      state = AsyncData([...previousTickets, ...newTickets]);
    } catch (e, stack) {
      SentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'SupportTickets.loadMore',
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
      final tickets = await _fetchTickets();
      state = AsyncData(tickets);
    } catch (e, stack) {
      SentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'SupportTickets.filterByStatus',
      );
      state = AsyncError(e, stack);
    }
  }

  /// Refresh the tickets list
  Future<void> refresh() async {
    _currentPage = 0;
    _hasMore = true;
    ref.invalidateSelf();
  }

  /// Whether there are more items to load
  bool get hasMore => _hasMore;
}

/// Provider for a single ticket detail with responses
@riverpod
Future<SupportTicket> ticketDetail(Ref ref, {required String ticketId}) async {
  final repository = ref.watch(supportRepositoryProvider);
  return repository.getTicketById(ticketId);
}

/// Provider for creating a new ticket
@riverpod
class CreateTicket extends _$CreateTicket {
  @override
  AsyncValue<SupportTicket?> build() => const AsyncData(null);

  Future<SupportTicket?> submit(CreateTicketRequest request) async {
    state = const AsyncLoading();

    try {
      final repository = ref.read(supportRepositoryProvider);
      final ticket = await repository.createTicket(request);

      // Invalidate the tickets list to show the new ticket
      ref.invalidate(supportTicketsProvider);

      state = AsyncData(ticket);
      return ticket;
    } catch (e, stack) {
      SentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'CreateTicket.submit',
      );
      state = AsyncError(e, stack);
      return null;
    }
  }

  void reset() {
    state = const AsyncData(null);
  }
}

/// Provider for adding a response to a ticket
@riverpod
class AddTicketResponse extends _$AddTicketResponse {
  @override
  AsyncValue<SupportResponse?> build() => const AsyncData(null);

  Future<SupportResponse?> submit({
    required String ticketId,
    required String message,
  }) async {
    state = const AsyncLoading();

    try {
      final repository = ref.read(supportRepositoryProvider);
      final response = await repository.addResponse(
        ticketId: ticketId,
        message: message,
      );

      // Invalidate the ticket detail to show the new response
      ref.invalidate(ticketDetailProvider);

      state = AsyncData(response);
      return response;
    } catch (e, stack) {
      SentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'AddTicketResponse.submit',
      );
      state = AsyncError(e, stack);
      return null;
    }
  }

  void reset() {
    state = const AsyncData(null);
  }
}
