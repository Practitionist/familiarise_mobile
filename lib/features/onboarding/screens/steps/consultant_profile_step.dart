import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../domain/entities/onboarding/consultant_profile_data.dart';
import '../../../../domain/entities/onboarding/domain_entity.dart';
import '../../../../shared/widgets/app_text_field.dart';
import '../../providers/domains_provider.dart';
import '../../providers/onboarding_provider.dart';
import '../../widgets/onboarding_widgets.dart';

/// Step 2 (Consultant): Professional profile setup screen
class ConsultantProfileStep extends ConsumerStatefulWidget {
  const ConsultantProfileStep({super.key});

  @override
  ConsumerState<ConsultantProfileStep> createState() =>
      _ConsultantProfileStepState();
}

class _ConsultantProfileStepState extends ConsumerState<ConsultantProfileStep> {
  late TextEditingController _headlineController;
  late TextEditingController _descriptionController;
  late TextEditingController _experienceController;
  late TextEditingController _websiteController;
  late TextEditingController _twitterController;
  late TextEditingController _githubController;

  String? _selectedDomainId;
  List<String> _selectedSubDomainIds = [];
  List<String> _selectedLanguages = [];
  List<String> _selectedTools = [];
  List<String> _selectedSessionTypes = [];
  String? _selectedMentoringStyle;

