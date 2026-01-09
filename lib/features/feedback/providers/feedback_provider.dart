import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/sentry_logger.dart';
import '../../../data/repositories/feedback_repository_impl.dart';
import '../../../domain/entities/feedback/feedback_entities.dart';

part 'feedback_provider.g.dart';

/// Provider for submitting feedback
@riverpod
class SubmitFeedback extends _$SubmitFeedback {
  @override
  AsyncValue<AppFeedback?> build() => const AsyncData(null);

  /// Submit app feedback
  Future<AppFeedback?> submit({
    required String title,
    required String description,
    FeedbackCategory? category,
    int? rating,
  }) async {
    state = const AsyncLoading();

    try {
      final repository = ref.read(feedbackRepositoryProvider);
      final feedback = await repository.createFeedback(
        CreateFeedbackRequest(
          title: title,
          description: description,
          category: category?.value,
          rating: rating,
        ),
      );

      state = AsyncData(feedback);
      return feedback;
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'SubmitFeedback.submit',
      );
      state = AsyncError(e, stack);
      return null;
    }
  }

  void reset() {
    state = const AsyncData(null);
  }
}

/// Provider for user's feedback history
@riverpod
Future<List<AppFeedback>> userFeedback(Ref ref) async {
  final repository = ref.watch(feedbackRepositoryProvider);
  return repository.getUserFeedback();
}
