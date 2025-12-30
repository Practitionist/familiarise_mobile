import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/booking/booking_entities.dart';

/// Modern card widget for displaying a booking summary
class BookingCard extends StatelessWidget {
  final Booking booking;
  final VoidCallback? onTap;
  final VoidCallback? onPayNow;

  const BookingCard({
    super.key,
    required this.booking,
    this.onTap,
    this.onPayNow,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: colorScheme.outlineVariant.withOpacity(0.5),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top row: Consultant info and status
                Row(
                  children: [
                    // Consultant avatar
                    _buildAvatar(colorScheme),
                    const SizedBox(width: 12),
                    // Consultant name and plan
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (booking.consultantName != null)
                            Text(
                              booking.consultantName!,
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.2,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          const SizedBox(height: 2),
                          if (booking.planTitle != null)
                            Text(
                              booking.planTitle!,
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Status chip
                    _buildStatusChip(theme),
                  ],
                ),

                const SizedBox(height: 16),

                // Divider
                Container(
                  height: 1,
                  color: colorScheme.outlineVariant.withOpacity(0.3),
                ),

                const SizedBox(height: 12),

                // Bottom row: Type, schedule info, and price
                Row(
                  children: [
                    // Type badge
                    _buildTypeBadge(theme),
                    const Spacer(),
                    // Schedule info or price
                    if (booking.slots.isNotEmpty)
                      _buildScheduleInfo(theme)
                    else if (booking.schedulingPeriodStartsAt != null)
                      _buildPeriodInfo(theme)
                    else if (booking.planPrice != null)
                      _buildPriceTag(theme),
                  ],
                ),

                // Additional info row if we have both schedule and price
                if ((booking.slots.isNotEmpty ||
                        booking.schedulingPeriodStartsAt != null) &&
                    booking.planPrice != null) ...[
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Created date
                      if (booking.createdAt != null)
                        Text(
                          'Requested ${_formatRelativeDate(booking.createdAt!)}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant.withOpacity(0.7),
                          ),
                        ),
                      _buildPriceTag(theme),
                    ],
                  ),
                ],

                // Pay Now button for pending payment bookings
                if (booking.status == RequestStatus.approvedPendingPayment &&
                    onPayNow != null) ...[
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      onPressed: onPayNow,
                      icon: const Icon(Icons.payment, size: 18),
                      label: const Text('Pay Now'),
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFFC2185B),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAvatar(ColorScheme colorScheme) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: colorScheme.primaryContainer,
      ),
      clipBehavior: Clip.antiAlias,
      child: booking.consultantImage != null
          ? CachedNetworkImage(
              imageUrl: booking.consultantImage!,
              fit: BoxFit.cover,
              placeholder: (context, url) => Center(
                child: Icon(
                  Icons.person,
                  color: colorScheme.onPrimaryContainer,
                  size: 24,
                ),
              ),
              errorWidget: (context, url, error) => Center(
                child: Icon(
                  Icons.person,
                  color: colorScheme.onPrimaryContainer,
                  size: 24,
                ),
              ),
            )
          : Center(
              child: Icon(
                Icons.person,
                color: colorScheme.onPrimaryContainer,
                size: 24,
              ),
            ),
    );
  }

  Widget _buildStatusChip(ThemeData theme) {
    final (backgroundColor, foregroundColor, icon) = _getStatusStyle();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: foregroundColor),
          const SizedBox(width: 4),
          Text(
            booking.statusText,
            style: theme.textTheme.labelSmall?.copyWith(
              color: foregroundColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  (Color, Color, IconData) _getStatusStyle() {
    switch (booking.status) {
      case RequestStatus.pending:
        return (
          const Color(0xFFFFF3E0),
          const Color(0xFFE65100),
          Icons.schedule,
        );
      case RequestStatus.approved:
        return (
          const Color(0xFFE8F5E9),
          const Color(0xFF2E7D32),
          Icons.check_circle_outline,
        );
      case RequestStatus.scheduled:
        return (
          const Color(0xFFE3F2FD),
          const Color(0xFF1565C0),
          Icons.event_available,
        );
      case RequestStatus.approvedPendingPayment:
        return (
          const Color(0xFFFCE4EC),
          const Color(0xFFC2185B),
          Icons.payment,
        );
      case RequestStatus.cancelled:
        return (
          const Color(0xFFFFEBEE),
          const Color(0xFFC62828),
          Icons.cancel_outlined,
        );
      case RequestStatus.rejected:
        return (
          const Color(0xFFFFEBEE),
          const Color(0xFFC62828),
          Icons.block,
        );
      case RequestStatus.expired:
        return (
          const Color(0xFFF5F5F5),
          const Color(0xFF616161),
          Icons.timer_off,
        );
      case RequestStatus.completed:
        return (
          const Color(0xFFE8F5E9),
          const Color(0xFF1B5E20),
          Icons.check_circle,
        );
    }
  }

  Widget _buildTypeBadge(ThemeData theme) {
    final colorScheme = theme.colorScheme;
    final (icon, label, bgColor, fgColor) = _getTypeStyle(colorScheme);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: fgColor),
          const SizedBox(width: 4),
          Text(
            label,
            style: theme.textTheme.labelSmall?.copyWith(
              color: fgColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  (IconData, String, Color, Color) _getTypeStyle(ColorScheme colorScheme) {
    switch (booking.bookingType) {
      case BookingType.consultation:
        return (
          Icons.videocam_outlined,
          'Consultation',
          colorScheme.secondaryContainer.withOpacity(0.5),
          colorScheme.onSecondaryContainer,
        );
      case BookingType.subscription:
        return (
          Icons.repeat,
          'Subscription',
          colorScheme.tertiaryContainer.withOpacity(0.5),
          colorScheme.onTertiaryContainer,
        );
      case BookingType.webinar:
        return (
          Icons.groups_outlined,
          'Webinar',
          colorScheme.primaryContainer.withOpacity(0.5),
          colorScheme.onPrimaryContainer,
        );
      case BookingType.classes:
        return (
          Icons.school_outlined,
          'Class',
          const Color(0xFFE8EAF6).withOpacity(0.7), // Indigo container
          const Color(0xFF3949AB), // Indigo accent
        );
    }
  }

  Widget _buildScheduleInfo(ThemeData theme) {
    final slot = booking.slots.first;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.calendar_today,
              size: 14,
              color: theme.colorScheme.primary,
            ),
            const SizedBox(width: 4),
            Text(
              slot.formattedDate,
              style: theme.textTheme.labelMedium?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 2),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.access_time,
              size: 12,
              color: theme.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(width: 4),
            Text(
              slot.formattedTimeRange,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPeriodInfo(ThemeData theme) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.date_range,
          size: 14,
          color: theme.colorScheme.primary,
        ),
        const SizedBox(width: 4),
        Text(
          _formatDateRange(),
          style: theme.textTheme.labelMedium?.copyWith(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildPriceTag(ThemeData theme) {
    return Text(
      booking.formattedPrice,
      style: theme.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.bold,
        color: theme.colorScheme.primary,
        letterSpacing: -0.5,
      ),
    );
  }

  /// Formats the scheduling period date range in local timezone
  String _formatDateRange() {
    final start = booking.schedulingPeriodStartsAt?.toLocal();
    final end = booking.schedulingPeriodEndsAt?.toLocal();
    if (start == null || end == null) return 'TBD';

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
      'Dec',
    ];
    return '${months[start.month - 1]} ${start.day} - ${months[end.month - 1]} ${end.day}';
  }

  /// Formats a date relative to now (today, yesterday, N days ago, or date)
  /// Date is converted from UTC to local timezone for comparison
  String _formatRelativeDate(DateTime date) {
    final localDate = date.toLocal();
    final now = DateTime.now();
    final diff = now.difference(localDate);

    if (diff.inDays == 0) {
      return 'today';
    } else if (diff.inDays == 1) {
      return 'yesterday';
    } else if (diff.inDays < 7) {
      return '${diff.inDays} days ago';
    } else {
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
        'Dec',
      ];
      return '${months[localDate.month - 1]} ${localDate.day}';
    }
  }
}