  static const List<String> _languageSuggestions = [
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

  static const List<String> _sessionTypeSuggestions = [
    'One-on-One Mentoring',
    'Career Coaching',
    'Technical Review',
    'Resume Review',
    'Mock Interview',
    'Portfolio Review',
    'Group Session',
    'Workshop',
  ];

  static const List<String> _mentoringStyles = [
    'Hands-on',
    'Supportive',
    'Challenging',
    'Structured',
    'Flexible',
    'Goal-oriented',
  ];

  @override
  void initState() {
    super.initState();
    final state = ref.read(onboardingProvider);
    final profile = state.consultantProfile;

    _headlineController = TextEditingController(text: profile?.headline ?? '');
    _descriptionController =
        TextEditingController(text: profile?.description ?? '');
    _experienceController =
        TextEditingController(text: profile?.experience?.toString() ?? '');
    _websiteController = TextEditingController(text: profile?.websiteUrl ?? '');
    _twitterController = TextEditingController(text: profile?.twitterUrl ?? '');
    _githubController = TextEditingController(text: profile?.githubUrl ?? '');

    _selectedDomainId = profile?.domainId;
    _selectedSubDomainIds = profile?.subDomainIds ?? [];
    _selectedLanguages = profile?.languages ?? [];
    _selectedTools = profile?.toolsAndTechnologies ?? [];
    _selectedSessionTypes = profile?.sessionTypes ?? [];
    _selectedMentoringStyle = profile?.mentoringStyle;
  }

  @override
  void dispose() {
    _headlineController.dispose();
    _descriptionController.dispose();
    _experienceController.dispose();
    _websiteController.dispose();
    _twitterController.dispose();
    _githubController.dispose();
    super.dispose();
  }

  void _updateProfile() {
    final profile = ConsultantProfileData(
      headline: _headlineController.text.trim().isEmpty
          ? null
          : _headlineController.text.trim(),
      description: _descriptionController.text.trim().isEmpty
          ? null
          : _descriptionController.text.trim(),
      experience: double.tryParse(_experienceController.text.trim()),
      domainId: _selectedDomainId,
      subDomainIds: _selectedSubDomainIds,
      languages: _selectedLanguages,
      toolsAndTechnologies: _selectedTools,
      sessionTypes: _selectedSessionTypes,
      mentoringStyle: _selectedMentoringStyle,
      websiteUrl: _websiteController.text.trim().isEmpty
          ? null
          : _websiteController.text.trim(),
      twitterUrl: _twitterController.text.trim().isEmpty
          ? null
          : _twitterController.text.trim(),
      githubUrl: _githubController.text.trim().isEmpty
          ? null
          : _githubController.text.trim(),
    );

    ref.read(onboardingProvider.notifier).updateConsultantProfile(profile);
  }

  @override
  Widget build(BuildContext context) {
    final domainsAsync = ref.watch(domainsProvider);
    final subDomains = _selectedDomainId != null
        ? ref.watch(subDomainsForDomainProvider(_selectedDomainId!))
        : <SubDomainEntity>[];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(
            title: 'Professional Profile',
            subtitle:
                'Share your expertise and experience with potential mentees',
          ),
          // Headline
          AppTextField(
            controller: _headlineController,
            label: 'Professional Headline *',
            hint: 'e.g., Senior Software Engineer at Google',
            textCapitalization: TextCapitalization.words,
            textInputAction: TextInputAction.next,
            onChanged: (_) => _updateProfile(),
          ),
          const SizedBox(height: 16),
          // Experience
          AppTextField(
            controller: _experienceController,
            label: 'Years of Experience *',
            hint: 'e.g., 5',
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            onChanged: (_) => _updateProfile(),
          ),
          const SizedBox(height: 24),
          // Domain Selection
          const SubSectionHeader(title: 'Domain *', isRequired: true),
          domainsAsync.when(
            data: (domains) => SearchableDropdown<DomainEntity>(
              value: _selectedDomainId != null
                  ? domains.where((d) => d.id == _selectedDomainId).firstOrNull
                  : null,
              items: domains,
              hint: 'Select your primary domain',
              searchFilter: (domain, query) =>
                  domain.name.toLowerCase().contains(query.toLowerCase()),
              itemBuilder: (domain, isSelected) => Text(
                domain.name,
                style: isSelected
                    ? TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      )
                    : null,
              ),
              onChanged: (domain) {
                setState(() {
                  _selectedDomainId = domain?.id;
                  _selectedSubDomainIds = []; // Reset subdomains
                });
                _updateProfile();
              },
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, _) => Text('Error loading domains: $error'),
          ),
          const SizedBox(height: 16),
          // Subdomains
          if (_selectedDomainId != null && subDomains.isNotEmpty) ...[
            const SubSectionHeader(title: 'Specializations'),
            MultiSelectChips<SubDomainEntity>(
              items: subDomains,
              selectedItems: subDomains
                  .where((s) => _selectedSubDomainIds.contains(s.id))
                  .toList(),
              labelBuilder: (item) => item.name,
              maxSelection: 5,
              onChanged: (selected) {
                setState(() {
                  _selectedSubDomainIds = selected.map((s) => s.id).toList();
                });
                _updateProfile();
              },
            ),
            const SizedBox(height: 16),
          ],
          const SizedBox(height: 8),
          // Description
          AppTextField(
            controller: _descriptionController,
            label: 'About Your Consulting Practice',
            hint:
                'Describe your expertise, approach to mentoring, and what makes you unique...',
            maxLines: 4,
            maxLength: 1000,
            textCapitalization: TextCapitalization.sentences,
            onChanged: (_) => _updateProfile(),
          ),
          const SizedBox(height: 24),
          // Languages
          TagInput(
            tags: _selectedLanguages,
            label: 'Languages',
            hint: 'Add languages you speak',
            suggestions: _languageSuggestions,
            maxTags: 5,
            onChanged: (tags) {
              setState(() => _selectedLanguages = tags);
              _updateProfile();
            },
          ),
          const SizedBox(height: 24),
          // Tools & Technologies
          TagInput(
            tags: _selectedTools,
            label: 'Tools & Technologies',
            hint: 'Add tools and technologies you specialize in',
            maxTags: 15,
            onChanged: (tags) {
              setState(() => _selectedTools = tags);
              _updateProfile();
            },
          ),
          const SizedBox(height: 24),
          // Session Types
          TagInput(
            tags: _selectedSessionTypes,
            label: 'Session Types Offered',
            hint: 'Add types of sessions you offer',
            suggestions: _sessionTypeSuggestions,
            maxTags: 8,
            onChanged: (tags) {
              setState(() => _selectedSessionTypes = tags);
              _updateProfile();
            },
          ),
          const SizedBox(height: 24),
          // Mentoring Style
          FormDropdown<String>(
            value: _selectedMentoringStyle,
            label: 'Mentoring Style',
            hint: 'Select your mentoring style',
            items: _mentoringStyles.map((style) {
              return DropdownMenuItem(
                value: style,
                child: Text(style),
              );
            }).toList(),
            onChanged: (value) {
              setState(() => _selectedMentoringStyle = value);
              _updateProfile();
            },
          ),
          const SizedBox(height: 24),
          // Social Links
          const SubSectionHeader(title: 'Social Links'),
          AppTextField(
            controller: _websiteController,
            label: 'Website',
            hint: 'https://yourwebsite.com',
            keyboardType: TextInputType.url,
            prefixIcon: const Icon(Icons.language),
            onChanged: (_) => _updateProfile(),
          ),
          const SizedBox(height: 16),
          AppTextField(
            controller: _twitterController,
            label: 'Twitter/X',
            hint: 'https://twitter.com/yourhandle',
            keyboardType: TextInputType.url,
            prefixIcon: const Icon(Icons.alternate_email),
            onChanged: (_) => _updateProfile(),
          ),
          const SizedBox(height: 16),
          AppTextField(
            controller: _githubController,
            label: 'GitHub',
            hint: 'https://github.com/yourusername',
            keyboardType: TextInputType.url,
            prefixIcon: const Icon(Icons.code),
            onChanged: (_) => _updateProfile(),
          ),
          const SizedBox(height: 80), // Space for navigation buttons
        ],
      ),
    );
  }
}
