import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

/// Token data for connecting to Stream Chat
@freezed
class ChatToken with _$ChatToken {
  const factory ChatToken({
    /// JWT token for Stream Chat authentication
    required String token,

    /// Stream API key
    required String apiKey,

    /// Current user's ID
    required String userId,
  }) = _ChatToken;

  factory ChatToken.fromJson(Map<String, dynamic> json) =>
      _$ChatTokenFromJson(json);
}

/// Result from creating a group channel
@freezed
class GroupChannelResult with _$GroupChannelResult {
  const factory GroupChannelResult({
    /// The channel ID
    required String channelId,

    /// The channel type (usually 'team')
    required String channelType,
  }) = _GroupChannelResult;

  factory GroupChannelResult.fromJson(Map<String, dynamic> json) =>
      _$GroupChannelResultFromJson(json);
}
