import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/notification/notification_entities.dart';
import '../providers/notification_providers.dart';

/// Screen for managing notification preference settings.
///
/// Displays channel toggles (email, push, in-app), per-category toggles,
/// and quiet hours configuration. Uses optimistic updates via
/// [notificationPreferencesProvider].
class NotificationPreferencesScreen extends ConsumerStatefulWidget {
  const NotificationPreferencesScreen({super.key});

  @override
  ConsumerState<NotificationPreferencesScreen> createState() =>
      _NotificationPreferencesScreenState();
}

class _NotificationPreferencesScreenState
    extends ConsumerState<NotificationPreferencesScreen> {
  TimeOfDay? _quietStart;
  TimeOfDay? _quietEnd;

  /// Display name mapping for category keys
  static const _categoryLabels = {
    'appointments': 'Appointments',
    'payments': 'Payments',
    'support': 'Support',
    'feedback': 'Feedback',
    'subscriptions': 'Subscriptions',
    'marketing': 'Marketing & Promotions',
  };

  @override
  Widget build(BuildContext context) {
    final prefsAsync = ref.watch(notificationPreferencesProvider);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(theme),
            Expanded(
              child: prefsAsync.when(
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error, _) => _buildError(theme, error.toString()),
                data: (prefs) => _buildContent(theme, prefs),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color:
                    theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
              ),
            ),
            child: IconButton(
              onPressed: () {
                if (context.canPop()) {
                  context.pop();
                } else {
                  context.go('/notifications');
                }
              },
              icon: const Icon(Icons.arrow_back, size: 20),
              visualDensity: VisualDensity.compact,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Notification Settings',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                ),
                Text(
                  'Manage your preferences',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(ThemeData theme, NotificationPreference prefs) {
    // Sync local time picker state from prefs
    _quietStart ??= _parseTimeOfDay(prefs.quietHoursStart);
    _quietEnd ??= _parseTimeOfDay(prefs.quietHoursEnd);

    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 40),
      children: [
        // Channels section
        _buildSectionHeader(theme, 'Channels'),
        const SizedBox(height: 8),
        _buildChannelsCard(theme, prefs),

        const SizedBox(height: 24),

        // Categories section
        _buildSectionHeader(theme, 'Categories'),
        const SizedBox(height: 8),
        _buildCategoriesCard(theme, prefs),

        const SizedBox(height: 24),

        // Quiet hours section
        _buildSectionHeader(theme, 'Quiet Hours'),
        const SizedBox(height: 8),
        _buildQuietHoursCard(theme, prefs),
      ],
    );
  }

  Widget _buildSectionHeader(ThemeData theme, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        title,
        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w600,
          letterSpacing: -0.3,
        ),
      ),
    );
  }

  Widget _buildChannelsCard(ThemeData theme, NotificationPreference prefs) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
      ),
      child: Column(
        children: [
          SwitchListTile(
            title: const Text('Email'),
            subtitle: const Text('Receive notifications via email'),
            secondary: const Icon(Icons.email_outlined),
            value: prefs.emailEnabled,
            onChanged: (value) => _updatePrefs(
              prefs.copyWith(emailEnabled: value),
            ),
          ),
          const Divider(height: 1, indent: 16, endIndent: 16),
          SwitchListTile(
            title: const Text('Push'),
            subtitle: const Text('Receive push notifications'),
            secondary: const Icon(Icons.phone_android_outlined),
            value: prefs.pushEnabled,
            onChanged: (value) => _updatePrefs(
              prefs.copyWith(pushEnabled: value),
            ),
          ),
          const Divider(height: 1, indent: 16, endIndent: 16),
          SwitchListTile(
            title: const Text('In-App'),
            subtitle: const Text('Show in notification inbox'),
            secondary: const Icon(Icons.inbox_outlined),
            value: prefs.inAppEnabled,
            onChanged: (value) => _updatePrefs(
              prefs.copyWith(inAppEnabled: value),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesCard(ThemeData theme, NotificationPreference prefs) {
    final categories = prefs.categories;
    final sortedKeys = _categoryLabels.keys
        .where((k) => categories.containsKey(k))
        .toList();

    // Include any extra categories from the server not in our label map
    for (final key in categories.keys) {
      if (!sortedKeys.contains(key)) {
        sortedKeys.add(key);
      }
    }

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
      ),
      child: Column(
        children: [
          for (int i = 0; i < sortedKeys.length; i++) ...[
            if (i > 0) const Divider(height: 1, indent: 16, endIndent: 16),
            SwitchListTile(
              title: Text(
                _categoryLabels[sortedKeys[i]] ?? _capitalize(sortedKeys[i]),
              ),
              value: categories[sortedKeys[i]] ?? false,
              onChanged: (value) {
                final updated = Map<String, bool>.from(categories);
                updated[sortedKeys[i]] = value;
                _updatePrefs(prefs.copyWith(categories: updated));
              },
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildQuietHoursCard(ThemeData theme, NotificationPreference prefs) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
      ),
      child: Column(
        children: [
          SwitchListTile(
            title: const Text('Enable Quiet Hours'),
            subtitle: const Text('Silence notifications during set hours'),
            secondary: const Icon(Icons.do_not_disturb_on_outlined),
            value: prefs.quietHoursEnabled,
            onChanged: (value) => _updatePrefs(
              prefs.copyWith(quietHoursEnabled: value),
            ),
          ),
          if (prefs.quietHoursEnabled) ...[
            const Divider(height: 1, indent: 16, endIndent: 16),
            ListTile(
              leading: const Icon(Icons.access_time_outlined),
              title: const Text('Start Time'),
              trailing: Text(
                _quietStart != null
                    ? _quietStart!.format(context)
                    : 'Not set',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () => _pickTime(
                initial: _quietStart ?? const TimeOfDay(hour: 22, minute: 0),
                onPicked: (time) {
                  setState(() => _quietStart = time);
                  _updatePrefs(prefs.copyWith(
                    quietHoursStart: _formatTimeOfDay(time),
                  ));
                },
              ),
            ),
            const Divider(height: 1, indent: 16, endIndent: 16),
            ListTile(
              leading: const Icon(Icons.access_time_outlined),
              title: const Text('End Time'),
              trailing: Text(
                _quietEnd != null ? _quietEnd!.format(context) : 'Not set',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () => _pickTime(
                initial: _quietEnd ?? const TimeOfDay(hour: 8, minute: 0),
                onPicked: (time) {
                  setState(() => _quietEnd = time);
                  _updatePrefs(prefs.copyWith(
                    quietHoursEnd: _formatTimeOfDay(time),
                  ));
                },
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildError(ThemeData theme, String message) {
    return ListView(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.15),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.errorContainer
                        .withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Icon(
                    Icons.error_outline,
                    size: 40,
                    color: theme.colorScheme.error,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Something went wrong',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  message,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 24),
                OutlinedButton.icon(
                  onPressed: () {
                    ref.invalidate(notificationPreferencesProvider);
                  },
                  icon: const Icon(Icons.refresh, size: 18),
                  label: const Text('Try Again'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // Helpers
  // ---------------------------------------------------------------------------

  void _updatePrefs(NotificationPreference prefs) {
    ref
        .read(notificationPreferencesProvider.notifier)
        .updatePreferences(prefs);
  }

  Future<void> _pickTime({
    required TimeOfDay initial,
    required void Function(TimeOfDay) onPicked,
  }) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: initial,
    );
    if (picked != null) {
      onPicked(picked);
    }
  }

  TimeOfDay? _parseTimeOfDay(String? value) {
    if (value == null) return null;
    final parts = value.split(':');
    if (parts.length != 2) return null;
    final hour = int.tryParse(parts[0]);
    final minute = int.tryParse(parts[1]);
    if (hour == null || minute == null) return null;
    return TimeOfDay(hour: hour, minute: minute);
  }

  String _formatTimeOfDay(TimeOfDay time) {
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  String _capitalize(String s) {
    if (s.isEmpty) return s;
    return s[0].toUpperCase() + s.substring(1);
  }
}
