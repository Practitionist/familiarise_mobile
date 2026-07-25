import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../domain/entities/referral/referral_entities.dart';
import '../../../shared/providers/core_providers.dart';

part 'referral_remote_source.g.dart';

/// Provider for ReferralRemoteSource
@riverpod
ReferralRemoteSource referralRemoteSource(Ref ref) {
  return ReferralRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source interface for referral operations
abstract class ReferralRemoteSource {
  /// Apply a referral code
  Future<void> applyReferralCode(String code);

  /// Get the user's referral code
  Future<ReferralCodeInfo?> getReferralCode();

  /// Create a referral code
  Future<ReferralCodeInfo> createReferralCode();

  /// Get available referral credits
  Future<ReferralCreditsAvailable> getAvailableCredits();
}

/// Implementation of ReferralRemoteSource
class ReferralRemoteSourceImpl implements ReferralRemoteSource {
  final Dio _dio;

  ReferralRemoteSourceImpl(this._dio);

  @override
  Future<void> applyReferralCode(String code) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.referralApply,
        data: {'code': code},
      );

      if (response.statusCode != 200) {
        throw ServerException(
          message: 'Failed to apply referral code',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: _extractErrorMessage(e) ?? 'Failed to apply referral code',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<ReferralCodeInfo?> getReferralCode() async {
    try {
      final response = await _dio.get(ApiEndpoints.referralCode);

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        if (data['code'] == null && data['id'] == null) {
          return null;
        }
        return _parseReferralCode(data);
      }

      throw ServerException(
        message: 'Failed to fetch referral code',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to fetch referral code',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<ReferralCodeInfo> createReferralCode() async {
    try {
      final response = await _dio.post(ApiEndpoints.referralCode);

      if (response.statusCode == 201 || response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return _parseReferralCode(data);
      }

      throw ServerException(
        message: 'Failed to create referral code',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: _extractErrorMessage(e) ?? 'Failed to create referral code',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<ReferralCreditsAvailable> getAvailableCredits() async {
    try {
      final response = await _dio.get(ApiEndpoints.referralCreditsAvailable);

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return ReferralCreditsAvailable(
          totalAvailable: (data['totalAvailable'] as num?)?.toInt() ?? 0,
          currency: data['currency'] as String? ?? 'INR',
        );
      }

      throw ServerException(
        message: 'Failed to fetch referral credits',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to fetch referral credits',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  ReferralCodeInfo _parseReferralCode(Map<String, dynamic> json) {
    return ReferralCodeInfo(
      id: json['id'] as String,
      code: json['code'] as String,
      customCode: json['customCode'] as String?,
      totalReferrals: (json['totalReferrals'] as num?)?.toInt() ?? 0,
      successfulReferrals: (json['successfulReferrals'] as num?)?.toInt() ?? 0,
      totalEarned: (json['totalEarned'] as num?)?.toInt() ?? 0,
      maxReferrals: (json['maxReferrals'] as num?)?.toInt(),
      isActive: json['isActive'] as bool? ?? true,
    );
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
