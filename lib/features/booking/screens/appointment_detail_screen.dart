import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/constants/enums.dart' show UserRole;
import '../../../core/utils/sentry_logger.dart';
import '../../../core/utils/web_dashboard_launcher.dart';
import '../../../domain/entities/booking/booking_entities.dart';
import '../../auth/providers/auth_provider.dart';
import '../../chat/providers/chat_service_provider.dart';
import '../../reviews/widgets/submit_review_dialog.dart';
import '../providers/booking_actions_provider.dart';
import '../providers/my_bookings_provider.dart';
import '../widgets/booking_action_buttons.dart';
import '../widgets/booking_detail_sections.dart';
import '../widgets/booking_group_hero.dart';
import '../widgets/booking_metrics_grid.dart';
import '../widgets/booking_person_hero.dart';
import '../widgets/booking_status_section.dart';
import '../widgets/cancel_dialog.dart';

/// Companion Starter Appointment Detail Screen showing:
/// - Clear upcoming session countdowns
/// - 1-tap "Join Video Call" button when a session is upcoming/live
/// - Clean "Manage Availability / Reschedule on Web" button (https://familiarise.io/dashboard)
class AppointmentDetailScreen extends ConsumerStatefulWidget {
  final String bookingId;
  final BookingType bookingType;

  const AppointmentDetailScreen({
    super.key,
    required this.bookingId,
    this.bookingType = BookingType.consultation,
  });

  @override
  ConsumerState<AppointmentDetailScreen> createState() =>
      _AppointmentDetailScreenState();
}

