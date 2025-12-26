import 'package:flutter/material.dart';

import '../../../domain/entities/checkout/checkout_entities.dart';

/// Widget for selecting payment method (Razorpay or Stripe)
class PaymentMethodSelector extends StatelessWidget {
  final PaymentGatewayType selectedGateway;
  final String currency;
  final ValueChanged<PaymentGatewayType> onGatewaySelected;

  const PaymentMethodSelector({
    super.key,
    required this.selectedGateway,
    required this.currency,
    required this.onGatewaySelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Show Razorpay only for INR
    final showRazorpay = currency.toUpperCase() == 'INR';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showRazorpay)
          _buildGatewayOption(
            context: context,
            theme: theme,
            gateway: PaymentGatewayType.razorpay,
            title: 'Razorpay',
            subtitle: 'UPI, Cards, Netbanking, Wallets',
            icon: Icons.account_balance,
          ),
        _buildGatewayOption(
          context: context,
          theme: theme,
          gateway: PaymentGatewayType.stripe,
          title: 'Stripe',
          subtitle: 'Credit/Debit Cards',
          icon: Icons.credit_card,
        ),
      ],
    );
  }

  Widget _buildGatewayOption({
    required BuildContext context,
    required ThemeData theme,
    required PaymentGatewayType gateway,
    required String title,
    required String subtitle,
    required IconData icon,
  }) {
    final isSelected = selectedGateway == gateway;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () => onGatewaySelected(gateway),
        borderRadius: BorderRadius.circular(12),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(
              color: isSelected
                  ? theme.colorScheme.primary
                  : theme.colorScheme.outline,
              width: isSelected ? 2 : 1,
            ),
            borderRadius: BorderRadius.circular(12),
            color: isSelected
                ? theme.colorScheme.primaryContainer.withValues(alpha: 0.3)
                : null,
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: isSelected
                      ? theme.colorScheme.primary.withValues(alpha: 0.1)
                      : theme.colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  color: isSelected
                      ? theme.colorScheme.primary
                      : theme.colorScheme.onSurfaceVariant,
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight:
                            isSelected ? FontWeight.w600 : FontWeight.normal,
                        color: isSelected
                            ? theme.colorScheme.onSurface
                            : theme.colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              Radio<PaymentGatewayType>(
                value: gateway,
                groupValue: selectedGateway,
                onChanged: (value) {
                  if (value != null) onGatewaySelected(value);
                },
                activeColor: theme.colorScheme.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
