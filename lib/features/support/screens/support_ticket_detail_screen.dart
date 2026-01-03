import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/support/support_entities.dart';
import '../providers/support_provider.dart';
import '../widgets/response_bubble.dart';

/// Screen showing support ticket details with responses
class SupportTicketDetailScreen extends ConsumerStatefulWidget {
  final String ticketId;

  const SupportTicketDetailScreen({
    super.key,
    required this.ticketId,
  });

  @override
  ConsumerState<SupportTicketDetailScreen> createState() =>
      _SupportTicketDetailScreenState();
}

class _SupportTicketDetailScreenState
    extends ConsumerState<SupportTicketDetailScreen> {
  final _messageController = TextEditingController();
  final _scrollController = ScrollController();
  bool _isSending = false;

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _sendMessage() async {
    final message = _messageController.text.trim();
    if (message.isEmpty || _isSending) return;

    setState(() => _isSending = true);

    final response = await ref.read(addTicketResponseProvider.notifier).submit(
          ticketId: widget.ticketId,
          message: message,
        );

    setState(() => _isSending = false);

    if (response != null) {
      _messageController.clear();
      // Refresh the ticket to show new response
      ref.invalidate(ticketDetailProvider(ticketId: widget.ticketId));
      // Scroll to bottom after a short delay
      Future.delayed(const Duration(milliseconds: 100), () {
        if (_scrollController.hasClients) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final ticketAsync =
        ref.watch(ticketDetailProvider(ticketId: widget.ticketId));
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            _buildHeader(theme, ticketAsync.valueOrNull),

            // Content
            Expanded(
              child: ticketAsync.when(
                data: (ticket) => _buildContent(context, theme, ticket),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, _) => _buildError(theme, error.toString()),
              ),
            ),

            // Message input (only for open/in-progress tickets)
            if (ticketAsync.valueOrNull != null &&
                (ticketAsync.value!.status == TicketStatus.open ||
                    ticketAsync.value!.status == TicketStatus.inProgress))
              _buildMessageInput(theme),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(ThemeData theme, SupportTicket? ticket) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
          ),
        ),
      ),
      child: Row(
        children: [
          // Back button
          Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: () {
                if (context.canPop()) {
                  context.pop();
                } else {
                  context.go('/support');
                }
              },
              icon: const Icon(Icons.arrow_back, size: 20),
              visualDensity: VisualDensity.compact,
            ),
          ),
          const SizedBox(width: 16),
          // Title
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ticket Details',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (ticket != null)
                  Text(
                    '#${ticket.id.substring(0, 8).toUpperCase()}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
              ],
            ),
          ),
          // Status badge
          if (ticket != null) _buildStatusBadge(theme, ticket.status),
        ],
      ),
    );
  }

  Widget _buildStatusBadge(ThemeData theme, TicketStatus status) {
    final (color, bgColor) = _getStatusColors(theme, status);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        status.displayName,
        style: theme.textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  (Color, Color) _getStatusColors(ThemeData theme, TicketStatus status) {
    switch (status) {
      case TicketStatus.open:
        return (
          theme.colorScheme.primary,
          theme.colorScheme.primaryContainer.withValues(alpha: 0.5),
        );
      case TicketStatus.inProgress:
        return (
          Colors.orange.shade700,
          Colors.orange.shade50,
        );
      case TicketStatus.resolved:
        return (
          Colors.green.shade700,
          Colors.green.shade50,
        );
      case TicketStatus.closed:
        return (
          theme.colorScheme.onSurfaceVariant,
          theme.colorScheme.surfaceContainerHighest,
        );
    }
  }

  Widget _buildContent(
    BuildContext context,
    ThemeData theme,
    SupportTicket ticket,
  ) {
    final responses = ticket.responses ?? [];
    final dateFormat = DateFormat('MMM d, yyyy');

    return ListView(
      controller: _scrollController,
      padding: const EdgeInsets.all(20),
      children: [
        // Ticket info card
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                ticket.title,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),

              // Description
              Text(
                ticket.description,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 16),

              // Meta info
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  // Issue type
                  if (ticket.issueType != null)
                    _buildMetaChip(
                      theme,
                      Icons.category_outlined,
                      ticket.issueType!.displayName,
                    ),
                  // Priority
                  _buildMetaChip(
                    theme,
                    Icons.flag_outlined,
                    ticket.priority.displayName,
                    color: _getPriorityColor(ticket.priority),
                  ),
                  // Created date
                  if (ticket.createdAt != null)
                    _buildMetaChip(
                      theme,
                      Icons.schedule_outlined,
                      dateFormat.format(ticket.createdAt!),
                    ),
                ],
              ),

              // Linked entities
              if (ticket.consultationId != null ||
                  ticket.subscriptionId != null ||
                  ticket.paymentId != null) ...[
                const SizedBox(height: 12),
                Divider(
                  color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
                ),
                const SizedBox(height: 8),
                Text(
                  'Related to:',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 4),
                Wrap(
                  spacing: 8,
                  children: [
                    if (ticket.consultationId != null)
                      _buildLinkedChip(theme, 'Consultation'),
                    if (ticket.subscriptionId != null)
                      _buildLinkedChip(theme, 'Subscription'),
                    if (ticket.paymentId != null)
                      _buildLinkedChip(theme, 'Payment'),
                  ],
                ),
              ],
            ],
          ),
        ),

        // Responses section
        if (responses.isNotEmpty) ...[
          const SizedBox(height: 24),
          Text(
            'Conversation',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          ...responses.map((response) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ResponseBubble(response: response),
              )),
        ],

        // Resolved/Closed message
        if (ticket.status == TicketStatus.resolved ||
            ticket.status == TicketStatus.closed) ...[
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(
                  ticket.status == TicketStatus.resolved
                      ? Icons.check_circle_outline
                      : Icons.archive_outlined,
                  color: theme.colorScheme.onSurfaceVariant,
                  size: 20,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    ticket.status == TicketStatus.resolved
                        ? 'This ticket has been resolved.'
                        : 'This ticket has been closed.',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],

        // Extra padding at bottom
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildMetaChip(
    ThemeData theme,
    IconData icon,
    String label, {
    Color? color,
  }) {
    final chipColor = color ?? theme.colorScheme.onSurfaceVariant;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: chipColor),
          const SizedBox(width: 6),
          Text(
            label,
            style: theme.textTheme.labelSmall?.copyWith(
              color: chipColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLinkedChip(ThemeData theme, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Color _getPriorityColor(TicketPriority priority) {
    switch (priority) {
      case TicketPriority.low:
        return Colors.grey;
      case TicketPriority.medium:
        return Colors.blue;
      case TicketPriority.high:
        return Colors.orange;
      case TicketPriority.urgent:
        return Colors.red;
    }
  }

  Widget _buildMessageInput(ThemeData theme) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        16,
        12,
        16,
        12 + MediaQuery.of(context).padding.bottom,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: 'Type your message...',
                filled: true,
                fillColor: theme.colorScheme.surfaceContainerHighest,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
              maxLines: 3,
              minLines: 1,
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          const SizedBox(width: 8),
          IconButton.filled(
            onPressed: _isSending ? null : _sendMessage,
            icon: _isSending
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.send),
          ),
        ],
      ),
    );
  }

  Widget _buildError(ThemeData theme, String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              size: 48,
              color: theme.colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              'Failed to load ticket',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              onPressed: () {
                ref.invalidate(ticketDetailProvider(ticketId: widget.ticketId));
              },
              icon: const Icon(Icons.refresh, size: 18),
              label: const Text('Try Again'),
            ),
          ],
        ),
      ),
    );
  }
}
