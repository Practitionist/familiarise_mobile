import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/chat/chat_entities.dart';
import '../../domain/repositories/chat_repository.dart';
import '../datasources/remote/chat_remote_source.dart';

part 'chat_repository_impl.g.dart';

/// Provider for ChatRepository
@riverpod
ChatRepository chatRepository(Ref ref) {
  return ChatRepositoryImpl(
    remoteSource: ref.watch(chatRemoteSourceProvider),
  );
}

/// Implementation of ChatRepository
class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteSource _remoteSource;

  ChatRepositoryImpl({required ChatRemoteSource remoteSource})
      : _remoteSource = remoteSource;

  @override
  Future<ChatToken> getChatToken() {
    return _remoteSource.getChatToken();
  }

  @override
  Future<void> upsertChatUser({
    required String userId,
    String? name,
    String? image,
  }) {
    return _remoteSource.upsertChatUser(
      userId: userId,
      name: name,
      image: image,
    );
  }

  @override
  Future<GroupChannelResult> createGroupChannel({
    required String channelId,
    required String channelName,
    required List<String> memberIds,
    String? programType,
    String? programId,
    String? instructorId,
  }) {
    final extraData = <String, dynamic>{};
    if (programType != null) extraData['programType'] = programType;
    if (programId != null) extraData['programId'] = programId;
    if (instructorId != null) extraData['instructorId'] = instructorId;

    return _remoteSource.createGroupChannel(
      channelId: channelId,
      channelName: channelName,
      memberIds: memberIds,
      extraData: extraData.isNotEmpty ? extraData : null,
    );
  }

  @override
  Future<void> addChannelMembers({
    required String channelId,
    required List<String> memberIds,
    String channelType = 'team',
  }) {
    return _remoteSource.addChannelMembers(
      channelType: channelType,
      channelId: channelId,
      memberIds: memberIds,
    );
  }

  @override
  Future<void> setMemberRole({
    required String channelId,
    required String userId,
    required String role,
    String channelType = 'team',
  }) {
    return _remoteSource.setMemberRole(
      channelType: channelType,
      channelId: channelId,
      userId: userId,
      role: role,
    );
  }

  @override
  Future<void> toggleArchive({
    required String channelId,
    required bool archived,
    String channelType = 'team',
  }) {
    return _remoteSource.toggleArchive(
      channelType: channelType,
      channelId: channelId,
      archived: archived,
    );
  }
}
