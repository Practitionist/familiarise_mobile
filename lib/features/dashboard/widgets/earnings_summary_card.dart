import 'package:flutter/material.dart';

import '../../../core/utils/formatters.dart';
import '../../../domain/entities/dashboard/earnings_summary.dart';

/// Card showing earnings breakdown (consultant)
class EarningsSummaryCard extends StatelessWidget {
  const EarningsSummaryCard({
    required this.earnings,
    super.key,
  });

  final EarningsSummary earnings;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.account_balance_wallet_outlined,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  'Earnings',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _EarningsRow(
              label: 'Total Earnings',
              amount: Formatters.currency(
                Formatters.fromMinorUnits(earnings.totalEarnings),
                earnings.currency,
              ),
              color: theme.colorScheme.onSurface,
            ),
            const SizedBox(height: 8),
            _EarningsRow(
              label: 'Paid',
              amount: Formatters.currency(
                Formatters.fromMinorUnits(earnings.paidEarnings),
                earnings.currency,
              ),
              color: Colors.green,
            ),
            const SizedBox(height: 8),
            _EarningsRow(
              label: 'Pending',
              amount: Formatters.currency(
                Formatters.fromMinorUnits(earnings.pendingEarnings),
                earnings.currency,
              ),
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}

class _EarningsRow extends StatelessWidget {
  const _EarningsRow({
    required this.label,
    required this.amount,
    required this.color,
  });

  final String label;
  final String amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        Text(
          amount,
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }
}
