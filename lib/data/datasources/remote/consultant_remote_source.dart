import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../domain/entities/common/paginated_result.dart';
import '../../../domain/entities/explore/explore_filters.dart';
import '../../../shared/providers/core_providers.dart';
import '../../models/explore/consultant_details_model.dart';
import '../../models/explore/consultant_model.dart';
import '../../models/explore/review_model.dart';

part 'consultant_remote_source.g.dart';

/// Provider for ConsultantRemoteSource
@riverpod
ConsultantRemoteSource consultantRemoteSource(Ref ref) {
  return ConsultantRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source interface for consultant operations
abstract class ConsultantRemoteSource {
  /// Get paginated list of consultants with optional filters
  Future<({List<ConsultantModel> consultants, Pagination pagination})>
      getConsultants({
    ExploreFilters? filters,
    int page = 0,
    int pageSize = 20,
  });

  /// Get consultant details by ID
  Future<ConsultantDetailsModel?> getConsultantById(String id);

  /// Get paginated reviews for a consultant
  Future<({List<ReviewModel> reviews, Pagination pagination})>
      getConsultantReviews({
    required String consultantId,
    int page = 0,
    int pageSize = 10,
  });
}

/// Implementation of ConsultantRemoteSource
class ConsultantRemoteSourceImpl implements ConsultantRemoteSource {
  final Dio _dio;

  ConsultantRemoteSourceImpl(this._dio);

  @override
  Future<({List<ConsultantModel> consultants, Pagination pagination})>
      getConsultants({
    ExploreFilters? filters,
    int page = 0,
    int pageSize = 20,
  }) async {
    try {
      // Build query parameters
      final queryParams = <String, dynamic>{
        'page': page,
        'pageSize': pageSize,
      };

      // Add filter parameters
      if (filters != null) {
        final filterParams = filters.toQueryParams();
        queryParams.addAll(filterParams);
      }

      final response = await _dio.get(
        '/api/consultants',
        queryParameters: queryParams,
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final consultantsJson = data['consultants'] as List<dynamic>;
        final paginationJson = data['pagination'] as Map<String, dynamic>;

        final consultants = consultantsJson
            .map((json) =>
                ConsultantModel.fromJson(json as Map<String, dynamic>))
            .toList();

        final pagination = Pagination.fromJson(paginationJson);

        return (consultants: consultants, pagination: pagination);
      }

      throw ServerException(
        message: 'Failed to fetch consultants',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to fetch consultants',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<ConsultantDetailsModel?> getConsultantById(String id) async {
    try {
      final response = await _dio.get('/api/consultants/$id');

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final consultantJson = data['consultant'] as Map<String, dynamic>?;

        if (consultantJson == null) return null;

        return ConsultantDetailsModel.fromJson(consultantJson);
      }

      if (response.statusCode == 404) {
        return null;
      }

      throw ServerException(
        message: 'Failed to fetch consultant details',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return null;
      }
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to fetch consultant details',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<({List<ReviewModel> reviews, Pagination pagination})>
      getConsultantReviews({
    required String consultantId,
    int page = 0,
    int pageSize = 10,
  }) async {
    try {
      final response = await _dio.get(
        '/api/consultants/$consultantId/reviews',
        queryParameters: {
          'page': page,
          'pageSize': pageSize,
        },
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final reviewsJson = data['reviews'] as List<dynamic>;
        final paginationJson = data['pagination'] as Map<String, dynamic>;

        final reviews = reviewsJson
            .map((json) => ReviewModel.fromJson(json as Map<String, dynamic>))
            .toList();

        final pagination = Pagination.fromJson(paginationJson);

        return (reviews: reviews, pagination: pagination);
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
}
