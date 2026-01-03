import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_entities.freezed.dart';
part 'review_entities.g.dart';

/// Consultant review entity
@freezed
class ConsultantReview with _$ConsultantReview {
  const factory ConsultantReview({
    required String id,
    required String consulteeProfileId,
    required String consultantProfileId,
    required int rating,
    String? reviewDescription,
    String? reviewerName,
    String? reviewerImage,
    DateTime? createdAt,
  }) = _ConsultantReview;

  factory ConsultantReview.fromJson(Map<String, dynamic> json) =>
      _$ConsultantReviewFromJson(json);
}

/// Request to create a review
@freezed
class CreateReviewRequest with _$CreateReviewRequest {
  const factory CreateReviewRequest({
    required String consultantProfileId,
    required int rating,
    String? reviewDescription,
  }) = _CreateReviewRequest;

  factory CreateReviewRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateReviewRequestFromJson(json);
}

extension CreateReviewRequestX on CreateReviewRequest {
  Map<String, dynamic> toRequestJson() {
    return {
      'consultantProfileId': consultantProfileId,
      'rating': rating,
      if (reviewDescription != null) 'reviewDescription': reviewDescription,
    };
  }
}

/// Reviews list response with pagination
@freezed
class ReviewsResponse with _$ReviewsResponse {
  const factory ReviewsResponse({
    required List<ConsultantReview> reviews,
    required ReviewsPagination pagination,
    double? averageRating,
  }) = _ReviewsResponse;
}

/// Pagination info for reviews
@freezed
class ReviewsPagination with _$ReviewsPagination {
  const factory ReviewsPagination({
    required int page,
    required int pageSize,
    required int totalCount,
    required int totalPages,
  }) = _ReviewsPagination;
}
