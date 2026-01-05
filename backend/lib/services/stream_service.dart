import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';

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
      'iat': now.millisecondsSinceEpoch ~/ 1000,
      'exp': exp.millisecondsSinceEpoch ~/ 1000,
      'call_cids': ['default:$callId'],
    };

    if (permissions != null && permissions.isNotEmpty) {
      payload['call_permissions'] = permissions;
    }

    return _createJwt(header, payload);
  }

  /// Create a JWT token from header and payload
  String _createJwt(Map<String, dynamic> header, Map<String, dynamic> payload) {
    final headerBase64 = _base64UrlEncode(jsonEncode(header));
    final payloadBase64 = _base64UrlEncode(jsonEncode(payload));
    final dataToSign = '$headerBase64.$payloadBase64';

    final key = utf8.encode(_apiSecret);
    final bytes = utf8.encode(dataToSign);
    final hmac = Hmac(sha256, key);
    final digest = hmac.convert(bytes);

    final signature = _base64UrlEncodeBytes(Uint8List.fromList(digest.bytes));

    return '$dataToSign.$signature';
  }

  /// Base64 URL encode a string
  String _base64UrlEncode(String input) {
    return _base64UrlEncodeBytes(utf8.encode(input));
  }

  /// Base64 URL encode bytes
  String _base64UrlEncodeBytes(Uint8List bytes) {
    return base64Url.encode(bytes).replaceAll('=', '');
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
