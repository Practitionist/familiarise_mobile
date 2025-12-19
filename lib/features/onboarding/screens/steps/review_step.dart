import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/enums.dart';
import '../../providers/domains_provider.dart';
import '../../providers/onboarding_provider.dart';
import '../../widgets/onboarding_widgets.dart';

/// Step 5: Review all information before submission
class ReviewStep extends ConsumerWidget {
  const ReviewStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final state = ref.watch(onboardingProvider);
    final isConsultee = state.selectedRole == UserRole.consultee;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(
            title: 'Review Your Information',
            subtitle: 'Please verify everything is correct before submitting',
          ),
          // Ready indicator
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: state.isReadyForSubmission
                  ? colorScheme.primaryContainer.withAlpha(50)
                  : colorScheme.errorContainer.withAlpha(50),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: state.isReadyForSubmission
                    ? colorScheme.primary.withAlpha(50)
                    : colorScheme.error.withAlpha(50),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  state.isReadyForSubmission
                      ? Icons.check_circle
                      : Icons.warning_amber_outlined,
                  color: state.isReadyForSubmission
                      ? colorScheme.primary
                      : colorScheme.error,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    state.isReadyForSubmission
                        ? 'All required information is complete!'
                        : 'Some required information is missing. Please go back and complete all fields.',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: state.isReadyForSubmission
                          ? colorScheme.primary
                          : colorScheme.error,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          // Role
          _ReviewSection(
            title: 'Account Type',
            icon: Icons.person_outline,
            onEdit: () => ref.read(onboardingProvider.notifier).goToStep(0),
            children: [
              _ReviewItem(
                label: 'Role',
                value: isConsultee ? 'Consultee (Learner)' : 'Consultant (Expert)',
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Personal Info
          _ReviewSection(
            title: 'Personal Information',
            icon: Icons.badge_outlined,
            onEdit: () => ref.read(onboardingProvider.notifier).goToStep(1),
            children: [
              _ReviewItem(
                label: 'Name',
                value: state.personalInfo?.name ?? 'Not provided',
                isRequired: true,
                isValid: state.personalInfo?.name.isNotEmpty == true,
              ),
              if (state.personalInfo?.phone != null)
                _ReviewItem(
                  label: 'Phone',
                  value: state.personalInfo!.phone!,
                ),
              if (state.personalInfo?.dateOfBirth != null)
                _ReviewItem(
                  label: 'Date of Birth',
                  value: DateFormat('MMMM d, yyyy')
                      .format(state.personalInfo!.dateOfBirth!),
                ),
              if (state.personalInfo?.gender != null)
                _ReviewItem(
                  label: 'Gender',
                  value: _genderLabel(state.personalInfo!.gender!),
                ),
              if (state.personalInfo?.city != null ||
                  state.personalInfo?.country != null)
                _ReviewItem(
                  label: 'Location',
                  value: [state.personalInfo?.city, state.personalInfo?.country]
                      .where((e) => e != null)
                      .join(', '),
                ),
              if (state.personalInfo?.bio != null)
                _ReviewItem(
                  label: 'Bio',
                  value: state.personalInfo!.bio!,
                  maxLines: 3,
                ),
            ],
          ),
          const SizedBox(height: 16),
          // Profile (Role-specific)
          if (isConsultee && state.consulteeProfile != null) ...[
            _ReviewSection(
              title: 'Your Profile',
              icon: Icons.school_outlined,
              onEdit: () => ref.read(onboardingProvider.notifier).goToStep(2),
              children: [
                if (state.consulteeProfile?.occupation != null)
                  _ReviewItem(
                    label: 'Occupation',
                    value: state.consulteeProfile!.occupation!,
                  ),
                if (state.consulteeProfile?.currentCompany != null)
                  _ReviewItem(
                    label: 'Company',
                    value: state.consulteeProfile!.currentCompany!,
                  ),
                if (state.consulteeProfile?.careerStage != null)
                  _ReviewItem(
                    label: 'Career Stage',
                    value: _careerStageLabel(state.consulteeProfile!.careerStage!),
                  ),
                if (state.consulteeProfile!.skillsToDevelop.isNotEmpty)
                  _ReviewItem(
                    label: 'Skills to Develop',
                    value: state.consulteeProfile!.skillsToDevelop.join(', '),
                  ),
              ],
            ),
            const SizedBox(height: 16),
          ],
          if (!isConsultee && state.consultantProfile != null) ...[
            _ConsultantProfileReview(
              state: state,
              onEdit: () => ref.read(onboardingProvider.notifier).goToStep(2),
            ),
            const SizedBox(height: 16),
          ],
          // Preferences (Consultee only)
          if (isConsultee && state.preferences != null) ...[
            _ReviewSection(
              title: 'Preferences',
              icon: Icons.tune_outlined,
              onEdit: () => ref.read(onboardingProvider.notifier).goToStep(3),
              children: [
                if (state.preferences?.budgetPreference != null)
                  _ReviewItem(
                    label: 'Budget',
                    value: _budgetLabel(state.preferences!.budgetPreference!),
                  ),
                _ReviewItem(
                  label: 'Communication',
                  value: _communicationLabel(
                      state.preferences!.preferredCommunicationMethod),
                ),
                if (state.preferences?.preferredLanguage != null)
                  _ReviewItem(
                    label: 'Language',
                    value: state.preferences!.preferredLanguage!,
                  ),
              ],
            ),
            const SizedBox(height: 16),
          ],
          // Agreement
          _ReviewSection(
            title: 'Agreement',
            icon: Icons.gavel_outlined,
            onEdit: () => ref.read(onboardingProvider.notifier).goToStep(4),
            children: [
              _ReviewItem(
                label: 'Terms of Service',
                value: state.agreement?.termsAccepted == true
                    ? 'Accepted'
                    : 'Not accepted',
                isRequired: true,
                isValid: state.agreement?.termsAccepted == true,
              ),
              _ReviewItem(
                label: 'Privacy Policy',
                value: state.agreement?.privacyAccepted == true
                    ? 'Accepted'
                    : 'Not accepted',
                isRequired: true,
                isValid: state.agreement?.privacyAccepted == true,
              ),
            ],
          ),
          const SizedBox(height: 80), // Space for navigation buttons
        ],
      ),
    );
  }

  String _genderLabel(Gender gender) {
    switch (gender) {
      case Gender.male:
        return 'Male';
      case Gender.female:
        return 'Female';
      case Gender.nonBinary:
        return 'Non-binary';
      case Gender.preferNotToSay:
        return 'Prefer not to say';
    }
  }

  String _careerStageLabel(CareerStage stage) {
    switch (stage) {
      case CareerStage.student:
        return 'Student';
      case CareerStage.earlyCareer:
        return 'Early Career';
      case CareerStage.midCareer:
        return 'Mid Career';
      case CareerStage.senior:
        return 'Senior';
      case CareerStage.executive:
        return 'Executive';
    }
  }

  String _budgetLabel(BudgetPreference budget) {
    switch (budget) {
      case BudgetPreference.budget:
        return 'Budget-Friendly';
      case BudgetPreference.moderate:
        return 'Mid-Range';
      case BudgetPreference.premium:
        return 'Premium';
      case BudgetPreference.flexible:
        return 'Flexible';
    }
  }

  String _communicationLabel(ConsultationMode method) {
    switch (method) {
      case ConsultationMode.video:
        return 'Video Call';
      case ConsultationMode.audio:
        return 'Audio Call';
      case ConsultationMode.inPerson:
        return 'In-Person';
    }
  }
}

