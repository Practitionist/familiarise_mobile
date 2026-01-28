import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/enums.dart' show FeedbackStatus;
import '../../../core/errors/exceptions.dart';
import '../../../domain/entities/feedback/feedback_entities.dart';
import '../../../shared/providers/core_providers.dart';

part 'feedback_remote_source.g.dart';

/// Provider for FeedbackRemoteSource
@riverpod
FeedbackRemoteSource feedbackRemoteSource(Ref ref) {
  return FeedbackRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source interface for feedback operations
abstract class FeedbackRemoteSource {
  /// Submit app feedback
  Future<AppFeedback> createFeedback(CreateFeedbackRequest request);

  /// Get user's feedback submissions
  Future<List<AppFeedback>> getUserFeedback();
}

/// Implementation of FeedbackRemoteSource
class FeedbackRemoteSourceImpl implements FeedbackRemoteSource {
  final Dio _dio;

  FeedbackRemoteSourceImpl(this._dio);

  @override
  Future<AppFeedback> createFeedback(CreateFeedbackRequest request) async {
    try {
      final response = await _dio.post(
        '/api/feedback',
        data: request.toRequestJson(),
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return _parseFeedback(data);
      }

      throw ServerException(
        message: 'Failed to submit feedback',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      final errorMessage = _extractErrorMessage(e);
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: errorMessage ?? 'Failed to submit feedback',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<List<AppFeedback>> getUserFeedback() async {
    try {
      final response = await _dio.get('/api/feedback');

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final feedbackJson = data['data'] as List<dynamic>? ?? [];
        return feedbackJson
            .map((f) => _parseFeedback(f as Map<String, dynamic>))
            .toList();
      }

      throw ServerException(
        message: 'Failed to fetch feedback',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to fetch feedback',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  /// Parse feedback from JSON
  AppFeedback _parseFeedback(Map<String, dynamic> json) {
    return AppFeedback(
      id: json['id'] as String,
      userId: json['userId'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      category: json['category'] != null
          ? FeedbackCategory.fromString(json['category'] as String)
          : null,
      rating: json['rating'] as int?,
      status: json['status'] != null
          ? FeedbackStatus.values.firstWhere(
              (e) =>
                  e.name == json['status'] ||
                  e.name == _camelCase(json['status'] as String),
              orElse: () => FeedbackStatus.pending,
            )
          : null,
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

  /// Convert SCREAMING_SNAKE_CASE or snake_case to camelCase
  String _camelCase(String input) {
    final parts = input.toLowerCase().split('_');
    return parts.first +
        parts.skip(1).map((p) => p[0].toUpperCase() + p.substring(1)).join();
  }
}
