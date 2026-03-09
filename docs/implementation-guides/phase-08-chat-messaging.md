# Phase 8: Chat & Messaging

## Overview

This phase integrates Stream Chat SDK for real-time messaging between consultees and consultants. Users can view their conversations, send messages, share files, and receive real-time updates.

**Prerequisites:** Phases 1-7 completed
**Target Completion:** Full chat functionality

---

## Key Features

1. **Chat List** - View all conversations
2. **Chat Room** - Real-time messaging interface
3. **Message Types** - Text, images, files, links
4. **Online Presence** - Show user online status
5. **Push Notifications** - Message notifications

---

## 1. Additional Dependencies

Add to `pubspec.yaml`:

```yaml
dependencies:
  stream_chat_flutter: ^7.2.0
```

---

## 2. Domain Layer

### 2.1 Chat Entity

Create `lib/domain/entities/chat.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';

@freezed
class ChatChannel with _$ChatChannel {
  const ChatChannel._();

  const factory ChatChannel({
    required String id,
    required String type,
    String? name,
    String? image,
    @Default([]) List<ChatMember> members,
    ChatMessage? lastMessage,
    int? unreadCount,
    DateTime? lastMessageAt,
    @Default(false) bool isMuted,
  }) = _ChatChannel;

  /// Get the other member in a 1-on-1 chat
  ChatMember? get otherMember {
    if (members.length == 2) {
      return members.firstWhere(
        (m) => !m.isCurrentUser,
        orElse: () => members.first,
      );
    }
    return null;
  }

  String get displayName => name ?? otherMember?.name ?? 'Chat';
  String? get displayImage => image ?? otherMember?.image;
}

@freezed
class ChatMember with _$ChatMember {
  const factory ChatMember({
    required String id,
    String? name,
    String? image,
    @Default(false) bool isOnline,
    @Default(false) bool isCurrentUser,
    DateTime? lastActive,
  }) = _ChatMember;
}

@freezed
class ChatMessage with _$ChatMessage {
  const ChatMessage._();

  const factory ChatMessage({
    required String id,
    required String text,
    required String senderId,
    String? senderName,
    String? senderImage,
    required DateTime createdAt,
    DateTime? updatedAt,
    @Default([]) List<ChatAttachment> attachments,
    @Default(MessageStatus.sent) MessageStatus status,
    @Default(false) bool isDeleted,
  }) = _ChatMessage;

  bool get hasAttachments => attachments.isNotEmpty;
  bool get isEdited => updatedAt != null && updatedAt != createdAt;
}

@freezed
class ChatAttachment with _$ChatAttachment {
  const factory ChatAttachment({
    required String type, // 'image', 'file', 'video'
    String? url,
    String? name,
    int? size,
    String? mimeType,
  }) = _ChatAttachment;
}

enum MessageStatus { sending, sent, delivered, read, failed }
```

### 2.2 Chat Repository Interface

Create `lib/domain/repositories/chat_repository.dart`:

```dart
import '../entities/chat.dart';
import '../../core/errors/result.dart';

abstract class ChatRepository {
  /// Get chat token for Stream SDK
  AsyncResult<String> getChatToken();

  /// Get all channels for current user
  Stream<List<ChatChannel>> watchChannels();

  /// Get or create a channel with a consultant
  AsyncResult<ChatChannel> getOrCreateChannel(String consultantId);

  /// Mark channel as read
  AsyncResult<void> markChannelRead(String channelId);

  /// Send a message
  AsyncResult<ChatMessage> sendMessage(String channelId, String text);

  /// Send attachment
  AsyncResult<ChatMessage> sendAttachment(
    String channelId,
    String filePath,
  );
}
```

---

## 3. Presentation Layer

### 3.1 Chat Provider

Create `lib/features/chat/providers/chat_provider.dart`:

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import '../../../core/config/env_config.dart';
import '../../../data/repositories/chat_repository_impl.dart';
import '../../../features/auth/providers/auth_provider.dart';

part 'chat_provider.g.dart';

@Riverpod(keepAlive: true)
class ChatService extends _$ChatService {
  StreamChatClient? _chatClient;

  @override
  FutureOr<void> build() async {
    ref.onDispose(() {
      _chatClient?.dispose();
    });
  }

  StreamChatClient? get client => _chatClient;

  Future<bool> initialize() async {
    if (_chatClient != null) return true;

    try {
      final user = ref.read(currentUserProvider);
      if (user == null) return false;

      // Get token from backend
      final repository = ref.read(chatRepositoryProvider);
      final tokenResult = await repository.getChatToken();

      return tokenResult.fold(
        (failure) => false,
        (token) async {
          _chatClient = StreamChatClient(
            EnvConfig.streamApiKey,
            logLevel: Level.INFO,
          );

          await _chatClient!.connectUser(
            User(
              id: user.id,
              name: user.name,
              image: user.image,
            ),
            token,
          );

          return true;
        },
      );
    } catch (e) {
      return false;
    }
  }

