import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/sentry_logger.dart';
import '../../../data/repositories/notification_repository_impl.dart';
import '../../../domain/entities/notification/notification_entities.dart';

part 'notification_providers.g.dart';

/// Fetches subscriber hash for Novu Inbox HMAC authentication
@riverpod
Future<String> subscriberHash(Ref ref) async {
  final repo = ref.watch(notificationRepositoryProvider);
  return repo.getSubscriberHash();
}

/// Manages notification preferences with optimistic updates
@riverpod
class NotificationPreferences extends _$NotificationPreferences {
  @override
  Future<NotificationPreference> build() async {
    final repo = ref.watch(notificationRepositoryProvider);
    return repo.getPreferences();
  }

  /// Update preferences with optimistic UI.
  /// Applies changes immediately, reverts on error.
  Future<void> updatePreferences(NotificationPreference prefs) async {
    final previous = state.valueOrNull;

    // Optimistic update
    state = AsyncData(prefs);

    try {
      final repo = ref.read(notificationRepositoryProvider);
      final updated = await repo.updatePreferences(prefs);
      state = AsyncData(updated);
    } catch (e, st) {
      await AppSentryLogger.captureException(
        e,
        stackTrace: st,
        context: 'NotificationPreferences.updatePreferences',
      );

      // Revert to previous state on error
      if (previous != null) {
        state = AsyncData(previous);
      } else {
        ref.invalidateSelf();
      }

      // Re-throw so callers can show error UI
      state = AsyncError(e, st);
    }
  }
}

/// Unread notification count (updated by Novu SDK callbacks or push events)
@riverpod
class UnreadNotificationCount extends _$UnreadNotificationCount {
  @override
  int build() => 0;

  void setCount(int count) => state = count;

  void increment() => state = state + 1;

  void decrement() {
    if (state > 0) {
      state = state - 1;
    }
  }

  void reset() => state = 0;
}

/// Triggers a subscriber sync with Novu.
/// Called after auth or profile updates so Novu has latest user data.
@riverpod
class SyncSubscriber extends _$SyncSubscriber {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<void> sync() async {
    state = const AsyncLoading();
    try {
      final repo = ref.read(notificationRepositoryProvider);
      await repo.syncSubscriber();
      state = const AsyncData(null);
    } catch (e, st) {
      await AppSentryLogger.captureException(
        e,
        stackTrace: st,
        context: 'SyncSubscriber.sync',
      );
      state = AsyncError(e, st);
    }
  }
}
