import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/constants/enums.dart' show UserRole;
import '../../../core/utils/sentry_logger.dart';
import '../../../domain/entities/booking/booking_entities.dart';
import '../../../shared/utils/fake_data.dart';
import '../../auth/providers/auth_provider.dart';
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
  Booking? _fetchedBooking;
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
          _fetchedBooking = booking;
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
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.cloud_off_rounded,
                size: 56,
                color: Theme.of(context).colorScheme.outline,
              ),
              const SizedBox(height: 20),
              Text(
                'Failed to load booking',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                _error!,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              FilledButton.tonal(
                onPressed: _loadBooking,
                child: const Text('Try again'),
              ),
            ],
          ),
        ),
      );
    }

    if (!_isLoading && _fetchedBooking == null) {
      return const Center(child: Text('Booking not found'));
    }

    final booking = _fetchedBooking ?? FakeData.booking();

    return Skeletonizer(
      enabled: _isLoading,
      child: RefreshIndicator(
        onRefresh: _loadBooking,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hero header: person or plan overview
              if (booking.isGroupProgram)
                _buildGroupHero(booking)
              else
                _buildPersonHero(booking),

              const SizedBox(height: 20),

              // Status pill
              _buildStatusPill(booking),

              const SizedBox(height: 24),

              // Metrics grid
              _buildMetricsGrid(booking),

              // Plan description + attributes (for non-group: shown here;
              // for group: shown in hero above)
              if (!booking.isGroupProgram) _buildPlanExtras(booking),

              // Slots
              if (booking.slots.isNotEmpty) ...[
                const SizedBox(height: 24),
                _buildSectionLabel('Schedule'),
                const SizedBox(height: 12),
                _buildSlotsList(booking),
              ],

              // Scheduling period
              if (booking.bookingType == BookingType.subscription &&
                  booking.schedulingPeriodStartsAt != null) ...[
                const SizedBox(height: 24),
                _buildSectionLabel('Scheduling Period'),
                const SizedBox(height: 12),
                _buildSchedulingPeriod(booking),
              ],

              // Message
              if (booking.message != null && booking.message!.isNotEmpty) ...[
                const SizedBox(height: 24),
                _buildSectionLabel(
                  _isConsultantView ? "Client's Message" : 'Your Message',
                ),
                const SizedBox(height: 8),
                _buildMessageBubble(booking),
              ],

              // Cancellation
              if (booking.status == RequestStatus.cancelled &&
                  (booking.cancellationReason != null ||
                      booking.cancellationNotes != null ||
                      booking.cancelledAt != null)) ...[
                const SizedBox(height: 24),
                _buildCancellationBanner(booking),
              ],

              // Feedback
              if (booking.rating != null ||
                  booking.feedbackFromConsultee != null ||
                  booking.feedbackFromConsultant != null) ...[
                const SizedBox(height: 24),
                _buildSectionLabel('Feedback'),
                const SizedBox(height: 12),
                _buildFeedbackContent(booking),
              ],

              const SizedBox(height: 32),

              // Actions
              _buildActionButtons(booking),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  // ──────────────────────── Helpers ────────────────────────

  bool get _isConsultantView {
    final user = ref.read(currentUserProvider);
    return user?.role == UserRole.consultant;
  }

  Widget _buildSectionLabel(String text) {
    return Text(
      text.toUpperCase(),
      style: Theme.of(context).textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
            color: Theme.of(context).colorScheme.onSurface,
          ),
    );
  }

  // ──────────────────────── Hero sections ────────────────────────

  Widget _buildPersonHero(Booking booking) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isConsultant = _isConsultantView;

    final displayName = isConsultant
        ? (booking.consulteeName ?? 'Client')
        : (booking.consultantName ?? 'Consultant');
    final displayImage =
        isConsultant ? booking.consulteeImage : booking.consultantImage;

    return Column(
      children: [
        const SizedBox(height: 8),
        // Circular avatar
        Center(
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorScheme.surfaceContainerHighest,
            ),
            clipBehavior: Clip.antiAlias,
            child: displayImage != null
                ? CachedNetworkImage(
                    imageUrl: displayImage,
                    fit: BoxFit.cover,
                    placeholder: (_, __) => Icon(Icons.person,
                        size: 36, color: colorScheme.onSurfaceVariant),
                    errorWidget: (_, __, ___) => Icon(Icons.person,
                        size: 36, color: colorScheme.onSurfaceVariant),
                  )
                : Icon(Icons.person,
                    size: 36, color: colorScheme.onSurfaceVariant),
          ),
        ),
        const SizedBox(height: 12),
        // Name
        Text(
          displayName,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
            letterSpacing: -0.3,
          ),
          textAlign: TextAlign.center,
        ),
        if (booking.planTitle != null) ...[
          const SizedBox(height: 4),
          Text(
            booking.planTitle!,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }

  Widget _buildGroupHero(Booking booking) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isWebinar = booking.bookingType == BookingType.webinar;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        // Type pill + participants
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    isWebinar ? Icons.videocam_rounded : Icons.school_rounded,
                    size: 14,
                    color: colorScheme.onPrimaryContainer,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    isWebinar ? 'Webinar' : 'Class',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            if (booking.maxParticipants != null) ...[
              const Spacer(),
              Text(
                '${booking.participantCount}/${booking.maxParticipants}',
                style: theme.textTheme.labelMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 4),
              Icon(Icons.people_alt_rounded,
                  size: 16, color: colorScheme.onSurfaceVariant),
            ],
          ],
        ),
        const SizedBox(height: 16),

        // Title
        if (booking.planTitle != null)
          Text(
            booking.planTitle!,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
              letterSpacing: -0.5,
            ),
          ),

        // Description
        if (booking.planDescription != null &&
            booking.planDescription!.isNotEmpty) ...[
          const SizedBox(height: 8),
          Text(
            booking.planDescription!,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
              height: 1.5,
            ),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
        ],

        // Info chips
        if (booking.planLanguage != null ||
            booking.planLevel != null ||
            booking.planCertificateProvided ||
            booking.planRecordingEnabled) ...[
          const SizedBox(height: 14),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              if (booking.planLanguage != null)
                _chip(Icons.language, booking.planLanguage!),
              if (booking.planLevel != null)
                _chip(Icons.signal_cellular_alt, booking.planLevel!),
              if (booking.planCertificateProvided)
                _chip(Icons.workspace_premium_rounded, 'Certificate'),
              if (booking.planRecordingEnabled)
                _chip(Icons.fiber_manual_record_rounded, 'Recorded'),
              if (!isWebinar && booking.meetingsPerWeek != null)
                _chip(Icons.calendar_month_rounded,
                    '${booking.meetingsPerWeek}/week'),
              if (booking.durationInMonths != null)
                _chip(Icons.date_range_rounded,
                    '${booking.durationInMonths} months'),
            ],
          ),
        ],

        // Prerequisites
        if (booking.planPrerequisites != null &&
            booking.planPrerequisites!.isNotEmpty &&
            booking.planPrerequisites != 'None') ...[
          const SizedBox(height: 16),
          Text(
            'Prerequisites',
            style: theme.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            booking.planPrerequisites!,
            style: theme.textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],

        // Learning outcomes
        if (booking.planLearningOutcomes.isNotEmpty) ...[
          const SizedBox(height: 16),
          Text(
            'Learning Outcomes',
            style: theme.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 6),
          ...booking.planLearningOutcomes.map(
            (o) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Icon(Icons.check_circle_rounded,
                        size: 15, color: colorScheme.primary),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(o,
                        style: theme.textTheme.bodySmall
                            ?.copyWith(color: colorScheme.onSurfaceVariant)),
                  ),
                ],
              ),
            ),
          ),
        ],

        // Materials
        if (booking.planMaterialProvided != null &&
            booking.planMaterialProvided!.isNotEmpty &&
            booking.planMaterialProvided != 'None') ...[
          const SizedBox(height: 16),
          Text(
            'Materials Provided',
            style: theme.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            booking.planMaterialProvided!,
            style: theme.textTheme.bodySmall
                ?.copyWith(color: colorScheme.onSurfaceVariant),
          ),
        ],
      ],
    );
  }

  Widget _chip(IconData icon, String label) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 13, color: colorScheme.onSurfaceVariant),
          const SizedBox(width: 5),
          Text(
            label,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
          ),
        ],
      ),
    );
  }

  // ──────────────────────── Status ────────────────────────

  Widget _buildStatusPill(Booking booking) {
    final theme = Theme.of(context);
    final statusColors = _getStatusColors(booking.status);
    final description = _isConsultantView
        ? _consultantStatusDescription(booking.status)
        : booking.statusDescription;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: statusColors.$1.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(_getStatusIcon(booking.status),
              color: statusColors.$2, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  booking.statusText,
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: statusColors.$2,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  description,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: statusColors.$2.withValues(alpha: 0.75),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _consultantStatusDescription(RequestStatus status) {
    switch (status) {
      case RequestStatus.pending:
        return 'Waiting for your approval';
      case RequestStatus.approved:
        return 'You approved this request';
      case RequestStatus.approvedPendingPayment:
        return 'Waiting for client payment';
      case RequestStatus.scheduled:
        return 'Confirmed and scheduled';
      case RequestStatus.rejected:
        return 'You declined this request';
      case RequestStatus.cancelled:
        return 'This booking has been cancelled';
      case RequestStatus.expired:
        return 'This request has expired';
      case RequestStatus.completed:
        return 'Session completed';
    }
  }

  // ──────────────────────── Metrics grid ────────────────────────

  Widget _buildMetricsGrid(Booking booking) {
    final colorScheme = Theme.of(context).colorScheme;

    final metrics = <_Metric>[];
    if (booking.planDuration != null) {
      // planDuration is in hours, convert to minutes for display
      metrics.add(_Metric(Icons.schedule_rounded, 'Duration',
          '${(booking.planDuration! * 60).toInt()} min'));
    } else if (booking.sessionDurationInHours != null) {
      metrics.add(_Metric(Icons.schedule_rounded, 'Per Session',
          '${(booking.sessionDurationInHours! * 60).toInt()} min'));
    }
    metrics.add(
        _Metric(Icons.currency_rupee_rounded, 'Price', booking.formattedPrice));
    if (booking.totalSessions != null) {
      metrics.add(_Metric(Icons.calendar_view_week_rounded, 'Sessions',
          '${booking.totalSessions}'));
    }
    if (booking.meetingsPerWeek != null) {
      metrics.add(_Metric(
          Icons.repeat_rounded, 'Per Week', '${booking.meetingsPerWeek}'));
    }
    if (booking.durationInMonths != null) {
      metrics.add(_Metric(Icons.date_range_rounded, 'Duration',
          '${booking.durationInMonths} mo'));
    }
    if (booking.totalHours != null) {
      metrics.add(_Metric(Icons.hourglass_bottom_rounded, 'Total',
          '${booking.totalHours!.toStringAsFixed(0)}h'));
    }

    if (metrics.isEmpty) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: metrics.map((m) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 4),
              child: Column(
                children: [
                  Icon(m.icon, size: 20, color: colorScheme.primary),
                  const SizedBox(height: 6),
                  Text(
                    m.value,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.3,
                        ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    m.label,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  // ──────────────────────── Plan extras (non-group) ────────────────────────

  Widget _buildPlanExtras(Booking booking) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final hasContent = (booking.planDescription?.isNotEmpty ?? false) ||
        booking.planLanguage != null ||
        booking.planLevel != null ||
        booking.planCertificateProvided ||
        booking.planRecordingEnabled ||
        (booking.planPrerequisites?.isNotEmpty ?? false) &&
            booking.planPrerequisites != 'None' ||
        booking.planLearningOutcomes.isNotEmpty ||
        (booking.planMaterialProvided?.isNotEmpty ?? false) &&
            booking.planMaterialProvided != 'None';

    if (!hasContent) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        _buildSectionLabel('About This Plan'),
        if (booking.planDescription != null &&
            booking.planDescription!.isNotEmpty) ...[
          const SizedBox(height: 10),
          Text(
            booking.planDescription!,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
              height: 1.5,
            ),
          ),
        ],
        if (booking.planLanguage != null ||
            booking.planLevel != null ||
            booking.planCertificateProvided ||
            booking.planRecordingEnabled) ...[
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              if (booking.planLanguage != null)
                _chip(Icons.language, booking.planLanguage!),
              if (booking.planLevel != null)
                _chip(Icons.signal_cellular_alt, booking.planLevel!),
              if (booking.planCertificateProvided)
                _chip(Icons.workspace_premium_rounded, 'Certificate'),
              if (booking.planRecordingEnabled)
                _chip(Icons.fiber_manual_record_rounded, 'Recorded'),
            ],
          ),
        ],
        if (booking.planPrerequisites != null &&
            booking.planPrerequisites!.isNotEmpty &&
            booking.planPrerequisites != 'None') ...[
          const SizedBox(height: 16),
          Text('Prerequisites',
              style: theme.textTheme.labelMedium
                  ?.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(height: 4),
          Text(booking.planPrerequisites!,
              style: theme.textTheme.bodySmall
                  ?.copyWith(color: colorScheme.onSurfaceVariant)),
        ],
        if (booking.planLearningOutcomes.isNotEmpty) ...[
          const SizedBox(height: 16),
          Text('Learning Outcomes',
              style: theme.textTheme.labelMedium
                  ?.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(height: 6),
          ...booking.planLearningOutcomes.map(
            (o) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Icon(Icons.check_circle_rounded,
                        size: 15, color: colorScheme.primary),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(o,
                        style: theme.textTheme.bodySmall
                            ?.copyWith(color: colorScheme.onSurfaceVariant)),
                  ),
                ],
              ),
            ),
          ),
        ],
        if (booking.planMaterialProvided != null &&
            booking.planMaterialProvided!.isNotEmpty &&
            booking.planMaterialProvided != 'None') ...[
          const SizedBox(height: 16),
          Text('Materials Provided',
              style: theme.textTheme.labelMedium
                  ?.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(height: 4),
          Text(booking.planMaterialProvided!,
              style: theme.textTheme.bodySmall
                  ?.copyWith(color: colorScheme.onSurfaceVariant)),
        ],
      ],
    );
  }

  // ──────────────────────── Slots ────────────────────────

  Widget _buildSlotsList(Booking booking) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      children: booking.slots.asMap().entries.map((entry) {
        final index = entry.key;
        final slot = entry.value;
        final isTentative = slot.isTentative;

        return Container(
          margin: EdgeInsets.only(top: index > 0 ? 8 : 0),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              // Number badge
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  color: isTentative
                      ? Colors.orange.withValues(alpha: 0.12)
                      : colorScheme.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: isTentative
                      ? Icon(Icons.schedule_rounded,
                          size: 15, color: Colors.orange)
                      : Text(
                          '${index + 1}',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                ),
              ),
              const SizedBox(width: 12),
              // Date + time
              Expanded(
                child: Text(
                  '${slot.formattedDate}  ·  ${slot.formattedTimeRange}',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              if (isTentative)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.orange.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Pending',
                    style: theme.textTheme.labelSmall
                        ?.copyWith(color: Colors.orange),
                  ),
                ),
            ],
          ),
        );
      }).toList(),
    );
  }

  // ──────────────────────── Scheduling period ────────────────────────

  Widget _buildSchedulingPeriod(Booking booking) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final start = booking.schedulingPeriodStartsAt!.toLocal();
    final end = booking.schedulingPeriodEndsAt?.toLocal();

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.date_range_rounded,
                  size: 18, color: colorScheme.primary),
              const SizedBox(width: 10),
              Text(
                '${_formatDate(start)} – ${end != null ? _formatDate(end) : 'TBD'}',
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          if (booking.schedulingTimezone != null) ...[
            const SizedBox(height: 6),
            Row(
              children: [
                Icon(Icons.public_rounded,
                    size: 18, color: colorScheme.onSurfaceVariant),
                const SizedBox(width: 10),
                Text(
                  booking.schedulingTimezone!,
                  style: theme.textTheme.bodySmall
                      ?.copyWith(color: colorScheme.onSurfaceVariant),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  // ──────────────────────── Message ────────────────────────

  Widget _buildMessageBubble(Booking booking) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(2),
          topRight: Radius.circular(14),
          bottomLeft: Radius.circular(14),
          bottomRight: Radius.circular(14),
        ),
      ),
      child: Text(
        booking.message!,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: colorScheme.onSurfaceVariant,
          height: 1.5,
        ),
      ),
    );
  }

  // ──────────────────────── Cancellation ────────────────────────

  Widget _buildCancellationBanner(Booking booking) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: colorScheme.errorContainer.withValues(alpha: 0.25),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.cancel_rounded, size: 18, color: colorScheme.error),
              const SizedBox(width: 8),
              Text(
                'Cancellation Details',
                style: theme.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: colorScheme.error,
                ),
              ),
            ],
          ),
          if (booking.cancellationReason != null) ...[
            const SizedBox(height: 10),
            Text(
              'Reason: ${booking.cancellationReason!.name.replaceAllMapped(RegExp(r'[A-Z]'), (m) => ' ${m.group(0)}').trim()}',
              style: theme.textTheme.bodyMedium,
            ),
          ],
          if (booking.cancellationNotes != null) ...[
            const SizedBox(height: 4),
            Text(booking.cancellationNotes!,
                style: theme.textTheme.bodySmall
                    ?.copyWith(color: colorScheme.onSurfaceVariant)),
          ],
          if (booking.cancelledAt != null) ...[
            const SizedBox(height: 4),
            Text(
              'Cancelled on ${_formatDate(booking.cancelledAt!.toLocal())}',
              style: theme.textTheme.bodySmall
                  ?.copyWith(color: colorScheme.onSurfaceVariant),
            ),
          ],
        ],
      ),
    );
  }

  // ──────────────────────── Feedback ────────────────────────

  Widget _buildFeedbackContent(Booking booking) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (booking.rating != null)
          Row(
            children: [
              ...List.generate(
                5,
                (i) => Icon(
                  i < booking.rating!.round()
                      ? Icons.star_rounded
                      : Icons.star_border_rounded,
                  size: 22,
                  color: Colors.amber.shade600,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                booking.rating!.toStringAsFixed(1),
                style: theme.textTheme.titleSmall
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        if (booking.feedbackFromConsultee != null) ...[
          const SizedBox(height: 10),
          Text('Your feedback: ${booking.feedbackFromConsultee!}',
              style: theme.textTheme.bodySmall
                  ?.copyWith(color: colorScheme.onSurfaceVariant)),
        ],
        if (booking.feedbackFromConsultant != null) ...[
          const SizedBox(height: 6),
          Text('Consultant feedback: ${booking.feedbackFromConsultant!}',
              style: theme.textTheme.bodySmall
                  ?.copyWith(color: colorScheme.onSurfaceVariant)),
        ],
      ],
    );
  }

  Widget _buildActionButtons(Booking booking) {
    final theme = Theme.of(context);
    final actionState = ref.watch(bookingActionsProvider);
    final isLoading = actionState is BookingActionLoading;

    final actions = <Widget>[];

    // Join Meeting button (for SCHEDULED within time window)
    if (booking.canJoinMeeting) {
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

    // Chat button (shows "Talk to Expert" for consultees,
    // "Message Client" for consultants)
    final isConsultant = _isConsultantView;
    final chatUserId =
        isConsultant ? booking.consulteeUserId : booking.consultantUserId;
    if (chatUserId != null &&
        booking.status != RequestStatus.cancelled &&
        booking.status != RequestStatus.rejected &&
        booking.status != RequestStatus.expired) {
      actions.add(
        SizedBox(
          width: double.infinity,
          child: FilledButton.icon(
            onPressed: isLoading ? null : _handleTalkToExpert,
            icon: const Icon(Icons.chat_bubble_outline),
            label: Text(isConsultant ? 'Message Client' : 'Talk to Expert'),
            style: FilledButton.styleFrom(
              backgroundColor: theme.colorScheme.primary,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      );
    }

    // Pay Now button (for APPROVED_PENDING_PAYMENT, consultee only)
    if (!isConsultant &&
        booking.status == RequestStatus.approvedPendingPayment) {
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

    // Reschedule button (consultee only)
    if (!isConsultant && booking.canReschedule) {
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
    if (booking.canCancelNow) {
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

    // Write Review button (for completed bookings, consultee only)
    if (!isConsultant &&
        booking.status == RequestStatus.completed &&
        booking.consultantProfileId != null) {
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
    if (booking.status != RequestStatus.cancelled &&
        booking.status != RequestStatus.rejected &&
        booking.status != RequestStatus.expired) {
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
    if (!booking.canReschedule &&
        booking.status != RequestStatus.cancelled &&
        booking.status != RequestStatus.completed &&
        booking.status != RequestStatus.rejected &&
        booking.status != RequestStatus.expired &&
        booking.slots.isNotEmpty) {
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
    if (_fetchedBooking?.appointmentId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Meeting not available')),
      );
      return;
    }
    context.push('/meeting/${_fetchedBooking!.appointmentId}');
  }

  Future<void> _handleTalkToExpert() async {
    final isConsultant = _isConsultantView;
    final otherUserId = isConsultant
        ? _fetchedBooking?.consulteeUserId
        : _fetchedBooking?.consultantUserId;
    final otherUserName = isConsultant
        ? _fetchedBooking?.consulteeName
        : _fetchedBooking?.consultantName;
    final otherUserImage = isConsultant
        ? _fetchedBooking?.consulteeImage
        : _fetchedBooking?.consultantImage;

    if (otherUserId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User not available')),
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
              'otherUserId': otherUserId,
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
        otherUserId,
        otherUserName: otherUserName,
        otherUserImage: otherUserImage,
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
          'otherUserId': otherUserId,
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
      extra: _fetchedBooking,
    );
  }

  Future<void> _handleReschedule() async {
    if (_fetchedBooking!.bookingType == BookingType.subscription &&
        _fetchedBooking!.slots.isNotEmpty) {
      // For subscriptions with slots, offer choice
      final choice = await showRescheduleOptionsSheet(
        context: context,
        booking: _fetchedBooking!,
      );
      if (choice == null) return;

      if (choice is RescheduleSession) {
        // Show session selector
        final selectedSlot = await showSessionSelectorSheet(
          context: context,
          booking: _fetchedBooking!,
        );
        if (selectedSlot == null) return;

        ref.read(bookingActionsProvider.notifier).rescheduleBooking(
              id: _fetchedBooking!.id,
              type: _fetchedBooking!.bookingType,
              slotId: selectedSlot.id,
            );
      } else {
        // Full reschedule
        ref.read(bookingActionsProvider.notifier).rescheduleBooking(
              id: _fetchedBooking!.id,
              type: _fetchedBooking!.bookingType,
            );
      }
    } else {
      // For consultations, simple confirmation
      final confirmed = await showRescheduleConfirmationDialog(
        context: context,
        booking: _fetchedBooking!,
      );
      if (!confirmed) return;

      ref.read(bookingActionsProvider.notifier).rescheduleBooking(
            id: _fetchedBooking!.id,
            type: _fetchedBooking!.bookingType,
          );
    }
  }

  Future<void> _handleCancel() async {
    final result = await showCancelDialog(
      context: context,
      booking: _fetchedBooking!,
    );
    if (result == null) return;

    ref.read(bookingActionsProvider.notifier).cancelBooking(
          id: _fetchedBooking!.id,
          type: _fetchedBooking!.bookingType,
          cancellationReason: result.reason,
          cancellationNotes: result.notes,
        );
  }

  Future<void> _handleWriteReview() async {
    final submitted = await SubmitReviewDialog.show(
      context,
      consultantProfileId: _fetchedBooking!.consultantProfileId!,
      consultantName: _fetchedBooking!.consultantName ?? 'Consultant',
      consultantImage: _fetchedBooking!.consultantImage,
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
    final bookingTypeStr =
        _fetchedBooking!.bookingType == BookingType.consultation
            ? 'CONSULTATION'
            : 'SUBSCRIPTION';
    context.push(
        '/support/create?bookingId=${_fetchedBooking!.id}&bookingType=$bookingTypeStr');
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

class _Metric {
  final IconData icon;
  final String label;
  final String value;
  const _Metric(this.icon, this.label, this.value);
}
