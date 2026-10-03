import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import '../../../domain/entities/referral/referral_entities.dart';
import '../providers/referral_provider.dart';

/// Streamlined Referral Share Card screen.
///
/// Displays a prominent referral code, 1-tap Copy & Share buttons, and an
/// earned credit summary.
class ReferralDashboardScreen extends ConsumerWidget {
  const ReferralDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final codeAsync = ref.watch(myReferralCodeProvider);
    final creditsAsync = ref.watch(availableCreditsProvider);
    final createState = ref.watch(createReferralCodeProvider);
    final isCreating = createState is AsyncLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Referrals & Rewards'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(myReferralCodeProvider);
          ref.invalidate(availableCreditsProvider);
        },
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            codeAsync.when(
              data: (referralInfo) => _ReferralShareHeroCard(
                referralInfo: referralInfo,
                credits: creditsAsync.valueOrNull,
                isCreating: isCreating,
                onGenerateCode: () async {
                  await ref.read(createReferralCodeProvider.notifier).create();
                },
              ),
              loading: () => const Padding(
                padding: EdgeInsets.symmetric(vertical: 48),
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (error, _) => Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.errorContainer,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        'Unable to load referral details: $error',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onErrorContainer,
                        ),
                      ),
                      const SizedBox(height: 12),
                      FilledButton.tonal(
                        onPressed: () {
                          ref.invalidate(myReferralCodeProvider);
                          ref.invalidate(availableCreditsProvider);
                        },
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

class _ReferralShareHeroCard extends StatelessWidget {
  const _ReferralShareHeroCard({
    required this.referralInfo,
    required this.credits,
    required this.isCreating,
    required this.onGenerateCode,
  });

  final ReferralCodeInfo? referralInfo;
  final ReferralCreditsAvailable? credits;
  final bool isCreating;
  final VoidCallback onGenerateCode;

  void _copyCode(BuildContext context, String code) {
    Clipboard.setData(ClipboardData(text: code));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Referral code copied to clipboard!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _shareCode(String code) {
    SharePlus.instance.share(
      ShareParams(
        text: 'Join Familiarise using my referral code $code to get started: '
            'https://familiarise.io/?ref=$code',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final code = referralInfo?.customCode ?? referralInfo?.code;
    final availablePaise = credits?.totalAvailable ?? 0;
    final earnedPaise = referralInfo?.totalEarned ?? 0;
    final currencySymbol = (credits?.currency ?? 'INR') == 'INR' ? '\u20B9' : '\$';

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
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.card_giftcard_outlined,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Invite & Earn Credits',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Share your code with friends and colleagues',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            if (code != null) ...[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 18,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: theme.colorScheme.primary.withValues(alpha: 0.35),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'YOUR REFERRAL CODE',
                      style: theme.textTheme.labelSmall?.copyWith(
                        letterSpacing: 1.2,
                        color: theme.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    SelectableText(
                      code,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () => _copyCode(context, code),
                      icon: const Icon(Icons.copy, size: 18),
                      label: const Text('Copy Code'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: () => _shareCode(code),
                      icon: const Icon(Icons.share, size: 18),
                      label: const Text('Share'),
                    ),
                  ),
                ],
              ),
            ] else ...[
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: isCreating ? null : onGenerateCode,
                  icon: isCreating
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.auto_awesome_outlined, size: 18),
                  label: const Text('Generate Referral Code'),
                ),
              ),
            ],
            const Divider(height: 28),
            Text(
              'Earned Credit Summary',
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _ReferralMetricTile(
                    label: 'Available Credits',
                    value:
                        '$currencySymbol${(availablePaise / 100).toStringAsFixed(0)}',
                    valueColor: Colors.green.shade700,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _ReferralMetricTile(
                    label: 'Total Earned',
                    value:
                        '$currencySymbol${(earnedPaise / 100).toStringAsFixed(0)}',
                    valueColor: theme.colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _ReferralMetricTile(
                    label: 'Referrals',
                    value:
                        '${referralInfo?.successfulReferrals ?? 0}/${referralInfo?.totalReferrals ?? 0}',
                    valueColor: theme.colorScheme.onSurface,
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

class _ReferralMetricTile extends StatelessWidget {
  const _ReferralMetricTile({
    required this.label,
    required this.value,
    required this.valueColor,
  });

  final String label;
  final String value;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            value,
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
