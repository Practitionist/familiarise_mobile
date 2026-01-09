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
