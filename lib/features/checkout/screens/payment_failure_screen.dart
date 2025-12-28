import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/booking/booking.dart';
import 'checkout_screen.dart';

/// Payment failure screen shown when payment fails
class PaymentFailureScreen extends StatelessWidget {
  final String? errorMessage;
  final bool canRetry;
  final Booking? booking;
  final DirectCheckoutParams? directCheckoutParams;

  const PaymentFailureScreen({
    super.key,
    this.errorMessage,
    this.canRetry = true,
    this.booking,
    this.directCheckoutParams,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.goNamed('explore'),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Failure icon
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: theme.colorScheme.errorContainer,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.error_outline,
                  size: 64,
                  color: theme.colorScheme.error,
                ),
              ),
              const SizedBox(height: 24),

              // Title
              Text(
                'Payment Failed',
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.error,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),

              // Description
              Text(
                errorMessage ??
                    'Something went wrong while processing your payment. Please try again.',
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
              if (canRetry && (booking != null || directCheckoutParams != null)) ...[
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: () => _retryPayment(context),
                    icon: const Icon(Icons.refresh),
                    label: const Text('Try Again'),
                  ),
                ),
                const SizedBox(height: 12),
              ],
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () => context.goNamed('myBookings'),
                  icon: const Icon(Icons.calendar_today),
                  label: const Text('View My Bookings'),
                ),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () => context.goNamed('explore'),
                child: const Text('Browse Consultants'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _retryPayment(BuildContext context) {
    if (booking != null) {
      context.pushReplacementNamed(
        'checkout',
        extra: booking,
      );
    } else if (directCheckoutParams != null) {
      context.pushReplacementNamed(
        'checkoutDirect',
        extra: directCheckoutParams,
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
                  'What you can do',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onErrorContainer,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            _buildSuggestionItem(
              theme,
              'Check your payment method and try again',
            ),
            const SizedBox(height: 8),
            _buildSuggestionItem(
              theme,
              'Ensure you have sufficient balance',
            ),
            const SizedBox(height: 8),
            _buildSuggestionItem(
              theme,
              'Try a different payment method',
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.shield_outlined,
                    size: 16,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'No charges have been made to your account.',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
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

  Widget _buildSuggestionItem(ThemeData theme, String text) {
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