  Future<void> disconnect() async {
    await _chatClient?.disconnectUser();
    _chatClient?.dispose();
    _chatClient = null;
  }

  Future<Channel?> getOrCreateChannel(String consultantId) async {
    if (_chatClient == null) return null;

    try {
      final currentUserId = _chatClient!.state.currentUser?.id;
      if (currentUserId == null) return null;

      final channel = _chatClient!.channel(
        'messaging',
        extraData: {
          'members': [currentUserId, consultantId],
        },
      );

      await channel.watch();
      return channel;
    } catch (e) {
      return null;
    }
  }
}

@riverpod
Stream<List<Channel>> channels(ChannelsRef ref) async* {
  final chatService = ref.watch(chatServiceProvider.notifier);
  final client = chatService.client;

  if (client == null) {
    yield [];
    return;
  }

  final currentUserId = client.state.currentUser?.id;
  if (currentUserId == null) {
    yield [];
    return;
  }

  yield* client.queryChannels(
    filter: Filter.in_('members', [currentUserId]),
    sort: [const SortOption('last_message_at', direction: SortOption.DESC)],
    watch: true,
  );
}

@riverpod
int unreadCount(UnreadCountRef ref) {
  final chatService = ref.watch(chatServiceProvider.notifier);
  final client = chatService.client;

  if (client == null) return 0;

  return client.state.currentUser?.totalUnreadCount ?? 0;
}
```

### 3.2 Chat List Screen

Create `lib/features/chat/screens/chat_list_screen.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/utils/date_utils.dart';
import '../providers/chat_provider.dart';

class ChatListScreen extends ConsumerStatefulWidget {
  const ChatListScreen({super.key});

