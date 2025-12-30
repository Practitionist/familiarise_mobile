import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../domain/entities/explore/webinar_plan.dart';
import '../../../domain/entities/explore/class_plan.dart';
import '../../../shared/providers/core_providers.dart';

part 'programs_remote_source.g.dart';

/// Provider for ProgramsRemoteSource
@riverpod
ProgramsRemoteSource programsRemoteSource(Ref ref) {
  return ProgramsRemoteSourceImpl(ref.watch(dioProvider));
}

/// Response wrapper for webinars list
class WebinarsResponse {
  final List<WebinarPlan> webinars;
  final int totalCount;

  WebinarsResponse({required this.webinars, required this.totalCount});
}

/// Response wrapper for classes list
class ClassesResponse {
  final List<ClassPlan> classes;
  final int totalCount;

  ClassesResponse({required this.classes, required this.totalCount});
}

/// Remote data source interface for programs (webinars and classes)
abstract class ProgramsRemoteSource {
  /// Get list of webinars with pagination
  Future<WebinarsResponse> getWebinars({
    int page = 0,
    int pageSize = 20,
    String? domainId,
    String? language,
    String? searchQuery,
  });

  /// Get webinar detail by ID
  Future<WebinarPlan?> getWebinarById(String id);

  /// Get list of classes with pagination
  Future<ClassesResponse> getClasses({
    int page = 0,
    int pageSize = 20,
    String? domainId,
    String? language,
    String? searchQuery,
    bool enrollmentOpen = false,
  });

  /// Get class detail by ID
  Future<ClassPlan?> getClassById(String id);
}

/// Implementation of ProgramsRemoteSource
class ProgramsRemoteSourceImpl implements ProgramsRemoteSource {
  final Dio _dio;

  ProgramsRemoteSourceImpl(this._dio);

  @override
  Future<WebinarsResponse> getWebinars({
    int page = 0,
    int pageSize = 20,
    String? domainId,
    String? language,
    String? searchQuery,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'page': page,
        'pageSize': pageSize,
      };

      if (domainId != null) queryParams['domainId'] = domainId;
      if (language != null) queryParams['language'] = language;
      if (searchQuery != null) queryParams['search'] = searchQuery;

      final response = await _dio.get(
        ApiEndpoints.webinars,
        queryParameters: queryParams,
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final webinarsList = data['webinars'] as List<dynamic>? ?? [];
        final pagination = data['pagination'] as Map<String, dynamic>? ?? {};

        final webinars = webinarsList
            .map((w) => WebinarPlan.fromJson(w as Map<String, dynamic>))
            .toList();

        return WebinarsResponse(
          webinars: webinars,
          totalCount: pagination['totalCount'] as int? ?? 0,
        );
      }

      throw ServerException(
        message: 'Failed to fetch webinars',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Failed to fetch webinars',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<WebinarPlan?> getWebinarById(String id) async {
    try {
      final response = await _dio.get('${ApiEndpoints.webinars}/$id');

      if (response.statusCode == 200) {
        return WebinarPlan.fromJson(response.data as Map<String, dynamic>);
      }

      if (response.statusCode == 404) {
        return null;
      }

      throw ServerException(
        message: 'Failed to fetch webinar',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return null;
      }
      throw ServerException(
        message: e.message ?? 'Failed to fetch webinar',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<ClassesResponse> getClasses({
    int page = 0,
    int pageSize = 20,
    String? domainId,
    String? language,
    String? searchQuery,
    bool enrollmentOpen = false,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'page': page,
        'pageSize': pageSize,
      };

      if (domainId != null) queryParams['domainId'] = domainId;
      if (language != null) queryParams['language'] = language;
      if (searchQuery != null) queryParams['search'] = searchQuery;
      if (enrollmentOpen) queryParams['enrollmentOpen'] = 'true';

      final response = await _dio.get(
        ApiEndpoints.classes,
        queryParameters: queryParams,
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final classesList = data['classes'] as List<dynamic>? ?? [];
        final pagination = data['pagination'] as Map<String, dynamic>? ?? {};

        final classes = classesList
            .map((c) => ClassPlan.fromJson(c as Map<String, dynamic>))
            .toList();

        return ClassesResponse(
          classes: classes,
          totalCount: pagination['totalCount'] as int? ?? 0,
        );
      }

      throw ServerException(
        message: 'Failed to fetch classes',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Failed to fetch classes',
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<ClassPlan?> getClassById(String id) async {
    try {
      final response = await _dio.get('${ApiEndpoints.classes}/$id');

      if (response.statusCode == 200) {
        return ClassPlan.fromJson(response.data as Map<String, dynamic>);
      }

      if (response.statusCode == 404) {
        return null;
      }

      throw ServerException(
        message: 'Failed to fetch class',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return null;
      }
      throw ServerException(
        message: e.message ?? 'Failed to fetch class',
        statusCode: e.response?.statusCode,
      );
    }
  }
}
