import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/formatters.dart';
import '../providers/checkout_flow_provider.dart';

/// Widget displaying price breakdown with discount
class PriceSummaryCard extends ConsumerWidget {
  final double originalPrice;
  final String currency;
  final String? discountCode;

  const PriceSummaryCard({
    super.key,
    required this.originalPrice,
    required this.currency,
    this.discountCode,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currencySymbol = Formatters.currencySymbol(currency);
    final theme = Theme.of(context);
    final discountState = ref.watch(discountCodeValidatorProvider);

    // Calculate discount amount
    double discountAmount = 0;
    if (discountCode != null &&
        discountState.hasValue &&
        discountState.value != null) {
      final discount = discountState.value!;
      discountAmount = discount.calculateDiscount(originalPrice);
    }

    final finalPrice = originalPrice - discountAmount;

    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price Summary',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),

            // Subtotal
            _buildPriceRow(
              theme,
              'Subtotal',
              '$currencySymbol${originalPrice.toStringAsFixed(2)}',
            ),

            // Discount (if any)
            if (discountAmount > 0) ...[
              const SizedBox(height: 8),
              _buildPriceRow(
                theme,
                'Discount',
                '-$currencySymbol${discountAmount.toStringAsFixed(2)}',
                valueColor: Colors.green.shade700,
                icon: Icons.local_offer,
              ),
            ],

            // Divider
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Divider(
                color: theme.colorScheme.outline.withValues(alpha: 0.3),
              ),
            ),

            // Total
            _buildPriceRow(
              theme,
              'Total',
              '$currencySymbol${finalPrice.toStringAsFixed(2)}',
              isBold: true,
              isLarge: true,
            ),

            // Savings message
            if (discountAmount > 0) ...[
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.celebration,
                      size: 16,
                      color: Colors.green.shade700,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'You save $currencySymbol${discountAmount.toStringAsFixed(2)}!',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: Colors.green.shade700,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildPriceRow(
    ThemeData theme,
    String label,
    String value, {
    bool isBold = false,
    bool isLarge = false,
    Color? valueColor,
    IconData? icon,
  }) {
    final labelStyle = isLarge
        ? theme.textTheme.titleMedium?.copyWith(
            fontWeight: isBold ? FontWeight.w600 : FontWeight.normal,
          )
        : theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          );

    final valueStyle = isLarge
        ? theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
            color: valueColor ?? theme.colorScheme.primary,
          )
        : theme.textTheme.bodyMedium?.copyWith(
            fontWeight: isBold ? FontWeight.w600 : FontWeight.normal,
            color: valueColor,
          );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                size: 16,
                color: valueColor ?? theme.colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: 4),
            ],
            Text(label, style: labelStyle),
          ],
        ),
        Text(value, style: valueStyle),
      ],
    );
  }
}

/// Widget displaying compact price info for checkout button
class CheckoutPriceInfo extends ConsumerWidget {
  final double originalPrice;
  final String currency;

  const CheckoutPriceInfo({
    super.key,
    required this.originalPrice,
    required this.currency,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currencySymbol = Formatters.currencySymbol(currency);
    final theme = Theme.of(context);
    final discountState = ref.watch(discountCodeValidatorProvider);

    double discountAmount = 0;
    if (discountState.hasValue && discountState.value != null) {
      discountAmount = discountState.value!.calculateDiscount(originalPrice);
    }

    final finalPrice = originalPrice - discountAmount;
    final hasDiscount = discountAmount > 0;

    // Show price inline with button text
    return Text(
      '$currencySymbol${finalPrice.toStringAsFixed(0)}',
      style: theme.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w700,
        color: theme.colorScheme.onPrimary,
      ),
    );
  }
}
