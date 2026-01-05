import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../domain/entities/review/review_entities.dart';
import '../../../shared/providers/core_providers.dart';

part 'review_remote_source.g.dart';

/// Provider for ReviewRemoteSource
@riverpod
ReviewRemoteSource reviewRemoteSource(Ref ref) {
  return ReviewRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source interface for review operations
abstract class ReviewRemoteSource {
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

/// Implementation of ReviewRemoteSource
class ReviewRemoteSourceImpl implements ReviewRemoteSource {
  final Dio _dio;

  ReviewRemoteSourceImpl(this._dio);

  @override
  Future<ConsultantReview> createReview(CreateReviewRequest request) async {
    try {
      final response = await _dio.post(
        '/api/reviews',
        data: request.toRequestJson(),
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return _parseReview(data);
      }

      throw ServerException(
        message: 'Failed to submit review',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      // Check for already reviewed error
      if (e.response?.statusCode == 409) {
        throw const AlreadyExistsException(
          resource: 'Review',
          message: 'You have already reviewed this consultant',
        );
      }
      final errorMessage = _extractErrorMessage(e);
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: errorMessage ?? 'Failed to submit review',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<ReviewsResponse> getReviewsForConsultant({
    required String consultantProfileId,
    int page = 0,
    int pageSize = 20,
  }) async {
    try {
      final response = await _dio.get(
        '/api/reviews',
        queryParameters: {
          'consultantProfileId': consultantProfileId,
          'page': page,
          'pageSize': pageSize,
        },
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return _parseReviewsResponse(data);
      }

      throw ServerException(
        message: 'Failed to fetch reviews',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to fetch reviews',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<bool> hasReviewedConsultant(String consultantProfileId) async {
    // This would typically be a separate endpoint, but for now we can
    // check by trying to get the user's review for this consultant
    try {
      final response = await _dio.get(
        '/api/reviews',
        queryParameters: {
          'consultantProfileId': consultantProfileId,
          'checkOwn': true,
        },
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return data['hasReviewed'] as bool? ?? false;
      }

      return false;
    } catch (_) {
      return false;
    }
  }

  /// Parse reviews response
  ReviewsResponse _parseReviewsResponse(Map<String, dynamic> json) {
    final reviewsJson = json['reviews'] as List<dynamic>? ?? [];
    final paginationJson =
        json['pagination'] as Map<String, dynamic>? ?? <String, dynamic>{};

    final reviews =
        reviewsJson.map((r) => _parseReview(r as Map<String, dynamic>)).toList();

    final pagination = ReviewsPagination(
      page: paginationJson['page'] as int? ?? 0,
      pageSize: paginationJson['pageSize'] as int? ?? 20,
      totalCount: paginationJson['totalCount'] as int? ?? 0,
      totalPages: paginationJson['totalPages'] as int? ?? 0,
    );

    return ReviewsResponse(
      reviews: reviews,
      pagination: pagination,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
    );
  }

  /// Parse a single review from JSON
  ConsultantReview _parseReview(Map<String, dynamic> json) {
    final consulteeProfile = json['consulteeProfile'] as Map<String, dynamic>?;
    final user = consulteeProfile?['user'] as Map<String, dynamic>?;

    return ConsultantReview(
      id: json['id'] as String,
      consulteeProfileId: json['consulteeProfileId'] as String? ?? '',
      consultantProfileId: json['consultantProfileId'] as String? ?? '',
      rating: json['rating'] as int? ?? 0,
      reviewDescription: json['reviewDescription'] as String?,
      reviewerName: user?['name'] as String?,
      reviewerImage: user?['image'] as String?,
      createdAt: _parseDateTime(json['createdAt']),
    );
  }

  /// Parse datetime from string or null
  DateTime? _parseDateTime(dynamic value) {
    if (value == null) return null;
    if (value is DateTime) return value;
    if (value is String) return DateTime.tryParse(value);
    return null;
  }

  /// Extract error message from DioException
  String? _extractErrorMessage(DioException e) {
    final data = e.response?.data;
    if (data is Map<String, dynamic>) {
      final error = data['error'];
      if (error is Map<String, dynamic>) {
        return error['message'] as String?;
      }
    }
    return e.message;
  }
}
