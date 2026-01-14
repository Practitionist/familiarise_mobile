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

  /// Upsert a user in Stream Chat
  Future<void> upsertChatUser({
    required String userId,
    String? name,
    String? image,
  });

  /// Create a group channel
  Future<GroupChannelResult> createGroupChannel({
    required String channelId,
    required String channelName,
    required List<String> memberIds,
    Map<String, dynamic>? extraData,
  });

  /// Add members to a channel
  Future<void> addChannelMembers({
    required String channelType,
    required String channelId,
    required List<String> memberIds,
  });

  /// Set member role in a channel
  Future<void> setMemberRole({
    required String channelType,
    required String channelId,
    required String userId,
    required String role,
  });

  /// Toggle archive status of a channel
  Future<void> toggleArchive({
    required String channelType,
    required String channelId,
    required bool archived,
  });
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

  @override
  Future<void> upsertChatUser({
    required String userId,
    String? name,
    String? image,
  }) async {
    try {
      final data = <String, dynamic>{
        'userId': userId,
      };
      if (name != null) data['name'] = name;
      if (image != null) data['image'] = image;

      await _dio.post(
        ApiEndpoints.streamUpsertUser,
        data: data,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to upsert chat user',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<GroupChannelResult> createGroupChannel({
    required String channelId,
    required String channelName,
    required List<String> memberIds,
    Map<String, dynamic>? extraData,
  }) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.streamCreateGroupChannel,
        data: {
          'channelId': channelId,
          'channelName': channelName,
          'memberIds': memberIds,
          if (extraData != null) 'extraData': extraData,
        },
      );

      final data = response.data as Map<String, dynamic>;
      return GroupChannelResult(
        channelId: data['channelId'] as String,
        channelType: data['channelType'] as String,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to create group channel',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<void> addChannelMembers({
    required String channelType,
    required String channelId,
    required List<String> memberIds,
  }) async {
    try {
      await _dio.post(
        ApiEndpoints.streamAddMember,
        data: {
          'channelType': channelType,
          'channelId': channelId,
          'memberIds': memberIds,
        },
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to add members to channel',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<void> setMemberRole({
    required String channelType,
    required String channelId,
    required String userId,
    required String role,
  }) async {
    try {
      await _dio.post(
        ApiEndpoints.streamSetMemberRole,
        data: {
          'channelType': channelType,
          'channelId': channelId,
          'userId': userId,
          'role': role,
        },
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to set member role',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<void> toggleArchive({
    required String channelType,
    required String channelId,
    required bool archived,
  }) async {
    try {
      await _dio.post(
        ApiEndpoints.streamToggleArchive,
        data: {
          'channelType': channelType,
          'channelId': channelId,
          'archived': archived,
        },
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to toggle archive status',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }
}
