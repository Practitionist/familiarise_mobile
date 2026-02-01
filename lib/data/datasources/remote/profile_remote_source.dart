import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../../shared/providers/core_providers.dart';

part 'profile_remote_source.g.dart';

/// Provider for ProfileRemoteSource
@riverpod
ProfileRemoteSource profileRemoteSource(Ref ref) {
  return ProfileRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source for role-specific profile operations
abstract class ProfileRemoteSource {
  Future<Map<String, dynamic>> getConsultantProfile();
  Future<Map<String, dynamic>> updateConsultantProfile(
    Map<String, dynamic> fields,
  );
  Future<Map<String, dynamic>> getConsulteeProfile();
  Future<Map<String, dynamic>> updateConsulteeProfile(
    Map<String, dynamic> fields,
  );
}

/// Implementation of ProfileRemoteSource
class ProfileRemoteSourceImpl implements ProfileRemoteSource {
  final Dio _dio;

  ProfileRemoteSourceImpl(this._dio);

  @override
  Future<Map<String, dynamic>> getConsultantProfile() async {
    try {
      final response = await _dio.get(ApiEndpoints.consultantProfile);

      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }

      throw ServerException(
        message: 'Failed to fetch consultant profile',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) throw e.error as AppException;
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'ProfileRemoteSource.getConsultantProfile',
      );
      throw ServerException(
        message: e.message ?? 'Failed to fetch consultant profile',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<Map<String, dynamic>> updateConsultantProfile(
    Map<String, dynamic> fields,
  ) async {
    try {
      final response = await _dio.patch(
        ApiEndpoints.consultantProfile,
        data: fields,
      );

      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }

      throw ServerException(
        message: 'Failed to update consultant profile',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) throw e.error as AppException;
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'ProfileRemoteSource.updateConsultantProfile',
      );
      throw ServerException(
        message: e.message ?? 'Failed to update consultant profile',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<Map<String, dynamic>> getConsulteeProfile() async {
    try {
      final response = await _dio.get(ApiEndpoints.consulteeProfile);

      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }

      throw ServerException(
        message: 'Failed to fetch consultee profile',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) throw e.error as AppException;
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'ProfileRemoteSource.getConsulteeProfile',
      );
      throw ServerException(
        message: e.message ?? 'Failed to fetch consultee profile',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<Map<String, dynamic>> updateConsulteeProfile(
    Map<String, dynamic> fields,
  ) async {
    try {
      final response = await _dio.patch(
        ApiEndpoints.consulteeProfile,
        data: fields,
      );

      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }

      throw ServerException(
        message: 'Failed to update consultee profile',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) throw e.error as AppException;
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'ProfileRemoteSource.updateConsulteeProfile',
      );
      throw ServerException(
        message: e.message ?? 'Failed to update consultee profile',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }
}
