import '../entities/chat/chat_entities.dart';

/// Repository interface for chat operations
abstract class ChatRepository {
  /// Get chat token for connecting to Stream Chat
  ///
  /// Returns token, API key, and user ID needed to connect to Stream Chat.
  /// Unlike video meetings, chat tokens don't require an appointment -
  /// any authenticated user can access their chat channels.
  Future<ChatToken> getChatToken();
}
