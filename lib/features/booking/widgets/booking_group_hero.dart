import 'package:flutter/material.dart';

import '../../../domain/entities/booking/booking_entities.dart';

/// Hero section for group programs (webinars and classes).
///
/// Displays type pill, participant count, title, description,
/// info chips, prerequisites, learning outcomes, and materials.
class BookingGroupHero extends StatelessWidget {
  final Booking booking;

  const BookingGroupHero({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
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
                _chip(context, Icons.language, booking.planLanguage!),
              if (booking.planLevel != null)
                _chip(
                    context, Icons.signal_cellular_alt, booking.planLevel!),
              if (booking.planCertificateProvided)
                _chip(
                    context, Icons.workspace_premium_rounded, 'Certificate'),
              if (booking.planRecordingEnabled)
                _chip(context, Icons.fiber_manual_record_rounded, 'Recorded'),
              if (!isWebinar && booking.meetingsPerWeek != null)
                _chip(context, Icons.calendar_month_rounded,
                    '${booking.meetingsPerWeek}/week'),
              if (booking.durationInMonths != null)
                _chip(context, Icons.date_range_rounded,
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
