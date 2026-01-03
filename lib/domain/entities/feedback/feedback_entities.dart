import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_entities.freezed.dart';
part 'feedback_entities.g.dart';

/// Feedback category enum
enum FeedbackCategory {
  suggestion('SUGGESTION', 'Suggestion'),
  bugReport('BUG_REPORT', 'Bug Report'),
  featureRequest('FEATURE_REQUEST', 'Feature Request'),
  compliment('COMPLIMENT', 'Compliment'),
  complaint('COMPLAINT', 'Complaint'),
  other('OTHER', 'Other');

  final String value;
  final String displayName;
  const FeedbackCategory(this.value, this.displayName);

  static FeedbackCategory fromString(String value) {
    return FeedbackCategory.values.firstWhere(
      (c) => c.value == value,
      orElse: () => FeedbackCategory.other,
    );
  }
}

/// App feedback entity
@freezed
class AppFeedback with _$AppFeedback {
  const factory AppFeedback({
    required String id,
    required String userId,
    required String title,
    required String description,
    FeedbackCategory? category,
    int? rating,
    String? status,
    DateTime? createdAt,
  }) = _AppFeedback;

  factory AppFeedback.fromJson(Map<String, dynamic> json) =>
      _$AppFeedbackFromJson(json);
}

/// Request to create feedback
@freezed
class CreateFeedbackRequest with _$CreateFeedbackRequest {
  const factory CreateFeedbackRequest({
    required String title,
    required String description,
    String? category,
    int? rating,
  }) = _CreateFeedbackRequest;

  factory CreateFeedbackRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateFeedbackRequestFromJson(json);
}

extension CreateFeedbackRequestX on CreateFeedbackRequest {
  Map<String, dynamic> toRequestJson() {
    return {
      'title': title,
      'description': description,
      if (category != null) 'category': category,
      if (rating != null) 'rating': rating,
    };
  }
}
