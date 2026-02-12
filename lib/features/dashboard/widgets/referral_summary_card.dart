import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

import '../../../domain/entities/referral/referral_entities.dart';

/// Dashboard card showing referral code + credit balance
class ReferralSummaryCard extends StatelessWidget {
  const ReferralSummaryCard({
    this.referralCode,
    this.credits,
    this.onGenerateCode,
    this.isGenerating = false,
    super.key,
  });

  final ReferralCodeInfo? referralCode;
  final ReferralCreditsAvailable? credits;
  final VoidCallback? onGenerateCode;
  final bool isGenerating;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final code = referralCode?.customCode ?? referralCode?.code;
    final creditAmount = credits?.totalAvailable ?? 0;
    final symbol = (credits?.currency ?? 'INR') == 'INR' ? '\u20B9' : '\$';

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
                  Icons.card_giftcard_outlined,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  'Referrals',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            if (code != null) ...[
              // Show code with copy + share
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer
                      .withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Code',
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            code,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: code));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Code copied!'),
                            duration: Duration(seconds: 1),
                          ),
                        );
                      },
                      icon: const Icon(Icons.copy, size: 20),
                      tooltip: 'Copy code',
                    ),
                    IconButton(
                      onPressed: () {
                        SharePlus.instance.share(
                          ShareParams(
                            text: 'Join Familiarise with my referral code: '
                                '$code\nhttps://familiarise.io',
                          ),
                        );
                      },
                      icon: const Icon(Icons.share, size: 20),
                      tooltip: 'Share code',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),

              // Stats row
              Row(
                children: [
                  Text(
                    '${referralCode!.totalReferrals} referrals',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  if (creditAmount > 0) ...[
                    const Spacer(),
                    Text(
                      'Credits: $symbol${(creditAmount / 100).toStringAsFixed(0)}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ],
              ),
            ] else ...[
              // No code yet — show generate button
              Text(
                'Share your referral code and earn credits!',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: FilledButton.tonal(
                  onPressed: isGenerating ? null : onGenerateCode,
                  child: isGenerating
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Text('Generate Referral Code'),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
