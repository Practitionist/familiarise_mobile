import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../app/theme/app_theme.dart';
import '../../../domain/entities/chat/chat_entities.dart';
import '../providers/chat_service_provider.dart';

/// Screen displaying the list of chat conversations
class ChatListScreen extends ConsumerStatefulWidget {
  const ChatListScreen({super.key});

  @override
  ConsumerState<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends ConsumerState<ChatListScreen> {
  final _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    // Defer initialization to avoid modifying provider state during build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeChat();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _initializeChat() async {
    await ref.read(chatServiceProvider.notifier).initialize();
  }

  void _onSearchChanged(String query) {
    setState(() {
      _searchQuery = query.toLowerCase().trim();
    });
  }

  Future<void> _onConsultantTap(AppointmentConsultant consultant) async {
    final chatService = ref.read(chatServiceProvider.notifier);

    // Ensure chat is initialized
    final chatState = ref.read(chatServiceProvider);
    if (!chatState.isInitialized) {
      final success = await chatService.initialize();
      if (!success) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Failed to connect to chat')),
          );
        }
        return;
      }
    }

    // Create or get the channel
    final channel =
        await chatService.getOrCreateDirectChannel(consultant.consultantUserId);

    if (channel != null && mounted) {
      context.pushNamed(
        'chatRoom',
        pathParameters: {'channelId': channel.id!},
        extra: channel,
      );
    } else if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to open chat')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final chatState = ref.watch(chatServiceProvider);
    final channelsAsync = ref.watch(chatChannelsProvider);
    final consultantsAsync = ref.watch(appointmentConsultantsProvider);

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Messages',
                          style: theme.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.5,
                          ),
                        ),
                        Text(
                          'Chat with your consultants',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Search Bar
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
              child: TextField(
                controller: _searchController,
                onChanged: _onSearchChanged,
                decoration: InputDecoration(
                  hintText: 'Search consultants...',
                  prefixIcon: Icon(
                    Icons.search,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  suffixIcon: _searchQuery.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _searchController.clear();
                            _onSearchChanged('');
                          },
                        )
                      : null,
                  filled: true,
                  fillColor: colorScheme.surfaceContainerHigh,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),
            ),

            // Content
            Expanded(
              child: _buildContent(
                chatState,
                channelsAsync,
                consultantsAsync,
                theme,
                colorScheme,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(
    ChatState chatState,
    AsyncValue<List<Channel>> channelsAsync,
    AsyncValue<List<AppointmentConsultant>> consultantsAsync,
    ThemeData theme,
    ColorScheme colorScheme,
  ) {
    // Show connecting state
    if (chatState.isConnecting) {
      return const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Connecting to chat...'),
          ],
        ),
      );
    }

    // Show error state
    if (chatState.hasError) {
      return Center(
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
                chatState.error ?? 'Failed to connect to chat',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _initializeChat,
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }

    // Build the main content
    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(appointmentConsultantsProvider);
        await _initializeChat();
      },
      child: CustomScrollView(
        slivers: [
          // Linked Consultants Section
          _buildConsultantsSection(consultantsAsync, theme, colorScheme),

          // Conversations Section
          _buildConversationsSection(
            chatState,
            channelsAsync,
            consultantsAsync,
            theme,
            colorScheme,
          ),
        ],
      ),
    );
  }

  Widget _buildConsultantsSection(
    AsyncValue<List<AppointmentConsultant>> consultantsAsync,
    ThemeData theme,
    ColorScheme colorScheme,
  ) {
    return consultantsAsync.when(
      data: (consultants) {
        // Filter by search query
        final filtered = _searchQuery.isEmpty
            ? consultants
            : consultants
                .where((c) =>
                    c.consultantName.toLowerCase().contains(_searchQuery))
                .toList();

        if (filtered.isEmpty && _searchQuery.isEmpty) {
          return const SliverToBoxAdapter(child: SizedBox.shrink());
        }

        return SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                child: Row(
                  children: [
                    Text(
                      'LINKED CONSULTANTS',
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        filtered.length.toString(),
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (filtered.isEmpty && _searchQuery.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  child: Text(
                    'No consultants found matching "$_searchQuery"',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                )
              else
                ...filtered.map((consultant) => _ConsultantTile(
                      consultant: consultant,
                      onTap: () => _onConsultantTap(consultant),
                    )),
            ],
          ),
        );
      },
      loading: () => const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(child: CircularProgressIndicator()),
        ),
      ),
      error: (error, _) => SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Failed to load consultants',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.error,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildConversationsSection(
    ChatState chatState,
    AsyncValue<List<Channel>> channelsAsync,
    AsyncValue<List<AppointmentConsultant>> consultantsAsync,
    ThemeData theme,
    ColorScheme colorScheme,
  ) {
    // Show loading state while initializing
    if (!chatState.isInitialized) {
      return const SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }

    return channelsAsync.when(
      data: (channels) {
        // Filter channels by search query (match other member's name)
        final currentUserId =
            ref.read(chatServiceProvider.notifier).client?.state.currentUser?.id;

        final filtered = _searchQuery.isEmpty
            ? channels
            : channels.where((channel) {
                final otherMembers = channel.state?.members
                        .where((m) => m.userId != currentUserId)
                        .toList() ??
                    [];
                final otherMember =
                    otherMembers.isNotEmpty ? otherMembers.first : null;
                final name = otherMember?.user?.name.toLowerCase() ?? '';
                return name.contains(_searchQuery);
              }).toList();

        if (filtered.isEmpty) {
          if (_searchQuery.isNotEmpty) {
            return SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'No conversations found',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            );
          }
          // Only show empty state if there are no linked consultants
          final hasConsultants = consultantsAsync.valueOrNull?.isNotEmpty ?? false;
          if (!hasConsultants) {
            return SliverToBoxAdapter(
              child: _buildEmptyConversationsState(theme, colorScheme),
            );
          }
          // If we have consultants but no conversations, just show nothing
          return const SliverToBoxAdapter(child: SizedBox.shrink());
        }

        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                  child: Row(
                    children: [
                      Text(
                        'CONVERSATIONS',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          filtered.length.toString(),
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: colorScheme.onPrimaryContainer,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }

              final channel = filtered[index - 1];
              return _ChatChannelTile(
                channel: channel,
                onTap: () {
                  context.pushNamed(
                    'chatRoom',
                    pathParameters: {'channelId': channel.id!},
                    extra: channel,
                  );
                },
              );
            },
            childCount: filtered.length + 1, // +1 for header
          ),
        );
      },
      loading: () => const SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: CircularProgressIndicator(),
          ),
        ),
      ),
      error: (error, _) => SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Failed to load conversations',
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _initializeChat,
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyConversationsState(ThemeData theme, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.chat_bubble_outline,
              size: 36,
              color: colorScheme.primary,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'No conversations yet',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Tap a consultant above to start chatting',
            style: theme.textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

/// Tile widget for displaying a consultant in the linked consultants list
class _ConsultantTile extends StatelessWidget {
  const _ConsultantTile({
    required this.consultant,
    required this.onTap,
  });

  final AppointmentConsultant consultant;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 4,
      ),
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: colorScheme.primaryContainer,
        backgroundImage: consultant.consultantImage != null
            ? NetworkImage(consultant.consultantImage!)
            : null,
        child: consultant.consultantImage == null
            ? Text(
                consultant.initials,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.w600,
                ),
              )
            : null,
      ),
      title: Text(
        consultant.consultantName,
        style: theme.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w500,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        consultant.appointmentTypeText,
        style: theme.textTheme.bodySmall?.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
      ),
      trailing: Icon(
        Icons.chat_bubble_outline,
        color: colorScheme.primary,
        size: 20,
      ),
    );
  }
}

