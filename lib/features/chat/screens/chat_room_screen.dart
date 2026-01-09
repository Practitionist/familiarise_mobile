import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import '../providers/chat_service_provider.dart';
import '../theme/chat_theme.dart';

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

    // Get the other member for the app bar
    final currentUserId = _channel!.client.state.currentUser?.id;
    final otherMembers = _channel!.state?.members
            .where((m) => m.userId != currentUserId)
            .toList() ??
        [];
    final otherMember = otherMembers.isNotEmpty ? otherMembers.first : null;

    return StreamChannel(
      channel: _channel!,
      child: StreamChatTheme(
        data: buildChatTheme(context),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.pop(),
            ),
            title: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: colorScheme.primaryContainer,
                  backgroundImage: otherMember?.user?.image != null
                      ? NetworkImage(otherMember!.user!.image!)
                      : null,
                  child: otherMember?.user?.image == null
                      ? Text(
                          _getInitials(otherMember?.user?.name),
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: colorScheme.onPrimaryContainer,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      : null,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        otherMember?.user?.name ?? 'Chat',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (otherMember?.user?.online == true)
                        Text(
                          'Online',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: Colors.green,
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
              // Message list
              Expanded(
                child: StreamMessageListView(
                  messageBuilder: (context, details, messages, defaultWidget) {
                    return defaultWidget.copyWith(
                      showUserAvatar: DisplayWidget.gone,
                    );
                  },
                ),
              ),

              // Message input
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
      ),
    );
  }

  String _getInitials(String? name) {
    if (name == null || name.isEmpty) return '?';
    final parts = name.trim().split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }
    return name[0].toUpperCase();
  }
}
