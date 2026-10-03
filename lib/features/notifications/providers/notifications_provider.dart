import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';

/// Represents a single in-app notification item.
class AppNotificationItem {
  const AppNotificationItem({
    required this.id,
    required this.type,
    required this.category,
    required this.title,
    required this.body,
    required this.isRead,
    required this.createdAt,
    this.actionRoute,
    this.entityId,
  });

  final String id;
  final String type;
  final String category;
  final String title;
  final String body;
  final String? actionRoute;
  final String? entityId;
  final bool isRead;
  final DateTime createdAt;

  AppNotificationItem copyWith({
    bool? isRead,
  }) {
    return AppNotificationItem(
      id: id,
      type: type,
      category: category,
      title: title,
      body: body,
      actionRoute: actionRoute,
      entityId: entityId,
      isRead: isRead ?? this.isRead,
      createdAt: createdAt,
    );
  }

  factory AppNotificationItem.fromJson(Map<String, dynamic> json) {
    final rawDate = json['createdAt'];
    final parsedDate = rawDate is String
        ? DateTime.tryParse(rawDate) ?? DateTime.now()
        : DateTime.now();
    return AppNotificationItem(
      id: (json['id'] as String?) ?? '',
      type: (json['type'] as String?) ?? 'GENERAL',
      category: (json['category'] as String?) ?? 'general',
      title: (json['title'] as String?) ?? 'Notification',
      body: (json['body'] as String?) ?? '',
      actionRoute: json['actionRoute'] as String?,
      entityId: json['entityId'] as String?,
      isRead: (json['isRead'] as bool?) ?? false,
      createdAt: parsedDate,
    );
  }
}

/// Model for user's notification preferences (`NotificationPreference`).
class NotificationPreferencesModel {
  const NotificationPreferencesModel({
    this.id = '',
    this.userId = '',
    this.allNotifications = true,
    this.inAppEnabled = true,
    this.emailEnabled = true,
    this.pushEnabled = false,
    this.mentions = false,
    this.directMessages = false,
    this.updates = false,
    this.appointmentReminders = true,
    this.paymentNotifications = true,
    this.supportUpdates = true,
    this.feedbackAlerts = true,
    this.trialNotifications = true,
    this.subscriptionAlerts = true,
    this.marketingEmails = false,
    this.quietHoursEnabled = false,
    this.quietHoursStart,
    this.quietHoursEnd,
    this.quietHoursTimezone,
  });

  final String id;
  final String userId;
  final bool allNotifications;
  final bool inAppEnabled;
  final bool emailEnabled;
  final bool pushEnabled;
  final bool mentions;
  final bool directMessages;
  final bool updates;
  final bool appointmentReminders;
  final bool paymentNotifications;
  final bool supportUpdates;
  final bool feedbackAlerts;
  final bool trialNotifications;
  final bool subscriptionAlerts;
  final bool marketingEmails;
  final bool quietHoursEnabled;
  final String? quietHoursStart;
  final String? quietHoursEnd;
  final String? quietHoursTimezone;

  NotificationPreferencesModel copyWith({
    bool? allNotifications,
    bool? inAppEnabled,
    bool? emailEnabled,
    bool? pushEnabled,
    bool? mentions,
    bool? directMessages,
    bool? updates,
    bool? appointmentReminders,
    bool? paymentNotifications,
    bool? supportUpdates,
    bool? feedbackAlerts,
    bool? trialNotifications,
    bool? subscriptionAlerts,
    bool? marketingEmails,
    bool? quietHoursEnabled,
    String? quietHoursStart,
    String? quietHoursEnd,
    String? quietHoursTimezone,
  }) {
    return NotificationPreferencesModel(
      id: id,
      userId: userId,
      allNotifications: allNotifications ?? this.allNotifications,
      inAppEnabled: inAppEnabled ?? this.inAppEnabled,
      emailEnabled: emailEnabled ?? this.emailEnabled,
      pushEnabled: pushEnabled ?? this.pushEnabled,
      mentions: mentions ?? this.mentions,
      directMessages: directMessages ?? this.directMessages,
      updates: updates ?? this.updates,
      appointmentReminders: appointmentReminders ?? this.appointmentReminders,
      paymentNotifications: paymentNotifications ?? this.paymentNotifications,
      supportUpdates: supportUpdates ?? this.supportUpdates,
      feedbackAlerts: feedbackAlerts ?? this.feedbackAlerts,
      trialNotifications: trialNotifications ?? this.trialNotifications,
      subscriptionAlerts: subscriptionAlerts ?? this.subscriptionAlerts,
      marketingEmails: marketingEmails ?? this.marketingEmails,
      quietHoursEnabled: quietHoursEnabled ?? this.quietHoursEnabled,
      quietHoursStart: quietHoursStart ?? this.quietHoursStart,
      quietHoursEnd: quietHoursEnd ?? this.quietHoursEnd,
      quietHoursTimezone: quietHoursTimezone ?? this.quietHoursTimezone,
    );
  }

