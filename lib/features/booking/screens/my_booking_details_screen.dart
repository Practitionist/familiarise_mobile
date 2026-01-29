import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/utils/sentry_logger.dart';
import '../../../domain/entities/booking/booking_entities.dart';
import '../../../shared/utils/fake_data.dart';
import '../../chat/providers/chat_service_provider.dart';
import '../../reviews/widgets/submit_review_dialog.dart';
import '../providers/booking_actions_provider.dart';
import '../providers/my_bookings_provider.dart';
import '../widgets/cancel_dialog.dart';
import '../widgets/reschedule_dialog.dart';
import '../widgets/session_selector_sheet.dart';

/// Screen showing detailed booking information with actions
class MyBookingDetailsScreen extends ConsumerStatefulWidget {
  final String bookingId;
  final BookingType bookingType;

  const MyBookingDetailsScreen({
    super.key,
    required this.bookingId,
    required this.bookingType,
  });

  @override
  ConsumerState<MyBookingDetailsScreen> createState() =>
      _MyBookingDetailsScreenState();
}

class _MyBookingDetailsScreenState
    extends ConsumerState<MyBookingDetailsScreen> {
  Booking? _booking;
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadBooking();
  }

  Future<void> _loadBooking() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final booking = await ref.read(bookingDetailProvider(
        id: widget.bookingId,
        type: widget.bookingType,
      ).future);
      if (mounted) {
        setState(() {
          _booking = booking;
          _isLoading = false;
        });
      }
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'MyBookingDetailsScreen._loadBooking',
        extras: {
          'bookingId': widget.bookingId,
          'bookingType': widget.bookingType.name,
        },
      );
      if (mounted) {
        setState(() {
          _error = e.toString();
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Listen for action states
    ref.listen(bookingActionsProvider, (previous, next) {
      switch (next) {
        case BookingActionIdle():
        case BookingActionLoading():
          // No action needed
          break;
        case BookingActionSuccess(:final message, :final updatedBooking):
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message),
              backgroundColor: Colors.green,
            ),
          );
          if (updatedBooking != null) {
            // Reschedule success - navigate to booking screen for slot selection
            context.pushNamed(
              'booking',
              pathParameters: {
                'consultantId': updatedBooking.consultantProfileId ?? '',
                'planId': updatedBooking.planId ?? '',
              },
              queryParameters: {
                'type': updatedBooking.bookingType == BookingType.consultation
                    ? 'consultation'
                    : 'subscription',
                'refresh': 'true',
              },
            );
          } else {
            // Cancel success - navigate back to bookings list
            context.pop();
            // Refresh the bookings list
            ref.invalidate(myBookingsProvider);
          }
          break;
        case BookingActionError(:final message):
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message),
              backgroundColor: Colors.red,
            ),
          );
          break;
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking Details'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_error != null && !_isLoading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 48,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              'Failed to load booking',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              _error!,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: _loadBooking,
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (!_isLoading && _booking == null) {
      return const Center(child: Text('Booking not found'));
    }

    // Temporarily assign fake data during loading so sub-methods can access _booking!
    final wasNull = _booking == null;
    if (wasNull) _booking = FakeData.booking();

    final b = _booking!;
    final result = Skeletonizer(
      enabled: _isLoading,
      child: RefreshIndicator(
        onRefresh: _loadBooking,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Consultant Info Card
              _buildConsultantCard(),
              const SizedBox(height: 16),

              // Status Section
              _buildStatusSection(),
              const SizedBox(height: 16),

              // Plan Details Card
              _buildPlanDetailsCard(),
              const SizedBox(height: 16),

              // Slots Section (for consultations and scheduled subscriptions)
              if (b.slots.isNotEmpty) _buildSlotsSection(),

              // Scheduling Period (for subscriptions)
              if (b.bookingType == BookingType.subscription &&
                  b.schedulingPeriodStartsAt != null)
                _buildSchedulingPeriodSection(),

              // Message Section
              if (b.message != null && b.message!.isNotEmpty)
                _buildMessageSection(),

              // Cancellation Info Section
              if (b.status == RequestStatus.cancelled)
                _buildCancellationSection(),

              // Feedback & Rating Section
              if (b.rating != null ||
                  b.feedbackFromConsultee != null ||
                  b.feedbackFromConsultant != null)
                _buildFeedbackSection(),

              // Booking Source Info
              if (b.bookingSource != null) _buildBookingSourceSection(),

              const SizedBox(height: 24),

              // Action Buttons
              _buildActionButtons(),

              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );

    if (wasNull) _booking = null;
    return result;
  }

  Widget _buildConsultantCard() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: colorScheme.outlineVariant.withOpacity(0.5),
        ),
      ),
      child: Row(
        children: [
          // Avatar
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: _booking!.consultantImage != null
                ? CachedNetworkImage(
                    imageUrl: _booking!.consultantImage!,
                    width: 64,
                    height: 64,
                    fit: BoxFit.cover,
                    placeholder: (_, __) => Container(
                      color: colorScheme.surfaceContainerHighest,
                      child: Icon(
                        Icons.person,
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                    errorWidget: (_, __, ___) => Container(
                      color: colorScheme.surfaceContainerHighest,
                      child: Icon(
                        Icons.person,
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  )
                : Container(
                    width: 64,
                    height: 64,
                    color: colorScheme.surfaceContainerHighest,
                    child: Icon(
                      Icons.person,
                      size: 32,
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _booking!.consultantName ?? 'Consultant',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (_booking!.planTitle != null)
                  Text(
                    _booking!.planTitle!,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusSection() {
    final theme = Theme.of(context);
    final statusColors = _getStatusColors(_booking!.status);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: statusColors.$1.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: statusColors.$1.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          Icon(
            _getStatusIcon(_booking!.status),
            color: statusColors.$2,
            size: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _booking!.statusText,
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: statusColors.$2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  _booking!.statusDescription,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: statusColors.$2.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlanDetailsCard() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: colorScheme.outlineVariant.withOpacity(0.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Plan Details',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _buildDetailItem(
                icon: Icons.schedule,
                label: 'Duration',
                value: _booking!.planDuration != null
                    ? '${_booking!.planDuration!.toInt()} min'
                    : (_booking!.sessionDurationInHours != null
                        ? '${(_booking!.sessionDurationInHours! * 60).toInt()} min/session'
                        : '-'),
              ),
              const SizedBox(width: 24),
              _buildDetailItem(
                icon: Icons.currency_rupee,
                label: 'Price',
                value: _booking!.formattedPrice,
              ),
              if (_booking!.totalSessions != null) ...[
                const SizedBox(width: 24),
                _buildDetailItem(
                  icon: Icons.calendar_view_week,
                  label: 'Sessions',
                  value: '${_booking!.totalSessions}',
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailItem({
    required IconData icon,
    required String label,
    required String value,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 14, color: colorScheme.onSurfaceVariant),
            const SizedBox(width: 4),
            Text(
              label,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildSlotsSection() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: colorScheme.outlineVariant.withOpacity(0.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _booking!.slots.length == 1
                ? 'Scheduled Time'
                : 'Scheduled Sessions',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          ..._booking!.slots.asMap().entries.map((entry) {
            final index = entry.key;
            final slot = entry.value;
            return Padding(
              padding: EdgeInsets.only(top: index > 0 ? 8 : 0),
              child: Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: slot.isTentative
                          ? Colors.orange.withOpacity(0.1)
                          : colorScheme.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: slot.isTentative
                          ? Icon(Icons.schedule, size: 16, color: Colors.orange)
                          : Text(
                              '${index + 1}',
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: colorScheme.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Icon(
                    Icons.calendar_today,
                    size: 16,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 4),
                  Flexible(
                    child: Text(
                      slot.formattedDate,
                      style: theme.textTheme.bodyMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Icon(
                    Icons.access_time,
                    size: 16,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 4),
                  Flexible(
                    child: Text(
                      slot.formattedTimeRange,
                      style: theme.textTheme.bodyMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (slot.isTentative) ...[
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'Pending',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildSchedulingPeriodSection() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final startDate = _booking!.schedulingPeriodStartsAt!.toLocal();
    final endDate = _booking!.schedulingPeriodEndsAt?.toLocal();

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: colorScheme.outlineVariant.withOpacity(0.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Scheduling Period',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Icon(
                Icons.date_range,
                size: 20,
                color: colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: 8),
              Text(
                '${_formatDate(startDate)} - ${endDate != null ? _formatDate(endDate) : 'TBD'}',
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          if (_booking!.schedulingTimezone != null) ...[
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.public,
                  size: 20,
                  color: colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 8),
                Text(
                  _booking!.schedulingTimezone!,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildMessageSection() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: colorScheme.outlineVariant.withOpacity(0.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Message',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            _booking!.message!,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCancellationSection() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.errorContainer.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: colorScheme.error.withValues(alpha: 0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.cancel_outlined,
                  size: 20, color: colorScheme.error),
              const SizedBox(width: 8),
              Text(
                'Cancellation Details',
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.error,
                ),
              ),
            ],
          ),
          if (_booking!.cancellationReason != null) ...[
            const SizedBox(height: 8),
            Text(
              'Reason: ${_booking!.cancellationReason!.name.replaceAllMapped(RegExp(r'[A-Z]'), (m) => ' ${m.group(0)}').trim()}',
              style: theme.textTheme.bodyMedium,
            ),
          ],
          if (_booking!.cancellationNotes != null) ...[
            const SizedBox(height: 4),
            Text(
              _booking!.cancellationNotes!,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
          if (_booking!.cancelledAt != null) ...[
            const SizedBox(height: 4),
            Text(
              'Cancelled on ${_formatDate(_booking!.cancelledAt!.toLocal())}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildFeedbackSection() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Feedback',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          if (_booking!.rating != null) ...[
            const SizedBox(height: 8),
            Row(
              children: [
                ...List.generate(5, (i) {
                  return Icon(
                    i < _booking!.rating!.round()
                        ? Icons.star_rounded
                        : Icons.star_border_rounded,
                    size: 20,
                    color: Colors.amber.shade600,
                  );
                }),
                const SizedBox(width: 8),
                Text(
                  _booking!.rating!.toStringAsFixed(1),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
          if (_booking!.feedbackFromConsultee != null) ...[
            const SizedBox(height: 8),
            Text(
              'Your feedback: ${_booking!.feedbackFromConsultee!}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
          if (_booking!.feedbackFromConsultant != null) ...[
            const SizedBox(height: 8),
            Text(
              'Consultant feedback: ${_booking!.feedbackFromConsultant!}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildBookingSourceSection() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final source = _booking!.bookingSource!;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(Icons.source_outlined,
              size: 16, color: colorScheme.onSurfaceVariant),
          const SizedBox(width: 8),
          Text(
            'Source: ${source.name.replaceAllMapped(RegExp(r'[A-Z]'), (m) => ' ${m.group(0)}').trim()}',
            style: theme.textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    final theme = Theme.of(context);
    final actionState = ref.watch(bookingActionsProvider);
    final isLoading = actionState is BookingActionLoading;

    final actions = <Widget>[];

    // Join Meeting button (for SCHEDULED within time window)
    if (_booking!.canJoinMeeting) {
      actions.add(
        SizedBox(
          width: double.infinity,
          child: FilledButton.icon(
            onPressed: isLoading ? null : _handleJoinMeeting,
            icon: const Icon(Icons.videocam),
            label: const Text('Join Meeting'),
            style: FilledButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      );
    }

    // Talk to Expert button (for bookings with consultant)
    if (_booking!.consultantUserId != null &&
        _booking!.status != RequestStatus.cancelled &&
        _booking!.status != RequestStatus.rejected &&
        _booking!.status != RequestStatus.expired) {
      actions.add(
        SizedBox(
          width: double.infinity,
          child: FilledButton.icon(
            onPressed: isLoading ? null : _handleTalkToExpert,
            icon: const Icon(Icons.chat_bubble_outline),
            label: const Text('Talk to Expert'),
            style: FilledButton.styleFrom(
              backgroundColor: theme.colorScheme.primary,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      );
    }

    // Pay Now button (for APPROVED_PENDING_PAYMENT)
    if (_booking!.status == RequestStatus.approvedPendingPayment) {
      actions.add(
        SizedBox(
          width: double.infinity,
          child: FilledButton.icon(
            onPressed: isLoading ? null : _handlePayNow,
            icon: const Icon(Icons.payment),
            label: const Text('Pay Now'),
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFFC2185B),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      );
    }

    // Reschedule button
    if (_booking!.canReschedule) {
      actions.add(
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: isLoading ? null : _handleReschedule,
            icon: const Icon(Icons.calendar_month),
            label: const Text('Reschedule'),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      );
    }

    // Cancel button
    if (_booking!.canCancelNow) {
      actions.add(
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: isLoading ? null : _handleCancel,
            icon: const Icon(Icons.cancel_outlined),
            label: const Text('Cancel Booking'),
            style: OutlinedButton.styleFrom(
              foregroundColor: theme.colorScheme.error,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      );
    }

    // Write Review button (for completed bookings)
    if (_booking!.status == RequestStatus.completed &&
        _booking!.consultantProfileId != null) {
      actions.add(
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: isLoading ? null : _handleWriteReview,
            icon: const Icon(Icons.rate_review_outlined),
            label: const Text('Write a Review'),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      );
    }

    // Report Issue button - always visible for active/completed bookings
    if (_booking!.status != RequestStatus.cancelled &&
        _booking!.status != RequestStatus.rejected &&
        _booking!.status != RequestStatus.expired) {
      actions.add(
        SizedBox(
          width: double.infinity,
          child: TextButton.icon(
            onPressed: () => _handleReportIssue(),
            icon: Icon(
              Icons.report_problem_outlined,
              color: theme.colorScheme.onSurfaceVariant,
            ),
            label: Text(
              'Report an Issue',
              style: TextStyle(color: theme.colorScheme.onSurfaceVariant),
            ),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
          ),
        ),
      );
    }

    // Show info message if actions are disabled due to 24h restriction
    if (!_booking!.canReschedule &&
        _booking!.status != RequestStatus.cancelled &&
        _booking!.status != RequestStatus.completed &&
        _booking!.status != RequestStatus.rejected &&
        _booking!.status != RequestStatus.expired &&
        _booking!.slots.isNotEmpty) {
      actions.add(
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Icon(
                Icons.info_outline,
                size: 16,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Reschedule and cancel are disabled within 24 hours of your appointment',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    if (actions.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      children: actions
          .map((w) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: w,
              ))
          .toList(),
    );
  }

  void _handleJoinMeeting() {
    if (_booking?.appointmentId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Meeting not available')),
      );
      return;
    }
    context.push('/meeting/${_booking!.appointmentId}');
  }

  Future<void> _handleTalkToExpert() async {
    if (_booking?.consultantUserId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Consultant not available')),
      );
      return;
    }

    try {
      final chatService = ref.read(chatServiceProvider.notifier);

      // Ensure chat is initialized
      final chatState = ref.read(chatServiceProvider);
      if (!chatState.isInitialized) {
        // Show loading indicator
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Connecting to chat...')),
          );
        }

        final success = await chatService.initialize();
        if (!success) {
          AppSentryLogger.captureMessage(
            'Chat initialization failed',
            context: 'MyBookingDetailsScreen._handleTalkToExpert',
            extras: {
              'bookingId': widget.bookingId,
              'consultantUserId': _booking!.consultantUserId,
            },
          );
          if (mounted) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Failed to connect to chat')),
            );
          }
          return;
        }
      }

      // Create or get the channel
      final channel = await chatService.getOrCreateDirectChannel(
        _booking!.consultantUserId!,
        otherUserName: _booking!.consultantName,
        otherUserImage: _booking!.consultantImage,
      );

      if (channel != null && mounted) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        // Use go() to navigate within the shell (shows Messages tab)
        context.go('/messages/${channel.id}');
      } else if (mounted) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to open chat')),
        );
      }
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'MyBookingDetailsScreen._handleTalkToExpert',
        extras: {
          'bookingId': widget.bookingId,
          'consultantUserId': _booking?.consultantUserId,
        },
      );
      if (mounted) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to open chat')),
        );
      }
    }
  }

  void _handlePayNow() {
    context.pushNamed(
      'checkout',
      extra: _booking,
    );
  }

  Future<void> _handleReschedule() async {
    if (_booking!.bookingType == BookingType.subscription &&
        _booking!.slots.isNotEmpty) {
      // For subscriptions with slots, offer choice
      final choice = await showRescheduleOptionsSheet(
        context: context,
        booking: _booking!,
      );
      if (choice == null) return;

      if (choice is RescheduleSession) {
        // Show session selector
        final selectedSlot = await showSessionSelectorSheet(
          context: context,
          booking: _booking!,
        );
        if (selectedSlot == null) return;

        ref.read(bookingActionsProvider.notifier).rescheduleBooking(
              id: _booking!.id,
              type: _booking!.bookingType,
              slotId: selectedSlot.id,
            );
      } else {
        // Full reschedule
        ref.read(bookingActionsProvider.notifier).rescheduleBooking(
              id: _booking!.id,
              type: _booking!.bookingType,
            );
      }
    } else {
      // For consultations, simple confirmation
      final confirmed = await showRescheduleConfirmationDialog(
        context: context,
        booking: _booking!,
      );
      if (!confirmed) return;

      ref.read(bookingActionsProvider.notifier).rescheduleBooking(
            id: _booking!.id,
            type: _booking!.bookingType,
          );
    }
  }

  Future<void> _handleCancel() async {
    final result = await showCancelDialog(
      context: context,
      booking: _booking!,
    );
    if (result == null) return;

    ref.read(bookingActionsProvider.notifier).cancelBooking(
          id: _booking!.id,
          type: _booking!.bookingType,
          cancellationReason: result.reason,
          cancellationNotes: result.notes,
        );
  }

  Future<void> _handleWriteReview() async {
    final submitted = await SubmitReviewDialog.show(
      context,
      consultantProfileId: _booking!.consultantProfileId!,
      consultantName: _booking!.consultantName ?? 'Consultant',
      consultantImage: _booking!.consultantImage,
    );
    if (submitted && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Review submitted. Thank you!'),
          backgroundColor: Colors.green.shade600,
        ),
      );
    }
  }

  void _handleReportIssue() {
    // Navigate to create ticket screen with booking context
    final bookingTypeStr = _booking!.bookingType == BookingType.consultation
        ? 'CONSULTATION'
        : 'SUBSCRIPTION';
    context.push(
        '/support/create?bookingId=${_booking!.id}&bookingType=$bookingTypeStr');
  }

  (Color, Color) _getStatusColors(RequestStatus status) {
    switch (status) {
      case RequestStatus.pending:
        return (const Color(0xFFFFF3E0), const Color(0xFFE65100));
      case RequestStatus.approved:
        return (const Color(0xFFE8F5E9), const Color(0xFF2E7D32));
      case RequestStatus.scheduled:
        return (const Color(0xFFE3F2FD), const Color(0xFF1565C0));
      case RequestStatus.approvedPendingPayment:
        return (const Color(0xFFFCE4EC), const Color(0xFFC2185B));
      case RequestStatus.cancelled:
      case RequestStatus.rejected:
        return (const Color(0xFFFFEBEE), const Color(0xFFC62828));
      case RequestStatus.expired:
        return (const Color(0xFFF5F5F5), const Color(0xFF616161));
      case RequestStatus.completed:
        return (const Color(0xFFE8F5E9), const Color(0xFF1B5E20));
    }
  }

  IconData _getStatusIcon(RequestStatus status) {
    switch (status) {
      case RequestStatus.pending:
        return Icons.schedule;
      case RequestStatus.approved:
        return Icons.check_circle_outline;
      case RequestStatus.scheduled:
        return Icons.event_available;
      case RequestStatus.approvedPendingPayment:
        return Icons.payment;
      case RequestStatus.cancelled:
        return Icons.cancel_outlined;
      case RequestStatus.rejected:
        return Icons.block;
      case RequestStatus.expired:
        return Icons.timer_off;
      case RequestStatus.completed:
        return Icons.check_circle;
    }
  }

  String _formatDate(DateTime date) {
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
    return '${months[date.month - 1]} ${date.day}, ${date.year}';
  }
}
