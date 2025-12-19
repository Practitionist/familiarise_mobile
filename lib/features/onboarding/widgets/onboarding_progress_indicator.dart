import 'package:flutter/material.dart';

/// A progress indicator that shows the current step in the onboarding flow
class OnboardingProgressIndicator extends StatelessWidget {
  const OnboardingProgressIndicator({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    this.stepTitles,
  });

  final int currentStep;
  final int totalSteps;
  final List<String>? stepTitles;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Step indicator dots
        Row(
          children: List.generate(totalSteps, (index) {
            final isCompleted = index < currentStep;
            final isCurrent = index == currentStep;

            return Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 4,
                      decoration: BoxDecoration(
                        color: isCompleted || isCurrent
                            ? colorScheme.primary
                            : colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  if (index < totalSteps - 1) const SizedBox(width: 4),
                ],
              ),
            );
          }),
        ),
        const SizedBox(height: 12),
        // Step title and count
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (stepTitles != null && currentStep < stepTitles!.length)
              Text(
                stepTitles![currentStep],
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              )
            else
              const SizedBox.shrink(),
            Text(
              'Step ${currentStep + 1} of $totalSteps',
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

/// A circular progress indicator variant
class OnboardingCircularProgress extends StatelessWidget {
  const OnboardingCircularProgress({
    super.key,
    required this.progress,
    this.size = 60,
    this.strokeWidth = 4,
  });

  final double progress;
  final double size;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: progress,
            strokeWidth: strokeWidth,
            backgroundColor: colorScheme.surfaceContainerHighest,
            valueColor: AlwaysStoppedAnimation<Color>(colorScheme.primary),
          ),
          Center(
            child: Text(
              '${(progress * 100).toInt()}%',
              style: theme.textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
