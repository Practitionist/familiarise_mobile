import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/consultant_repository_impl.dart';
import '../../../domain/entities/common/paginated_result.dart';
import '../../../domain/entities/explore/review.dart';

part 'consultant_reviews_provider.g.dart';

/// State for paginated reviews list
class ReviewsState {
  final List<Review> reviews;
  final Pagination pagination;
  final bool isLoading;
  final bool isLoadingMore;
  final String? error;

  const ReviewsState({
    this.reviews = const [],
    this.pagination = const Pagination(),
    this.isLoading = false,
    this.isLoadingMore = false,
    this.error,
  });

  ReviewsState copyWith({
    List<Review>? reviews,
    Pagination? pagination,
    bool? isLoading,
    bool? isLoadingMore,
    String? error,
  }) {
    return ReviewsState(
      reviews: reviews ?? this.reviews,
      pagination: pagination ?? this.pagination,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      error: error,
    );
  }

  bool get hasMore => pagination.hasNextPage;
  bool get isEmpty => reviews.isEmpty && !isLoading;
}

/// Provider for managing paginated reviews for a consultant
@riverpod
class ConsultantReviewsNotifier extends _$ConsultantReviewsNotifier {
  @override
  ReviewsState build(String consultantId) {
    // Load initial data
    _loadInitial();
    return const ReviewsState(isLoading: true);
  }

  Future<void> _loadInitial() async {
    try {
      final repository = ref.read(consultantRepositoryProvider);

      final result = await repository.getConsultantReviews(
        consultantId: consultantId,
        page: 0,
      );

      state = ReviewsState(
        reviews: result.items,
        pagination: result.pagination,
      );
    } catch (e) {
      state = ReviewsState(error: e.toString());
    }
  }

  /// Refresh reviews from the beginning
  Future<void> refresh() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final repository = ref.read(consultantRepositoryProvider);

      final result = await repository.getConsultantReviews(
        consultantId: consultantId,
        page: 0,
      );

      state = ReviewsState(
        reviews: result.items,
        pagination: result.pagination,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  /// Load more reviews (next page)
  Future<void> loadMore() async {
    if (state.isLoadingMore || !state.hasMore) return;

    state = state.copyWith(isLoadingMore: true);

    try {
      final repository = ref.read(consultantRepositoryProvider);

      final result = await repository.getConsultantReviews(
        consultantId: consultantId,
        page: state.pagination.page + 1,
      );

      state = state.copyWith(
        reviews: [...state.reviews, ...result.items],
        pagination: result.pagination,
        isLoadingMore: false,
      );
    } catch (e) {
      state = state.copyWith(isLoadingMore: false, error: e.toString());
    }
  }
}
