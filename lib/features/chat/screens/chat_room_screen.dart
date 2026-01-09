import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import '../../../core/extensions/string_extensions.dart';
import '../../../core/utils/sentry_logger.dart';
import '../providers/chat_service_provider.dart';
import '../widgets/chat_actions_sheet.dart';

/// Screen for displaying a chat conversation
class ChatRoomScreen extends ConsumerStatefulWidget {
  const ChatRoomScreen({
    super.key,
    required this.channelId,
    this.channel,
  });

  /// The ID of the channel to display
  final String channelId;

  /// Pre-loaded channel instance (passed from list screen)
  final Channel? channel;

  @override
  ConsumerState<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends ConsumerState<ChatRoomScreen> {
  Channel? _channel;
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _channel = widget.channel;
    if (_channel != null) {
      _isLoading = false;
    } else {
      _loadChannel();
    }
  }

  Future<void> _loadChannel() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final chatService = ref.read(chatServiceProvider.notifier);
      final client = chatService.client;

      if (client == null) {
        setState(() {
          _isLoading = false;
          _error = 'Chat not initialized';
        });
        return;
      }

      final channel = client.channel('messaging', id: widget.channelId);
      await channel.watch();

      setState(() {
        _channel = channel;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
        _error = 'Failed to load conversation';
      });
    }
  }

  Future<void> _showChatActionsSheet() async {
    if (_channel == null) return;

    final result = await showChatActionsSheet(
      context: context,
      channel: _channel!,
    );

    if (result == null || !mounted) return;

    switch (result) {
      case MuteToggleAction():
        await _handleMuteToggle();
      case ClearChatAction():
        await _handleClearChat();
      case DeleteConversationAction():
        await _handleDeleteConversation();
    }
  }

  Future<void> _handleMuteToggle() async {
    if (_channel == null) return;

    try {
      if (_channel!.isMuted) {
        await _channel!.unmute();
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Notifications unmuted')),
          );
        }
      } else {
        await _channel!.mute();
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Notifications muted')),
          );
        }
      }
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'ChatRoomScreen._handleMuteToggle',
      );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to update notification settings')),
        );
      }
    }
  }

  Future<void> _handleClearChat() async {
    if (_channel == null) return;

    final confirmed = await showDestructiveActionDialog(
      context: context,
      title: 'Clear chat?',
      message:
          'This will delete all messages in this conversation. This action cannot be undone.',
      confirmText: 'Clear',
    );

    if (!confirmed || !mounted) return;

    try {
      await _channel!.truncate();
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Chat cleared')),
        );
      }
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'ChatRoomScreen._handleClearChat',
      );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to clear chat')),
        );
      }
    }
  }

  Future<void> _handleDeleteConversation() async {
    if (_channel == null) return;

    final confirmed = await showDestructiveActionDialog(
      context: context,
      title: 'Delete conversation?',
      message:
          'This will permanently delete this conversation and all its messages. This action cannot be undone.',
      confirmText: 'Delete',
    );

    if (!confirmed || !mounted) return;

    try {
      await _channel!.delete();
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Conversation deleted')),
        );
        context.pop();
      }
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'ChatRoomScreen._handleDeleteConversation',
      );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to delete conversation')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (_isLoading) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    if (_error != null || _channel == null) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.pop(),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.error_outline,
                  size: 48,
                  color: colorScheme.error,
                ),
                const SizedBox(height: 16),
                Text(
                  _error ?? 'Failed to load conversation',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: _loadChannel,
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
        ),
      );
    }

    // Check if this is a group channel
    final isGroupChannel = _channel!.type == 'team';
    final currentUserId = _channel!.client.state.currentUser?.id;
    final memberCount = _channel!.state?.members.length ?? 0;
    final isArchived = _channel!.extraData['isArchived'] == true;

    // For DMs, get the other member for the app bar
    final otherMembers = _channel!.state?.members
            .where((m) => m.userId != currentUserId)
            .toList() ??
        [];
    final otherMember = otherMembers.isNotEmpty ? otherMembers.first : null;

    // Display name and subtitle based on channel type
    final displayName = isGroupChannel
        ? (_channel!.name ?? 'Group Chat')
        : (otherMember?.user?.name ?? 'Chat');
    final subtitle = isGroupChannel
        ? '$memberCount member${memberCount == 1 ? '' : 's'}'
        : (otherMember?.user?.online == true ? 'Online' : null);

    return StreamChannel(
      channel: _channel!,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.pop(),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: _showChatActionsSheet,
              ),
            ],
            title: Row(
              children: [
                _buildAppBarAvatar(
                  theme,
                  colorScheme,
                  isGroupChannel,
                  otherMember,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          if (isArchived)
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Icon(
                                Icons.archive_outlined,
                                size: 14,
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          Expanded(
                            child: Text(
                              displayName,
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      if (subtitle != null)
                        Text(
                          subtitle,
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: subtitle == 'Online'
                                ? Colors.green
                                : colorScheme.onSurfaceVariant,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              // Archived banner
              if (isArchived)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  color: colorScheme.surfaceContainerHighest,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.archive_outlined,
                        size: 16,
                        color: colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'This chat is archived',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),

              // Message list
              Expanded(
                child: StreamMessageListView(
                  messageBuilder: (context, details, messages, defaultWidget) {
                    // Show avatars in group chats, hide in DMs
                    return defaultWidget.copyWith(
                      showUserAvatar: isGroupChannel
                          ? DisplayWidget.show
                          : DisplayWidget.gone,
                    );
                  },
                ),
              ),

              // Message input (hidden if archived)
              if (!isArchived)
                Container(
                  decoration: BoxDecoration(
                    color: colorScheme.surface,
                    border: Border(
                      top: BorderSide(
                        color: colorScheme.outlineVariant,
                      ),
                    ),
                  ),
                  child: SafeArea(
                    child: StreamMessageInput(
                      disableAttachments: false,
                      sendButtonLocation: SendButtonLocation.inside,
                    ),
                  ),
                ),
            ],
          ),
        ),
    );
  }

  Widget _buildAppBarAvatar(
    ThemeData theme,
    ColorScheme colorScheme,
    bool isGroupChannel,
    Member? otherMember,
  ) {
    if (isGroupChannel) {
      return CircleAvatar(
        radius: 18,
        backgroundColor: colorScheme.secondaryContainer,
        child: Icon(
          Icons.groups,
          color: colorScheme.onSecondaryContainer,
          size: 20,
        ),
      );
    }

    return CircleAvatar(
      radius: 18,
      backgroundColor: colorScheme.primaryContainer,
      backgroundImage: otherMember?.user?.image != null
          ? NetworkImage(otherMember!.user!.image!)
          : null,
      child: otherMember?.user?.image == null
          ? Text(
              (otherMember?.user?.name).getInitials(),
              style: theme.textTheme.labelMedium?.copyWith(
                color: colorScheme.onPrimaryContainer,
                fontWeight: FontWeight.w600,
              ),
            )
          : null,
    );
  }
}
