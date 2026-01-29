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
import '../../onboarding/widgets/profile_image_picker.dart';
import '../providers/edit_profile_provider.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({super.key});

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();

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

  @override
  void initState() {
    super.initState();
    final user = ref.read(currentUserProvider);

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
    super.dispose();
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
      final success = await ref.read(editProfileProvider.notifier).saveProfile(
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

      if (!mounted) return;

      if (success) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Profile updated successfully')),
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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
