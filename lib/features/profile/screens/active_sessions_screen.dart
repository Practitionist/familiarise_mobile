import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../app/theme/app_theme.dart';
import '../providers/linked_accounts_provider.dart';

/// Screen for managing active sessions.
class ActiveSessionsScreen extends ConsumerWidget {
  const ActiveSessionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sessionsAsync = ref.watch(sessionManagementProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Active Sessions'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        actions: [
          TextButton(
            onPressed: () => _revokeOtherSessions(context, ref),
            child: const Text('Revoke All Others'),
          ),
        ],
      ),
      body: SafeArea(
        child: sessionsAsync.when(
          data: (sessions) => _buildSessionsList(context, ref, sessions),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, _) => _buildError(context, ref, error.toString()),
        ),
      ),
    );
  }

  Widget _buildSessionsList(
    BuildContext context,
    WidgetRef ref,
    List<Map<String, dynamic>> sessions,
  ) {
    final theme = Theme.of(context);

    if (sessions.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.devices_outlined,
                size: 64,
                color:
                    theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
              ),
              const SizedBox(height: 16),
              Text(
                'No active sessions',
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                'Your active sessions will appear here',
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

    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(sessionManagementProvider);
      },
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: sessions.length,
        itemBuilder: (context, index) {
          final session = sessions[index];
          return _SessionCard(
            session: session,
            onRevoke: () => _revokeSession(context, ref, session['id']),
          );
        },
      ),
    );
  }

  Widget _buildError(BuildContext context, WidgetRef ref, String error) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: theme.colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              'Failed to load sessions',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              error,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            FilledButton.tonal(
              onPressed: () => ref.invalidate(sessionManagementProvider),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _revokeSession(
    BuildContext context,
    WidgetRef ref,
    String sessionId,
  ) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Revoke Session'),
        content: const Text(
          'This will sign out the device associated with this session. Continue?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
            ),
            child: const Text('Revoke'),
          ),
        ],
      ),
    );

    if (confirm == true && context.mounted) {
      final success = await ref
          .read(sessionManagementProvider.notifier)
          .revokeSession(sessionId);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              success ? 'Session revoked' : 'Failed to revoke session',
            ),
            backgroundColor: success ? AppTheme.success : AppTheme.destructive,
          ),
        );
      }
    }
  }

  Future<void> _revokeOtherSessions(BuildContext context, WidgetRef ref) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Revoke All Other Sessions'),
        content: const Text(
          'This will sign out all other devices. Only your current session will remain active. Continue?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
            ),
            child: const Text('Revoke All'),
          ),
        ],
      ),
    );

    if (confirm == true && context.mounted) {
      final success = await ref
          .read(sessionManagementProvider.notifier)
          .revokeOtherSessions();
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              success
                  ? 'All other sessions revoked'
                  : 'Failed to revoke sessions',
            ),
            backgroundColor: success ? AppTheme.success : AppTheme.destructive,
          ),
        );
      }
    }
  }
}

class _SessionCard extends StatelessWidget {
  const _SessionCard({
    required this.session,
    required this.onRevoke,
  });

  final Map<String, dynamic> session;
  final VoidCallback onRevoke;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isCurrentSession = session['isCurrent'] == true;
    final userAgent = session['userAgent'] as String? ?? 'Unknown Device';
    final createdAt = session['createdAt'] as String?;
    final ipAddress = session['ipAddress'] as String?;

    // Parse device info from user agent
    final deviceInfo = _parseUserAgent(userAgent);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: isCurrentSession
                ? theme.colorScheme.primaryContainer
                : theme.colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            deviceInfo.icon,
            color: isCurrentSession
                ? theme.colorScheme.primary
                : theme.colorScheme.onSurfaceVariant,
          ),
        ),
        title: Row(
          children: [
            Expanded(
              child: Text(
                deviceInfo.name,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            if (isCurrentSession)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Current',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            if (ipAddress != null)
              Text(
                'IP: $ipAddress',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            if (createdAt != null)
              Text(
                'Active since ${_formatDate(createdAt)}',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
          ],
        ),
        trailing: isCurrentSession
            ? null
            : IconButton(
                onPressed: onRevoke,
                icon: Icon(
                  Icons.logout,
                  color: theme.colorScheme.error,
                ),
                tooltip: 'Revoke session',
              ),
        isThreeLine: true,
      ),
    );
  }

  _DeviceInfo _parseUserAgent(String userAgent) {
    final ua = userAgent.toLowerCase();
    if (ua.contains('iphone') || ua.contains('ipad')) {
      return _DeviceInfo('iOS Device', Icons.phone_iphone);
    } else if (ua.contains('android')) {
      return _DeviceInfo('Android Device', Icons.phone_android);
    } else if (ua.contains('windows')) {
      return _DeviceInfo('Windows PC', Icons.computer);
    } else if (ua.contains('mac')) {
      return _DeviceInfo('Mac', Icons.laptop_mac);
    } else if (ua.contains('linux')) {
      return _DeviceInfo('Linux PC', Icons.computer);
    } else if (ua.contains('chrome')) {
      return _DeviceInfo('Chrome Browser', Icons.web);
    } else if (ua.contains('firefox')) {
      return _DeviceInfo('Firefox Browser', Icons.web);
    } else if (ua.contains('safari')) {
      return _DeviceInfo('Safari Browser', Icons.web);
    }
    return _DeviceInfo('Unknown Device', Icons.devices);
  }

  String _formatDate(String dateStr) {
    try {
      final date = DateTime.parse(dateStr);
      return DateFormat('MMM d, y • h:mm a').format(date.toLocal());
    } catch (_) {
      return dateStr;
    }
  }
}

class _DeviceInfo {
  final String name;
  final IconData icon;
  _DeviceInfo(this.name, this.icon);
}
