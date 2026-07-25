import 'package:flutter/material.dart';

import '../../../domain/entities/booking/booking_entities.dart';

/// Slots list for a booking, showing date/time and tentative status.
class BookingSlotsList extends StatelessWidget {
  final Booking booking;

  const BookingSlotsList({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
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
}

/// Scheduling period display for subscription bookings.
class BookingSchedulingPeriod extends StatelessWidget {
  final Booking booking;

  const BookingSchedulingPeriod({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
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

/// Message bubble displaying the booking message.
class BookingMessageBubble extends StatelessWidget {
  final String message;

  const BookingMessageBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
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
        message,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: colorScheme.onSurfaceVariant,
          height: 1.5,
        ),
      ),
    );
  }
}

/// Banner showing cancellation details (reason, notes, date).
class BookingCancellationBanner extends StatelessWidget {
  final Booking booking;

  const BookingCancellationBanner({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
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

/// Feedback content showing rating stars and text feedback.
class BookingFeedbackContent extends StatelessWidget {
  final Booking booking;

  const BookingFeedbackContent({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
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
}

/// Plan extras section for non-group bookings (description, chips, etc.).
class BookingPlanExtras extends StatelessWidget {
  final Booking booking;

  /// Builder for the section label widget, provided by the parent screen.
  final Widget Function(String text) sectionLabelBuilder;

  const BookingPlanExtras({
    super.key,
    required this.booking,
    required this.sectionLabelBuilder,
  });

  @override
  Widget build(BuildContext context) {
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
        sectionLabelBuilder('About This Plan'),
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
                _chip(context, Icons.language, booking.planLanguage!),
              if (booking.planLevel != null)
                _chip(context, Icons.signal_cellular_alt, booking.planLevel!),
              if (booking.planCertificateProvided)
                _chip(context, Icons.workspace_premium_rounded, 'Certificate'),
              if (booking.planRecordingEnabled)
                _chip(context, Icons.fiber_manual_record_rounded, 'Recorded'),
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

  Widget _chip(BuildContext context, IconData icon, String label) {
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
}
