import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../domain/entities/document/document_entities.dart';
import '../../../shared/providers/core_providers.dart';

part 'document_remote_source.g.dart';

@riverpod
DocumentRemoteSource documentRemoteSource(Ref ref) {
  return DocumentRemoteSourceImpl(ref.watch(dioProvider));
}

abstract class DocumentRemoteSource {
  Future<List<AppointmentDocument>> getDocuments(String appointmentId);
  Future<AppointmentDocument> uploadDocument({
    required String appointmentId,
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    String? description,
    String? responseToDocumentId,
  });
  Future<AppointmentDocument> reviewDocument({
    required String appointmentId,
    required String docId,
    required String reviewStatus,
    String? reviewNotes,
  });
  Future<void> deleteDocument({
    required String appointmentId,
    required String docId,
  });
}

class DocumentRemoteSourceImpl implements DocumentRemoteSource {
  final Dio _dio;

  DocumentRemoteSourceImpl(this._dio);

  @override
  Future<List<AppointmentDocument>> getDocuments(
    String appointmentId,
  ) async {
    try {
      final response = await _dio.get(
        '/api/appointments/$appointmentId/documents',
      );
      final data = response.data['data'] as List<dynamic>;
      return data
          .map((d) => AppointmentDocument.fromJson(
              d as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to load documents',
      );
    }
  }

  @override
  Future<AppointmentDocument> uploadDocument({
    required String appointmentId,
    required String fileName,
    required String originalName,
    required int fileSize,
    required String mimeType,
    required String fileUrl,
    required String storagePath,
    String? description,
    String? responseToDocumentId,
  }) async {
    try {
      final response = await _dio.post(
        '/api/appointments/$appointmentId/documents',
        data: {
          'fileName': fileName,
          'originalName': originalName,
          'fileSize': fileSize,
          'mimeType': mimeType,
          'fileUrl': fileUrl,
          'storagePath': storagePath,
          'description': description,
          'responseToDocumentId': responseToDocumentId,
        },
      );
      return AppointmentDocument.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to upload document',
      );
    }
  }

  @override
  Future<AppointmentDocument> reviewDocument({
    required String appointmentId,
    required String docId,
    required String reviewStatus,
    String? reviewNotes,
  }) async {
    try {
      final response = await _dio.put(
        '/api/appointments/$appointmentId/documents/$docId',
        data: {
          'reviewStatus': reviewStatus,
          'reviewNotes': reviewNotes,
        },
      );
      return AppointmentDocument.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to review document',
      );
    }
  }

  @override
  Future<void> deleteDocument({
    required String appointmentId,
    required String docId,
  }) async {
    try {
      await _dio.delete(
        '/api/appointments/$appointmentId/documents/$docId',
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to delete document',
      );
    }
  }
}
