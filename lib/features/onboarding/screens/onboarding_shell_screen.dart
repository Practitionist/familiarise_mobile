import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/enums.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/onboarding_provider.dart';
import '../widgets/onboarding_widgets.dart';
import 'steps/steps.dart';

/// Main onboarding shell that manages step navigation
class OnboardingShellScreen extends ConsumerWidget {
  const OnboardingShellScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingProvider);
    final notifier = ref.read(onboardingProvider.notifier);

    // Show loading indicator while draft is being loaded
    if (state.isLoadingDraft) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Complete Your Profile'),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Complete Your Profile'),
        leading: state.currentStep > 0
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => notifier.previousStep(),
              )
            : null,
        actions: [
          // Save & exit button
          TextButton(
            onPressed: () {
              notifier.saveDraft();
              _showExitDialog(context, ref);
            },
            child: const Text('Save & Exit'),
          ),
        ],
      ),
      body: Column(
        children: [
          // Progress indicator
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: OnboardingProgressIndicator(
              currentStep: state.currentStep,
              totalSteps: state.totalSteps,
              stepTitles: _getStepTitles(state.selectedRole),
            ),
          ),
          // Step content
          Expanded(
            child: _buildStepContent(state.currentStep, state.selectedRole),
          ),
          // Error message
          if (state.error != null)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              color: Theme.of(context).colorScheme.errorContainer,
              child: Row(
                children: [
                  Icon(
                    Icons.error_outline,
                    color: Theme.of(context).colorScheme.error,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      state.error!,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onErrorContainer,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, size: 20),
                    onPressed: () => notifier.clearError(),
                  ),
                ],
              ),
            ),
          // Navigation buttons
          OnboardingStepNavigation(
            onBack:
                state.currentStep > 0 ? () => notifier.previousStep() : null,
            onNext: () => _handleNext(context, ref),
            canProceed: state.canProceed,
            isLoading: state.isSubmitting,
            showBack: state.currentStep > 0,
            nextLabel: _getNextLabel(state.currentStep, state.totalSteps),
          ),
        ],
      ),
    );
  }

  List<String> _getStepTitles(UserRole role) {
    if (role == UserRole.consultee) {
      return [
        'Role',
        'Personal Info',
        'Your Profile',
        'Preferences',
        'Agreement',
        'Review',
      ];
    } else {
      return [
        'Role',
        'Personal Info',
        'Professional',
        'Background',
        'Availability',
        'Agreement',
        'Review',
      ];
    }
  }

  Widget _buildStepContent(int step, UserRole role) {
    // Consultee: 0=Role, 1=Personal, 2=Profile, 3=Preferences, 4=Agreement, 5=Review
    // Consultant: 0=Role, 1=Personal, 2=Profile, 3=Background, 4=Availability, 5=Agreement, 6=Review
    if (role == UserRole.consultee) {
      return switch (step) {
        0 => const RoleSelectionStep(),
        1 => const PersonalInfoStep(),
        2 => const ConsulteeProfileStep(),
        3 => const PreferencesStep(),
        4 => const AgreementStep(),
        5 => const ReviewStep(),
        _ => const SizedBox.shrink(),
      };
    } else {
      return switch (step) {
        0 => const RoleSelectionStep(),
        1 => const PersonalInfoStep(),
        2 => const ConsultantProfileStep(),
        3 => const ProfessionalBackgroundStep(),
        4 => const AvailabilityInfoStep(),
        5 => const AgreementStep(),
        6 => const ReviewStep(),
        _ => const SizedBox.shrink(),
      };
    }
  }

  String _getNextLabel(int currentStep, int totalSteps) {
    if (currentStep == totalSteps - 1) {
      return 'Submit';
    }
    return 'Continue';
  }

  Future<void> _handleNext(BuildContext context, WidgetRef ref) async {
    final state = ref.read(onboardingProvider);
    final notifier = ref.read(onboardingProvider.notifier);

    // If on last step, submit
    if (state.currentStep == state.totalSteps - 1) {
      final user = await notifier.submit();
      if (user != null && context.mounted) {
        // Update auth state with the user from submit (has onboardingCompleted=true)
        ref.read(authProvider.notifier).updateUser(user);
        if (context.mounted) {
          context.go('/dashboard');
        }
      }
    } else {
      // Go to next step
      notifier.nextStep();
    }
  }

  Future<void> _showExitDialog(BuildContext context, WidgetRef ref) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Save & Exit'),
        content: const Text(
          'Your progress has been saved. You can continue later from where you left off.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Continue'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Exit'),
          ),
        ],
      ),
    );

    if (result == true && context.mounted) {
      // Sign out user and navigate to sign-in page
      await ref.read(authProvider.notifier).signOut();
      if (context.mounted) {
        context.go('/auth/sign-in');
      }
    }
  }
}
