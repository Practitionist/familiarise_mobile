import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/enums.dart';
import '../../../../domain/entities/onboarding/consultee_profile_data.dart';
import '../../../../shared/widgets/app_text_field.dart';
import '../../providers/onboarding_provider.dart';
import '../../widgets/onboarding_widgets.dart';

/// Step 2 (Consultee): Profile setup screen
class ConsulteeProfileStep extends ConsumerStatefulWidget {
  const ConsulteeProfileStep({super.key});

  @override
  ConsumerState<ConsulteeProfileStep> createState() =>
      _ConsulteeProfileStepState();
}

class _ConsulteeProfileStepState extends ConsumerState<ConsulteeProfileStep> {
  late TextEditingController _occupationController;
  late TextEditingController _companyController;
  late TextEditingController _industryController;
  late TextEditingController _aboutMeController;
  late TextEditingController _linkedinController;

  CareerStage? _selectedCareerStage;
  List<String> _selectedSkills = [];

  // Common skills suggestions
  static const List<String> _skillSuggestions = [
    'Leadership',
    'Communication',
    'Problem Solving',
    'Project Management',
    'Strategic Thinking',
    'Data Analysis',
    'Public Speaking',
    'Negotiation',
    'Time Management',
    'Networking',
    'Technical Writing',
    'Team Building',
  ];

  @override
  void initState() {
    super.initState();
    final state = ref.read(onboardingProvider);
    final profile = state.consulteeProfile;

    _occupationController =
        TextEditingController(text: profile?.occupation ?? '');
    _companyController =
        TextEditingController(text: profile?.currentCompany ?? '');
    _industryController = TextEditingController(text: profile?.industry ?? '');
    _aboutMeController = TextEditingController(text: profile?.aboutMe ?? '');
    _linkedinController =
        TextEditingController(text: profile?.linkedinUrl ?? '');
    _selectedCareerStage = profile?.careerStage;
    _selectedSkills = profile?.skillsToDevelop ?? [];
  }

  @override
  void dispose() {
    _occupationController.dispose();
    _companyController.dispose();
    _industryController.dispose();
    _aboutMeController.dispose();
    _linkedinController.dispose();
    super.dispose();
  }

  void _updateProfile() {
    final profile = ConsulteeProfileData(
      occupation: _occupationController.text.trim().isEmpty
          ? null
          : _occupationController.text.trim(),
      currentCompany: _companyController.text.trim().isEmpty
          ? null
          : _companyController.text.trim(),
      industry: _industryController.text.trim().isEmpty
          ? null
          : _industryController.text.trim(),
      aboutMe: _aboutMeController.text.trim().isEmpty
          ? null
          : _aboutMeController.text.trim(),
      linkedinUrl: _linkedinController.text.trim().isEmpty
          ? null
          : _linkedinController.text.trim(),
      careerStage: _selectedCareerStage,
      skillsToDevelop: _selectedSkills,
    );

    ref.read(onboardingProvider.notifier).updateConsulteeProfile(profile);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(
            title: 'Your Profile',
            subtitle:
                'Help consultants understand your background and what you\'re looking to achieve',
          ),
          // Occupation
          AppTextField(
            controller: _occupationController,
            label: 'Current Occupation',
            hint: 'e.g., Software Engineer, Marketing Manager',
            textCapitalization: TextCapitalization.words,
            textInputAction: TextInputAction.next,
            onChanged: (_) => _updateProfile(),
          ),
          const SizedBox(height: 16),
          // Company
          AppTextField(
            controller: _companyController,
            label: 'Company',
            hint: 'Where do you work?',
            textCapitalization: TextCapitalization.words,
            textInputAction: TextInputAction.next,
            onChanged: (_) => _updateProfile(),
          ),
          const SizedBox(height: 16),
          // Industry
          AppTextField(
            controller: _industryController,
            label: 'Industry',
            hint: 'e.g., Technology, Healthcare, Finance',
            textCapitalization: TextCapitalization.words,
            textInputAction: TextInputAction.next,
            onChanged: (_) => _updateProfile(),
          ),
          const SizedBox(height: 16),
          // Career Stage
          FormDropdown<CareerStage>(
            value: _selectedCareerStage,
            label: 'Career Stage',
            hint: 'Select your career stage',
            items: CareerStage.values.map((stage) {
              return DropdownMenuItem(
                value: stage,
                child: Text(_careerStageLabel(stage)),
              );
            }).toList(),
            onChanged: (value) {
              setState(() => _selectedCareerStage = value);
              _updateProfile();
            },
          ),
          const SizedBox(height: 24),
          // Skills to Develop
          const SubSectionHeader(title: 'Skills to Develop'),
          TagInput(
            tags: _selectedSkills,
            label: null,
            hint: 'Add skills you want to develop',
            suggestions: _skillSuggestions,
            maxTags: 10,
            onChanged: (tags) {
              setState(() => _selectedSkills = tags);
              _updateProfile();
            },
          ),
          const SizedBox(height: 24),
          // About Me
          AppTextField(
            controller: _aboutMeController,
            label: 'About Me',
            hint: 'Share your goals and what you\'re looking to achieve...',
            maxLines: 4,
            maxLength: 500,
            textCapitalization: TextCapitalization.sentences,
            onChanged: (_) => _updateProfile(),
          ),
          const SizedBox(height: 16),
          // LinkedIn
          AppTextField(
            controller: _linkedinController,
            label: 'LinkedIn Profile',
            hint: 'https://linkedin.com/in/yourprofile',
            keyboardType: TextInputType.url,
            prefixIcon: const Icon(Icons.link),
            onChanged: (_) => _updateProfile(),
          ),
          const SizedBox(height: 80), // Space for navigation buttons
        ],
      ),
    );
  }

  String _careerStageLabel(CareerStage stage) {
    switch (stage) {
      case CareerStage.student:
        return 'Student';
      case CareerStage.earlyCareer:
        return 'Early Career (0-3 years)';
      case CareerStage.midCareer:
        return 'Mid Career (3-10 years)';
      case CareerStage.senior:
        return 'Senior (10+ years)';
      case CareerStage.executive:
        return 'Executive';
    }
  }
}
