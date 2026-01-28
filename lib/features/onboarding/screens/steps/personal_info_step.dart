import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/enums.dart';
import '../../../../domain/entities/onboarding/personal_info.dart';
import '../../../../shared/widgets/app_text_field.dart';
import '../../providers/onboarding_provider.dart';
import '../../widgets/onboarding_widgets.dart';

/// Step 1: Personal information screen
class PersonalInfoStep extends ConsumerStatefulWidget {
  const PersonalInfoStep({super.key});

  @override
  ConsumerState<PersonalInfoStep> createState() => _PersonalInfoStepState();
}

class _PersonalInfoStepState extends ConsumerState<PersonalInfoStep> {
  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late TextEditingController _cityController;
  late TextEditingController _countryController;
  late TextEditingController _addressController;
  late TextEditingController _linkedinController;
  late TextEditingController _bioController;

  DateTime? _selectedDate;
  Gender? _selectedGender;
  bool _isUploadingImage = false;

  @override
  void initState() {
    super.initState();
    final state = ref.read(onboardingProvider);
    final info = state.personalInfo;

    _nameController = TextEditingController(text: info?.name ?? '');
    _phoneController = TextEditingController(text: info?.phone ?? '');
    _cityController = TextEditingController(text: info?.city ?? '');
    _countryController = TextEditingController(text: info?.country ?? '');
    _addressController = TextEditingController(text: info?.address ?? '');
    _linkedinController = TextEditingController(text: info?.linkedinUrl ?? '');
    _bioController = TextEditingController(text: info?.bio ?? '');
    _selectedDate = info?.dateOfBirth;
    _selectedGender = info?.gender;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _cityController.dispose();
    _countryController.dispose();
    _addressController.dispose();
    _linkedinController.dispose();
    _bioController.dispose();
    super.dispose();
  }

  void _updatePersonalInfo() {
    final info = PersonalInfo(
      name: _nameController.text.trim(),
      phone: _phoneController.text.trim().isEmpty
          ? null
          : _phoneController.text.trim(),
      dateOfBirth: _selectedDate,
      gender: _selectedGender,
      city: _cityController.text.trim().isEmpty
          ? null
          : _cityController.text.trim(),
      country: _countryController.text.trim().isEmpty
          ? null
          : _countryController.text.trim(),
      address: _addressController.text.trim().isEmpty
          ? null
          : _addressController.text.trim(),
      linkedinUrl: _linkedinController.text.trim().isEmpty
          ? null
          : _linkedinController.text.trim(),
      bio: _bioController.text.trim().isEmpty
          ? null
          : _bioController.text.trim(),
      image: ref.read(onboardingProvider).personalInfo?.image,
    );

    ref.read(onboardingProvider.notifier).updatePersonalInfo(info);
  }

  Future<void> _selectDate() async {
    final now = DateTime.now();
    final date = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime(now.year - 25),
      firstDate: DateTime(1920),
      lastDate: DateTime(now.year - 13), // Minimum 13 years old
    );

    if (date != null) {
      setState(() => _selectedDate = date);
      _updatePersonalInfo();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(onboardingProvider);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(
            title: 'Personal Information',
            subtitle: 'Tell us a bit about yourself',
          ),
          // Profile Image
          Center(
            child: ProfileImagePicker(
              currentImageUrl: state.personalInfo?.image,
              isLoading: _isUploadingImage,
              onImagePicked: (bytes, fileName, mimeType) async {
                setState(() => _isUploadingImage = true);
                try {
                  await ref
                      .read(onboardingProvider.notifier)
                      .uploadProfileImage(
                        imageBytes: bytes,
                        fileName: fileName,
                        contentType: mimeType,
                      );
                } finally {
                  if (mounted) {
                    setState(() => _isUploadingImage = false);
                  }
                }
              },
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              'Tap to add a profile photo',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
          ),
          const SizedBox(height: 24),
          // Name (required)
          AppTextField(
            controller: _nameController,
            label: 'Full Name *',
            hint: 'Enter your full name',
            textCapitalization: TextCapitalization.words,
            textInputAction: TextInputAction.next,
            onChanged: (_) => _updatePersonalInfo(),
          ),
          const SizedBox(height: 16),
          // Phone
          AppTextField(
            controller: _phoneController,
            label: 'Phone Number',
            hint: '+1 (555) 123-4567',
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
            onChanged: (_) => _updatePersonalInfo(),
          ),
          const SizedBox(height: 16),
          // Date of Birth
          GestureDetector(
            onTap: _selectDate,
            child: AbsorbPointer(
              child: AppTextField(
                controller: TextEditingController(
                  text: _selectedDate != null
                      ? DateFormat('MMMM d, yyyy').format(_selectedDate!)
                      : '',
                ),
                label: 'Date of Birth',
                hint: 'Select your birth date',
                suffixIcon: const Icon(Icons.calendar_today_outlined),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Gender
          FormDropdown<Gender>(
            value: _selectedGender,
            label: 'Gender',
            hint: 'Select your gender',
            items: Gender.values.map((gender) {
              return DropdownMenuItem(
                value: gender,
                child: Text(_genderLabel(gender)),
              );
            }).toList(),
            onChanged: (value) {
              setState(() => _selectedGender = value);
              _updatePersonalInfo();
            },
          ),
          const SizedBox(height: 16),
          // Location
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: _cityController,
                  label: 'City',
                  hint: 'Your city',
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.next,
                  onChanged: (_) => _updatePersonalInfo(),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: AppTextField(
                  controller: _countryController,
                  label: 'Country',
                  hint: 'Your country',
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.next,
                  onChanged: (_) => _updatePersonalInfo(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Address
          AppTextField(
            controller: _addressController,
            label: 'Address',
            hint: 'Your street address',
            textCapitalization: TextCapitalization.words,
            textInputAction: TextInputAction.next,
            onChanged: (_) => _updatePersonalInfo(),
          ),
          const SizedBox(height: 16),
          // LinkedIn
          AppTextField(
            controller: _linkedinController,
            label: 'LinkedIn Profile',
            hint: 'https://linkedin.com/in/yourprofile',
            keyboardType: TextInputType.url,
            prefixIcon: const Icon(Icons.link),
            onChanged: (_) => _updatePersonalInfo(),
          ),
          const SizedBox(height: 16),
          // Bio
          AppTextField(
            controller: _bioController,
            label: 'Bio',
            hint: 'Tell us about yourself...',
            maxLines: 4,
            maxLength: 160,
            textCapitalization: TextCapitalization.sentences,
            onChanged: (_) => _updatePersonalInfo(),
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
}
