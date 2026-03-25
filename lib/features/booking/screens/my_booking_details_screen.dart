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
import '../widgets/booking_action_buttons.dart';
import '../widgets/booking_detail_sections.dart';
import '../widgets/booking_group_hero.dart';
import '../widgets/booking_metrics_grid.dart';
import '../widgets/booking_person_hero.dart';
import '../widgets/booking_status_section.dart';
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
                BookingGroupHero(booking: booking)
              else
                BookingPersonHero(
                  booking: booking,
                  isConsultantView: _isConsultantView,
                ),

              const SizedBox(height: 20),

              // Status pill
              BookingStatusSection(
                booking: booking,
                isConsultantView: _isConsultantView,
              ),

              const SizedBox(height: 24),

              // Metrics grid
              BookingMetricsGrid(booking: booking),

              // Plan description + attributes (for non-group: shown here;
              // for group: shown in hero above)
              if (!booking.isGroupProgram)
                BookingPlanExtras(
                  booking: booking,
                  sectionLabelBuilder: _buildSectionLabel,
                ),

              // Slots
              if (booking.slots.isNotEmpty) ...[
                const SizedBox(height: 24),
                _buildSectionLabel('Schedule'),
                const SizedBox(height: 12),
                BookingSlotsList(booking: booking),
              ],

              // Scheduling period
              if (booking.bookingType == BookingType.subscription &&
                  booking.schedulingPeriodStartsAt != null) ...[
                const SizedBox(height: 24),
                _buildSectionLabel('Scheduling Period'),
                const SizedBox(height: 12),
                BookingSchedulingPeriod(booking: booking),
              ],

              // Message
              if (booking.message != null &&
                  booking.message!.isNotEmpty) ...[
                const SizedBox(height: 24),
                _buildSectionLabel(
                  _isConsultantView ? "Client's Message" : 'Your Message',
                ),
                const SizedBox(height: 8),
                BookingMessageBubble(message: booking.message!),
              ],

              // Cancellation
              if (booking.status == RequestStatus.cancelled &&
                  (booking.cancellationReason != null ||
                      booking.cancellationNotes != null ||
                      booking.cancelledAt != null)) ...[
                const SizedBox(height: 24),
                BookingCancellationBanner(booking: booking),
              ],

              // Feedback
              if (booking.rating != null ||
                  booking.feedbackFromConsultee != null ||
                  booking.feedbackFromConsultant != null) ...[
                const SizedBox(height: 24),
                _buildSectionLabel('Feedback'),
                const SizedBox(height: 12),
                BookingFeedbackContent(booking: booking),
              ],

              const SizedBox(height: 24),

              // Documents
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

              // Actions
              BookingActionButtons(
                booking: booking,
                isConsultantView: _isConsultantView,
                isActionLoading:
                    ref.watch(bookingActionsProvider) is BookingActionLoading,
                onJoinMeeting: _handleJoinMeeting,
                onTalkToExpert: _handleTalkToExpert,
                onPayNow: _handlePayNow,
                onReschedule: _handleReschedule,
                onCancel: _handleCancel,
                onWriteReview: _handleWriteReview,
                onReportIssue: _handleReportIssue,
              ),

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

  // ──────────────────────── Action handlers ────────────────────────

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
}
