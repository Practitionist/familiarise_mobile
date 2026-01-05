import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/feedback/feedback_entities.dart';
import '../datasources/remote/feedback_remote_source.dart';

part 'feedback_repository_impl.g.dart';

/// Provider for FeedbackRepository
@riverpod
FeedbackRepository feedbackRepository(Ref ref) {
  return FeedbackRepositoryImpl(
    remoteSource: ref.watch(feedbackRemoteSourceProvider),
  );
}

/// Repository interface for feedback operations
abstract class FeedbackRepository {
  /// Submit app feedback
  Future<AppFeedback> createFeedback(CreateFeedbackRequest request);

  /// Get user's feedback submissions
  Future<List<AppFeedback>> getUserFeedback();
}

/// Implementation of FeedbackRepository
class FeedbackRepositoryImpl implements FeedbackRepository {
  final FeedbackRemoteSource _remoteSource;

  FeedbackRepositoryImpl({required FeedbackRemoteSource remoteSource})
      : _remoteSource = remoteSource;

  @override
  Future<AppFeedback> createFeedback(CreateFeedbackRequest request) {
    return _remoteSource.createFeedback(request);
  }

  @override
  Future<List<AppFeedback>> getUserFeedback() {
    return _remoteSource.getUserFeedback();
  }
}
