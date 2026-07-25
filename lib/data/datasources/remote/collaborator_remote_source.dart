import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../domain/entities/collaborator/collaborator_entities.dart';
import '../../../shared/providers/core_providers.dart';

part 'collaborator_remote_source.g.dart';

/// Provider for CollaboratorRemoteSource
@riverpod
CollaboratorRemoteSource collaboratorRemoteSource(Ref ref) {
  return CollaboratorRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source interface for collaborator operations
abstract class CollaboratorRemoteSource {
  /// Get all collaborations for the authenticated consultant
  Future<CollaborationsResponse> getCollaborations();

  /// Respond to a collaboration invitation
  Future<void> respondToCollaboration({
    required String id,
    required String response,
    required String planType,
  });
}

/// Implementation of CollaboratorRemoteSource
class CollaboratorRemoteSourceImpl implements CollaboratorRemoteSource {
  final Dio _dio;

  CollaboratorRemoteSourceImpl(this._dio);

  @override
  Future<CollaborationsResponse> getCollaborations() async {
    try {
      final response = await _dio.get(ApiEndpoints.collaborations);

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return _parseCollaborationsResponse(data);
      }

      throw ServerException(
        message: 'Failed to fetch collaborations',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to fetch collaborations',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<void> respondToCollaboration({
    required String id,
    required String response,
    required String planType,
  }) async {
    try {
      final result = await _dio.patch(
        ApiEndpoints.collaborationRespond(id),
        data: {
          'response': response,
          'planType': planType,
        },
      );

      if (result.statusCode != 200) {
        throw ServerException(
          message: 'Failed to respond to collaboration',
          statusCode: result.statusCode,
        );
      }
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message:
            _extractErrorMessage(e) ?? 'Failed to respond to collaboration',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  CollaborationsResponse _parseCollaborationsResponse(
    Map<String, dynamic> json,
  ) {
    final webinarList = json['webinarCollaborations'] as List<dynamic>? ?? [];
    final classList = json['classCollaborations'] as List<dynamic>? ?? [];
    final countsJson =
        json['counts'] as Map<String, dynamic>? ?? <String, dynamic>{};

    final webinarCollaborations = webinarList
        .map((w) => _parseCollaboration(w as Map<String, dynamic>, 'webinar'))
        .toList();

    final classCollaborations = classList
        .map((c) => _parseCollaboration(c as Map<String, dynamic>, 'class'))
        .toList();

    final counts = CollaborationCounts(
      pendingCount: (countsJson['pendingCount'] as num?)?.toInt() ?? 0,
      acceptedCount: (countsJson['acceptedCount'] as num?)?.toInt() ?? 0,
    );

    return CollaborationsResponse(
      webinarCollaborations: webinarCollaborations,
      classCollaborations: classCollaborations,
      counts: counts,
    );
  }

  Collaboration _parseCollaboration(
    Map<String, dynamic> json,
    String planType,
  ) {
    return Collaboration(
      id: json['id'] as String,
      planType: planType,
      role: json['role'] as String? ?? '',
      status: json['status'] as String? ?? '',
      revenueSharePercentage:
          (json['revenueSharePercentage'] as num?)?.toDouble() ?? 0,
      planTitle: json['planTitle'] as String? ?? '',
      planPrice: (json['planPrice'] as num?)?.toInt() ?? 0,
      hostName: json['hostName'] as String? ?? '',
      hostImage: json['hostImage'] as String?,
      inviterName: json['inviterName'] as String? ?? '',
      createdAt: _parseDateTime(json['createdAt']),
    );
  }

  DateTime? _parseDateTime(dynamic value) {
    if (value == null) return null;
    if (value is DateTime) return value;
    if (value is String) return DateTime.tryParse(value);
    return null;
  }

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
