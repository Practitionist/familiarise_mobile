import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../shared/providers/core_providers.dart';
import '../../models/onboarding/onboarding_request_model.dart';
import '../../models/user_model.dart';

part 'onboarding_remote_source.g.dart';

/// Provider for OnboardingRemoteSource
@riverpod
OnboardingRemoteSource onboardingRemoteSource(Ref ref) {
  return OnboardingRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source interface for onboarding operations
abstract class OnboardingRemoteSource {
  /// Submit onboarding data
  /// Returns the updated user
  Future<UserModel> submitOnboarding(OnboardingRequestModel request);

  /// Upload profile image
  /// Returns the image URL
  Future<String> uploadProfileImage({
    required Uint8List imageBytes,
    required String fileName,
    required String contentType,
  });

  /// Get a signed upload URL for profile image
  Future<ImageUploadInfo> getImageUploadUrl({
    required String fileName,
    required String contentType,
  });
}

/// Information about the image upload
class ImageUploadInfo {
  final String signedUrl;
  final String publicUrl;

  ImageUploadInfo({
    required this.signedUrl,
    required this.publicUrl,
  });
}

/// Implementation of OnboardingRemoteSource
class OnboardingRemoteSourceImpl implements OnboardingRemoteSource {
  final Dio _dio;

  OnboardingRemoteSourceImpl(this._dio);

  @override
  Future<UserModel> submitOnboarding(OnboardingRequestModel request) async {
    try {
      final response = await _dio.post(
        '/api/onboarding/submit',
        data: request.toJson(),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        // JsonMapConversionInterceptor handles _JsonMap conversion globally
        final data = response.data as Map<String, dynamic>;
        final userMap = data['user'] as Map<String, dynamic>;
        return UserModel.fromJson(userMap);
      }

      throw ServerException(
        message: 'Failed to submit onboarding',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }

      // Handle validation errors
      if (e.response?.statusCode == 422) {
        final rawData = e.response?.data;
        final data = rawData is Map ? Map<String, dynamic>.from(rawData) : null;
        if (data != null && data['errors'] != null) {
          final errors = data['errors'];
          final errorsMap = errors is Map
              ? Map<String, dynamic>.from(errors)
              : <String, dynamic>{};
          throw ValidationException(
            errors: errorsMap.map(
              (key, value) => MapEntry(
                key,
                value is List
                    ? value.map((e) => e.toString()).toList()
                    : [value.toString()],
              ),
            ),
          );
        }
      }

      throw ServerException(
        message: e.message ?? 'Failed to submit onboarding',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<String> uploadProfileImage({
    required Uint8List imageBytes,
    required String fileName,
    required String contentType,
  }) async {
    try {
      // First get the signed URL
      final uploadInfo = await getImageUploadUrl(
        fileName: fileName,
        contentType: contentType,
      );

      // Upload directly to Supabase Storage using signed URL
      final uploadDio = Dio();
      await uploadDio.put(
        uploadInfo.signedUrl,
        data: Stream.fromIterable([imageBytes]),
        options: Options(
          headers: {
            'Content-Type': contentType,
            'Content-Length': imageBytes.length,
          },
        ),
      );

      return uploadInfo.publicUrl;
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Failed to upload image',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<ImageUploadInfo> getImageUploadUrl({
    required String fileName,
    required String contentType,
  }) async {
    try {
      final response = await _dio.post(
        '/api/upload/image',
        data: {
          'fileName': fileName,
          'contentType': contentType,
        },
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return ImageUploadInfo(
          signedUrl: data['signedUrl'] as String,
          publicUrl: data['publicUrl'] as String,
        );
      }

      throw ServerException(
        message: 'Failed to get upload URL',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to get upload URL',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }
}
