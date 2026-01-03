import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/review/review_entities.dart';
import '../datasources/remote/review_remote_source.dart';

part 'review_repository_impl.g.dart';

/// Provider for ReviewRepository
@riverpod
ReviewRepository reviewRepository(Ref ref) {
  return ReviewRepositoryImpl(
    remoteSource: ref.watch(reviewRemoteSourceProvider),
  );
}

/// Repository interface for review operations
abstract class ReviewRepository {
  /// Submit a review for a consultant
  Future<ConsultantReview> createReview(CreateReviewRequest request);

  /// Get reviews for a consultant
  Future<ReviewsResponse> getReviewsForConsultant({
    required String consultantProfileId,
    int page = 0,
    int pageSize = 20,
  });

  /// Check if user has already reviewed a consultant
  Future<bool> hasReviewedConsultant(String consultantProfileId);
}

/// Implementation of ReviewRepository
class ReviewRepositoryImpl implements ReviewRepository {
  final ReviewRemoteSource _remoteSource;

  ReviewRepositoryImpl({required ReviewRemoteSource remoteSource})
      : _remoteSource = remoteSource;

  @override
  Future<ConsultantReview> createReview(CreateReviewRequest request) {
    return _remoteSource.createReview(request);
  }

  @override
  Future<ReviewsResponse> getReviewsForConsultant({
    required String consultantProfileId,
    int page = 0,
    int pageSize = 20,
  }) {
    return _remoteSource.getReviewsForConsultant(
      consultantProfileId: consultantProfileId,
      page: page,
      pageSize: pageSize,
    );
  }

  @override
  Future<bool> hasReviewedConsultant(String consultantProfileId) {
    return _remoteSource.hasReviewedConsultant(consultantProfileId);
  }
}