class _AppointmentDetailScreenState
    extends ConsumerState<AppointmentDetailScreen> {
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
      final booking = await ref.read(
        bookingDetailProvider(
          id: widget.bookingId,
          type: widget.bookingType,
        ).future,
      );
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
        context: 'AppointmentDetailScreen._loadBooking',
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

  Future<void> _launchWebDashboard() =>
      launchFamiliariseWebDashboard(context);

  bool get _showsCountdownCard =>
      _fetchedBooking != null &&
      _fetchedBooking!.status == RequestStatus.scheduled &&
      _fetchedBooking!.slots.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    ref.listen(bookingActionsProvider, (previous, next) {
      switch (next) {
        case BookingActionIdle():
        case BookingActionLoading():
          break;
        case BookingActionSuccess(:final message, :final updatedBooking):
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message),
              backgroundColor: Colors.green,
            ),
          );
          if (updatedBooking != null) {
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
            context.pop();
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
        actions: [
          if (!_showsCountdownCard)
            IconButton(
              onPressed: _launchWebDashboard,
              icon: const Icon(Icons.open_in_new),
              tooltip: 'Manage Availability / Reschedule on Web',
            ),
        ],
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

    if (_isLoading && _fetchedBooking == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    final booking = _fetchedBooking!;
    final showCountdownCard = _showsCountdownCard;

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
              if (booking.isGroupProgram)
                BookingGroupHero(booking: booking)
              else
                BookingPersonHero(
                  booking: booking,
                  isConsultantView: _isConsultantView,
                ),

              const SizedBox(height: 20),

              // Upcoming Session Countdown & 1-Tap Join Video Call Banner
              if (showCountdownCard) ...[
                _SessionCountdownCard(
                  booking: booking,
                  onJoinVideoCall: _handleJoinMeeting,
                  onManageOnWeb: _launchWebDashboard,
                ),
                const SizedBox(height: 20),
              ],

              BookingStatusSection(
                booking: booking,
                isConsultantView: _isConsultantView,
              ),

              const SizedBox(height: 24),

              BookingMetricsGrid(booking: booking),

              if (!booking.isGroupProgram)
                BookingPlanExtras(
                  booking: booking,
                  sectionLabelBuilder: _buildSectionLabel,
                ),

              if (booking.slots.isNotEmpty) ...[
                const SizedBox(height: 24),
                _buildSectionLabel('Schedule'),
                const SizedBox(height: 12),
                BookingSlotsList(booking: booking),
              ],

              if (booking.bookingType == BookingType.subscription &&
                  booking.schedulingPeriodStartsAt != null) ...[
                const SizedBox(height: 24),
                _buildSectionLabel('Scheduling Period'),
                const SizedBox(height: 12),
                BookingSchedulingPeriod(booking: booking),
              ],

              if (booking.message != null && booking.message!.isNotEmpty) ...[
                const SizedBox(height: 24),
                _buildSectionLabel(
                  _isConsultantView ? "Client's Message" : 'Your Message',
                ),
                const SizedBox(height: 8),
                BookingMessageBubble(message: booking.message!),
              ],

              if (booking.status == RequestStatus.cancelled &&
                  (booking.cancellationReason != null ||
                      booking.cancellationNotes != null ||
                      booking.cancelledAt != null)) ...[
                const SizedBox(height: 24),
                BookingCancellationBanner(booking: booking),
              ],

              if (booking.rating != null ||
                  booking.feedbackFromConsultee != null ||
                  booking.feedbackFromConsultant != null) ...[
                const SizedBox(height: 24),
                _buildSectionLabel('Feedback'),
                const SizedBox(height: 12),
                BookingFeedbackContent(booking: booking),
              ],

              const SizedBox(height: 24),

              if (booking.appointmentId != null)
                OutlinedButton.icon(
                  onPressed: () => context.push(
                    '/bookings/${widget.bookingId}/documents'
                    '?appointmentId=${booking.appointmentId}',
                  ),
                  icon: const Icon(Icons.description_outlined),
                  label: const Text('View Documents'),
                ),

              const SizedBox(height: 32),

              BookingActionButtons(
                booking: booking,
                isConsultantView: _isConsultantView,
                isActionLoading:
                    ref.watch(bookingActionsProvider) is BookingActionLoading,
                onJoinMeeting: _handleJoinMeeting,
                onTalkToExpert: _handleTalkToExpert,
                onPayNow: _handlePayNow,
                onCancel: _handleCancel,
                onWriteReview: _handleWriteReview,
                onReportIssue: _handleReportIssue,
                onManageOnWeb: _launchWebDashboard,
                hideCountdownCardActions: showCountdownCard,
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

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

      final chatState = ref.read(chatServiceProvider);
      if (!chatState.isInitialized) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Connecting to chat...')),
          );
        }

        final success = await chatService.initialize();
        if (!success) {
          AppSentryLogger.captureMessage(
            'Chat initialization failed',
            context: 'AppointmentDetailScreen._handleTalkToExpert',
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

      final channel = await chatService.getOrCreateDirectChannel(
        otherUserId,
        otherUserName: otherUserName,
        otherUserImage: otherUserImage,
      );

      if (channel != null && mounted) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
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
        context: 'AppointmentDetailScreen._handleTalkToExpert',
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
    final bookingTypeStr =
        _fetchedBooking!.bookingType == BookingType.consultation
            ? 'CONSULTATION'
            : 'SUBSCRIPTION';
    context.push(
      '/support/create?bookingId=${_fetchedBooking!.id}&bookingType=$bookingTypeStr',
    );
  }
}

class _SessionCountdownCard extends StatelessWidget {
  const _SessionCountdownCard({
    required this.booking,
    required this.onJoinVideoCall,
    required this.onManageOnWeb,
  });

  final Booking booking;
  final VoidCallback onJoinVideoCall;
  final VoidCallback onManageOnWeb;

  (bool isLive, String label) _buildCountdown(BookingSlot slot) {
    final now = DateTime.now();
    if (now.isAfter(slot.startsAt) && now.isBefore(slot.endsAt)) {
      final minsLeft = slot.endsAt.difference(now).inMinutes.clamp(1, 999);
      return (true, 'LIVE NOW • ${minsLeft}m remaining');
    }
    if (now.isBefore(slot.startsAt)) {
      final diff = slot.startsAt.difference(now);
      if (diff.inHours < 1) {
        final mins = diff.inMinutes.clamp(1, 59);
        return (false, 'Starts in ${mins}m');
      }
      if (diff.inHours < 24) {
        final hours = diff.inHours;
        final mins = diff.inMinutes % 60;
        return (
          false,
          mins > 0 ? 'Starts in ${hours}h ${mins}m' : 'Starts in ${hours}h',
        );
      }
      final days = diff.inDays;
      return (false, 'Starts in $days day${days == 1 ? '' : 's'}');
    }
    return (false, 'Session ended');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final slot = booking.slots.first;
    final (isLive, countdownText) = _buildCountdown(slot);
    final isUpcomingOrLive = !slot.isTentative &&
        (isLive ||
            booking.canJoinMeeting ||
            DateTime.now().isBefore(slot.endsAt));

    return Card(
      elevation: 0,
      color: isLive
          ? Colors.green.withValues(alpha: 0.1)
          : colorScheme.primaryContainer.withValues(alpha: 0.4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(
          color: isLive
              ? Colors.green.withValues(alpha: 0.4)
              : colorScheme.primary.withValues(alpha: 0.25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  isLive ? Icons.sensors : Icons.timer_outlined,
                  size: 18,
                  color: isLive ? Colors.green.shade700 : colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  countdownText,
                  style: theme.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: isLive ? Colors.green.shade700 : colorScheme.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              '${DateFormat('EEE, MMM d').format(slot.startsAt.toLocal())} • '
              '${DateFormat('h:mm a').format(slot.startsAt.toLocal())} - '
              '${DateFormat('h:mm a').format(slot.endsAt.toLocal())}',
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            if (isUpcomingOrLive && booking.appointmentId != null) ...[
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: onJoinVideoCall,
                  icon: const Icon(Icons.videocam),
                  label: const Text('Join Video Call'),
                  style: FilledButton.styleFrom(
                    backgroundColor: isLive ? Colors.green : null,
                  ),
                ),
              ),
            ],
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: TextButton.icon(
                onPressed: onManageOnWeb,
                icon: const Icon(Icons.open_in_new, size: 16),
                label: const Text('Manage Availability / Reschedule on Web'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
