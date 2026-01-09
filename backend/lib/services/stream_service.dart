import 'dart:convert';
import 'dart:io';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:http/http.dart' as http;

/// Service for Stream Video API integration
///
/// Handles JWT token generation for Stream Video SDK.
class StreamService {
  final String _apiKey;
  final String _apiSecret;

  StreamService({
    String? apiKey,
    String? apiSecret,
  })  : _apiKey = apiKey ?? Platform.environment['STREAM_API_KEY'] ?? '',
        _apiSecret =
            apiSecret ?? Platform.environment['STREAM_API_SECRET'] ?? '';

  /// Get the Stream API key (public, safe to share with clients)
  String get apiKey => _apiKey;

  /// Check if Stream is properly configured
  bool get isConfigured => _apiKey.isNotEmpty && _apiSecret.isNotEmpty;

  /// Generate a user token for Stream Video SDK
  ///
  /// The token allows the user to authenticate with Stream's servers.
  /// Token is valid for [expiresIn] duration (default 24 hours).
  String generateUserToken(
    String userId, {
    Duration expiresIn = const Duration(hours: 24),
  }) {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    final now = DateTime.now().toUtc();
    final exp = now.add(expiresIn);

    final header = {
      'alg': 'HS256',
      'typ': 'JWT',
    };

    final payload = {
      'user_id': userId,
      'iss': _apiKey, // Required by Stream Video SDK
      'iat': now.millisecondsSinceEpoch ~/ 1000,
      'exp': exp.millisecondsSinceEpoch ~/ 1000,
    };

    return _createJwt(header, payload);
  }

  /// Generate a call token for a specific call
  ///
  /// Optionally restrict permissions for the call.
  String generateCallToken(
    String userId,
    String callId, {
    Duration expiresIn = const Duration(hours: 2),
    List<String>? permissions,
  }) {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    final now = DateTime.now().toUtc();
    final exp = now.add(expiresIn);

    final header = {
      'alg': 'HS256',
      'typ': 'JWT',
    };

    final payload = {
      'user_id': userId,
      'iss': _apiKey, // Required by Stream Video SDK
      'iat': now.millisecondsSinceEpoch ~/ 1000,
      'exp': exp.millisecondsSinceEpoch ~/ 1000,
      'call_cids': ['default:$callId'],
    };

    if (permissions != null && permissions.isNotEmpty) {
      payload['call_permissions'] = permissions;
    }

    return _createJwt(header, payload);
  }

  /// Create a JWT token from header and payload using dart_jsonwebtoken library
  String _createJwt(Map<String, dynamic> header, Map<String, dynamic> payload) {
    final jwt = JWT(payload, header: header);
    return jwt.sign(SecretKey(_apiSecret));
  }

