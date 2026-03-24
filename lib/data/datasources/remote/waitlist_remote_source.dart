import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../domain/entities/waitlist/waitlist_entities.dart';
import '../../../shared/providers/core_providers.dart';

part 'waitlist_remote_source.g.dart';

@riverpod
WaitlistRemoteSource waitlistRemoteSource(Ref ref) {
  return WaitlistRemoteSourceImpl(ref.watch(dioProvider));
}

abstract class WaitlistRemoteSource {
  Future<List<WaitlistEntry>> getEntries();
  Future<WaitlistEntry> joinWaitlist({
    String? webinarId,
    String? classId,
  });
  Future<WaitlistEntry> getEntry(String id);
  Future<void> leaveWaitlist(String id);
}

class WaitlistRemoteSourceImpl implements WaitlistRemoteSource {
  final Dio _dio;

  WaitlistRemoteSourceImpl(this._dio);

  @override
  Future<List<WaitlistEntry>> getEntries() async {
    try {
      final response = await _dio.get('/api/waitlist');
      final data = response.data['data'] as List<dynamic>;
      return data
          .map((d) => WaitlistEntry.fromJson(d as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to load waitlist',
      );
    }
  }

  @override
  Future<WaitlistEntry> joinWaitlist({
    String? webinarId,
    String? classId,
  }) async {
    try {
      final response = await _dio.post(
        '/api/waitlist',
        data: {
          'webinarId': webinarId,
          'classId': classId,
        },
      );
      return WaitlistEntry.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to join waitlist',
      );
    }
  }

  @override
  Future<WaitlistEntry> getEntry(String id) async {
    try {
      final response = await _dio.get('/api/waitlist/$id');
      return WaitlistEntry.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to load entry',
      );
    }
  }

  @override
  Future<void> leaveWaitlist(String id) async {
    try {
      await _dio.delete('/api/waitlist/$id');
    } on DioException catch (e) {
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to leave waitlist',
      );
    }
  }
}
