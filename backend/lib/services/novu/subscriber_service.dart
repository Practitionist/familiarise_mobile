import 'dart:convert';

import 'package:backend/services/novu/novu_config.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

/// Manages Novu subscriber profiles and device credentials.
///
/// All public methods are fire-and-forget safe — exceptions are caught, logged
/// via [SentryLogger], and a `bool` is returned to indicate success.
class SubscriberService {
  /// Creates a [SubscriberService] backed by the given [NovuConfig].
  SubscriberService(this._config);

  final NovuConfig _config;

  static const _timeout = Duration(seconds: 10);

  /// Whether Novu is properly configured.
  bool get isConfigured => _config.isConfigured;

  /// Common HTTP headers for Novu API requests.
  Map<String, String> get _headers => {
        'Authorization': 'ApiKey ${_config.secretKey}',
        'Content-Type': 'application/json',
      };

  /// Create or update a subscriber in Novu.
  ///
  /// Maps the user's profile fields to Novu's subscriber model.
  /// Returns `true` on success, `false` on failure.
  Future<bool> syncSubscriber({
    required String subscriberId,
    String? email,
    String? firstName,
    String? lastName,
    String? avatar,
    String? phone,
  }) async {
    if (!isConfigured) {
      SentryLogger.info(
        'Novu not configured — skipping subscriber sync for $subscriberId',
        context: 'SubscriberService.syncSubscriber',
      );
      return false;
    }

    try {
      final url = Uri.parse(
        '${_config.apiUrl}/subscribers/$subscriberId',
      );

      final body = <String, dynamic>{};
      if (email != null) body['email'] = email;
      if (firstName != null) body['firstName'] = firstName;
      if (lastName != null) body['lastName'] = lastName;
      if (avatar != null) body['avatar'] = avatar;
      if (phone != null) body['phone'] = phone;

      final response = await http
          .put(url, headers: _headers, body: jsonEncode(body))
          .timeout(_timeout);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        SentryLogger.info(
          'Synced subscriber $subscriberId',
          context: 'SubscriberService.syncSubscriber',
        );
        return true;
      }

      await SentryLogger.error(
        'Subscriber sync failed: ${response.statusCode} — ${response.body}',
        context: 'SubscriberService.syncSubscriber',
      );
      return false;
    } catch (e, stackTrace) {
      await SentryLogger.error(
        'Exception syncing subscriber $subscriberId',
        context: 'SubscriberService.syncSubscriber',
        error: e,
        stackTrace: stackTrace,
      );
      return false;
    }
  }

  /// Delete a subscriber from Novu.
  ///
  /// Returns `true` on success, `false` on failure.
  Future<bool> deleteSubscriber(String subscriberId) async {
    if (!isConfigured) {
      SentryLogger.info(
        'Novu not configured — skipping subscriber delete for $subscriberId',
        context: 'SubscriberService.deleteSubscriber',
      );
      return false;
    }

    try {
      final url = Uri.parse(
        '${_config.apiUrl}/subscribers/$subscriberId',
      );

      final response =
          await http.delete(url, headers: _headers).timeout(_timeout);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        SentryLogger.info(
          'Deleted subscriber $subscriberId',
          context: 'SubscriberService.deleteSubscriber',
        );
        return true;
      }

      await SentryLogger.error(
        'Subscriber delete failed: ${response.statusCode} — ${response.body}',
        context: 'SubscriberService.deleteSubscriber',
      );
      return false;
    } catch (e, stackTrace) {
      await SentryLogger.error(
        'Exception deleting subscriber $subscriberId',
        context: 'SubscriberService.deleteSubscriber',
        error: e,
        stackTrace: stackTrace,
      );
      return false;
    }
  }

  /// Register a push-notification device token for a subscriber.
  ///
  /// [providerId] should match the Novu integration provider ID
  /// (e.g. `'fcm'`, `'apns'`).
  /// Returns `true` on success, `false` on failure.
  Future<bool> setDeviceToken({
    required String subscriberId,
    required String token,
    required String providerId,
  }) async {
    if (!isConfigured) {
      SentryLogger.info(
        'Novu not configured — skipping setDeviceToken for $subscriberId',
        context: 'SubscriberService.setDeviceToken',
      );
      return false;
    }

    try {
      final url = Uri.parse(
        '${_config.apiUrl}/subscribers/$subscriberId/credentials',
      );

      final body = <String, dynamic>{
        'providerId': providerId,
        'credentials': {
          'deviceTokens': [token],
        },
      };

      final response = await http
          .put(url, headers: _headers, body: jsonEncode(body))
          .timeout(_timeout);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        SentryLogger.info(
          'Set device token for $subscriberId (provider: $providerId)',
          context: 'SubscriberService.setDeviceToken',
        );
        return true;
      }

      await SentryLogger.error(
        'Set device token failed: ${response.statusCode} — ${response.body}',
        context: 'SubscriberService.setDeviceToken',
      );
      return false;
    } catch (e, stackTrace) {
      await SentryLogger.error(
        'Exception setting device token for $subscriberId',
        context: 'SubscriberService.setDeviceToken',
        error: e,
        stackTrace: stackTrace,
      );
      return false;
    }
  }

  /// Remove a push-notification device token for a subscriber.
  ///
  /// Sends an empty device-token list for the given [providerId].
  /// Returns `true` on success, `false` on failure.
  Future<bool> removeDeviceToken({
    required String subscriberId,
    required String providerId,
  }) async {
    if (!isConfigured) {
      SentryLogger.info(
        'Novu not configured — skipping removeDeviceToken for $subscriberId',
        context: 'SubscriberService.removeDeviceToken',
      );
      return false;
    }

    try {
      final url = Uri.parse(
        '${_config.apiUrl}/subscribers/$subscriberId/credentials',
      );

      final body = <String, dynamic>{
        'providerId': providerId,
        'credentials': {
          'deviceTokens': <String>[],
        },
      };

      final response = await http
          .put(url, headers: _headers, body: jsonEncode(body))
          .timeout(_timeout);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        SentryLogger.info(
          'Removed device token for $subscriberId (provider: $providerId)',
          context: 'SubscriberService.removeDeviceToken',
        );
        return true;
      }

      await SentryLogger.error(
        'Remove device token failed: ${response.statusCode} — ${response.body}',
        context: 'SubscriberService.removeDeviceToken',
      );
      return false;
    } catch (e, stackTrace) {
      await SentryLogger.error(
        'Exception removing device token for $subscriberId',
        context: 'SubscriberService.removeDeviceToken',
        error: e,
        stackTrace: stackTrace,
      );
      return false;
    }
  }

  /// Generate an HMAC-SHA256 hash for subscriber authentication.
  ///
  /// Used by the Novu front-end SDK to verify the subscriber's identity.
  /// Returns the hex-encoded hash string, or an empty string if not configured.
  String generateSubscriberHash(String subscriberId) {
    if (!isConfigured) {
      SentryLogger.info(
        'Novu not configured — cannot generate subscriber hash',
        context: 'SubscriberService.generateSubscriberHash',
      );
      return '';
    }

    final key = utf8.encode(_config.secretKey);
    final bytes = utf8.encode(subscriberId);
    final hmacSha256 = Hmac(sha256, key);
    final digest = hmacSha256.convert(bytes);
    return digest.toString();
  }
}
