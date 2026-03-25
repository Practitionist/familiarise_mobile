import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/payout/payout_entities.dart';
import '../providers/payout_provider.dart';

class PayoutAccountsScreen extends ConsumerWidget {
  const PayoutAccountsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accountsAsync = ref.watch(payoutAccountsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Payout Accounts')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/payout-accounts/add'),
        child: const Icon(Icons.add),
      ),
      body: accountsAsync.when(
        data: (accounts) {
          if (accounts.isEmpty) {
            return const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.account_balance, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('No payout accounts yet'),
                  SizedBox(height: 8),
                  Text('Add a bank account or UPI to receive payouts'),
                ],
              ),
            );
          }
          return RefreshIndicator(
            onRefresh: () =>
                ref.read(payoutAccountsProvider.notifier).refresh(),
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: accounts.length,
              itemBuilder: (context, index) => _AccountCard(
                account: accounts[index],
                onSetDefault: () => _setDefault(
                  ref, context, accounts[index].id,
                ),
                onDelete: () => _delete(
                  ref, context, accounts[index].id,
                ),
              ),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Error: $e'),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () =>
                    ref.read(payoutAccountsProvider.notifier).refresh(),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _setDefault(
    WidgetRef ref, BuildContext context, String id,
  ) async {
    try {
      await ref.read(payoutAccountsProvider.notifier).setDefault(id);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Default account updated')),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to update. Please try again.'),
          ),
        );
      }
    }
  }

  Future<void> _delete(
    WidgetRef ref, BuildContext context, String id,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Delete Account'),
        content: const Text('Are you sure?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: FilledButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
    if (confirmed != true) return;

    try {
      await ref.read(payoutAccountsProvider.notifier).delete(id);
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to delete. Please try again.'),
          ),
        );
      }
    }
  }
}

class _AccountCard extends StatelessWidget {
  const _AccountCard({
    required this.account,
    this.onSetDefault,
    this.onDelete,
  });

  final PayoutAccount account;
  final VoidCallback? onSetDefault;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
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
                ),
                const SizedBox(width: 8),
                Text(
                  account.accountType == 'UPI'
                      ? 'UPI'
                      : account.bankName ?? 'Bank Account',
                  style: theme.textTheme.titleMedium,
                ),
                const Spacer(),
                if (account.isDefault)
                  Chip(
                    label: const Text('Default',
                        style: TextStyle(fontSize: 11)),
                    backgroundColor:
                        Colors.green.withValues(alpha: 0.1),
                    side: BorderSide.none,
                    visualDensity: VisualDensity.compact,
                    padding: EdgeInsets.zero,
                  ),
              ],
            ),
            const SizedBox(height: 8),
            if (account.accountHolderName != null)
              Text(account.accountHolderName!),
            if (account.accountNumberLast4 != null)
              Text('****${account.accountNumberLast4}'),
            if (account.upiId != null)
              Text(account.upiId!),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (!account.isDefault)
                  TextButton(
                    onPressed: onSetDefault,
                    child: const Text('Set Default'),
                  ),
                IconButton(
                  icon: const Icon(Icons.delete_outline, size: 20),
                  onPressed: onDelete,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
