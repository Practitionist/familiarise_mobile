import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../shared/providers/core_providers.dart';
import '../../models/onboarding/domain_model.dart';

part 'domain_remote_source.g.dart';

/// Provider for DomainRemoteSource
@riverpod
DomainRemoteSource domainRemoteSource(Ref ref) {
  return DomainRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source interface for domain operations
abstract class DomainRemoteSource {
  /// Get all domains with their subdomains
  Future<List<DomainModel>> getAllDomains();

  /// Get a single domain by ID
  Future<DomainModel> getDomainById(String id);
}

/// Implementation of DomainRemoteSource
class DomainRemoteSourceImpl implements DomainRemoteSource {
  final Dio _dio;

  DomainRemoteSourceImpl(this._dio);

  @override
  Future<List<DomainModel>> getAllDomains() async {
    try {
      final response = await _dio.get('/api/domains');

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final domains = data['domains'] as List<dynamic>;
        return domains
            .map((json) => DomainModel.fromJson(json as Map<String, dynamic>))
            .toList();
      }

      throw ServerException(
        message: 'Failed to fetch domains',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to fetch domains',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<DomainModel> getDomainById(String id) async {
    try {
      final response = await _dio.get('/api/domains/$id');

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return DomainModel.fromJson(data['domain'] as Map<String, dynamic>);
      }

      throw ServerException(
        message: 'Failed to fetch domain',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to fetch domain',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }
}
