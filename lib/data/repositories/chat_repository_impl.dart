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
}
