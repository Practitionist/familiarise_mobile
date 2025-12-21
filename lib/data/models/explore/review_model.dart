import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/explore/review.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

/// Data model for review from API
@freezed
class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required String id,
    required int rating,
    String? description,
    String? createdAt,
    ReviewerModel? reviewer,
  }) = _ReviewModel;

  const ReviewModel._();

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);

  /// Convert to domain entity
  Review toEntity() => Review(
        id: id,
        rating: rating,
        description: description,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
        reviewer: reviewer?.toEntity(),
      );
}

/// Reviewer data from API
@freezed
class ReviewerModel with _$ReviewerModel {
  const factory ReviewerModel({
    String? name,
    String? image,
  }) = _ReviewerModel;

  const ReviewerModel._();

  factory ReviewerModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewerModelFromJson(json);

  /// Convert to domain entity
  ReviewerInfo toEntity() => ReviewerInfo(
        name: name,
        image: image,
      );
}

/// Review summary data from API
@freezed
class ReviewSummaryModel with _$ReviewSummaryModel {
  const factory ReviewSummaryModel({
    @Default(0.0) double averageRating,
    @Default(0) int totalReviews,
    @Default({}) Map<String, int> ratingDistribution,
  }) = _ReviewSummaryModel;

  const ReviewSummaryModel._();

  factory ReviewSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewSummaryModelFromJson(json);

  /// Convert to domain entity
  ReviewSummary toEntity() => ReviewSummary(
        averageRating: averageRating,
        totalReviews: totalReviews,
        ratingDistribution: ratingDistribution.map(
          (key, value) => MapEntry(int.tryParse(key) ?? 0, value),
        ),
      );
}
