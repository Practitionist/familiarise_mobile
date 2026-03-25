import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../domain/entities/payout/payout_entities.dart';
import '../../../shared/providers/core_providers.dart';

part 'payout_remote_source.g.dart';

@riverpod
PayoutRemoteSource payoutRemoteSource(Ref ref) {
  return PayoutRemoteSourceImpl(ref.watch(dioProvider));
}

abstract class PayoutRemoteSource {
  Future<List<PayoutAccount>> getAccounts();
  Future<PayoutAccount> createAccount(Map<String, dynamic> data);
  Future<PayoutAccount> updateAccount(String id, Map<String, dynamic> data);
  Future<void> deleteAccount(String id);
  Future<void> setDefault(String id);
}

class PayoutRemoteSourceImpl implements PayoutRemoteSource {
  final Dio _dio;
  PayoutRemoteSourceImpl(this._dio);

  @override
  Future<List<PayoutAccount>> getAccounts() async {
    try {
      final response = await _dio.get(
        '/api/consultant/payout-accounts',
      );
      final data = response.data['data'] as List<dynamic>;
      return data
          .map((d) =>
              PayoutAccount.fromJson(d as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to load accounts',
      );
    }
  }

  @override
  Future<PayoutAccount> createAccount(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await _dio.post(
        '/api/consultant/payout-accounts',
        data: data,
      );
      return PayoutAccount.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to create account',
      );
    }
  }

  @override
  Future<PayoutAccount> updateAccount(
    String id,
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await _dio.put(
        '/api/consultant/payout-accounts/$id',
        data: data,
      );
      return PayoutAccount.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to update account',
      );
    }
  }

  @override
  Future<void> deleteAccount(String id) async {
    try {
      await _dio.delete('/api/consultant/payout-accounts/$id');
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to delete account',
      );
    }
  }

  @override
  Future<void> setDefault(String id) async {
    try {
      await _dio.post(
        '/api/consultant/payout-accounts/$id/set-default',
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to set default',
      );
    }
  }
}
