import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/notification_providers.dart';

/// Notification bell icon with an unread count badge.
///
/// Watches [unreadNotificationCountProvider] and displays a Material 3
/// [Badge] when the count is greater than zero. Navigates to the
/// notification inbox screen on tap.
class NotificationBellWidget extends ConsumerWidget {
  const NotificationBellWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unreadCount = ref.watch(unreadNotificationCountProvider);
    final theme = Theme.of(context);

    return IconButton(
      onPressed: () => context.push('/notifications'),
      tooltip: 'Notifications',
      icon: unreadCount > 0
          ? Badge(
              label: Text(
                unreadCount > 99 ? '99+' : '$unreadCount',
                style: TextStyle(
                  color: theme.colorScheme.onError,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
              backgroundColor: theme.colorScheme.error,
              child: const Icon(Icons.notifications_outlined),
            )
          : const Icon(Icons.notifications_outlined),
    );
  }
}
