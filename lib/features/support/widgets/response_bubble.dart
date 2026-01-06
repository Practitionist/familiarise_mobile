import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/support/support_entities.dart';

/// Chat bubble widget for support ticket responses
class ResponseBubble extends StatelessWidget {
  final SupportResponse response;

  const ResponseBubble({
    super.key,
    required this.response,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isStaff = response.isStaff;
    final timeFormat = DateFormat('h:mm a');
    final dateFormat = DateFormat('MMM d');

    return Row(
      mainAxisAlignment:
          isStaff ? MainAxisAlignment.start : MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Staff avatar
        if (isStaff) ...[
          _buildAvatar(theme, colorScheme),
          const SizedBox(width: 8),
        ],

        // Message bubble
        Flexible(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.75,
            ),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isStaff
                  ? colorScheme.surface
                  : colorScheme.primaryContainer.withValues(alpha: 0.5),
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(16),
                topRight: const Radius.circular(16),
                bottomLeft: Radius.circular(isStaff ? 4 : 16),
                bottomRight: Radius.circular(isStaff ? 16 : 4),
              ),
              border: isStaff
                  ? Border.all(
                      color: colorScheme.outlineVariant.withValues(alpha: 0.3),
                    )
                  : null,
            ),
            child: Column(
              crossAxisAlignment:
                  isStaff ? CrossAxisAlignment.start : CrossAxisAlignment.end,
              children: [
                // Staff name
                if (isStaff && response.responderName != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          response.responderName!,
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            'Support',
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: colorScheme.primary,
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                // Message
                Text(
                  response.message,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: isStaff
                        ? colorScheme.onSurface
                        : colorScheme.onPrimaryContainer,
                  ),
                ),

                // Timestamp
                if (response.createdAt != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      _formatTimestamp(
                          response.createdAt!, timeFormat, dateFormat),
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: isStaff
                            ? colorScheme.onSurfaceVariant
                            : colorScheme.onPrimaryContainer
                                .withValues(alpha: 0.7),
                        fontSize: 10,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),

        // User avatar
        if (!isStaff) ...[
          const SizedBox(width: 8),
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.person,
              size: 16,
              color: colorScheme.primary,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildAvatar(ThemeData theme, ColorScheme colorScheme) {
    if (response.responderImage != null) {
      return ClipOval(
        child: CachedNetworkImage(
          imageUrl: response.responderImage!,
          width: 32,
          height: 32,
          fit: BoxFit.cover,
          placeholder: (context, url) => Container(
            width: 32,
            height: 32,
            color: colorScheme.surfaceContainerHighest,
            child: Icon(
              Icons.support_agent,
              size: 18,
              color: colorScheme.primary,
            ),
          ),
          errorWidget: (context, url, error) => Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.support_agent,
              size: 18,
              color: colorScheme.primary,
            ),
          ),
        ),
      );
    }

    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.support_agent,
        size: 18,
        color: colorScheme.primary,
      ),
    );
  }

  String _formatTimestamp(
    DateTime dateTime,
    DateFormat timeFormat,
    DateFormat dateFormat,
  ) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final messageDate = DateTime(dateTime.year, dateTime.month, dateTime.day);

    if (messageDate == today) {
      return timeFormat.format(dateTime);
    } else if (messageDate == today.subtract(const Duration(days: 1))) {
      return 'Yesterday ${timeFormat.format(dateTime)}';
    } else {
      return '${dateFormat.format(dateTime)} ${timeFormat.format(dateTime)}';
    }
  }
}
