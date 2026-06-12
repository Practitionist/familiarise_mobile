import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../notifications/screens/notifications_screen.dart';

import '../../auth/providers/auth_provider.dart';
import '../providers/delete_account_provider.dart';

/// Profile screen - shows user information and settings.
/// Contains sign-out functionality and account management options.
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final theme = Theme.of(context);
    final user = authState.user;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            // User avatar and info
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: theme.colorScheme.primaryContainer,
                    backgroundImage:
                        user?.image != null ? NetworkImage(user!.image!) : null,
                    child: user?.image == null
                        ? Icon(
                            Icons.person,
                            size: 50,
                            color: theme.colorScheme.onPrimaryContainer,
                          )
                        : null,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    user?.name ?? 'User',
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    user?.email ?? '',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Menu items
            _buildMenuItem(
              context,
              icon: Icons.person_outline,
              title: 'Edit Profile',
              onTap: () {
                context.push('/profile/edit');
              },
            ),
            _buildMenuItem(
              context,
              icon: Icons.calendar_month_outlined,
              title: 'My Bookings',
              onTap: () {
                context.push('/my-bookings');
              },
            ),
            _buildMenuItem(
              context,
              icon: Icons.business_outlined,
              title: 'My Organization',
              onTap: () {
                context.push('/organization');
              },
            ),
            _buildMenuItem(
              context,
              icon: Icons.notifications_outlined,
              title: 'Notifications',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (_) => const NotificationsScreen(),
                  ),
                );
              },
            ),
            _buildMenuItem(
              context,
              icon: Icons.support_agent_outlined,
              title: 'Support Tickets',
              onTap: () {
                context.push('/support');
              },
            ),
            _buildMenuItem(
              context,
              icon: Icons.feedback_outlined,
              title: 'Send Feedback',
              onTap: () {
                context.push('/feedback');
              },
            ),
            _buildMenuItem(
              context,
              icon: Icons.lock_outline,
              title: 'Change Password',
              onTap: () {
                context.push('/profile/change-password');
              },
            ),
            _buildMenuItem(
              context,
              icon: Icons.devices_outlined,
              title: 'Active Sessions',
              onTap: () {
                context.push('/profile/sessions');
              },
            ),
            _buildMenuItem(
              context,
              icon: Icons.info_outline,
              title: 'About',
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'Familiarise',
                  applicationVersion: '1.0.0',
                  applicationLegalese: '\u00a9 2024 Familiarise',
                );
              },
            ),

            // Debug: Verify Sentry Setup (only in debug mode)
            if (kDebugMode) ...[
              const SizedBox(height: 24),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    throw StateError('Sentry Test Exception - Verify Setup');
                  },
                  icon: const Icon(Icons.bug_report),
                  label: const Text('Verify Sentry Setup'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],

            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 8),

            // Delete account
            _buildMenuItem(
              context,
              icon: Icons.delete_forever_outlined,
              title: 'Delete Account',
              isDestructive: true,
              onTap: () async {
                final shouldDelete = await showDialog<bool>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Delete Account'),
                    content: const Text(
                      'This action is permanent and cannot be undone. '
                      'All your data will be deleted.',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(context, false),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(context, true),
                        style: TextButton.styleFrom(
                          foregroundColor:
                              Theme.of(context).colorScheme.error,
                        ),
                        child: const Text('Delete'),
                      ),
                    ],
                  ),
                );

                if (shouldDelete == true && context.mounted) {
                  final success = await ref
                      .read(deleteAccountProvider.notifier)
                      .deleteAccount();
                  if (!success && context.mounted) {
                    final errorState = ref.read(deleteAccountProvider);
                    final errorMessage = errorState.maybeWhen(
                      error: (error, _) => error.toString(),
                      orElse: () => 'Failed to delete account. Please try again.',
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(errorMessage)),
                    );
                  }
                }
              },
            ),

            // Sign out button
            _buildMenuItem(
              context,
              icon: Icons.logout,
              title: 'Sign Out',
              isDestructive: true,
              onTap: () async {
                final shouldSignOut = await showDialog<bool>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Sign Out'),
                    content: const Text('Are you sure you want to sign out?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, false),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, true),
                        child: const Text('Sign Out'),
                      ),
                    ],
                  ),
                );

                if (shouldSignOut == true && context.mounted) {
                  await ref.read(authProvider.notifier).signOut();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool isDestructive = false,
  }) {
    final theme = Theme.of(context);
    final color =
        isDestructive ? theme.colorScheme.error : theme.colorScheme.onSurface;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        title,
        style: TextStyle(color: color),
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: theme.colorScheme.onSurfaceVariant,
      ),
      onTap: onTap,
    );
  }
}
