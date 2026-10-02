import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/dio_client.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../../data/repositories/feedback_repository_impl.dart';
import '../../../domain/entities/feedback/feedback_entities.dart';

part 'feedback_provider.g.dart';

/// Session rating cause taxonomy aligned with `familiarise_web` (`RatingCause`).
enum SessionRatingCause {
  consultant('CONSULTANT', 'Consultant / Delivery'),
  platformTechnical('PLATFORM_TECHNICAL', 'Video / Audio / Tech'),
  payment('PAYMENT', 'Billing / Payment'),
  scheduling('SCHEDULING', 'Scheduling / Timing'),
  content('CONTENT', 'Session Materials'),
  other('OTHER', 'Other');

  const SessionRatingCause(this.value, this.label);

  final String value;
  final String label;
}

/// Result returned after submitting a Post-Call 1-Tap CSAT (`AppointmentFeedback`).
class AppointmentCsatResult {
  const AppointmentCsatResult({
    required this.id,
    required this.appointmentId,
    required this.rating,
    this.comment,
    this.ratingCause,
    this.reviewCreated = false,
  });

  final String id;
  final String appointmentId;
  final int rating;
  final String? comment;
  final String? ratingCause;
  final bool reviewCreated;

  factory AppointmentCsatResult.fromJson(Map<String, dynamic> json) {
    return AppointmentCsatResult(
      id: (json['id'] as String?) ?? '',
      appointmentId: (json['appointmentId'] as String?) ?? '',
      rating: (json['rating'] as num?)?.toInt() ?? 5,
      comment: json['comment'] as String?,
      ratingCause: json['ratingCause'] as String?,
      reviewCreated: (json['reviewCreated'] as bool?) ?? false,
    );
  }
}

/// Provider for submitting app feedback
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

/// Notifier for submitting Post-Call 1-Tap CSAT (`AppointmentFeedback` + optional `ConsultantReview`).
class PostCallCsatNotifier
    extends AutoDisposeNotifier<AsyncValue<AppointmentCsatResult?>> {
  @override
  AsyncValue<AppointmentCsatResult?> build() => const AsyncData(null);

  Future<AppointmentCsatResult?> submitCsat({
    required String appointmentId,
    required int rating,
    SessionRatingCause? ratingCause,
    String? comment,
    String? consultantProfileId,
    String? organizationId,
    bool publishPublicReview = false,
  }) async {
    state = const AsyncLoading();
    try {
      final dio = ref.read(dioProvider);
      final response = await dio.post(
        '/api/feedback',
        data: {
          'appointmentId': appointmentId,
          'rating': rating,
          if (ratingCause != null) 'ratingCause': ratingCause.value,
          if (comment != null && comment.trim().isNotEmpty)
            'comment': comment.trim(),
          if (consultantProfileId != null && consultantProfileId.isNotEmpty)
            'consultantProfileId': consultantProfileId,
          if (organizationId != null && organizationId.isNotEmpty)
            'organizationId': organizationId,
          'publishPublicReview': publishPublicReview,
        },
      );
      final result = AppointmentCsatResult.fromJson(
        response.data as Map<String, dynamic>,
      );
      state = AsyncData(result);
      return result;
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'PostCallCsatNotifier.submitCsat',
      );
      state = AsyncError(e, stack);
      return null;
    }
  }
}

final postCallCsatProvider = AutoDisposeNotifierProvider<PostCallCsatNotifier,
    AsyncValue<AppointmentCsatResult?>>(
  PostCallCsatNotifier.new,
);
