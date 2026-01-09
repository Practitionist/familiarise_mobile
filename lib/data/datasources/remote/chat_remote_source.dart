import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../domain/entities/chat/chat_entities.dart';
import '../../../shared/providers/core_providers.dart';

part 'chat_remote_source.g.dart';

/// Provider for ChatRemoteSource
@riverpod
ChatRemoteSource chatRemoteSource(Ref ref) {
  return ChatRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source interface for chat operations
abstract class ChatRemoteSource {
  /// Get chat token for connecting to Stream Chat
  Future<ChatToken> getChatToken();
}

/// Implementation of ChatRemoteSource
class ChatRemoteSourceImpl implements ChatRemoteSource {
  final Dio _dio;

  ChatRemoteSourceImpl(this._dio);

  @override
  Future<ChatToken> getChatToken() async {
    try {
      final response = await _dio.post(
        ApiEndpoints.streamChatToken,
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return ChatToken.fromJson(data);
      }

      throw ServerException(
        message: 'Failed to get chat token',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to get chat token',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }
}
