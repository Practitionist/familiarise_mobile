import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart' show debugPrint;

/// Wraps Firebase Cloud Messaging for push notification support.
///
/// All methods degrade gracefully if Firebase is not initialized
/// (catches [FirebaseException] and returns safe defaults).
class FcmService {
  FcmService._();

  static final FcmService instance = FcmService._();

  FirebaseMessaging? _messaging;
  bool _initialized = false;

  /// Initialize Firebase Messaging.
  /// No-op if Firebase is not configured.
  Future<void> initialize() async {
    if (_initialized) return;

    try {
      // Firebase.app() throws if not initialized
      Firebase.app();
      _messaging = FirebaseMessaging.instance;
      _initialized = true;
    } on FirebaseException catch (e) {
      debugPrint('Firebase not initialized, FCM disabled: $e');
    } catch (e) {
      debugPrint('FCM initialization failed: $e');
    }
  }

  /// Request notification permission from the user.
  /// Returns `true` if authorized or provisional, `false` otherwise.
  Future<bool> requestPermission() async {
    if (_messaging == null) return false;

    try {
      final settings = await _messaging!.requestPermission(
        alert: true,
        badge: true,
        sound: true,
        provisional: false,
      );

      return settings.authorizationStatus == AuthorizationStatus.authorized ||
          settings.authorizationStatus == AuthorizationStatus.provisional;
    } on FirebaseException catch (e) {
      debugPrint('FCM requestPermission failed: $e');
      return false;
    }
  }

  /// Get the current FCM token, or `null` if unavailable.
  Future<String?> getToken() async {
    if (_messaging == null) return null;

    try {
      return await _messaging!.getToken();
    } on FirebaseException catch (e) {
      debugPrint('FCM getToken failed: $e');
      return null;
    }
  }

  /// Set up foreground message listeners.
  ///
  /// [onMessage] is called when a message arrives while the app is in
  /// the foreground, with extracted title and body.
  void setupListeners({
    required void Function(String? title, String? body) onMessage,
  }) {
    if (_messaging == null) return;

    try {
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        final notification = message.notification;
        onMessage(notification?.title, notification?.body);
      });
    } catch (e) {
      debugPrint('FCM setupListeners failed: $e');
    }
  }

  /// Listen for FCM token refreshes.
  void onTokenRefresh(void Function(String token) callback) {
    if (_messaging == null) return;

    try {
      _messaging!.onTokenRefresh.listen(callback);
    } catch (e) {
      debugPrint('FCM onTokenRefresh listener failed: $e');
    }
  }

  /// Get the initial message that opened the app from a terminated state.
  Future<RemoteMessage?> getInitialMessage() async {
    if (_messaging == null) return null;

    try {
      return await _messaging!.getInitialMessage();
    } on FirebaseException catch (e) {
      debugPrint('FCM getInitialMessage failed: $e');
      return null;
    }
  }
}
