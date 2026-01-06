import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/errors/error_messages.dart';
import '../../../data/repositories/consultant_repository_impl.dart';
import '../../../domain/entities/common/paginated_result.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../../domain/entities/explore/consultant.dart';
import 'explore_filters_provider.dart';

part 'consultants_provider.g.dart';

/// State for paginated consultants list
class ConsultantsState {
  final List<Consultant> consultants;
  final Pagination pagination;
  final bool isLoading;
  final bool isLoadingMore;
  final String? error;

  const ConsultantsState({
    this.consultants = const [],
    this.pagination = const Pagination(),
    this.isLoading = false,
    this.isLoadingMore = false,
    this.error,
  });

  ConsultantsState copyWith({
    List<Consultant>? consultants,
    Pagination? pagination,
    bool? isLoading,
    bool? isLoadingMore,
    String? error,
  }) {
    return ConsultantsState(
      consultants: consultants ?? this.consultants,
      pagination: pagination ?? this.pagination,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      error: error,
    );
  }

  bool get hasMore => pagination.hasNextPage;
  bool get isEmpty => consultants.isEmpty && !isLoading;
}

/// Provider for managing paginated consultants list
@riverpod
class ConsultantsNotifier extends _$ConsultantsNotifier {
  @override
  ConsultantsState build() {
    // Listen to filter changes and reload
    ref.listen(exploreFiltersNotifierProvider, (_, __) {
      refresh();
    });

    // Load initial data
    _loadInitial();

    return const ConsultantsState(isLoading: true);
  }

  Future<void> _loadInitial() async {
    try {
      final filters = ref.read(exploreFiltersNotifierProvider);
      final repository = ref.read(consultantRepositoryProvider);

      final result = await repository.getConsultants(
        filters: filters,
        page: 0,
      );

      state = ConsultantsState(
        consultants: result.items,
        pagination: result.pagination,
      );
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'ConsultantsNotifier._loadInitial',
      );
      state = ConsultantsState(error: ErrorMessages.getConsultantsLoadError(e));
    }
  }

  /// Refresh the consultants list from the beginning
  Future<void> refresh() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final filters = ref.read(exploreFiltersNotifierProvider);
      final repository = ref.read(consultantRepositoryProvider);

      final result = await repository.getConsultants(
        filters: filters,
        page: 0,
      );

      state = ConsultantsState(
        consultants: result.items,
        pagination: result.pagination,
      );
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'ConsultantsNotifier.refresh',
      );
      state = state.copyWith(
          isLoading: false, error: ErrorMessages.getConsultantsLoadError(e));
    }
  }

  /// Load more consultants (next page)
  Future<void> loadMore() async {
    if (state.isLoadingMore || !state.hasMore) return;

    state = state.copyWith(isLoadingMore: true);

    try {
      final filters = ref.read(exploreFiltersNotifierProvider);
      final repository = ref.read(consultantRepositoryProvider);

      final result = await repository.getConsultants(
        filters: filters,
        page: state.pagination.page + 1,
      );

      state = state.copyWith(
        consultants: [...state.consultants, ...result.items],
        pagination: result.pagination,
        isLoadingMore: false,
      );
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'ConsultantsNotifier.loadMore',
      );
      state = state.copyWith(
          isLoadingMore: false,
          error: ErrorMessages.getConsultantsLoadError(e));
    }
  }
}

/// Provider for fetching a single consultant by ID
@riverpod
Future<Consultant?> consultantById(Ref ref, String id) async {
  final state = ref.watch(consultantsNotifierProvider);

  // First try to find in cached list
  final cached = state.consultants.where((c) => c.id == id).firstOrNull;
  if (cached != null) return cached;

  // Otherwise fetch from API - but we only have basic info in list endpoint
  // The detail page should use consultantDetailsProvider instead
  return null;
}