class _ConsultantProfileReview extends ConsumerWidget {
  const _ConsultantProfileReview({
    required this.state,
    required this.onEdit,
  });

  final dynamic state;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final domainsAsync = ref.watch(domainsProvider);
    final profile = state.consultantProfile;

    return _ReviewSection(
      title: 'Professional Profile',
      icon: Icons.work_outline,
      onEdit: onEdit,
      children: [
        _ReviewItem(
          label: 'Headline',
          value: profile?.headline ?? 'Not provided',
          isRequired: true,
          isValid: profile?.headline?.isNotEmpty == true,
        ),
        if (profile?.experience != null)
          _ReviewItem(
            label: 'Experience',
            value: '${profile!.experience!.toStringAsFixed(0)} years',
          ),
        _ReviewItem(
          label: 'Domain',
          value: domainsAsync.when(
            data: (domains) {
              if (profile?.domainId == null) return 'Not selected';
              final domain = domains
                  .where((d) => d.id == profile!.domainId)
                  .firstOrNull;
              return domain?.name ?? 'Unknown';
            },
            loading: () => 'Loading...',
            error: (_, __) => 'Error loading domain',
          ),
          isRequired: true,
          isValid: profile?.domainId != null,
        ),
        if (profile?.languages?.isNotEmpty == true)
          _ReviewItem(
            label: 'Languages',
            value: profile!.languages!.join(', '),
          ),
        if (profile?.toolsAndTechnologies?.isNotEmpty == true)
          _ReviewItem(
            label: 'Tools & Technologies',
            value: profile!.toolsAndTechnologies!.join(', '),
          ),
        if (profile?.mentoringStyle != null)
          _ReviewItem(
            label: 'Mentoring Style',
            value: profile!.mentoringStyle!,
          ),
      ],
    );
  }
}

class _ReviewSection extends StatelessWidget {
  const _ReviewSection({
    required this.title,
    required this.icon,
    required this.children,
    this.onEdit,
  });

  final String title;
  final IconData icon;
  final List<Widget> children;
  final VoidCallback? onEdit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: colorScheme.outline.withAlpha(50)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHighest.withAlpha(50),
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            ),
            child: Row(
              children: [
                Icon(icon, size: 20, color: colorScheme.primary),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                if (onEdit != null)
                  TextButton.icon(
                    onPressed: onEdit,
                    icon: const Icon(Icons.edit_outlined, size: 16),
                    label: const Text('Edit'),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      minimumSize: const Size(0, 32),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}

class _ReviewItem extends StatelessWidget {
  const _ReviewItem({
    required this.label,
    required this.value,
    this.isRequired = false,
    this.isValid = true,
    this.maxLines = 1,
  });

  final String label;
  final String value;
  final bool isRequired;
  final bool isValid;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    label,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
                if (isRequired && !isValid)
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Icon(
                      Icons.error_outline,
                      size: 14,
                      color: colorScheme.error,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              value,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: !isValid && isRequired
                    ? colorScheme.error
                    : colorScheme.onSurface,
              ),
              maxLines: maxLines,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
