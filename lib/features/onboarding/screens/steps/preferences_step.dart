import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/enums.dart';
import '../../../../domain/entities/onboarding/preferences_data.dart';
import '../../providers/onboarding_provider.dart';
import '../../widgets/onboarding_widgets.dart';

/// Step 3 (Consultee): Preferences screen
class PreferencesStep extends ConsumerStatefulWidget {
  const PreferencesStep({super.key});

  @override
  ConsumerState<PreferencesStep> createState() => _PreferencesStepState();
}

class _PreferencesStepState extends ConsumerState<PreferencesStep> {
  BudgetPreference? _selectedBudget;
  CommunicationMethod _selectedCommunication = CommunicationMethod.video;
  String? _selectedLanguage;

  static const List<String> _languageOptions = [
    'English',
    'Spanish',
    'French',
    'German',
    'Mandarin',
    'Hindi',
    'Portuguese',
    'Japanese',
    'Korean',
    'Arabic',
  ];

  @override
  void initState() {
    super.initState();
    final state = ref.read(onboardingProvider);
    final prefs = state.preferences;

    _selectedBudget = prefs?.budgetPreference;
    _selectedCommunication =
        prefs?.preferredCommunicationMethod ?? CommunicationMethod.video;
    _selectedLanguage = prefs?.preferredLanguage;
  }

  void _updatePreferences() {
    final prefs = PreferencesData(
      budgetPreference: _selectedBudget,
      preferredCommunicationMethod: _selectedCommunication,
      preferredLanguage: _selectedLanguage,
    );

    ref.read(onboardingProvider.notifier).updatePreferences(prefs);
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
            title: 'Your Preferences',
            subtitle:
                'Help us match you with the right consultants based on your preferences',
          ),
          // Budget Preference
          const SubSectionHeader(title: 'Budget Preference'),
          const SizedBox(height: 8),
          ...BudgetPreference.values.map((budget) {
            final isSelected = _selectedBudget == budget;
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: InkWell(
                onTap: () {
                  setState(() => _selectedBudget = budget);
                  _updatePreferences();
                },
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isSelected
                          ? colorScheme.primary
                          : colorScheme.outline,
                      width: isSelected ? 2 : 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color: isSelected
                        ? colorScheme.primaryContainer.withAlpha(30)
                        : null,
                  ),
                  child: Row(
                    children: [
                      Radio<BudgetPreference>(
                        value: budget,
                        groupValue: _selectedBudget,
                        onChanged: (value) {
                          setState(() => _selectedBudget = value);
                          _updatePreferences();
                        },
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _budgetLabel(budget),
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              _budgetDescription(budget),
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
          const SizedBox(height: 24),
          // Communication Preference
          const SubSectionHeader(title: 'Preferred Communication Method'),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: CommunicationMethod.values.map((method) {
              final isSelected = _selectedCommunication == method;
              return ChoiceChip(
                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      _communicationIcon(method),
                      size: 18,
                    ),
                    const SizedBox(width: 8),
                    Text(_communicationLabel(method)),
                  ],
                ),
                selected: isSelected,
                onSelected: (selected) {
                  if (selected) {
                    setState(() => _selectedCommunication = method);
                    _updatePreferences();
                  }
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 24),
          // Preferred Language
          FormDropdown<String>(
            value: _selectedLanguage,
            label: 'Preferred Language',
            hint: 'Select your preferred language',
            items: _languageOptions.map((lang) {
              return DropdownMenuItem(
                value: lang,
                child: Text(lang),
              );
            }).toList(),
            onChanged: (value) {
              setState(() => _selectedLanguage = value);
              _updatePreferences();
            },
          ),
          const SizedBox(height: 32),
          // Info card
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: colorScheme.secondaryContainer.withAlpha(50),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.lightbulb_outline,
                  color: colorScheme.secondary,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'These preferences help us personalize your experience. You can always update them later in settings.',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSecondaryContainer,
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

  String _budgetDescription(BudgetPreference budget) {
    switch (budget) {
      case BudgetPreference.budget:
        return 'Looking for affordable options under \$50/session';
      case BudgetPreference.moderate:
        return 'Comfortable with \$50-150/session';
      case BudgetPreference.premium:
        return 'Open to premium consultants at \$150+/session';
      case BudgetPreference.flexible:
        return 'Budget depends on the consultant\'s expertise';
    }
  }

  IconData _communicationIcon(CommunicationMethod method) {
    switch (method) {
      case CommunicationMethod.video:
        return Icons.videocam_outlined;
      case CommunicationMethod.audio:
        return Icons.phone_outlined;
      case CommunicationMethod.chat:
        return Icons.chat_outlined;
    }
  }

  String _communicationLabel(CommunicationMethod method) {
    switch (method) {
      case CommunicationMethod.video:
        return 'Video Call';
      case CommunicationMethod.audio:
        return 'Audio Call';
      case CommunicationMethod.chat:
        return 'Chat';
    }
  }
}
