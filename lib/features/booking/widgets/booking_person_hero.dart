import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/booking/booking_entities.dart';

/// Hero section for person-based bookings (1:1 consultations/subscriptions).
///
/// Displays the other party's avatar, name, and plan title.
class BookingPersonHero extends StatelessWidget {
  final Booking booking;

  /// Whether the viewer is the consultant (flips which name/image is shown).
  final bool isConsultantView;

  const BookingPersonHero({
    super.key,
    required this.booking,
    required this.isConsultantView,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final displayName = isConsultantView
        ? (booking.consulteeName ?? 'Client')
        : (booking.consultantName ?? 'Consultant');
    final displayImage =
        isConsultantView ? booking.consulteeImage : booking.consultantImage;

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
}
