import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

/// A review left by a consultee for a consultant
@freezed
class Review with _$Review {
  const factory Review({
    required String id,
    required int rating,
    String? description,
    DateTime? createdAt,
    ReviewerInfo? reviewer,
  }) = _Review;

  const Review._();

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  /// Time ago string (e.g., "2 days ago")
  /// Converts to local timezone before calculating relative time
  String get timeAgo {
    if (createdAt == null) return '';
    final localCreatedAt = createdAt!.toLocal();
    final now = DateTime.now();
    final diff = now.difference(localCreatedAt);

    if (diff.inDays > 365) {
      final years = (diff.inDays / 365).floor();
      return '$years ${years == 1 ? 'year' : 'years'} ago';
    }
    if (diff.inDays > 30) {
      final months = (diff.inDays / 30).floor();
      return '$months ${months == 1 ? 'month' : 'months'} ago';
    }
    if (diff.inDays > 0) {
      return '${diff.inDays} ${diff.inDays == 1 ? 'day' : 'days'} ago';
    }
    if (diff.inHours > 0) {
      return '${diff.inHours} ${diff.inHours == 1 ? 'hour' : 'hours'} ago';
    }
    return 'Just now';
  }
}

/// Reviewer information for a review
@freezed
class ReviewerInfo with _$ReviewerInfo {
  const factory ReviewerInfo({
    String? name,
    String? image,
  }) = _ReviewerInfo;

  const ReviewerInfo._();

  factory ReviewerInfo.fromJson(Map<String, dynamic> json) =>
      _$ReviewerInfoFromJson(json);

  /// Display name with fallback
  String get displayName => name ?? 'Anonymous';

  /// Initials for avatar
  String get initials {
    if (name == null || name!.isEmpty) return 'A';
    final words = name!.trim().split(RegExp(r'\s+'));
    if (words.isEmpty || words.first.isEmpty) return 'A';
    if (words.length >= 2 && words[1].isNotEmpty) {
      return '${words.first[0]}${words[1][0]}'.toUpperCase();
    }
    return words.first[0].toUpperCase();
  }
}

/// Summary of reviews for a consultant
@freezed
class ReviewSummary with _$ReviewSummary {
  const factory ReviewSummary({
    @Default(0.0) double averageRating,
    @Default(0) int totalReviews,
    @Default({}) Map<int, int> ratingDistribution,
  }) = _ReviewSummary;

  const ReviewSummary._();

  factory ReviewSummary.fromJson(Map<String, dynamic> json) =>
      _$ReviewSummaryFromJson(json);

  /// Get count for a specific star rating
  int getCountForRating(int stars) => ratingDistribution[stars] ?? 0;

  /// Get percentage for a specific star rating
  double getPercentageForRating(int stars) {
    if (totalReviews == 0) return 0;
    return (getCountForRating(stars) / totalReviews) * 100;
  }
}