  @override
  ConsumerState<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends ConsumerState<ChatListScreen> {
  @override
  void initState() {
    super.initState();
    _initializeChat();
  }

  Future<void> _initializeChat() async {
    await ref.read(chatServiceProvider.notifier).initialize();
  }

  @override
  Widget build(BuildContext context) {
    final channelsStream = ref.watch(channelsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
      ),
      body: channelsStream.when(
        data: (channels) {
          if (channels.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.chat_bubble_outline,
                    size: 64,
                    color: AppColors.mutedForeground,
                  ),
                  const SizedBox(height: AppTheme.space4),
                  Text(
                    'No conversations yet',
                    style: AppTypography.h4,
                  ),
                  const SizedBox(height: AppTheme.space2),
                  Text(
                    'Start a conversation by booking a consultation',
                    style: AppTypography.body.copyWith(
                      color: AppColors.mutedForeground,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            itemCount: channels.length,
            itemBuilder: (context, index) {
              final channel = channels[index];
              return _ChatChannelTile(
                channel: channel,
                onTap: () {
                  context.pushNamed(
                    'chatRoom',
                    pathParameters: {'channelId': channel.id!},
                    extra: channel,
                  );
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Failed to load conversations'),
              const SizedBox(height: AppTheme.space4),
              ElevatedButton(
                onPressed: _initializeChat,
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ChatChannelTile extends StatelessWidget {
  final Channel channel;
  final VoidCallback onTap;

  const _ChatChannelTile({
    required this.channel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final otherMembers = channel.state?.members
            .where((m) => m.userId != channel.client.state.currentUser?.id)
            .toList() ??
        [];
    final otherMember = otherMembers.isNotEmpty ? otherMembers.first : null;
    final lastMessage = channel.state?.lastMessage;
    final unreadCount = channel.state?.unreadCount ?? 0;

    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.secondary,
        backgroundImage: otherMember?.user?.image != null
            ? NetworkImage(otherMember!.user!.image!)
            : null,
        child: otherMember?.user?.image == null
            ? Text(
                otherMember?.user?.name?.substring(0, 1).toUpperCase() ?? '?',
                style: AppTypography.h4,
              )
            : null,
      ),
      title: Row(
        children: [
          Expanded(
            child: Text(
              otherMember?.user?.name ?? 'Chat',
              style: AppTypography.body.copyWith(
                fontWeight: unreadCount > 0
                    ? AppTypography.fontSemibold
                    : AppTypography.fontNormal,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (unreadCount > 0)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppTheme.space2,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(AppTheme.radiusFull),
              ),
              child: Text(
                unreadCount.toString(),
                style: AppTypography.caption.copyWith(
                  color: AppColors.primaryForeground,
                  fontWeight: AppTypography.fontMedium,
                ),
              ),
            ),
        ],
      ),
      subtitle: lastMessage != null
          ? Text(
              lastMessage.text ?? 'Attachment',
              style: AppTypography.bodySmall.copyWith(
                color: unreadCount > 0
                    ? AppColors.foreground
                    : AppColors.mutedForeground,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          : null,
      trailing: lastMessage?.createdAt != null
          ? Text(
              AppDateUtils.formatTimeAgo(lastMessage!.createdAt.toLocal()),
              style: AppTypography.caption,
            )
          : null,
    );
  }
}
```

### 3.3 Chat Room Screen

Create `lib/features/chat/screens/chat_room_screen.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';
import '../../../app/theme/app_typography.dart';
import '../providers/chat_provider.dart';

class ChatRoomScreen extends ConsumerStatefulWidget {
  final String channelId;
  final Channel? channel;

  const ChatRoomScreen({
    super.key,
    required this.channelId,
    this.channel,
  });

  @override
  ConsumerState<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends ConsumerState<ChatRoomScreen> {
  Channel? _channel;

  @override
  void initState() {
    super.initState();
    _channel = widget.channel;
    if (_channel == null) {
      _loadChannel();
    }
  }

  Future<void> _loadChannel() async {
    final chatService = ref.read(chatServiceProvider.notifier);
    final client = chatService.client;

    if (client != null) {
      final channel = client.channel('messaging', id: widget.channelId);
      await channel.watch();
      setState(() {
        _channel = channel;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_channel == null) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    final otherMembers = _channel!.state?.members
            .where((m) => m.userId != _channel!.client.state.currentUser?.id)
            .toList() ??
        [];
    final otherMember = otherMembers.isNotEmpty ? otherMembers.first : null;

    return StreamChannel(
      channel: _channel!,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: AppColors.secondary,
                backgroundImage: otherMember?.user?.image != null
                    ? NetworkImage(otherMember!.user!.image!)
                    : null,
                child: otherMember?.user?.image == null
                    ? Text(
                        otherMember?.user?.name?.substring(0, 1).toUpperCase() ??
                            '?',
                        style: AppTypography.bodySmall,
                      )
                    : null,
              ),
              const SizedBox(width: AppTheme.space3),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      otherMember?.user?.name ?? 'Chat',
                      style: AppTypography.body.copyWith(
                        fontWeight: AppTypography.fontMedium,
                      ),
                    ),
                    if (otherMember?.user?.online == true)
                      Text(
                        'Online',
                        style: AppTypography.caption.copyWith(
                          color: AppColors.success,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: StreamMessageListView(
                messageBuilder: (context, details, messages, defaultWidget) {
                  return defaultWidget.copyWith(
                    showUserAvatar: DisplayWidget.gone,
                  );
                },
              ),
            ),
            const StreamMessageInput(
              disableAttachments: false,
            ),
          ],
        ),
      ),
    );
  }
}
```

---

## 4. Stream Chat Theme

Create `lib/features/chat/theme/chat_theme.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_typography.dart';

StreamChatThemeData buildChatTheme(BuildContext context) {
  return StreamChatThemeData(
    colorTheme: StreamColorTheme.light(
      accentPrimary: AppColors.primary,
      textHighEmphasis: AppColors.foreground,
      textLowEmphasis: AppColors.mutedForeground,
      disabled: AppColors.muted,
      borders: AppColors.border,
      inputBg: AppColors.background,
      appBg: AppColors.background,
      barsBg: AppColors.background,
    ),
    textTheme: StreamTextTheme.light(
      body: AppTypography.body,
      bodyBold: AppTypography.body.copyWith(
        fontWeight: AppTypography.fontSemibold,
      ),
      footnote: AppTypography.caption,
      captionBold: AppTypography.caption.copyWith(
        fontWeight: AppTypography.fontSemibold,
      ),
    ),
    messageInputTheme: StreamMessageInputThemeData(
      borderRadius: BorderRadius.circular(24),
      inputBackgroundColor: AppColors.secondary,
    ),
    channelPreviewTheme: const StreamChannelPreviewThemeData(
      unreadCounterColor: AppColors.primary,
    ),
  );
}
```

---

## 5. App Integration

Update `lib/app/app.dart`:

```dart
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import '../features/chat/theme/chat_theme.dart';

class FamiliariseApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final chatService = ref.watch(chatServiceProvider.notifier);

    return MaterialApp.router(
      // ... existing config
      builder: (context, child) {
        final client = chatService.client;
        if (client != null) {
          return StreamChat(
            client: client,
            streamChatThemeData: buildChatTheme(context),
            child: child!,
          );
        }
        return child!;
      },
    );
  }
}
```

---

## 6. Acceptance Criteria

- [ ] Chat service initializes on app start
- [ ] Chat list displays all conversations
- [ ] Unread count shows correctly
- [ ] Tapping conversation opens chat room
- [ ] Messages display in correct order
- [ ] Sending text messages works
- [ ] Online status shows for users
- [ ] Real-time message updates work
- [ ] Attachments can be sent
- [ ] Chat room shows member info

---

## 7. Next Phase

Proceed to **Phase 9: Dashboard & Notifications** to implement:
- User dashboard with upcoming sessions
- Push notification integration
- Calendar view
