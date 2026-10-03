import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/utils/formatters.dart';
import '../../../core/utils/web_dashboard_launcher.dart';
import '../../../domain/entities/dashboard/earnings_summary.dart';
import '../../../domain/entities/payout/payout_entities.dart';
import '../../dashboard/providers/consultant_dashboard_provider.dart';
import '../providers/payout_provider.dart';

/// Read-only Consultant Earnings & Payouts Wallet Summary (Companion UX).
///
/// Displays total earned, pending hold, paid out balance, linked payout
/// account history, and a single "Manage Bank, PAN & GST Settings on Web"
/// button opening `https://familiarise.io/dashboard`.
class PayoutScreen extends ConsumerWidget {
  const PayoutScreen({super.key});

  Future<void> _openWebPayoutSettings(BuildContext context) =>
      launchFamiliariseWebDashboard(context);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardAsync = ref.watch(consultantDashboardProvider);
    final accountsAsync = ref.watch(payoutAccountsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Earnings & Payouts'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(consultantDashboardProvider);
          await ref.read(payoutAccountsProvider.notifier).refresh();
        },
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            dashboardAsync.when(
              data: (dashboard) => _WalletSummaryHeroCard(
                earnings: dashboard.earnings,
              ),
              loading: () => const Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (e, _) => Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.errorContainer,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: Theme.of(context).colorScheme.onErrorContainer,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Unable to load earnings summary: $e',
                          style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.onErrorContainer,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () =>
                            ref.invalidate(consultantDashboardProvider),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () => _openWebPayoutSettings(context),
                icon: const Icon(Icons.open_in_new, size: 18),
                label: const Text('Manage Bank, PAN & GST Settings on Web'),
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Payout Accounts & Recent History',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 12),
            accountsAsync.when(
              data: (accounts) {
                if (accounts.isEmpty) {
                  return Card(
                    elevation: 0,
                    color:
                        Theme.of(context).colorScheme.surfaceContainerHighest,
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          Icon(
                            Icons.account_balance_outlined,
                            size: 48,
                            color: Theme.of(context)
                                .colorScheme
                                .onSurfaceVariant
                                .withValues(alpha: 0.6),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'No payout account configured yet',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Link your bank account, UPI, PAN, and GST '
                            'details on the Familiarise web dashboard to '
                            'receive automatic settlements.',
                            textAlign: TextAlign.center,
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurfaceVariant,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  );
                }

                return Column(
                  children: accounts
                      .map((account) => _ReadOnlyAccountCard(account: account))
                      .toList(),
                );
              },
              loading: () => const Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (e, _) => Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.errorContainer,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: Theme.of(context).colorScheme.onErrorContainer,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Unable to load payout accounts: $e',
                          style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.onErrorContainer,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () =>
                            ref.read(payoutAccountsProvider.notifier).refresh(),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WalletSummaryHeroCard extends StatelessWidget {
  const _WalletSummaryHeroCard({required this.earnings});

  final EarningsSummary earnings;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final totalFormatted = Formatters.currency(
      Formatters.fromMinorUnits(earnings.totalEarnings),
      earnings.currency,
    );
    final pendingFormatted = Formatters.currency(
      Formatters.fromMinorUnits(earnings.pendingEarnings),
      earnings.currency,
    );
    final paidFormatted = Formatters.currency(
      Formatters.fromMinorUnits(earnings.paidEarnings),
      earnings.currency,
    );

    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerHighest,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
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
                  'Consultant Wallet Summary',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Total Earned',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              totalFormatted,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
            ),
            const Divider(height: 28),
            Row(
              children: [
                Expanded(
                  child: _BalanceMetricTile(
                    label: 'Pending Hold',
                    amount: pendingFormatted,
                    icon: Icons.schedule_outlined,
                    valueColor: Colors.orange.shade700,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _BalanceMetricTile(
                    label: 'Paid Out Balance',
                    amount: paidFormatted,
                    icon: Icons.check_circle_outline,
                    valueColor: Colors.green.shade700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _BalanceMetricTile extends StatelessWidget {
  const _BalanceMetricTile({
    required this.label,
    required this.amount,
    required this.icon,
    required this.valueColor,
  });

  final String label;
  final String amount;
  final IconData icon;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 15, color: valueColor),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  label,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            amount,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _ReadOnlyAccountCard extends StatelessWidget {
  const _ReadOnlyAccountCard({required this.account});

  final PayoutAccount account;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final updatedStr = DateFormat('MMM d, y').format(account.updatedAt);

    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerHighest,
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  account.accountType == 'UPI'
                      ? Icons.phone_android
                      : Icons.account_balance,
                  size: 20,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    account.accountType == 'UPI'
                        ? 'UPI Account'
                        : account.bankName ?? 'Bank Account',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                if (account.isDefault)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'Primary',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      ),
                    ),
                  ),
                const SizedBox(width: 6),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: (account.isVerified ? Colors.blue : Colors.orange)
                        .withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    account.isVerified ? 'Verified' : 'Pending KYC',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: account.isVerified ? Colors.blue : Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            if (account.accountHolderName != null)
              Text(
                account.accountHolderName!,
                style: theme.textTheme.bodyMedium,
              ),
            if (account.accountNumberLast4 != null)
              Text(
                'Account ending in •••• ${account.accountNumberLast4}',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            if (account.upiId != null)
              Text(
                account.upiId!,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            const SizedBox(height: 6),
            Text(
              'Provider: ${account.provider} • Updated $updatedStr',
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
