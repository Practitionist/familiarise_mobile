import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';


import '../../../core/constants/enums.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../../data/repositories/booking_repository_impl.dart';
import '../../../data/repositories/chat_repository_impl.dart';
import '../../../domain/entities/chat/chat_entities.dart';
import '../../auth/providers/auth_provider.dart';

part 'chat_service_provider.g.dart';

/// Provider for managing Stream Chat service lifecycle
///
/// This provider is kept alive across the app lifecycle to maintain
/// the chat connection and receive real-time updates.
@Riverpod(keepAlive: true)
class ChatService extends _$ChatService {
  StreamChatClient? _chatClient;
  StreamSubscription<User?>? _unreadCountSubscription;

  @override
  ChatState build() {
    ref.onDispose(_cleanup);
    return const ChatState();
  }

  /// Get the Stream Chat client instance
  StreamChatClient? get client => _chatClient;

  /// Clean up resources when provider is disposed
  Future<void> _cleanup() async {
    await _unreadCountSubscription?.cancel();
    _unreadCountSubscription = null;
    await _chatClient?.disconnectUser();
    _chatClient?.dispose();
    _chatClient = null;
  }

  /// Initialize Stream Chat client and connect user
  ///
  /// Returns true if initialization was successful
  Future<bool> initialize() async {
    if (_chatClient != null && state.isInitialized) {
      return true;
    }

    state = state.copyWith(isConnecting: true, error: null);

    try {
      // Get current user
      final user = ref.read(currentUserProvider);
      if (user == null) {
        state = state.copyWith(
          isConnecting: false,
          error: 'User not authenticated',
        );
        return false;
      }

      // Get chat token from backend
      final repository = ref.read(chatRepositoryProvider);
      final chatToken = await repository.getChatToken();

      // Initialize Stream Chat client
      _chatClient = StreamChatClient(
        chatToken.apiKey,
        logLevel: Level.WARNING,
      );

      // Connect user
      await _chatClient!.connectUser(
        User(
          id: chatToken.userId,
          name: user.name,
          image: user.image,
        ),
        chatToken.token,
      );

      // Get initial unread count
      final unreadCount = _chatClient!.state.currentUser?.totalUnreadCount ?? 0;

      state = state.copyWith(
        isConnecting: false,
        isInitialized: true,
        totalUnreadCount: unreadCount,
      );

      // Listen for unread count changes
      _unreadCountSubscription =
          _chatClient!.state.currentUserStream.listen((user) {
        if (user != null) {
          state = state.copyWith(
            totalUnreadCount: user.totalUnreadCount,
          );
        }
      });

      return true;
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'ChatService.initialize',
      );
      state = state.copyWith(
        isConnecting: false,
        isInitialized: false,
        error: 'Failed to connect to chat. Please try again.',
      );
      return false;
    }
  }

  /// Disconnect from Stream Chat
  Future<void> disconnect() async {
    try {
      await _chatClient?.disconnectUser();
      _chatClient?.dispose();
      _chatClient = null;

      state = const ChatState();
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'ChatService.disconnect',
      );
    }
  }

  /// Get or create a direct message channel with another user
  ///
  /// Creates a 1-on-1 messaging channel between the current user
  /// and the specified user.
  ///
  /// [otherUserName] and [otherUserImage] are optional but recommended
  /// as they'll be used to create the user in Stream Chat if they don't exist.
  Future<Channel?> getOrCreateDirectChannel(
    String otherUserId, {
    String? otherUserName,
    String? otherUserImage,
  }) async {
    if (_chatClient == null) {
      return null;
    }

    try {
      final currentUserId = _chatClient!.state.currentUser?.id;
      if (currentUserId == null) {
        return null;
      }

      // Prevent creating channel with self (causes StreamChat 400 error)
      if (currentUserId == otherUserId) {
        return null;
      }

      // Upsert the other user in Stream Chat (server-side)
      // This ensures the user exists before creating a channel with them
      final chatRepository = ref.read(chatRepositoryProvider);
      await chatRepository.upsertChatUser(
        userId: otherUserId,
        name: otherUserName,
        image: otherUserImage,
      );

      // Create a unique channel ID for the two users (sorted to ensure consistency)
      final members = [currentUserId, otherUserId]..sort();
      final channelId = members.join('-');

      final channel = _chatClient!.channel(
        'messaging',
        id: channelId,
        extraData: {
          'members': members,
        },
      );

      await channel.watch();
      return channel;
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'ChatService.getOrCreateDirectChannel',
        extras: {'otherUserId': otherUserId},
      );
      return null;
    }
  }

  /// Get an existing group channel (webinar/class) by ID
  ///
  /// Opens a team-type channel for group programs. Unlike direct channels,
  /// group channels are created by the backend when bookings are confirmed.
  ///
  /// [channelId] should be in the format 'webinar_{id}' or 'class_{id}'
  Future<Channel?> getGroupChannel(String channelId) async {
    if (_chatClient == null) {
      return null;
    }

    try {
      final channel = _chatClient!.channel(
        'team',
        id: channelId,
      );

      // Query with state=true to ensure members are loaded properly
      await channel.query(
        state: true,
        watch: true,
        messagesPagination: const PaginationParams(limit: 30),
      );

      return channel;
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'ChatService.getGroupChannel',
        extras: {'channelId': channelId},
      );
      return null;
    }
  }

  /// Clear any error message
  void clearError() {
    state = state.copyWith(error: null);
  }
}

/// Provider for watching the list of chat channels
@riverpod
Stream<List<Channel>> chatChannels(Ref ref) async* {
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
    channelStateSort: const [SortOption.desc('last_message_at')],
    watch: true,
    state: true,
  );
}

/// Provider for total unread message count
@riverpod
int totalUnreadCount(Ref ref) {
  final chatState = ref.watch(chatServiceProvider);
  return chatState.totalUnreadCount;
}

/// Provider for fetching chat counterparts from user's appointments
///
/// For consultees: returns consultants they have bookings with.
/// For consultants: returns clients (consultees) who booked with them.
/// Sorted by most recent appointment date.
@riverpod
Future<List<AppointmentConsultant>> appointmentConsultants(Ref ref) async {
  final repository = ref.watch(bookingRepositoryProvider);
  final user = ref.watch(currentUserProvider);
  if (user?.role == UserRole.consultant) {
    return repository.getAllMyClients();
  }
  return repository.getAllMyConsultants();
}
