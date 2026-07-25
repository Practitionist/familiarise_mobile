import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

/// Result of chat action selection
sealed class ChatActionResult {
  const ChatActionResult();
}

/// User wants to toggle mute status
class MuteToggleAction extends ChatActionResult {
  const MuteToggleAction();
}

/// User wants to clear all messages
class ClearChatAction extends ChatActionResult {
  const ClearChatAction();
}

/// User wants to delete the conversation
class DeleteConversationAction extends ChatActionResult {
  const DeleteConversationAction();
}

/// Shows chat actions bottom sheet
///
/// Returns the selected action or null if cancelled
Future<ChatActionResult?> showChatActionsSheet({
  required BuildContext context,
  required Channel channel,
}) async {
  return showModalBottomSheet<ChatActionResult>(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) => _ChatActionsSheet(channel: channel),
  );
}

/// Shows confirmation dialog for destructive actions
///
/// Returns true if confirmed, false if cancelled
Future<bool> showDestructiveActionDialog({
  required BuildContext context,
  required String title,
  required String message,
  required String confirmText,
  Color? confirmColor,
}) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          style: TextButton.styleFrom(
            foregroundColor:
                confirmColor ?? Theme.of(context).colorScheme.error,
          ),
          child: Text(confirmText),
        ),
      ],
    ),
  );
  return result ?? false;
}

// ============================================================================
// Chat Actions Sheet
// ============================================================================

class _ChatActionsSheet extends StatelessWidget {
  final Channel channel;

  const _ChatActionsSheet({required this.channel});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isMuted = channel.isMuted;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Handle bar
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: theme.colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Title
            Text(
              'Chat Options',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),

            // Option 1: Mute/Unmute notifications
            _ActionCard(
              icon: isMuted
                  ? Icons.notifications_active
                  : Icons.notifications_off,
              iconColor: theme.colorScheme.primary,
              title: isMuted ? 'Unmute notifications' : 'Mute notifications',
              description: isMuted
                  ? 'Start receiving message alerts'
                  : 'Stop receiving message alerts',
              onTap: () => Navigator.of(context).pop(const MuteToggleAction()),
            ),
            const SizedBox(height: 12),

            // Option 2: Clear chat
            _ActionCard(
              icon: Icons.delete_sweep,
              iconColor: Colors.orange,
              title: 'Clear chat',
              description: 'Delete all messages in this conversation',
              onTap: () => Navigator.of(context).pop(const ClearChatAction()),
            ),
            const SizedBox(height: 12),

            // Option 3: Delete conversation (destructive)
            _ActionCard(
              icon: Icons.delete_forever,
              iconColor: theme.colorScheme.error,
              title: 'Delete conversation',
              description: 'Permanently remove this conversation',
              onTap: () =>
                  Navigator.of(context).pop(const DeleteConversationAction()),
              isDestructive: true,
            ),
            const SizedBox(height: 16),

            // Cancel button
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;
  final VoidCallback onTap;
  final bool isDestructive;

  const _ActionCard({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.description,
    required this.onTap,
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: theme.colorScheme.surface,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(
              color: isDestructive
                  ? theme.colorScheme.error.withValues(alpha: 0.3)
                  : theme.colorScheme.outlineVariant,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: iconColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, color: iconColor),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: isDestructive ? theme.colorScheme.error : null,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
