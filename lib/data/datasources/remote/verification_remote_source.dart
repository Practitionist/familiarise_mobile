import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../domain/entities/verification/verification_entities.dart';
import '../../../shared/providers/core_providers.dart';

part 'verification_remote_source.g.dart';

@riverpod
VerificationRemoteSource verificationRemoteSource(Ref ref) {
  return VerificationRemoteSourceImpl(ref.watch(dioProvider));
}

abstract class VerificationRemoteSource {
  Future<VerificationRequest?> getStatus();
  Future<VerificationRequest> submit({String? notes});
  Future<VerificationRequest> resubmit({String? notes});
  Future<List<VerificationDocument>> getDocuments();
  Future<VerificationDocument> addDocument({
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    String? description,
  });
}

class VerificationRemoteSourceImpl implements VerificationRemoteSource {
  final Dio _dio;

  VerificationRemoteSourceImpl(this._dio);

  @override
  Future<VerificationRequest?> getStatus() async {
    try {
      final response = await _dio.get('/api/verification/status');
      final data = response.data['data'];
      if (data == null) return null;
      return VerificationRequest.fromJson(data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to get verification status',
      );
    }
  }

  @override
  Future<VerificationRequest> submit({String? notes}) async {
    try {
      final response = await _dio.post(
        '/api/verification/submit',
        data: {'notes': notes},
      );
      return VerificationRequest.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 409) {
        throw const ServerException(
          message: 'A verification request is already pending',
        );
      }
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to submit verification',
      );
    }
  }

  @override
  Future<VerificationRequest> resubmit({String? notes}) async {
    try {
      final response = await _dio.post(
        '/api/verification/resubmit',
        data: {'notes': notes},
      );
      return VerificationRequest.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to resubmit verification',
      );
    }
  }

  @override
  Future<List<VerificationDocument>> getDocuments() async {
    try {
      final response = await _dio.get('/api/verification/documents');
      final data = response.data['data'] as List<dynamic>;
      return data
          .map((d) =>
              VerificationDocument.fromJson(d as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to list documents',
      );
    }
  }

  @override
  Future<VerificationDocument> addDocument({
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    String? description,
  }) async {
    try {
      final response = await _dio.post(
        '/api/verification/documents',
        data: {
          'fileName': fileName,
          'originalName': originalName,
          'fileSize': fileSize,
          'mimeType': mimeType,
          'fileUrl': fileUrl,
          'storagePath': storagePath,
          'description': description,
        },
      );
      return VerificationDocument.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to upload document',
      );
    }
  }
}
