import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show debugPrint, kIsWeb;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/sentry_logger.dart';
import '../../../data/repositories/notification_repository_impl.dart';
import '../services/fcm_service.dart';
import 'notification_providers.dart';

part 'push_notification_provider.g.dart';

/// Manages FCM token registration and push notification setup.
///
/// All operations are wrapped in try/catch for graceful degradation
/// when Firebase is not configured (e.g., development, web builds).
@Riverpod(keepAlive: true)
class PushNotification extends _$PushNotification {
  @override
  AsyncValue<String?> build() => const AsyncData(null);

  /// Initialize push notifications: request permission, get token,
  /// register with backend, and set up foreground listeners.
  Future<void> initialize() async {
    if (kIsWeb) {
      // Web push not supported yet
      return;
    }

    state = const AsyncLoading();

    try {
      final fcm = FcmService.instance;
      await fcm.initialize();

      // Request permission (iOS prompts the user, Android auto-grants)
      final granted = await fcm.requestPermission();
      if (!granted) {
        debugPrint('Push notification permission denied');
        state = const AsyncData(null);
        return;
      }

      // Get the FCM token
      final token = await fcm.getToken();
      if (token == null) {
        debugPrint('FCM token is null');
        state = const AsyncData(null);
        return;
      }

      // Register with backend
      final platform = Platform.isIOS ? 'ios' : 'android';
      try {
        final repo = ref.read(notificationRepositoryProvider);
        await repo.registerFcmToken(token: token, platform: platform);
      } catch (e) {
        // Non-fatal: token registration failed but push may still work
        debugPrint('Failed to register FCM token with backend: $e');
      }

      // Set up foreground message listener
      fcm.setupListeners(
        onMessage: (title, body) {
          // Increment unread count when a push arrives while app is open
          ref.read(unreadNotificationCountProvider.notifier).increment();
        },
      );

      // Listen for token refresh
      fcm.onTokenRefresh((newToken) async {
        try {
          final repo = ref.read(notificationRepositoryProvider);
          await repo.registerFcmToken(token: newToken, platform: platform);
        } catch (e) {
          debugPrint('Failed to refresh FCM token with backend: $e');
        }
      });

      state = AsyncData(token);
    } catch (e, st) {
      // Firebase not configured or other initialization failure.
      // This is expected in development environments.
      debugPrint('Push notification initialization failed: $e');
      await AppSentryLogger.captureException(
        e,
        stackTrace: st,
        context: 'PushNotification.initialize',
      );
      state = const AsyncData(null);
    }
  }

  /// Unregister the current FCM token from the backend (e.g., on sign-out).
  Future<void> unregister() async {
    final token = state.valueOrNull;
    if (token == null) return;

    try {
      final repo = ref.read(notificationRepositoryProvider);
      await repo.unregisterFcmToken(token: token);
    } catch (e) {
      debugPrint('Failed to unregister FCM token: $e');
    }

    state = const AsyncData(null);
  }
}
