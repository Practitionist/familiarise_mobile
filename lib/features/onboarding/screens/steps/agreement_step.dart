import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../providers/onboarding_provider.dart';
import '../../widgets/onboarding_widgets.dart';

/// Step 4: Terms and Privacy Agreement screen
class AgreementStep extends ConsumerStatefulWidget {
  const AgreementStep({super.key});

  @override
  ConsumerState<AgreementStep> createState() => _AgreementStepState();
}

class _AgreementStepState extends ConsumerState<AgreementStep> {
  bool _termsAccepted = false;
  bool _privacyAccepted = false;

  @override
  void initState() {
    super.initState();
    final state = ref.read(onboardingProvider);
    final agreement = state.agreement;

    _termsAccepted = agreement?.termsAccepted ?? false;
    _privacyAccepted = agreement?.privacyAccepted ?? false;
  }

  void _updateAgreement() {
    ref.read(onboardingProvider.notifier).acceptTerms(
          termsAccepted: _termsAccepted,
          privacyAccepted: _privacyAccepted,
        );
  }

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(
            title: 'Terms & Privacy',
            subtitle: 'Please review and accept our terms to continue',
          ),
          const SizedBox(height: 16),
          // Terms summary card
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHighest.withAlpha(50),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.gavel_outlined,
                      color: colorScheme.primary,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Terms of Service',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  'By using Familiarise, you agree to:',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 8),
                _BulletPoint(text: 'Use the platform for lawful purposes only'),
                _BulletPoint(
                    text: 'Respect other users and maintain professionalism'),
                _BulletPoint(
                    text: 'Provide accurate information in your profile'),
                _BulletPoint(
                    text: 'Honor scheduled appointments and commitments'),
                const SizedBox(height: 12),
                TextButton.icon(
                  onPressed: () => _openUrl('https://familiarise.io/terms'),
                  icon: const Icon(Icons.open_in_new, size: 18),
                  label: const Text('Read full Terms of Service'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Privacy summary card
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHighest.withAlpha(50),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.security_outlined,
                      color: colorScheme.primary,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Privacy Policy',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  'We are committed to protecting your privacy:',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 8),
                _BulletPoint(text: 'Your data is encrypted and secure'),
                _BulletPoint(text: 'We never sell your personal information'),
                _BulletPoint(
                    text: 'You control your profile visibility settings'),
                _BulletPoint(text: 'You can request data deletion at any time'),
                const SizedBox(height: 12),
                TextButton.icon(
                  onPressed: () => _openUrl('https://familiarise.io/privacy'),
                  icon: const Icon(Icons.open_in_new, size: 18),
                  label: const Text('Read full Privacy Policy'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          // Agreement checkboxes
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: colorScheme.outline),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                CheckboxListTile(
                  value: _termsAccepted,
                  onChanged: (value) {
                    setState(() => _termsAccepted = value ?? false);
                    _updateAgreement();
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                  title: RichText(
                    text: TextSpan(
                      style: theme.textTheme.bodyMedium,
                      children: [
                        const TextSpan(text: 'I agree to the '),
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap =
                                () => _openUrl('https://familiarise.io/terms'),
                        ),
                        const TextSpan(text: ' *'),
                      ],
                    ),
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
                const Divider(),
                CheckboxListTile(
                  value: _privacyAccepted,
                  onChanged: (value) {
                    setState(() => _privacyAccepted = value ?? false);
                    _updateAgreement();
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                  title: RichText(
                    text: TextSpan(
                      style: theme.textTheme.bodyMedium,
                      children: [
                        const TextSpan(text: 'I agree to the '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () =>
                                _openUrl('https://familiarise.io/privacy'),
                        ),
                        const TextSpan(text: ' *'),
                      ],
                    ),
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          if (!_termsAccepted || !_privacyAccepted)
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: colorScheme.errorContainer.withAlpha(50),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    size: 20,
                    color: colorScheme.error,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'You must accept both agreements to continue',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.error,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 80), // Space for navigation buttons
        ],
      ),
    );
  }
}

class _BulletPoint extends StatelessWidget {
  const _BulletPoint({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: TextStyle(color: theme.colorScheme.primary),
          ),
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
