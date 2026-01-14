import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';

/// State for managing Stream Chat service
@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    /// Whether the chat client is currently connecting
    @Default(false) bool isConnecting,

    /// Whether Stream Chat SDK is initialized and connected
    @Default(false) bool isInitialized,

    /// Total unread message count across all channels
    @Default(0) int totalUnreadCount,

    /// Error message if any
    String? error,
  }) = _ChatState;

  const ChatState._();

  /// Whether there is an error
  bool get hasError => error != null;

  /// Whether chat service is ready to use
  bool get isReady => isInitialized && !isConnecting;
}
