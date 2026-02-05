import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app/theme/app_theme.dart';

/// Social sign-in provider types
enum SocialProvider { google, github, apple }

/// A styled button for social sign-in
class SocialSignInButton extends StatelessWidget {
  const SocialSignInButton({
    super.key,
    required this.provider,
    required this.onPressed,
    this.isLoading = false,
    this.label,
  });

  final SocialProvider provider;
  final VoidCallback? onPressed;
  final bool isLoading;
  final String? label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Use white background with dark text for consistent visibility
    // in both light and dark modes
    const buttonBackground = Colors.white;
    const textColor = Colors.black87;

    return OutlinedButton(
      onPressed: isLoading ? null : onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: buttonBackground,
        side: BorderSide(color: theme.colorScheme.outline),
        minimumSize: const Size.fromHeight(48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg),
        ),
      ),
      child: isLoading
          ? const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(textColor),
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIcon(context),
                const SizedBox(width: 12),
                Text(
                  label ?? _getDefaultLabel(),
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    // Icons should always be dark since button background is always white
    switch (provider) {
      case SocialProvider.google:
        return SvgPicture.asset(
          'assets/icons/google.svg',
          width: 20,
          height: 20,
        );
      case SocialProvider.github:
        return SvgPicture.asset(
          'assets/icons/github.svg',
          width: 20,
          height: 20,
          // GitHub icon should be dark on white background
          colorFilter: const ColorFilter.mode(Colors.black87, BlendMode.srcIn),
        );
      case SocialProvider.apple:
        return const Icon(
          Icons.apple,
          size: 24,
          color: Colors.black,
        );
    }
  }

  String _getDefaultLabel() {
    switch (provider) {
      case SocialProvider.google:
        return 'Continue with Google';
      case SocialProvider.github:
        return 'Continue with GitHub';
      case SocialProvider.apple:
        return 'Continue with Apple';
    }
  }
}

/// A row of social sign-in buttons with divider
class SocialSignInSection extends StatelessWidget {
  const SocialSignInSection({
    super.key,
    required this.providers,
    required this.onProviderPressed,
    this.loadingProvider,
    this.dividerText = 'Or continue with',
  });

  final List<SocialProvider> providers;
  final void Function(SocialProvider) onProviderPressed;
  final SocialProvider? loadingProvider;
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Expanded(child: Divider()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
              child: Text(
                dividerText,
                style: theme.textTheme.bodySmall,
              ),
            ),
            const Expanded(child: Divider()),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        ...providers.map((provider) {
          return Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.sm),
            child: SocialSignInButton(
              provider: provider,
              onPressed: loadingProvider == null
                  ? () => onProviderPressed(provider)
                  : null,
              isLoading: loadingProvider == provider,
            ),
          );
        }),
      ],
    );
  }
}