  /// Upsert a user in Stream Chat
  ///
  /// Creates the user if they don't exist, or updates if they do.
  /// This uses server-side authentication to call Stream's REST API.
  /// See: https://getstream.io/chat/docs/rest/#users-upsert
  Future<void> upsertUser({
    required String userId,
    String? name,
    String? image,
  }) async {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    final url = Uri.parse('https://chat.stream-io-api.com/users');

    // Generate server token (no user_id claim = server token)
    final serverToken = _createServerToken();

    final userData = <String, dynamic>{
      'id': userId,
    };
    if (name != null) userData['name'] = name;
    if (image != null) userData['image'] = image;

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': serverToken,
        'Stream-Auth-Type': 'jwt',
        'api_key': _apiKey,
      },
      body: jsonEncode({
        'users': {
          userId: userData,
        },
      }),
    );

    if (response.statusCode != 201 && response.statusCode != 200) {
      throw Exception(
        'Failed to upsert user in Stream Chat: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Create a server-side JWT token (no user_id claim)
  ///
  /// Server tokens are used for server-to-server API calls.
  String _createServerToken() {
    final now = DateTime.now().toUtc();
    final exp = now.add(const Duration(minutes: 5));

    final header = {
      'alg': 'HS256',
      'typ': 'JWT',
    };

    final payload = {
      'iss': _apiKey,
      'iat': now.millisecondsSinceEpoch ~/ 1000,
      'exp': exp.millisecondsSinceEpoch ~/ 1000,
    };

    return _createJwt(header, payload);
  }

  /// Create or update a group channel (team type) in Stream Chat
  ///
  /// Creates a channel with the specified members and metadata.
  /// If the channel already exists, it will be updated.
  /// See: https://getstream.io/chat/docs/rest/#channels-createorupdatechannel
  Future<Map<String, dynamic>> createGroupChannel({
    required String channelId,
    required String channelName,
    required List<String> memberIds,
    required String createdByUserId,
    Map<String, dynamic>? extraData,
  }) async {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    // First, ensure all users exist in Stream Chat
    for (final userId in memberIds) {
      await upsertUser(userId: userId);
    }
    await upsertUser(userId: createdByUserId);

    final url = Uri.parse(
      'https://chat.stream-io-api.com/channels/team/$channelId/query',
    );

    final serverToken = _createServerToken();

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': serverToken,
        'Stream-Auth-Type': 'jwt',
        'api_key': _apiKey,
      },
      body: jsonEncode({
        'data': {
          'name': channelName,
          'members': memberIds,
          'created_by_id': createdByUserId,
          ...?extraData,
        },
        'state': true,
        'watch': false,
      }),
    );

    if (response.statusCode != 201 && response.statusCode != 200) {
      throw Exception(
        'Failed to create group channel: ${response.statusCode} - ${response.body}',
      );
    }

    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  /// Add members to an existing channel
  ///
  /// See: https://getstream.io/chat/docs/rest/#channels-addmembers
  Future<void> addChannelMembers({
    required String channelType,
    required String channelId,
    required List<String> memberIds,
  }) async {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    // First, ensure all users exist in Stream Chat
    for (final userId in memberIds) {
      await upsertUser(userId: userId);
    }

    final url = Uri.parse(
      'https://chat.stream-io-api.com/channels/$channelType/$channelId',
    );

    final serverToken = _createServerToken();

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': serverToken,
        'Stream-Auth-Type': 'jwt',
        'api_key': _apiKey,
      },
      body: jsonEncode({
        'add_members': memberIds,
      }),
    );

    if (response.statusCode != 201 && response.statusCode != 200) {
      throw Exception(
        'Failed to add members to channel: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Update a channel member's role/capabilities
  ///
  /// Use channel_member role for read-only access.
  /// See: https://getstream.io/chat/docs/rest/#channels-updatememberroles
  Future<void> updateMemberRole({
    required String channelType,
    required String channelId,
    required String userId,
    required String role, // 'owner', 'channel_member', 'channel_moderator'
  }) async {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    final url = Uri.parse(
      'https://chat.stream-io-api.com/channels/$channelType/$channelId',
    );

    final serverToken = _createServerToken();

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': serverToken,
        'Stream-Auth-Type': 'jwt',
        'api_key': _apiKey,
      },
      body: jsonEncode({
        'assign_roles': [
          {
            'user_id': userId,
            'channel_role': role,
          }
        ],
      }),
    );

    if (response.statusCode != 201 && response.statusCode != 200) {
      throw Exception(
        'Failed to update member role: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Update channel data (e.g., archive status)
  ///
  /// See: https://getstream.io/chat/docs/rest/#channels-updatechannelpartial
  Future<void> updateChannelData({
    required String channelType,
    required String channelId,
    required Map<String, dynamic> setData,
    List<String>? unsetData,
  }) async {
    if (!isConfigured) {
      throw StateError('Stream API key and secret must be configured');
    }

    final url = Uri.parse(
      'https://chat.stream-io-api.com/channels/$channelType/$channelId',
    );

    final serverToken = _createServerToken();

    final body = <String, dynamic>{
      'set': setData,
    };
    if (unsetData != null && unsetData.isNotEmpty) {
      body['unset'] = unsetData;
    }

    final response = await http.patch(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': serverToken,
        'Stream-Auth-Type': 'jwt',
        'api_key': _apiKey,
      },
      body: jsonEncode(body),
    );

    if (response.statusCode != 201 && response.statusCode != 200) {
      throw Exception(
        'Failed to update channel: ${response.statusCode} - ${response.body}',
      );
    }
  }

  /// Freeze or unfreeze a channel
  ///
  /// Frozen channels don't allow new messages except from admins/owners.
  /// See: https://getstream.io/chat/docs/rest/#channels-freeze
  Future<void> setChannelFrozen({
    required String channelType,
    required String channelId,
    required bool frozen,
  }) async {
    await updateChannelData(
      channelType: channelType,
      channelId: channelId,
      setData: {'frozen': frozen},
    );
  }
}

/// Data class for Stream token response
class StreamTokenResponse {
  final String token;
  final String apiKey;
  final String callId;
  final String userId;

  StreamTokenResponse({
    required this.token,
    required this.apiKey,
    required this.callId,
    required this.userId,
  });

  Map<String, dynamic> toJson() => {
        'token': token,
        'apiKey': apiKey,
        'callId': callId,
        'userId': userId,
      };
}