/// Tile widget for displaying a chat channel in the list
class _ChatChannelTile extends StatelessWidget {
  const _ChatChannelTile({
    required this.channel,
    required this.onTap,
  });

  final Channel channel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Get the other member in the channel
    final currentUserId = channel.client.state.currentUser?.id;
    final otherMembers = channel.state?.members
            .where((m) => m.userId != currentUserId)
            .toList() ??
        [];
    final otherMember = otherMembers.isNotEmpty ? otherMembers.first : null;
    final lastMessage = channel.state?.lastMessage;
    final unreadCount = channel.state?.unreadCount ?? 0;

    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),
      leading: CircleAvatar(
        radius: 26,
        backgroundColor: colorScheme.primaryContainer,
        backgroundImage: otherMember?.user?.image != null
            ? NetworkImage(otherMember!.user!.image!)
            : null,
        child: otherMember?.user?.image == null
            ? Text(
                _getInitials(otherMember?.user?.name),
                style: theme.textTheme.titleMedium?.copyWith(
                  color: colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.w600,
                ),
              )
            : null,
      ),
      title: Row(
        children: [
          Expanded(
            child: Text(
              otherMember?.user?.name ?? 'Unknown',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight:
                    unreadCount > 0 ? FontWeight.w600 : FontWeight.normal,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (lastMessage?.createdAt != null)
            Text(
              _formatMessageTime(lastMessage!.createdAt.toLocal()),
              style: theme.textTheme.labelSmall?.copyWith(
                color: unreadCount > 0
                    ? colorScheme.primary
                    : colorScheme.onSurfaceVariant,
              ),
            ),
        ],
      ),
      subtitle: Row(
        children: [
          Expanded(
            child: Text(
              _getLastMessagePreview(lastMessage),
              style: theme.textTheme.bodySmall?.copyWith(
                color: unreadCount > 0
                    ? colorScheme.onSurface
                    : colorScheme.onSurfaceVariant,
                fontWeight:
                    unreadCount > 0 ? FontWeight.w500 : FontWeight.normal,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (unreadCount > 0)
            Container(
              margin: const EdgeInsets.only(left: 8),
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                color: AppTheme.success,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                unreadCount > 99 ? '99+' : unreadCount.toString(),
                style: theme.textTheme.labelSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
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

  String _getLastMessagePreview(Message? message) {
    if (message == null) return 'No messages yet';
    if (message.isDeleted) return 'Message deleted';
    if (message.attachments.isNotEmpty) {
      final attachment = message.attachments.first;
      if (attachment.type == 'image') return 'Photo';
      if (attachment.type == 'file') return 'File';
      return 'Attachment';
    }
    return message.text ?? '';
  }

  String _formatMessageTime(DateTime dateTime) {
    final now = DateTime.now();
    final diff = now.difference(dateTime);

    if (diff.inDays == 0) {
      // Today - show time
      final hour = dateTime.hour;
      final minute = dateTime.minute.toString().padLeft(2, '0');
      final period = hour >= 12 ? 'PM' : 'AM';
      final displayHour = hour > 12 ? hour - 12 : (hour == 0 ? 12 : hour);
      return '$displayHour:$minute $period';
    } else if (diff.inDays == 1) {
      return 'Yesterday';
    } else if (diff.inDays < 7) {
      return timeago.format(dateTime);
    } else {
      // Show date
      return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
    }
  }
}
