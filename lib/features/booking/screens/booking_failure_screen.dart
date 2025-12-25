import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Booking failure screen shown when a booking attempt fails
class BookingFailureScreen extends StatelessWidget {
  final String? errorMessage;
  final String? consultantId;
  final String? planId;
  final String? planType;

  const BookingFailureScreen({
    super.key,
    this.errorMessage,
    this.consultantId,
    this.planId,
    this.planType,
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
              // Failure icon
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: theme.colorScheme.errorContainer,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.close,
                  size: 48,
                  color: theme.colorScheme.error,
                ),
              ),
              const SizedBox(height: 24),

              // Title
              Text(
                'Booking Failed',
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),

              // Description
              Text(
                errorMessage ?? 'Something went wrong while processing your booking. Please try again.',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),

              // Error details card
              _buildErrorDetailsCard(theme),
              const SizedBox(height: 32),

              // Actions
              if (_canRetry) ...[
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: () => _retryBooking(context),
                    icon: const Icon(Icons.refresh),
                    label: const Text('Try Again'),
                  ),
                ),
                const SizedBox(height: 12),
              ],
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => context.goNamed('explore'),
                  child: const Text('Browse Consultants'),
                ),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () => context.goNamed('myBookings'),
                child: const Text('View My Bookings'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool get _canRetry =>
      consultantId != null && planId != null && planType != null;

  void _retryBooking(BuildContext context) {
    if (_canRetry) {
      context.goNamed(
        'booking',
        pathParameters: {
          'consultantId': consultantId!,
          'planType': planType!,
          'planId': planId!,
        },
      );
    }
  }

  Widget _buildErrorDetailsCard(ThemeData theme) {
    return Card(
      color: theme.colorScheme.errorContainer.withValues(alpha: 0.3),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.info_outline,
                  size: 20,
                  color: theme.colorScheme.error,
                ),
                const SizedBox(width: 8),
                Text(
                  'What happened?',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onErrorContainer,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            _buildErrorReason(
              theme,
              'The booking request could not be completed.',
            ),
            const SizedBox(height: 8),
            _buildErrorReason(
              theme,
              'Your payment was not processed.',
            ),
            const SizedBox(height: 8),
            _buildErrorReason(
              theme,
              'No charges have been made to your account.',
            ),
            const SizedBox(height: 16),
            Text(
              'If this issue persists, please contact support.',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onErrorContainer.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorReason(ThemeData theme, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\u2022',
          style: TextStyle(
            color: theme.colorScheme.onErrorContainer,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onErrorContainer,
            ),
          ),
        ),
      ],
    );
  }
}
