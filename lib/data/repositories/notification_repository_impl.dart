import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/notification/notification_entities.dart';
import '../datasources/remote/notification_remote_source.dart';

part 'notification_repository_impl.g.dart';

/// Provider for NotificationRepository
@riverpod
NotificationRepository notificationRepository(Ref ref) {
  return NotificationRepositoryImpl(
    remoteSource: ref.watch(notificationRemoteSourceProvider),
  );
}

/// Repository interface for notification operations
abstract class NotificationRepository {
  /// Get user's notification preferences
  Future<NotificationPreference> getPreferences();

  /// Update user's notification preferences
  Future<NotificationPreference> updatePreferences(
      NotificationPreference prefs);

  /// Get subscriber hash for Novu Inbox HMAC authentication
  Future<String> getSubscriberHash();

  /// Register an FCM token with the backend
  Future<void> registerFcmToken({
    required String token,
    required String platform,
  });

  /// Unregister an FCM token from the backend
  Future<void> unregisterFcmToken({required String token});

  /// Sync subscriber profile with Novu
  Future<void> syncSubscriber();
}

/// Implementation of NotificationRepository
class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationRemoteSource _remoteSource;

  NotificationRepositoryImpl({required NotificationRemoteSource remoteSource})
      : _remoteSource = remoteSource;

  @override
  Future<NotificationPreference> getPreferences() {
    return _remoteSource.getPreferences();
  }

  @override
  Future<NotificationPreference> updatePreferences(
      NotificationPreference prefs) {
    return _remoteSource.updatePreferences(prefs);
  }

  @override
  Future<String> getSubscriberHash() {
    return _remoteSource.getSubscriberHash();
  }

  @override
  Future<void> registerFcmToken({
    required String token,
    required String platform,
  }) {
    return _remoteSource.registerFcmToken(token: token, platform: platform);
  }

  @override
  Future<void> unregisterFcmToken({required String token}) {
    return _remoteSource.unregisterFcmToken(token: token);
  }

  @override
  Future<void> syncSubscriber() {
    return _remoteSource.syncSubscriber();
  }
}
