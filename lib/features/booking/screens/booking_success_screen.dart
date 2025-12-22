import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/booking/booking_entities.dart';

/// Booking success confirmation screen
class BookingSuccessScreen extends StatelessWidget {
  final Booking? booking;

  const BookingSuccessScreen({
    super.key,
    this.booking,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Success icon
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check,
                  size: 48,
                  color: theme.colorScheme.primary,
                ),
              ),
              const SizedBox(height: 24),

              // Title
              Text(
                'Booking Submitted!',
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),

              // Description
              Text(
                booking?.bookingType == BookingType.subscription
                    ? 'Your subscription request has been sent. '
                        'The consultant will allocate your session times.'
                    : 'Your consultation request has been sent. '
                        'You will be notified when the consultant responds.',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),

              // Booking details card
              if (booking != null) _buildBookingCard(theme),
              const SizedBox(height: 32),

              // Actions
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () => context.goNamed('myBookings'),
                  child: const Text('View My Bookings'),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => context.goNamed('explore'),
                  child: const Text('Continue Exploring'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookingCard(ThemeData theme) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    booking!.statusText,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onSecondaryContainer,
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  booking!.bookingType == BookingType.consultation
                      ? 'Consultation'
                      : 'Subscription',
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            if (booking!.consultantName != null) ...[
              Text(
                booking!.consultantName!,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
            ],
            if (booking!.planTitle != null)
              Text(
                booking!.planTitle!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            const SizedBox(height: 8),
            if (booking!.planPrice != null)
              Text(
                booking!.formattedPrice,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
