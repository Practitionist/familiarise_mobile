import 'package:flutter/material.dart';

import '../../../shared/widgets/loading_button.dart';

/// Navigation buttons for onboarding steps (Back/Next)
class OnboardingStepNavigation extends StatelessWidget {
  const OnboardingStepNavigation({
    super.key,
    required this.onBack,
    required this.onNext,
    this.canProceed = true,
    this.isLoading = false,
    this.showBack = true,
    this.nextLabel = 'Continue',
    this.backLabel = 'Back',
  });

  final VoidCallback? onBack;
  final VoidCallback? onNext;
  final bool canProceed;
  final bool isLoading;
  final bool showBack;
  final String nextLabel;
  final String backLabel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            if (showBack)
              Expanded(
                child: OutlinedButton(
                  onPressed: isLoading ? null : onBack,
                  child: Text(backLabel),
                ),
              ),
            if (showBack) const SizedBox(width: 12),
            Expanded(
              flex: showBack ? 2 : 1,
              child: LoadingButton(
                onPressed: canProceed ? onNext : null,
                isLoading: isLoading,
                child: Text(nextLabel),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// A skip button for optional steps
class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
    required this.onSkip,
    this.label = 'Skip for now',
  });

  final VoidCallback onSkip;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onSkip,
      child: Text(label),
    );
  }
}
