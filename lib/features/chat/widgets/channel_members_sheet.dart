import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

/// Shows a bottom sheet with all channel members
///
/// Similar to WhatsApp's group info member list
Future<void> showChannelMembersSheet({
  required BuildContext context,
  required Channel channel,
}) async {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) => _ChannelMembersSheet(channel: channel),
  );
}

class _ChannelMembersSheet extends StatefulWidget {
  final Channel channel;

  const _ChannelMembersSheet({required this.channel});

  @override
  State<_ChannelMembersSheet> createState() => _ChannelMembersSheetState();
}

class _ChannelMembersSheetState extends State<_ChannelMembersSheet> {
  final _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final members = widget.channel.state?.members ?? [];
    final currentUserId = widget.channel.client.state.currentUser?.id;

    // Get channel creator/owner ID
    final creatorId = widget.channel.createdBy?.id;

    // Filter members based on search
    final filteredMembers = _searchQuery.isEmpty
        ? members
        : members.where((m) {
            final userName = m.user?.name ?? '';
            return userName.toLowerCase().contains(_searchQuery.toLowerCase());
          }).toList();

    // Sort: creator first, then by name
    filteredMembers.sort((a, b) {
      if (a.userId == creatorId) return -1;
      if (b.userId == creatorId) return 1;
      final nameA = a.user?.name ?? '';
      final nameB = b.user?.name ?? '';
      return nameA.compareTo(nameB);
    });

    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      minChildSize: 0.4,
      maxChildSize: 0.9,
      expand: false,
      builder: (context, scrollController) {
        return Column(
          children: [
            // Handle bar and header
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
              child: Column(
                children: [
                  // Drag handle
                  Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Header row
                  Row(
                    children: [
                      Text(
                        'Members (${members.length})',
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.of(context).pop(),
                        visualDensity: VisualDensity.compact,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Search field
                  TextField(
                    controller: _searchController,
                    onChanged: (value) => setState(() => _searchQuery = value),
                    decoration: InputDecoration(
                      hintText: 'Search members...',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: _searchQuery.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _searchController.clear();
                                setState(() => _searchQuery = '');
                              },
                            )
                          : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: colorScheme.outline),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: colorScheme.outline),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),

            // Members list
            Expanded(
              child: filteredMembers.isEmpty
                  ? Center(
                      child: Text(
                        _searchQuery.isEmpty
                            ? 'No members'
                            : 'No members found',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    )
                  : ListView.builder(
                      controller: scrollController,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      itemCount: filteredMembers.length,
                      itemBuilder: (context, index) {
                        final member = filteredMembers[index];
                        final isCreator = member.userId == creatorId;
                        final isCurrentUser = member.userId == currentUserId;

                        return _MemberTile(
                          member: member,
                          isAdmin: isCreator,
                          isCurrentUser: isCurrentUser,
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

class _MemberTile extends StatelessWidget {
  final Member member;
  final bool isAdmin;
  final bool isCurrentUser;

  const _MemberTile({
    required this.member,
    this.isAdmin = false,
    this.isCurrentUser = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final user = member.user;
    final name = user?.name ?? 'Unknown';
    final imageUrl = user?.image ?? '';
    final hasImage = imageUrl.isNotEmpty;
    final initial = name.isNotEmpty ? name[0].toUpperCase() : '?';

    // Format join date
    final joinedAt = member.createdAt;
    final joinedText = 'Joined ${_formatDate(joinedAt)}';

    return ListTile(
      leading: CircleAvatar(
        radius: 22,
        backgroundColor: colorScheme.primaryContainer,
        backgroundImage: hasImage ? NetworkImage(imageUrl) : null,
        child: hasImage
            ? null
            : Text(
                initial,
                style: TextStyle(
                  color: colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
      title: Row(
        children: [
          Expanded(
            child: Text(
              isCurrentUser ? '$name (You)' : name,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (isAdmin)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Instructor',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
        ],
      ),
      subtitle: Text(
        joinedText,
        style: theme.textTheme.bodySmall?.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final diff = now.difference(date);

    if (diff.inDays == 0) {
      return 'today';
    } else if (diff.inDays == 1) {
      return 'yesterday';
    } else if (diff.inDays < 7) {
      return '${diff.inDays} days ago';
    } else {
      // Format as "Jan 15"
      const months = [
        'Jan',
        'Feb',
        'Mar',
        'Apr',
        'May',
        'Jun',
        'Jul',
        'Aug',
        'Sep',
        'Oct',
        'Nov',
        'Dec'
      ];
      return '${months[date.month - 1]} ${date.day}';
    }
  }
}
