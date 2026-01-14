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

  /// Create a group channel for a class or webinar
  ///
  /// Creates a team-type channel with all specified members.
  /// Returns the channel ID and type on success.
  Future<GroupChannelResult> createGroupChannel({
    required String channelId,
    required String channelName,
    required List<String> memberIds,
    String? programType, // 'CLASS' or 'WEBINAR'
    String? programId,
    String? instructorId,
  });

  /// Add members to an existing group channel
  Future<void> addChannelMembers({
    required String channelId,
    required List<String> memberIds,
    String channelType = 'team',
  });

  /// Update a member's role in a channel
  ///
  /// Use 'channel_member' for read-only access (cancelled participants).
  /// Use 'owner' for instructors with full control.
  Future<void> setMemberRole({
    required String channelId,
    required String userId,
    required String role, // 'owner', 'channel_moderator', 'channel_member'
    String channelType = 'team',
  });

  /// Toggle archive status of a channel
  ///
  /// Archived channels are frozen (no new messages allowed).
  Future<void> toggleArchive({
    required String channelId,
    required bool archived,
    String channelType = 'team',
  });
}
