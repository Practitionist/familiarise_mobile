import '../entities/chat/chat_entities.dart';

/// Repository interface for chat operations
abstract class ChatRepository {
  /// Get chat token for connecting to Stream Chat
  ///
  /// Returns token, API key, and user ID needed to connect to Stream Chat.
  /// Unlike video meetings, chat tokens don't require an appointment -
  /// any authenticated user can access their chat channels.
  Future<ChatToken> getChatToken();

  /// Upsert a user in Stream Chat
  ///
  /// Creates the user if they don't exist, or updates their profile if they do.
  /// This is needed before creating a channel with a user who hasn't connected
  /// to Stream Chat yet (e.g., a consultant).
  Future<void> upsertChatUser({
    required String userId,
    String? name,
    String? image,
  });
}
