import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../core/constants/enums.dart';
import '../../../core/utils/validators.dart';
import '../../../shared/widgets/app_text_field.dart';
import '../../auth/providers/auth_provider.dart';
import '../../onboarding/widgets/form_dropdown.dart';
import '../../onboarding/widgets/multi_select_chips.dart';
import '../../onboarding/widgets/profile_image_picker.dart';
import '../providers/edit_profile_provider.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({super.key});

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  // User-level controllers
  late final TextEditingController _nameController;
  late final TextEditingController _phoneController;
  late final TextEditingController _bioController;
  late final TextEditingController _cityController;
  late final TextEditingController _countryController;
  late final TextEditingController _addressController;
  late final TextEditingController _linkedinUrlController;
  late final TextEditingController _dobDisplayController;

  DateTime? _selectedDate;
  Gender? _selectedGender;
  bool _isUploadingImage = false;
  String? _pendingImageUrl;
  Uint8List? _pendingImageBytes;
  bool _isSaving = false;

  // Consultant-specific controllers
  late final TextEditingController _headlineController;
  late final TextEditingController _experienceController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _mentoringStyleController;
  late final TextEditingController _websiteUrlController;
  late final TextEditingController _twitterUrlController;
  late final TextEditingController _githubUrlController;
  late final TextEditingController _videoIntroUrlController;
  List<String> _languages = [];
  List<String> _tools = [];
  List<SessionType> _sessionTypes = [];

  // Consultee-specific controllers
  late final TextEditingController _occupationController;
  late final TextEditingController _companyController;
  late final TextEditingController _industryController;
  late final TextEditingController _aboutMeController;
  late final TextEditingController _consulteeLinkedinController;
  String? _preferredLanguage;
  CareerStage? _careerStage;
  List<String> _skillsToDevelop = [];
  BudgetPreference? _budgetPreference;
  ConsultationMode? _communicationMethod;

  bool _roleDataLoaded = false;

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
    final user = ref.read(currentUserProvider);

    // User-level fields
    _nameController = TextEditingController(text: user?.name ?? '');
    _phoneController = TextEditingController(text: user?.phone ?? '');
    _bioController = TextEditingController(text: user?.bio ?? '');
    _cityController = TextEditingController(text: user?.city ?? '');
    _countryController = TextEditingController(text: user?.country ?? '');
    _addressController = TextEditingController(text: user?.address ?? '');
    _linkedinUrlController = TextEditingController(text: user?.linkedinUrl ?? '');
    _selectedDate = user?.dateOfBirth;
    _selectedGender = user?.gender;
    _pendingImageUrl = user?.image;

    _dobDisplayController = TextEditingController(
      text: _selectedDate != null
          ? DateFormat('MMM d, yyyy').format(_selectedDate!)
          : '',
    );

    // Role-specific controllers (initialized empty, populated from API)
    _headlineController = TextEditingController();
    _experienceController = TextEditingController();
    _descriptionController = TextEditingController();
    _mentoringStyleController = TextEditingController();
    _websiteUrlController = TextEditingController();
    _twitterUrlController = TextEditingController();
    _githubUrlController = TextEditingController();
    _videoIntroUrlController = TextEditingController();

    _occupationController = TextEditingController();
    _companyController = TextEditingController();
    _industryController = TextEditingController();
    _aboutMeController = TextEditingController();
    _consulteeLinkedinController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _bioController.dispose();
    _cityController.dispose();
    _countryController.dispose();
    _addressController.dispose();
    _linkedinUrlController.dispose();
    _dobDisplayController.dispose();
    _headlineController.dispose();
    _experienceController.dispose();
    _descriptionController.dispose();
    _mentoringStyleController.dispose();
    _websiteUrlController.dispose();
    _twitterUrlController.dispose();
    _githubUrlController.dispose();
    _videoIntroUrlController.dispose();
    _occupationController.dispose();
    _companyController.dispose();
    _industryController.dispose();
    _aboutMeController.dispose();
    _consulteeLinkedinController.dispose();
    super.dispose();
  }

  void _populateConsultantData(Map<String, dynamic> data) {
    _headlineController.text = data['headline'] as String? ?? '';
    final exp = data['experience'];
    _experienceController.text =
        exp != null ? (exp as num).toString() : '';
    _descriptionController.text = data['description'] as String? ?? '';
    _mentoringStyleController.text = data['mentoringStyle'] as String? ?? '';
    _websiteUrlController.text = data['websiteUrl'] as String? ?? '';
    _twitterUrlController.text = data['twitterUrl'] as String? ?? '';
    _githubUrlController.text = data['githubUrl'] as String? ?? '';
    _videoIntroUrlController.text = data['videoIntroUrl'] as String? ?? '';
    _languages = _parseList(data['languages']);
    _tools = _parseList(data['toolsAndTechnologies']);
    _sessionTypes = _parseSessionTypes(data['sessionTypes']);
  }

  void _populateConsulteeData(Map<String, dynamic> data) {
    _occupationController.text = data['occupation'] as String? ?? '';
    _companyController.text = data['currentCompany'] as String? ?? '';
    _industryController.text = data['industry'] as String? ?? '';
    _aboutMeController.text = data['aboutMe'] as String? ?? '';
    _consulteeLinkedinController.text = data['linkedinUrl'] as String? ?? '';
    _preferredLanguage = data['preferredLanguage'] as String?;
    _skillsToDevelop = _parseList(data['skillsToDevelop']);
    _budgetPreference = _parseBudgetPreference(
      data['budgetPreference'] as String?,
    );
    _communicationMethod = _parseConsultationMode(
      data['preferredCommunicationMethod'] as String?,
    );
    _careerStage = _parseCareerStage(
      data['careerStage'] as String?,
    );
  }

  List<String> _parseList(dynamic value) {
    if (value == null) return [];
    if (value is List) return value.map((e) => e.toString()).toList();
    if (value is String && value.isNotEmpty) {
      try {
        // Handle JSON-encoded string arrays from backend (e.g. '["a","b"]')
        final decoded = jsonDecode(value);
        if (decoded is List) {
          return decoded.map((e) => e.toString()).toList();
        }
      } catch (_) {
        // Not valid JSON — ignore
      }
    }
    return [];
  }

  // --- Enum parsers (DB stores SCREAMING_SNAKE_CASE) ---

  CareerStage? _parseCareerStage(String? value) {
    if (value == null) return null;
    return switch (value) {
      'STUDENT' => CareerStage.student,
      'EARLY_CAREER' => CareerStage.earlyCareer,
      'MID_CAREER' => CareerStage.midCareer,
      'SENIOR' => CareerStage.senior,
      'EXECUTIVE' => CareerStage.executive,
      _ => null,
    };
  }

  BudgetPreference? _parseBudgetPreference(String? value) {
    if (value == null) return null;
    return switch (value) {
      'BUDGET' => BudgetPreference.budget,
      'MODERATE' => BudgetPreference.moderate,
      'PREMIUM' => BudgetPreference.premium,
      'FLEXIBLE' => BudgetPreference.flexible,
      _ => null,
    };
  }

  ConsultationMode? _parseConsultationMode(String? value) {
    if (value == null) return null;
    return switch (value) {
      'VIDEO' => ConsultationMode.video,
      'AUDIO' => ConsultationMode.audio,
      'IN_PERSON' => ConsultationMode.inPerson,
      _ => null,
    };
  }

  SessionType? _parseSessionType(String? value) {
    if (value == null) return null;
    return switch (value) {
      'ONE_ON_ONE' => SessionType.oneOnOne,
      'GROUP' => SessionType.group,
      'ASYNC_REVIEW' => SessionType.asyncReview,
      _ => null,
    };
  }

  List<SessionType> _parseSessionTypes(dynamic value) {
    final strings = _parseList(value);
    return strings
        .map((s) => _parseSessionType(s))
        .whereType<SessionType>()
        .toList();
  }

  // --- Enum to API string converters ---

  String _careerStageToApi(CareerStage stage) {
    return switch (stage) {
      CareerStage.student => 'STUDENT',
      CareerStage.earlyCareer => 'EARLY_CAREER',
      CareerStage.midCareer => 'MID_CAREER',
      CareerStage.senior => 'SENIOR',
      CareerStage.executive => 'EXECUTIVE',
    };
  }

  String _budgetPreferenceToApi(BudgetPreference pref) {
    return switch (pref) {
      BudgetPreference.budget => 'BUDGET',
      BudgetPreference.moderate => 'MODERATE',
      BudgetPreference.premium => 'PREMIUM',
      BudgetPreference.flexible => 'FLEXIBLE',
    };
  }

  String _consultationModeToApi(ConsultationMode mode) {
    return switch (mode) {
      ConsultationMode.video => 'VIDEO',
      ConsultationMode.audio => 'AUDIO',
      ConsultationMode.inPerson => 'IN_PERSON',
    };
  }

  String _sessionTypeToApi(SessionType type) {
    return switch (type) {
      SessionType.oneOnOne => 'ONE_ON_ONE',
      SessionType.group => 'GROUP',
      SessionType.asyncReview => 'ASYNC_REVIEW',
    };
  }

  // --- Enum display labels ---

  String _careerStageLabel(CareerStage stage) {
    return switch (stage) {
      CareerStage.student => 'Student',
      CareerStage.earlyCareer => 'Early Career (0-3 years)',
      CareerStage.midCareer => 'Mid Career (3-10 years)',
      CareerStage.senior => 'Senior (10+ years)',
      CareerStage.executive => 'Executive',
    };
  }

  String _budgetPreferenceLabel(BudgetPreference pref) {
    return switch (pref) {
      BudgetPreference.budget => 'Budget (under \$50/session)',
      BudgetPreference.moderate => 'Moderate (\$50-150/session)',
      BudgetPreference.premium => 'Premium (\$150+/session)',
      BudgetPreference.flexible => 'Flexible',
    };
  }

  String _consultationModeLabel(ConsultationMode mode) {
    return switch (mode) {
      ConsultationMode.video => 'Video Call',
      ConsultationMode.audio => 'Audio Call',
      ConsultationMode.inPerson => 'In Person',
    };
  }

  String _sessionTypeLabel(SessionType type) {
    return switch (type) {
      SessionType.oneOnOne => '1:1 Session',
      SessionType.group => 'Group Session',
      SessionType.asyncReview => 'Async Review',
    };
  }

  String _genderToApiString(Gender gender) {
    return switch (gender) {
      Gender.male => 'MALE',
      Gender.female => 'FEMALE',
      Gender.nonBinary => 'NON_BINARY',
      Gender.preferNotToSay => 'PREFER_NOT_TO_SAY',
    };
  }

  String _genderDisplayName(Gender gender) {
    return switch (gender) {
      Gender.male => 'Male',
      Gender.female => 'Female',
      Gender.nonBinary => 'Non-Binary',
      Gender.preferNotToSay => 'Prefer not to say',
    };
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime(now.year - 25),
      firstDate: DateTime(1920),
      lastDate: now,
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
        _dobDisplayController.text = DateFormat('MMM d, yyyy').format(picked);
      });
    }
  }

  Future<void> _onImagePicked(
    Uint8List bytes,
    String fileName,
    String mimeType,
  ) async {
    setState(() => _isUploadingImage = true);
    try {
      final notifier = ref.read(editProfileProvider.notifier);
      final url = await notifier.uploadProfileImage(
        imageBytes: bytes,
        fileName: fileName,
        contentType: mimeType,
      );
      if (url != null && mounted) {
        setState(() {
          _pendingImageUrl = url;
          _pendingImageBytes = bytes;
        });
      } else if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to upload image')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isUploadingImage = false);
      }
    }
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;

    final user = ref.read(currentUserProvider);
    if (user == null) return;

    setState(() => _isSaving = true);

    try {
      final notifier = ref.read(editProfileProvider.notifier);

      // Save user-level fields
      final userSuccess = await notifier.saveProfile(
        userId: user.id,
        name: _nameController.text.trim(),
        phone: _phoneController.text.trim().isNotEmpty
            ? _phoneController.text.trim()
            : null,
        bio: _bioController.text.trim().isNotEmpty
            ? _bioController.text.trim()
            : null,
        dateOfBirth: _selectedDate,
        gender: _selectedGender != null
            ? _genderToApiString(_selectedGender!)
            : null,
        city: _cityController.text.trim().isNotEmpty
            ? _cityController.text.trim()
            : null,
        country: _countryController.text.trim().isNotEmpty
            ? _countryController.text.trim()
            : null,
        address: _addressController.text.trim().isNotEmpty
            ? _addressController.text.trim()
            : null,
        linkedinUrl: _linkedinUrlController.text.trim().isNotEmpty
            ? _linkedinUrlController.text.trim()
            : null,
        image: _pendingImageUrl,
      );

      // Save role-specific fields
      bool roleSuccess = true;
      if (user.role == UserRole.consultant) {
        roleSuccess = await notifier.saveConsultantProfile(
            _buildConsultantFields());
      } else if (user.role == UserRole.consultee) {
        roleSuccess = await notifier.saveConsulteeProfile(
            _buildConsulteeFields());
      }

      if (!mounted) return;

      if (userSuccess && roleSuccess) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Profile updated successfully')),
        );
        context.pop();
      } else if (userSuccess) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Basic profile saved, but some updates may have failed',
            ),
          ),
        );
        context.pop();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to update profile')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isSaving = false);
      }
    }
  }

  Map<String, dynamic> _buildConsultantFields() {
    return {
      if (_headlineController.text.trim().isNotEmpty)
        'headline': _headlineController.text.trim(),
      if (_experienceController.text.trim().isNotEmpty)
        'experience': double.tryParse(_experienceController.text.trim()),
      if (_descriptionController.text.trim().isNotEmpty)
        'description': _descriptionController.text.trim(),
      if (_mentoringStyleController.text.trim().isNotEmpty)
        'mentoringStyle': _mentoringStyleController.text.trim(),
      if (_languages.isNotEmpty) 'languages': _languages,
      if (_tools.isNotEmpty) 'toolsAndTechnologies': _tools,
      if (_sessionTypes.isNotEmpty)
        'sessionTypes': _sessionTypes.map(_sessionTypeToApi).toList(),
      if (_websiteUrlController.text.trim().isNotEmpty)
        'websiteUrl': _websiteUrlController.text.trim(),
      if (_twitterUrlController.text.trim().isNotEmpty)
        'twitterUrl': _twitterUrlController.text.trim(),
      if (_githubUrlController.text.trim().isNotEmpty)
        'githubUrl': _githubUrlController.text.trim(),
      if (_videoIntroUrlController.text.trim().isNotEmpty)
        'videoIntroUrl': _videoIntroUrlController.text.trim(),
    };
  }

  Map<String, dynamic> _buildConsulteeFields() {
    return {
      if (_occupationController.text.trim().isNotEmpty)
        'occupation': _occupationController.text.trim(),
      if (_aboutMeController.text.trim().isNotEmpty)
        'aboutMe': _aboutMeController.text.trim(),
      if (_careerStage != null)
        'careerStage': _careerStageToApi(_careerStage!),
      if (_companyController.text.trim().isNotEmpty)
        'currentCompany': _companyController.text.trim(),
      if (_industryController.text.trim().isNotEmpty)
        'industry': _industryController.text.trim(),
      if (_skillsToDevelop.isNotEmpty) 'skillsToDevelop': _skillsToDevelop,
      if (_budgetPreference != null)
        'budgetPreference': _budgetPreferenceToApi(_budgetPreference!),
      if (_communicationMethod != null)
        'preferredCommunicationMethod':
            _consultationModeToApi(_communicationMethod!),
      if (_preferredLanguage != null) 'preferredLanguage': _preferredLanguage,
      if (_consulteeLinkedinController.text.trim().isNotEmpty)
        'linkedinUrl': _consulteeLinkedinController.text.trim(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final user = ref.watch(currentUserProvider);
    final roleProfileAsync = ref.watch(roleProfileDataProvider);

    // Populate role data once when it loads
    roleProfileAsync.whenData((data) {
      if (data != null && !_roleDataLoaded) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted || _roleDataLoaded) return;
          setState(() {
            _roleDataLoaded = true;
            if (user?.role == UserRole.consultant) {
              _populateConsultantData(data);
            } else if (user?.role == UserRole.consultee) {
              _populateConsulteeData(data);
            }
          });
        });
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: FilledButton(
              onPressed: _isSaving ? null : _save,
              child: _isSaving
                  ? SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: theme.colorScheme.onPrimary,
                      ),
                    )
                  : const Text('Save'),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Image
                Center(
                  child: ProfileImagePicker(
                    currentImageUrl: _pendingImageUrl,
                    currentImageBytes: _pendingImageBytes,
                    onImagePicked: _onImagePicked,
                    isLoading: _isUploadingImage,
                  ),
                ),
                const SizedBox(height: 32),

                // Personal Information section
                Text(
                  'Personal Information',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                AppTextField(
                  controller: _nameController,
                  label: 'Name',
                  hint: 'Enter your full name',
                  textCapitalization: TextCapitalization.words,
                  validator: Validators.name,
                ),
                const SizedBox(height: 16),
                AppTextField(
                  controller: _phoneController,
                  label: 'Phone',
                  hint: 'Enter your phone number',
                  keyboardType: TextInputType.phone,
                  validator: Validators.phone,
                ),
                const SizedBox(height: 16),
                AppTextField(
                  controller: _dobDisplayController,
                  label: 'Date of Birth',
                  hint: 'Select your date of birth',
                  readOnly: true,
                  onTap: _pickDate,
                  suffixIcon: const Icon(Icons.calendar_today_outlined),
                ),
                const SizedBox(height: 16),
                FormDropdown<Gender>(
                  label: 'Gender',
                  hint: 'Select gender',
                  value: _selectedGender,
                  items: Gender.values
                      .map((g) => DropdownMenuItem(
                            value: g,
                            child: Text(_genderDisplayName(g)),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() => _selectedGender = value);
                  },
                ),
                const SizedBox(height: 32),

                // Location section
                Text(
                  'Location',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        controller: _cityController,
                        label: 'City',
                        hint: 'City',
                        textCapitalization: TextCapitalization.words,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: AppTextField(
                        controller: _countryController,
                        label: 'Country',
                        hint: 'Country',
                        textCapitalization: TextCapitalization.words,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                AppTextField(
                  controller: _addressController,
                  label: 'Address',
                  hint: 'Enter your address',
                  textCapitalization: TextCapitalization.sentences,
                  maxLines: 2,
                ),
                const SizedBox(height: 32),

                // About section
                Text(
                  'About',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                AppTextField(
                  controller: _linkedinUrlController,
                  label: 'LinkedIn URL',
                  hint: 'https://linkedin.com/in/yourprofile',
                  keyboardType: TextInputType.url,
                  validator: Validators.url,
                ),
                const SizedBox(height: 16),
                AppTextField(
                  controller: _bioController,
                  label: 'Bio',
                  hint: 'Tell us about yourself',
                  maxLines: 4,
                  maxLength: 160,
                  textCapitalization: TextCapitalization.sentences,
                ),
                const SizedBox(height: 32),

                // Role-specific fields
                if (user?.role == UserRole.consultant)
                  _buildConsultantSection(theme),
                if (user?.role == UserRole.consultee)
                  _buildConsulteeSection(theme),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildConsultantSection(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(color: theme.colorScheme.outlineVariant),
        const SizedBox(height: 16),
        Text(
          'Professional Profile',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        AppTextField(
          controller: _headlineController,
          label: 'Professional Headline',
          hint: 'e.g., Senior Software Engineer at Google',
          textCapitalization: TextCapitalization.words,
        ),
        const SizedBox(height: 16),
        AppTextField(
          controller: _experienceController,
          label: 'Years of Experience',
          hint: 'e.g., 5',
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 16),
        AppTextField(
          controller: _descriptionController,
          label: 'About Your Practice',
          hint: 'Describe your expertise and mentoring approach...',
          maxLines: 4,
          maxLength: 1000,
          textCapitalization: TextCapitalization.sentences,
        ),
        const SizedBox(height: 24),
        TagInput(
          tags: _languages,
          label: 'Languages',
          hint: 'Add languages you speak',
          maxTags: 5,
          onChanged: (tags) => setState(() => _languages = tags),
        ),
        const SizedBox(height: 24),
        TagInput(
          tags: _tools,
          label: 'Tools & Technologies',
          hint: 'Add tools you specialize in',
          maxTags: 15,
          onChanged: (tags) => setState(() => _tools = tags),
        ),
        const SizedBox(height: 24),
        MultiSelectChips<SessionType>(
          items: SessionType.values,
          selectedItems: _sessionTypes,
          label: 'Session Types',
          hint: 'Select session types you offer',
          labelBuilder: _sessionTypeLabel,
          onChanged: (types) => setState(() => _sessionTypes = types),
        ),
        const SizedBox(height: 24),
        AppTextField(
          controller: _mentoringStyleController,
          label: 'Mentoring Style',
          hint: 'Describe your mentoring approach...',
          maxLines: 3,
          maxLength: 500,
          textCapitalization: TextCapitalization.sentences,
        ),
        const SizedBox(height: 32),
        Text(
          'Social Links',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        AppTextField(
          controller: _websiteUrlController,
          label: 'Website',
          hint: 'https://yourwebsite.com',
          keyboardType: TextInputType.url,
          prefixIcon: const Icon(Icons.language),
        ),
        const SizedBox(height: 16),
        AppTextField(
          controller: _twitterUrlController,
          label: 'Twitter/X',
          hint: 'https://twitter.com/yourhandle',
          keyboardType: TextInputType.url,
          prefixIcon: const Icon(Icons.alternate_email),
        ),
        const SizedBox(height: 16),
        AppTextField(
          controller: _githubUrlController,
          label: 'GitHub',
          hint: 'https://github.com/yourusername',
          keyboardType: TextInputType.url,
          prefixIcon: const Icon(Icons.code),
        ),
        const SizedBox(height: 16),
        AppTextField(
          controller: _videoIntroUrlController,
          label: 'Video Introduction',
          hint: 'https://youtube.com/watch?v=...',
          keyboardType: TextInputType.url,
          prefixIcon: const Icon(Icons.videocam_outlined),
        ),
        const SizedBox(height: 32),
      ],
    );
  }

  Widget _buildConsulteeSection(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(color: theme.colorScheme.outlineVariant),
        const SizedBox(height: 16),
        Text(
          'Professional Background',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        AppTextField(
          controller: _occupationController,
          label: 'Occupation',
          hint: 'e.g., Software Engineer, Marketing Manager',
          textCapitalization: TextCapitalization.words,
        ),
        const SizedBox(height: 16),
        AppTextField(
          controller: _companyController,
          label: 'Company',
          hint: 'Where do you work?',
          textCapitalization: TextCapitalization.words,
        ),
        const SizedBox(height: 16),
        AppTextField(
          controller: _industryController,
          label: 'Industry',
          hint: 'e.g., Technology, Healthcare, Finance',
          textCapitalization: TextCapitalization.words,
        ),
        const SizedBox(height: 16),
        FormDropdown<CareerStage>(
          value: _careerStage,
          label: 'Career Stage',
          hint: 'Select your career stage',
          items: CareerStage.values.map((stage) {
            return DropdownMenuItem(
              value: stage,
              child: Text(_careerStageLabel(stage)),
            );
          }).toList(),
          onChanged: (value) => setState(() => _careerStage = value),
        ),
        const SizedBox(height: 24),
        TagInput(
          tags: _skillsToDevelop,
          label: 'Skills to Develop',
          hint: 'Add skills you want to develop',
          maxTags: 10,
          onChanged: (tags) => setState(() => _skillsToDevelop = tags),
        ),
        const SizedBox(height: 24),
        AppTextField(
          controller: _aboutMeController,
          label: 'About Me',
          hint: 'Share your goals and what you\'re looking to achieve...',
          maxLines: 4,
          maxLength: 500,
          textCapitalization: TextCapitalization.sentences,
        ),
        const SizedBox(height: 16),
        FormDropdown<BudgetPreference>(
          value: _budgetPreference,
          label: 'Budget Preference',
          hint: 'Select budget preference',
          items: BudgetPreference.values.map((pref) {
            return DropdownMenuItem(
              value: pref,
              child: Text(_budgetPreferenceLabel(pref)),
            );
          }).toList(),
          onChanged: (value) =>
              setState(() => _budgetPreference = value),
        ),
        const SizedBox(height: 16),
        FormDropdown<ConsultationMode>(
          value: _communicationMethod,
          label: 'Preferred Communication',
          hint: 'Select communication method',
          items: ConsultationMode.values.map((mode) {
            return DropdownMenuItem(
              value: mode,
              child: Text(_consultationModeLabel(mode)),
            );
          }).toList(),
          onChanged: (value) =>
              setState(() => _communicationMethod = value),
        ),
        const SizedBox(height: 16),
        FormDropdown<String>(
          value: _preferredLanguage,
          label: 'Preferred Language',
          hint: 'Select your preferred language',
          items: _languageOptions.map((lang) {
            return DropdownMenuItem(
              value: lang,
              child: Text(lang),
            );
          }).toList(),
          onChanged: (value) => setState(() => _preferredLanguage = value),
        ),
        const SizedBox(height: 16),
        AppTextField(
          controller: _consulteeLinkedinController,
          label: 'LinkedIn Profile',
          hint: 'https://linkedin.com/in/yourprofile',
          keyboardType: TextInputType.url,
          prefixIcon: const Icon(Icons.link),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
