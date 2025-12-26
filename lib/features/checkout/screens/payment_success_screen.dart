import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/checkout/checkout_entities.dart';

/// Payment success screen shown after successful payment
class PaymentSuccessScreen extends StatelessWidget {
  final PaymentVerification? verification;

  const PaymentSuccessScreen({
    super.key,
    this.verification,
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
              // Success animation/icon
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_circle,
                  size: 64,
                  color: Colors.green.shade600,
                ),
              ),
              const SizedBox(height: 24),

              // Title
              Text(
                'Payment Successful!',
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),

              // Description
              Text(
                'Your booking has been confirmed. You will receive a confirmation email shortly.',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),

              // Booking details card
              if (verification != null) _buildDetailsCard(theme),
              const SizedBox(height: 32),

              // Actions
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: () => context.goNamed('myBookings'),
                  icon: const Icon(Icons.calendar_today),
                  label: const Text('View My Bookings'),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () => context.goNamed('explore'),
                  icon: const Icon(Icons.explore),
                  label: const Text('Continue Exploring'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailsCard(ThemeData theme) {
    return Card(
      color: Colors.green.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.receipt_long,
                  color: Colors.green.shade700,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  'Booking Details',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.green.shade800,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Consultant
            if (verification!.consultantName != null) ...[
              _buildDetailRow(
                theme,
                'Consultant',
                verification!.consultantName!,
              ),
              const SizedBox(height: 8),
            ],

            // Plan
            if (verification!.planTitle != null) ...[
              _buildDetailRow(
                theme,
                'Plan',
                verification!.planTitle!,
              ),
              const SizedBox(height: 8),
            ],

            // Status
            _buildDetailRow(
              theme,
              'Status',
              verification!.status.value.toUpperCase(),
              valueColor: Colors.green.shade700,
            ),

            // Transaction ID
            if (verification!.transactionId != null) ...[
              const SizedBox(height: 8),
              _buildDetailRow(
                theme,
                'Transaction ID',
                verification!.transactionId!,
                isSmall: true,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(
    ThemeData theme,
    String label,
    String value, {
    Color? valueColor,
    bool isSmall = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: Colors.green.shade600,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: isSmall
                ? theme.textTheme.bodySmall?.copyWith(
                    color: valueColor ?? Colors.green.shade800,
                  )
                : theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: valueColor ?? Colors.green.shade800,
                  ),
          ),
        ),
      ],
    );
  }
}
