import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/enums.dart';
import '../../providers/onboarding_provider.dart';
import '../../widgets/onboarding_widgets.dart';

/// Step 0: Role selection screen
class RoleSelectionStep extends ConsumerWidget {
  const RoleSelectionStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingProvider);
    final notifier = ref.read(onboardingProvider.notifier);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(
            title: 'Welcome! Let\'s get started',
            subtitle:
                'Tell us how you\'d like to use Familiarise. You can always change this later.',
          ),
          const SizedBox(height: 32),
          RoleSelector(
            selectedRole: state.selectedRole,
            onRoleSelected: (role) {
              notifier.setRole(role);
            },
          ),
          const SizedBox(height: 32),
          _RoleDescription(role: state.selectedRole),
        ],
      ),
    );
  }
}

class _RoleDescription extends StatelessWidget {
  const _RoleDescription({required this.role});

  final UserRole role;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final isConsultee = role == UserRole.consultee;
    final items = isConsultee
        ? [
            'Browse and connect with expert consultants',
            'Book one-on-one sessions or subscribe to mentorship',
            'Chat and video call with your mentors',
            'Track your learning progress',
          ]
        : [
            'Create your professional profile',
            'Set up consultation plans and availability',
            'Connect with mentees seeking your expertise',
            'Grow your consulting practice',
          ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer.withAlpha(30),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: colorScheme.primaryContainer,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.info_outline,
                size: 20,
                color: colorScheme.primary,
              ),
              const SizedBox(width: 8),
              Text(
                isConsultee ? 'As a Consultee' : 'As a Consultant',
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...items.map((item) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 18,
                      color: colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        item,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
