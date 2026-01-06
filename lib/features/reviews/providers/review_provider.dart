import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/sentry_logger.dart';
import '../../../data/repositories/review_repository_impl.dart';
import '../../../domain/entities/review/review_entities.dart';

part 'review_provider.g.dart';

/// Provider for submitting a review
@riverpod
class SubmitReview extends _$SubmitReview {
  @override
  AsyncValue<ConsultantReview?> build() => const AsyncData(null);

  /// Submit a review for a consultant
  Future<ConsultantReview?> submit({
    required String consultantProfileId,
    required int rating,
    String? reviewDescription,
  }) async {
    state = const AsyncLoading();

    try {
      final repository = ref.read(reviewRepositoryProvider);
      final review = await repository.createReview(
        CreateReviewRequest(
          consultantProfileId: consultantProfileId,
          rating: rating,
          reviewDescription: reviewDescription,
        ),
      );

      state = AsyncData(review);
      return review;
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'SubmitReview.submit',
      );
      state = AsyncError(e, stack);
      return null;
    }
  }

  void reset() {
    state = const AsyncData(null);
  }
}

/// Provider to check if user has reviewed a consultant
@riverpod
Future<bool> hasReviewedConsultant(
  Ref ref, {
  required String consultantProfileId,
}) async {
  final repository = ref.watch(reviewRepositoryProvider);
  return repository.hasReviewedConsultant(consultantProfileId);
}

/// Provider for fetching reviews for a consultant
@riverpod
class ConsultantReviews extends _$ConsultantReviews {
  int _currentPage = 0;
  static const int _pageSize = 20;
  bool _hasMore = true;
  String? _consultantProfileId;

  @override
  Future<List<ConsultantReview>> build({
    required String consultantProfileId,
  }) async {
    _consultantProfileId = consultantProfileId;
    _currentPage = 0;
    _hasMore = true;
    return _fetchReviews();
  }

  Future<List<ConsultantReview>> _fetchReviews() async {
    if (_consultantProfileId == null) return [];

    final repository = ref.read(reviewRepositoryProvider);
    final response = await repository.getReviewsForConsultant(
      consultantProfileId: _consultantProfileId!,
      page: _currentPage,
      pageSize: _pageSize,
    );

    _hasMore = response.pagination.page < response.pagination.totalPages - 1;
    return response.reviews;
  }

  /// Load more reviews
  Future<void> loadMore() async {
    if (!_hasMore || state is AsyncLoading) return;

    _currentPage++;
    final previousReviews = state.valueOrNull ?? [];

    try {
      final newReviews = await _fetchReviews();
      state = AsyncData([...previousReviews, ...newReviews]);
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'ConsultantReviews.loadMore',
      );
      state = AsyncError(e, stack);
    }
  }

  /// Whether there are more items to load
  bool get hasMore => _hasMore;
}
