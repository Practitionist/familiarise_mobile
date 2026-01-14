import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

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

    // Get or create the appropriate channel based on appointment type
    Channel? channel;

    if (consultant.isGroupProgram && consultant.programId != null) {
      // For webinar/class: open existing group channel
      final channelId =
          '${consultant.lastAppointmentType?.value.toLowerCase()}_${consultant.programId}';
      channel = await chatService.getGroupChannel(channelId);

      if (channel == null && mounted) {
        // Group channel might not exist yet (backend hasn't created it)
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Group chat is not available yet. '
                'Please wait for the booking to be confirmed.'),
          ),
        );
        return;
      }
    } else {
      // For consultation/subscription: create or get 1:1 DM channel
      channel = await chatService.getOrCreateDirectChannel(
        consultant.consultantUserId,
        otherUserName: consultant.consultantName,
        otherUserImage: consultant.consultantImage,
      );
    }

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
                  hintText: 'Search channels...',
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

    // Build the main content with two sections
    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(appointmentConsultantsProvider);
        await _initializeChat();
      },
      child: CustomScrollView(
        slivers: [
          // 1:1 DM Channels Section (Consultation, Subscription)
          _buildChannelsSection(consultantsAsync, theme, colorScheme),

          // Group Event Channels Section (Webinar, Class)
          _buildEventChannelsSection(consultantsAsync, theme, colorScheme),
        ],
      ),
    );
  }

  /// Build the CHANNELS section for 1:1 DMs (Consultation, Subscription)
  Widget _buildChannelsSection(
    AsyncValue<List<AppointmentConsultant>> consultantsAsync,
    ThemeData theme,
    ColorScheme colorScheme,
  ) {
    return consultantsAsync.when(
      data: (consultants) {
        // Filter for 1:1 channels (not group programs)
        var dmConsultants =
            consultants.where((c) => !c.isGroupProgram).toList();

        // Apply search filter
        if (_searchQuery.isNotEmpty) {
          dmConsultants = dmConsultants
              .where((c) =>
                  c.consultantName.toLowerCase().contains(_searchQuery))
              .toList();
        }

        if (dmConsultants.isEmpty && _searchQuery.isEmpty) {
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
                      'CHANNELS',
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
                        dmConsultants.length.toString(),
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (dmConsultants.isEmpty && _searchQuery.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  child: Text(
                    'No channels found matching "$_searchQuery"',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                )
              else
                ...dmConsultants.map((consultant) => _ConsultantTile(
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
            'Failed to load channels',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.error,
            ),
          ),
        ),
      ),
    );
  }

  /// Build the EVENT CHANNELS section for group chats (Webinar, Class)
  Widget _buildEventChannelsSection(
    AsyncValue<List<AppointmentConsultant>> consultantsAsync,
    ThemeData theme,
    ColorScheme colorScheme,
  ) {
    return consultantsAsync.when(
      data: (consultants) {
        // Filter for group programs (webinars and classes)
        var eventConsultants =
            consultants.where((c) => c.isGroupProgram).toList();

        // Apply search filter (search by program name or consultant name)
        if (_searchQuery.isNotEmpty) {
          eventConsultants = eventConsultants
              .where((c) =>
                  c.consultantName.toLowerCase().contains(_searchQuery) ||
                  (c.programName?.toLowerCase().contains(_searchQuery) ??
                      false))
              .toList();
        }

        if (eventConsultants.isEmpty) {
          return const SliverToBoxAdapter(child: SizedBox.shrink());
        }

        return SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
                child: Row(
                  children: [
                    Text(
                      'EVENT CHANNELS',
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
                        color: colorScheme.secondaryContainer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        eventConsultants.length.toString(),
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colorScheme.onSecondaryContainer,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ...eventConsultants.map((consultant) => _EventChannelTile(
                    consultant: consultant,
                    onTap: () => _onConsultantTap(consultant),
                    chatService: ref.read(chatServiceProvider.notifier),
                  )),
            ],
          ),
        );
      },
      loading: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
      error: (error, _) => const SliverToBoxAdapter(child: SizedBox.shrink()),
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
        consultant.allTypesText,
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

/// Tile widget for displaying an event channel (webinar/class group) in the list
class _EventChannelTile extends StatefulWidget {
  const _EventChannelTile({
    required this.consultant,
    required this.onTap,
    required this.chatService,
  });

  final AppointmentConsultant consultant;
  final VoidCallback onTap;
  final ChatService chatService;

  @override
  State<_EventChannelTile> createState() => _EventChannelTileState();
}

class _EventChannelTileState extends State<_EventChannelTile> {
  Channel? _channel;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadChannel();
  }

  Future<void> _loadChannel() async {
    if (widget.consultant.programId == null) {
      setState(() => _isLoading = false);
      return;
    }

    final channelId =
        '${widget.consultant.lastAppointmentType?.value.toLowerCase()}_${widget.consultant.programId}';

    try {
      final channel = await widget.chatService.getGroupChannel(channelId);
      if (mounted) {
        setState(() {
          _channel = channel;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final programName = widget.consultant.programName ?? 'Event';
    final appointmentType = widget.consultant.appointmentTypeText;
    final consultantName = widget.consultant.consultantName;

    // Get member data from channel if available
    final members = _channel?.state?.members ?? [];
    final memberCount = members.length;

    return InkWell(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Group icon
            CircleAvatar(
              radius: 26,
              backgroundColor: colorScheme.secondaryContainer,
              child: Icon(
                Icons.groups,
                color: colorScheme.onSecondaryContainer,
                size: 28,
              ),
            ),
            const SizedBox(width: 12),

            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Program name (title)
                  Text(
                    programName,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),

                  // Subtitle: "Class • with Dean Sanford"
                  Text(
                    '$appointmentType • with $consultantName',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),

                  // Member avatars and count
                  Row(
                    children: [
                      if (_isLoading)
                        SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: colorScheme.primary,
                          ),
                        )
                      else if (members.isNotEmpty) ...[
                        _buildMemberAvatars(members, colorScheme),
                        const SizedBox(width: 8),
                      ],
                      Text(
                        _isLoading
                            ? 'Loading...'
                            : memberCount > 0
                                ? '$memberCount member${memberCount == 1 ? '' : 's'}'
                                : 'Tap to join',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Chevron icon
            Icon(
              Icons.chevron_right,
              color: colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }

  /// Build stacked member avatar widget
  Widget _buildMemberAvatars(List<Member> members, ColorScheme colorScheme) {
    final displayMembers = members.take(3).toList();
    final remaining = members.length - 3;

    // Calculate width: each avatar is 24px diameter, overlapping by 8px
    // First avatar: 24px, additional: 16px each
    final avatarCount = displayMembers.length + (remaining > 0 ? 1 : 0);
    final width = 24.0 + (avatarCount - 1) * 16.0;

    return SizedBox(
      width: width,
      height: 24,
      child: Stack(
        children: [
          ...displayMembers.indexed.map((entry) {
            final (index, member) = entry;
            final user = member.user;
            final imageUrl = user?.image ?? '';
            final hasImage = imageUrl.isNotEmpty;
            final name = user?.name ?? '';
            final initial = name.isNotEmpty ? name[0].toUpperCase() : '?';

            return Positioned(
              left: index * 16.0,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: colorScheme.primaryContainer,
                  backgroundImage:
                      hasImage ? NetworkImage(imageUrl) : null,
                  child: hasImage
                      ? null
                      : Text(
                          initial,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: colorScheme.onPrimaryContainer,
                          ),
                        ),
                ),
              ),
            );
          }),
          if (remaining > 0)
            Positioned(
              left: displayMembers.length * 16.0,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorScheme.tertiaryContainer,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    '+$remaining',
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onTertiaryContainer,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