  factory NotificationPreferencesModel.fromJson(Map<String, dynamic> json) {
    final map = json['data'] is Map<String, dynamic>
        ? json['data'] as Map<String, dynamic>
        : json;
    return NotificationPreferencesModel(
      id: (map['id'] as String?) ?? '',
      userId: (map['userId'] as String?) ?? '',
      allNotifications: (map['allNotifications'] as bool?) ?? true,
      inAppEnabled: (map['inAppEnabled'] as bool?) ?? true,
      emailEnabled: (map['emailEnabled'] as bool?) ?? true,
      pushEnabled: (map['pushEnabled'] as bool?) ?? false,
      mentions: (map['mentions'] as bool?) ?? false,
      directMessages: (map['directMessages'] as bool?) ?? false,
      updates: (map['updates'] as bool?) ?? false,
      appointmentReminders: (map['appointmentReminders'] as bool?) ?? true,
      paymentNotifications: (map['paymentNotifications'] as bool?) ?? true,
      supportUpdates: (map['supportUpdates'] as bool?) ?? true,
      feedbackAlerts: (map['feedbackAlerts'] as bool?) ?? true,
      trialNotifications: (map['trialNotifications'] as bool?) ?? true,
      subscriptionAlerts: (map['subscriptionAlerts'] as bool?) ?? true,
      marketingEmails: (map['marketingEmails'] as bool?) ?? false,
      quietHoursEnabled: (map['quietHoursEnabled'] as bool?) ?? false,
      quietHoursStart: map['quietHoursStart'] as String?,
      quietHoursEnd: map['quietHoursEnd'] as String?,
      quietHoursTimezone: map['quietHoursTimezone'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'allNotifications': allNotifications,
      'inAppEnabled': inAppEnabled,
      'emailEnabled': emailEnabled,
      'pushEnabled': pushEnabled,
      'mentions': mentions,
      'directMessages': directMessages,
      'updates': updates,
      'appointmentReminders': appointmentReminders,
      'paymentNotifications': paymentNotifications,
      'supportUpdates': supportUpdates,
      'feedbackAlerts': feedbackAlerts,
      'trialNotifications': trialNotifications,
      'subscriptionAlerts': subscriptionAlerts,
      'marketingEmails': marketingEmails,
      'quietHoursEnabled': quietHoursEnabled,
      if (quietHoursStart != null) 'quietHoursStart': quietHoursStart,
      if (quietHoursEnd != null) 'quietHoursEnd': quietHoursEnd,
      if (quietHoursTimezone != null) 'quietHoursTimezone': quietHoursTimezone,
    };
  }
}

/// State held by [NotificationsNotifier].
class NotificationsState {
  const NotificationsState({
    this.notifications = const [],
    this.unreadCount = 0,
    this.totalCount = 0,
  });

  final List<AppNotificationItem> notifications;
  final int unreadCount;
  final int totalCount;

