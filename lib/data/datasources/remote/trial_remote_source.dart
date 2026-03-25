import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../domain/entities/trial/trial_entities.dart';
import '../../../shared/providers/core_providers.dart';

part 'trial_remote_source.g.dart';

@riverpod
TrialRemoteSource trialRemoteSource(Ref ref) {
  return TrialRemoteSourceImpl(ref.watch(dioProvider));
}

abstract class TrialRemoteSource {
  Future<List<TrialSession>> getTrials();
  Future<TrialSession> requestTrial({
    required String consultantProfileId,
    required String subscriptionPlanId,
    String? notes,
  });
  Future<TrialSession> getTrialById(String trialId);
  Future<TrialSession> updateTrialStatus({
    required String trialId,
    required TrialStatus status,
  });
  Future<TrialEligibility> checkEligibility(String consultantProfileId);
  Future<TrialStats> getStats();
}

class TrialRemoteSourceImpl implements TrialRemoteSource {
  final Dio _dio;

  TrialRemoteSourceImpl(this._dio);

  @override
  Future<List<TrialSession>> getTrials() async {
    try {
      final response = await _dio.get('/api/trials');
      final data = response.data['data'] as List<dynamic>;
      return data.map((d) {
        final json = Map<String, dynamic>.from(d as Map<String, dynamic>);
        // Flatten nested relation data into top-level fields
        final cp = json['consultantProfile'] as Map<String, dynamic>?;
        final ce = json['consulteeProfile'] as Map<String, dynamic>?;
        final sp = json['subscriptionPlan'] as Map<String, dynamic>?;
        final cpUser = cp?['user'] as Map<String, dynamic>?;
        final ceUser = ce?['user'] as Map<String, dynamic>?;
        json['consultantName'] = cpUser?['name'] as String?;
        json['consultantImage'] = cpUser?['image'] as String?;
        json['consulteeName'] = ceUser?['name'] as String?;
        json['consulteeImage'] = ceUser?['image'] as String?;
        json['planTitle'] = sp?['title'] as String?;
        return TrialSession.fromJson(json);
      }).toList();
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to load trials',
      );
    }
  }

  @override
  Future<TrialSession> requestTrial({
    required String consultantProfileId,
    required String subscriptionPlanId,
    String? notes,
  }) async {
    try {
      final response = await _dio.post(
        '/api/trials',
        data: {
          'consultantProfileId': consultantProfileId,
          'subscriptionPlanId': subscriptionPlanId,
          'notes': notes,
        },
      );
      return TrialSession.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to request trial',
      );
    }
  }

  @override
  Future<TrialSession> getTrialById(String trialId) async {
    try {
      final response = await _dio.get('/api/trials/$trialId');
      return TrialSession.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to load trial',
      );
    }
  }

  @override
  Future<TrialSession> updateTrialStatus({
    required String trialId,
    required TrialStatus status,
  }) async {
    try {
      final response = await _dio.put(
        '/api/trials/$trialId',
        data: {'status': status.name.toUpperCase()},
      );
      return TrialSession.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to update trial',
      );
    }
  }

  @override
  Future<TrialEligibility> checkEligibility(
    String consultantProfileId,
  ) async {
    try {
      final response = await _dio.get(
        '/api/trials/check-eligibility',
        queryParameters: {'consultantProfileId': consultantProfileId},
      );
      return TrialEligibility.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to check eligibility',
      );
    }
  }

  @override
  Future<TrialStats> getStats() async {
    try {
      final response = await _dio.get('/api/trials/stats');
      return TrialStats.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to load stats',
      );
    }
  }
}
