import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/formatters.dart';
import '../providers/notifications_provider.dart';

/// Notifications screen with pull-to-refresh, unread filter, mark-all-read,
/// tap-to-open/mark-read, and Notification Preferences bottom sheet.
class NotificationsScreen extends ConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationsAsync = ref.watch(notificationsProvider);
    final unreadOnly = ref.watch(unreadNotificationsFilterProvider);
    final unreadCount = ref.watch(unreadNotificationCountProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          if (unreadCount > 0)
            TextButton.icon(
              onPressed: () =>
                  ref.read(notificationsProvider.notifier).markAllAsRead(),
              icon: const Icon(Icons.done_all, size: 18),
              label: const Text('Mark all read'),
            ),
          IconButton(
            icon: const Icon(Icons.tune_outlined),
            tooltip: 'Notification preferences',
            onPressed: () => _showPreferencesSheet(context),
          ),
        ],
      ),
      body: Column(
        children: [
          // Filter bar
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
            child: Row(
              children: [
                FilterChip(
                  label: const Text('All'),
                  selected: !unreadOnly,
                  onSelected: (_) => ref
                      .read(unreadNotificationsFilterProvider.notifier)
                      .state = false,
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: Text(
                    unreadCount > 0 ? 'Unread ($unreadCount)' : 'Unread',
                  ),
                  selected: unreadOnly,
                  onSelected: (_) => ref
                      .read(unreadNotificationsFilterProvider.notifier)
                      .state = true,
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: notificationsAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => _ErrorNotificationsState(
                message: 'Failed to load notifications',
                onRetry: () =>
                    ref.read(notificationsProvider.notifier).refresh(),
              ),
              data: (state) {
                final items = unreadOnly
                    ? state.notifications.where((n) => !n.isRead).toList()
                    : state.notifications;

                if (items.isEmpty) {
                  return RefreshIndicator(
                    onRefresh: () =>
                        ref.read(notificationsProvider.notifier).refresh(),
                    child: ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: _EmptyNotificationsState(
                            icon: Icons.notifications_none_outlined,
                            title: unreadOnly
                                ? 'No unread notifications'
                                : 'No notifications yet',
                            subtitle: unreadOnly
                                ? 'You are all caught up!'
                                : 'Booking updates, reminders, and support '
                                    'replies will appear here.',
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return RefreshIndicator(
                  onRefresh: () =>
                      ref.read(notificationsProvider.notifier).refresh(),
                  child: ListView.separated(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    itemCount: items.length,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return _NotificationTile(
                        item: item,
                        onTap: () async {
                          if (!item.isRead) {
                            await ref
                                .read(notificationsProvider.notifier)
                                .markAsRead(item.id);
                          }
                          if (!context.mounted) return;
                          final route = item.actionRoute;
                          if (route != null &&
                              route.isNotEmpty &&
                              route.startsWith('/')) {
                            context.push(route);
                          }
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showPreferencesSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) => const _NotificationPreferencesSheet(),
    );
  }
}

class _NotificationTile extends StatelessWidget {
  const _NotificationTile({
    required this.item,
    required this.onTap,
  });

  final AppNotificationItem item;
  final VoidCallback onTap;

  IconData _iconForCategory(String category, String type) {
    switch (category) {
      case 'support':
        return Icons.support_agent_outlined;
      case 'appointments':
        return Icons.event_available_outlined;
      case 'updates':
        return Icons.campaign_outlined;
      default:
        if (type.contains('PAYMENT')) return Icons.receipt_long_outlined;
        return Icons.notifications_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isUnread = !item.isRead;

    return ListTile(
      onTap: onTap,
      tileColor: isUnread
          ? theme.colorScheme.primaryContainer.withValues(alpha: 0.18)
          : null,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      leading: CircleAvatar(
        backgroundColor: isUnread
            ? theme.colorScheme.primaryContainer
            : theme.colorScheme.surfaceContainerHighest,
        foregroundColor: isUnread
            ? theme.colorScheme.onPrimaryContainer
            : theme.colorScheme.onSurfaceVariant,
        child: Icon(_iconForCategory(item.category, item.type), size: 20),
      ),
      title: Row(
        children: [
          Expanded(
            child: Text(
              item.title,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: isUnread ? FontWeight.w700 : FontWeight.w500,
              ),
            ),
          ),
          if (isUnread)
            Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (item.body.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              item.body,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
          const SizedBox(height: 4),
          Text(
            Formatters.relative(item.createdAt),
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),
        ],
      ),
    );
  }
}

class _NotificationPreferencesSheet extends ConsumerWidget {
  const _NotificationPreferencesSheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prefsAsync = ref.watch(notificationPreferencesProvider);
    final theme = Theme.of(context);

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.75,
      minChildSize: 0.5,
      maxChildSize: 0.92,
      builder: (context, scrollController) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 12, 8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Notification Preferences',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            Expanded(
              child: prefsAsync.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, _) => _ErrorNotificationsState(
                  message: 'Failed to load preferences',
                  onRetry: () =>
                      ref.invalidate(notificationPreferencesProvider),
                ),
                data: (prefs) {
                  void update(NotificationPreferencesModel next) {
                    ref
                        .read(notificationPreferencesProvider.notifier)
                        .updatePreferences(next);
                  }

                  return ListView(
                    controller: scrollController,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    children: [
                      SwitchListTile(
                        title: const Text('All Notifications'),
                        subtitle: const Text(
                          'Master toggle for all notification channels',
                        ),
                        value: prefs.allNotifications,
                        onChanged: (v) =>
                            update(prefs.copyWith(allNotifications: v)),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                        child: Text(
                          'Channels',
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SwitchListTile(
                        title: const Text('In-App Notifications'),
                        subtitle: const Text('Show alerts in the notification bell'),
                        value: prefs.inAppEnabled,
                        onChanged: prefs.allNotifications
                            ? (v) => update(prefs.copyWith(inAppEnabled: v))
                            : null,
                      ),
                      SwitchListTile(
                        title: const Text('Email Notifications'),
                        subtitle: const Text('Receive booking & support emails'),
                        value: prefs.emailEnabled,
                        onChanged: prefs.allNotifications
                            ? (v) => update(prefs.copyWith(emailEnabled: v))
                            : null,
                      ),
                      SwitchListTile(
                        title: const Text('Push Notifications'),
                        subtitle: const Text('Mobile push alerts for live calls'),
                        value: prefs.pushEnabled,
                        onChanged: prefs.allNotifications
                            ? (v) => update(prefs.copyWith(pushEnabled: v))
                            : null,
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                        child: Text(
                          'Categories',
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SwitchListTile(
                        title: const Text('Appointment Reminders'),
                        subtitle: const Text(
                          'Upcoming session reminders and schedule changes',
                        ),
                        value: prefs.appointmentReminders,
                        onChanged: prefs.allNotifications
                            ? (v) =>
                                update(prefs.copyWith(appointmentReminders: v))
                            : null,
                      ),
                      SwitchListTile(
                        title: const Text('Support Ticket Updates'),
                        subtitle: const Text('Replies and status changes on tickets'),
                        value: prefs.supportUpdates,
                        onChanged: prefs.allNotifications
                            ? (v) => update(prefs.copyWith(supportUpdates: v))
                            : null,
                      ),
                      SwitchListTile(
                        title: const Text('Payment & Billing Alerts'),
                        subtitle: const Text('Receipts, refunds, and subscription alerts'),
                        value: prefs.paymentNotifications,
                        onChanged: prefs.allNotifications
                            ? (v) => update(
                                  prefs.copyWith(
                                    paymentNotifications: v,
                                    subscriptionAlerts: v,
                                  ),
                                )
                            : null,
                      ),
                      SwitchListTile(
                        title: const Text('Feedback & Review Alerts'),
                        subtitle: const Text('Post-session rating and review updates'),
                        value: prefs.feedbackAlerts,
                        onChanged: prefs.allNotifications
                            ? (v) => update(prefs.copyWith(feedbackAlerts: v))
                            : null,
                      ),
                      SwitchListTile(
                        title: const Text('Platform Updates & Announcements'),
                        subtitle: const Text('New features and maintenance notices'),
                        value: prefs.updates,
                        onChanged: prefs.allNotifications
                            ? (v) => update(prefs.copyWith(updates: v))
                            : null,
                      ),
                      const Divider(),
                      SwitchListTile(
                        title: const Text('Quiet Hours (22:00 – 08:00)'),
                        subtitle: const Text(
                          'Pause non-urgent notifications overnight',
                        ),
                        value: prefs.quietHoursEnabled,
                        onChanged: prefs.allNotifications
                            ? (v) => update(
                                  prefs.copyWith(
                                    quietHoursEnabled: v,
                                    quietHoursStart:
                                        prefs.quietHoursStart ?? '22:00',
                                    quietHoursEnd:
                                        prefs.quietHoursEnd ?? '08:00',
                                  ),
                                )
                            : null,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class _EmptyNotificationsState extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _EmptyNotificationsState({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 56, color: theme.colorScheme.outline),
            const SizedBox(height: 16),
            Text(
              title,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _ErrorNotificationsState extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorNotificationsState({
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              size: 48,
              color: theme.colorScheme.error,
            ),
            const SizedBox(height: 12),
            Text(
              message,
              style: theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}

