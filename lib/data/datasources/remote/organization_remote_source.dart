import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../../domain/entities/organization/organization_entities.dart';
import '../../../shared/providers/core_providers.dart';

part 'organization_remote_source.g.dart';

/// Provider for OrganizationRemoteSource
@riverpod
OrganizationRemoteSource organizationRemoteSource(Ref ref) {
  return OrganizationRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source for the read-only enterprise org context
abstract class OrganizationRemoteSource {
  Future<List<OrgMembership>> getMyMemberships();
  Future<List<ProgramAssignmentInfo>> getMyProgramAssignments();
}

/// Implementation of OrganizationRemoteSource
class OrganizationRemoteSourceImpl implements OrganizationRemoteSource {
  final Dio _dio;

  OrganizationRemoteSourceImpl(this._dio);

  @override
  Future<List<OrgMembership>> getMyMemberships() async {
    try {
      final response = await _dio.get(ApiEndpoints.myOrganization);

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final memberships = data['memberships'] as List? ?? [];
        return memberships
            .map((m) => OrgMembership.fromJson(m as Map<String, dynamic>))
            .toList();
      }

      throw ServerException(
        message: 'Failed to fetch organization memberships',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'OrganizationRemoteSource.getMyMemberships',
      );
      throw ServerException(
        message: e.message ?? 'Failed to fetch organization memberships',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<List<ProgramAssignmentInfo>> getMyProgramAssignments() async {
    try {
      final response = await _dio.get(ApiEndpoints.myProgramAssignments);

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final assignments = data['assignments'] as List? ?? [];
        return assignments
            .map((a) =>
                ProgramAssignmentInfo.fromJson(a as Map<String, dynamic>))
            .toList();
      }

      throw ServerException(
        message: 'Failed to fetch program assignments',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'OrganizationRemoteSource.getMyProgramAssignments',
      );
      throw ServerException(
        message: e.message ?? 'Failed to fetch program assignments',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }
}