  NotificationsState copyWith({
    List<AppNotificationItem>? notifications,
    int? unreadCount,
    int? totalCount,
  }) {
    return NotificationsState(
      notifications: notifications ?? this.notifications,
      unreadCount: unreadCount ?? this.unreadCount,
      totalCount: totalCount ?? this.totalCount,
    );
  }
}

/// Filter toggle for showing only unread notifications.
final unreadNotificationsFilterProvider = StateProvider<bool>((ref) => false);

/// AsyncNotifier managing the user's in-app notifications.
class NotificationsNotifier extends AsyncNotifier<NotificationsState> {
  @override
  Future<NotificationsState> build() async {
    return _fetchNotifications();
  }

  Future<NotificationsState> _fetchNotifications() async {
    final dio = ref.read(dioProvider);
    final response = await dio.get('/api/notifications');
    final data = response.data as Map<String, dynamic>;
    final rawList = (data['notifications'] as List<dynamic>?) ?? const [];
    final items = rawList
        .whereType<Map<String, dynamic>>()
        .map(AppNotificationItem.fromJson)
        .toList();
    final unreadCount = (data['unreadCount'] as num?)?.toInt() ??
        items.where((n) => !n.isRead).length;
    final totalCount = (data['totalCount'] as num?)?.toInt() ?? items.length;
    return NotificationsState(
      notifications: items,
      unreadCount: unreadCount,
      totalCount: totalCount,
    );
  }

  /// Pull-to-refresh notifications list.
  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_fetchNotifications);
  }

  /// Mark a single notification as read.
  Future<void> markAsRead(String id) async {
    final current = state.valueOrNull;
    if (current != null) {
      final updatedList = current.notifications
          .map((n) => n.id == id ? n.copyWith(isRead: true) : n)
          .toList();
      final newUnread = updatedList.where((n) => !n.isRead).length;
      state = AsyncData(
        current.copyWith(
          notifications: updatedList,
          unreadCount: newUnread,
        ),
      );
    }

    try {
      final dio = ref.read(dioProvider);
      await dio.patch(
        '/api/notifications',
        data: {'id': id},
      );
    } catch (_) {
      // Refresh from server if optimistic update fails
      await refresh();
    }
  }

  /// Mark all notifications as read.
  Future<void> markAllAsRead() async {
    final current = state.valueOrNull;
    if (current != null) {
      final updatedList =
          current.notifications.map((n) => n.copyWith(isRead: true)).toList();
      state = AsyncData(
        current.copyWith(
          notifications: updatedList,
          unreadCount: 0,
        ),
      );
    }

    try {
      final dio = ref.read(dioProvider);
      await dio.patch(
        '/api/notifications',
        data: {'markAllRead': true},
      );
    } catch (_) {
      await refresh();
    }
  }
}

final notificationsProvider =
    AsyncNotifierProvider<NotificationsNotifier, NotificationsState>(
  NotificationsNotifier.new,
);

/// Convenience provider exposing the current unread notification count for dashboard badges.
final unreadNotificationCountProvider = Provider<int>((ref) {
  final asyncState = ref.watch(notificationsProvider);
  return asyncState.valueOrNull?.unreadCount ?? 0;
});

/// AsyncNotifier managing user's notification preferences (`GET` / `PUT /api/notifications/preferences`).
class NotificationPreferencesNotifier
    extends AsyncNotifier<NotificationPreferencesModel> {
  @override
  Future<NotificationPreferencesModel> build() async {
    final dio = ref.read(dioProvider);
    final response = await dio.get('/api/notifications/preferences');
    final data = response.data as Map<String, dynamic>;
    return NotificationPreferencesModel.fromJson(data);
  }

  Future<void> updatePreferences(NotificationPreferencesModel updated) async {
    final previous = state;
    state = AsyncData(updated);
    try {
      final dio = ref.read(dioProvider);
      final response = await dio.put(
        '/api/notifications/preferences',
        data: updated.toJson(),
      );
      final data = response.data as Map<String, dynamic>;
      state = AsyncData(NotificationPreferencesModel.fromJson(data));
      // Refresh notifications feed in case category/in-app toggles changed
      ref.invalidate(notificationsProvider);
    } catch (_) {
      state = previous;
      return;
    }
  }
}

final notificationPreferencesProvider = AsyncNotifierProvider<
    NotificationPreferencesNotifier, NotificationPreferencesModel>(
  NotificationPreferencesNotifier.new,
);
