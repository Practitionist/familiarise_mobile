import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../domain/entities/onboarding/consultant_profile_data.dart';
import '../../providers/onboarding_provider.dart';

/// Onboarding step for consultant professional background.
///
/// Collects work experience, education, and certifications.
/// Displayed after the consultant profile step, before availability.
class ProfessionalBackgroundStep extends ConsumerStatefulWidget {
  const ProfessionalBackgroundStep({super.key});

  @override
  ConsumerState<ProfessionalBackgroundStep> createState() =>
      _ProfessionalBackgroundStepState();
}

class _ProfessionalBackgroundStepState
    extends ConsumerState<ProfessionalBackgroundStep> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(onboardingProvider);
    final profile = state.consultantProfile;
    final theme = Theme.of(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Professional Background',
            style: theme.textTheme.headlineSmall,
          ),
          const SizedBox(height: 4),
          Text(
            'Add your experience, education, and certifications '
            'to build credibility.',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 24),

          // Work Experience Section
          _SectionHeader(
            title: 'Work Experience',
            icon: Icons.work,
            count: profile?.workExperiences.length ?? 0,
            onAdd: () => _addWorkExperience(context),
          ),
          if (profile != null && profile.workExperiences.isNotEmpty)
            ...profile.workExperiences.asMap().entries.map(
                  (entry) => _WorkExperienceCard(
                    experience: entry.value,
                    onRemove: () => _removeWorkExperience(entry.key),
                  ),
                ),
          const SizedBox(height: 24),

          // Education Section
          _SectionHeader(
            title: 'Education',
            icon: Icons.school,
            count: profile?.education.length ?? 0,
            onAdd: () => _addEducation(context),
          ),
          if (profile != null && profile.education.isNotEmpty)
            ...profile.education.asMap().entries.map(
                  (entry) => _EducationCard(
                    education: entry.value,
                    onRemove: () => _removeEducation(entry.key),
                  ),
                ),
          const SizedBox(height: 24),

          // Certifications Section
          _SectionHeader(
            title: 'Certifications',
            icon: Icons.verified,
            count: profile?.certifications.length ?? 0,
            onAdd: () => _addCertification(context),
          ),
          if (profile != null && profile.certifications.isNotEmpty)
            ...profile.certifications.asMap().entries.map(
                  (entry) => _CertificationCard(
                    certification: entry.value,
                    onRemove: () => _removeCertification(entry.key),
                  ),
                ),
          const SizedBox(height: 16),
          Text(
            'All fields are optional. You can add more later from '
            'your profile settings.',
            style: theme.textTheme.bodySmall?.copyWith(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  void _addWorkExperience(BuildContext context) async {
    final result = await showDialog<WorkExperienceEntry>(
      context: context,
      builder: (_) => const _WorkExperienceDialog(),
    );
    if (result != null) {
      final notifier = ref.read(onboardingProvider.notifier);
      final profile = ref.read(onboardingProvider).consultantProfile;
      if (profile != null) {
        notifier.updateConsultantProfile(
          profile.copyWith(
            workExperiences: [...profile.workExperiences, result],
          ),
        );
      }
    }
  }

  void _removeWorkExperience(int index) {
    final notifier = ref.read(onboardingProvider.notifier);
    final profile = ref.read(onboardingProvider).consultantProfile;
    if (profile != null) {
      final list = [...profile.workExperiences]..removeAt(index);
      notifier.updateConsultantProfile(
        profile.copyWith(workExperiences: list),
      );
    }
  }

  void _addEducation(BuildContext context) async {
    final result = await showDialog<EducationEntry>(
      context: context,
      builder: (_) => const _EducationDialog(),
    );
    if (result != null) {
      final notifier = ref.read(onboardingProvider.notifier);
      final profile = ref.read(onboardingProvider).consultantProfile;
      if (profile != null) {
        notifier.updateConsultantProfile(
          profile.copyWith(education: [...profile.education, result]),
        );
      }
    }
  }

  void _removeEducation(int index) {
    final notifier = ref.read(onboardingProvider.notifier);
    final profile = ref.read(onboardingProvider).consultantProfile;
    if (profile != null) {
      final list = [...profile.education]..removeAt(index);
      notifier.updateConsultantProfile(
        profile.copyWith(education: list),
      );
    }
  }

  void _addCertification(BuildContext context) async {
    final result = await showDialog<CertificationEntry>(
      context: context,
      builder: (_) => const _CertificationDialog(),
    );
    if (result != null) {
      final notifier = ref.read(onboardingProvider.notifier);
      final profile = ref.read(onboardingProvider).consultantProfile;
      if (profile != null) {
        notifier.updateConsultantProfile(
          profile.copyWith(
            certifications: [...profile.certifications, result],
          ),
        );
      }
    }
  }

  void _removeCertification(int index) {
    final notifier = ref.read(onboardingProvider.notifier);
    final profile = ref.read(onboardingProvider).consultantProfile;
    if (profile != null) {
      final list = [...profile.certifications]..removeAt(index);
      notifier.updateConsultantProfile(
        profile.copyWith(certifications: list),
      );
    }
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    required this.title,
    required this.icon,
    required this.count,
    required this.onAdd,
  });

  final String title;
  final IconData icon;
  final int count;
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20),
        const SizedBox(width: 8),
        Text(
          '$title ($count)',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const Spacer(),
        TextButton.icon(
          onPressed: onAdd,
          icon: const Icon(Icons.add, size: 18),
          label: const Text('Add'),
        ),
      ],
    );
  }
}

class _WorkExperienceCard extends StatelessWidget {
  const _WorkExperienceCard({
    required this.experience,
    required this.onRemove,
  });

  final WorkExperienceEntry experience;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        title: Text(experience.title),
        subtitle: Text(
          '${experience.company}'
          '${experience.isCurrent ? " (Current)" : ""}',
        ),
        trailing: IconButton(
          icon: const Icon(Icons.close, size: 18),
          onPressed: onRemove,
        ),
      ),
    );
  }
}

class _EducationCard extends StatelessWidget {
  const _EducationCard({
    required this.education,
    required this.onRemove,
  });

  final EducationEntry education;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        title: Text(education.degree),
        subtitle: Text(education.institution),
        trailing: IconButton(
          icon: const Icon(Icons.close, size: 18),
          onPressed: onRemove,
        ),
      ),
    );
  }
}

class _CertificationCard extends StatelessWidget {
  const _CertificationCard({
    required this.certification,
    required this.onRemove,
  });

  final CertificationEntry certification;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        title: Text(certification.name),
        subtitle: Text(certification.issuingOrganization),
        trailing: IconButton(
          icon: const Icon(Icons.close, size: 18),
          onPressed: onRemove,
        ),
      ),
    );
  }
}

// -- Dialogs for adding entries --

class _WorkExperienceDialog extends StatefulWidget {
  const _WorkExperienceDialog();

  @override
  State<_WorkExperienceDialog> createState() => _WorkExperienceDialogState();
}

class _WorkExperienceDialogState extends State<_WorkExperienceDialog> {
  final _companyCtrl = TextEditingController();
  final _titleCtrl = TextEditingController();
  final _locationCtrl = TextEditingController();
  final _descCtrl = TextEditingController();
  DateTime _startDate = DateTime.now();
  DateTime? _endDate;
  bool _isCurrent = false;

  @override
  void dispose() {
    _companyCtrl.dispose();
    _titleCtrl.dispose();
    _locationCtrl.dispose();
    _descCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Work Experience'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _companyCtrl,
              decoration: const InputDecoration(labelText: 'Company *'),
            ),
            TextField(
              controller: _titleCtrl,
              decoration: const InputDecoration(labelText: 'Job Title *'),
            ),
            TextField(
              controller: _locationCtrl,
              decoration: const InputDecoration(labelText: 'Location'),
            ),
            const SizedBox(height: 8),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Start: ${DateFormat.yMMMM().format(_startDate)}',
              ),
              trailing: const Icon(Icons.calendar_today, size: 18),
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: _startDate,
                  firstDate: DateTime(1970),
                  lastDate: DateTime.now(),
                );
                if (date != null) setState(() => _startDate = date);
              },
            ),
            CheckboxListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Currently working here'),
              value: _isCurrent,
              onChanged: (v) => setState(() {
                _isCurrent = v ?? false;
                if (_isCurrent) _endDate = null;
              }),
            ),
            if (!_isCurrent)
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  _endDate != null
                      ? 'End: ${DateFormat.yMMMM().format(_endDate!)}'
                      : 'End date (tap to set)',
                ),
                trailing: const Icon(Icons.calendar_today, size: 18),
                onTap: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: _endDate ?? DateTime.now(),
                    firstDate: _startDate,
                    lastDate: DateTime.now(),
                  );
                  if (date != null) setState(() => _endDate = date);
                },
              ),
            TextField(
              controller: _descCtrl,
              decoration: const InputDecoration(labelText: 'Description'),
              maxLines: 2,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () {
            if (_companyCtrl.text.isEmpty || _titleCtrl.text.isEmpty) return;
            Navigator.pop(
              context,
              WorkExperienceEntry(
                company: _companyCtrl.text,
                title: _titleCtrl.text,
                location: _locationCtrl.text.isNotEmpty
                    ? _locationCtrl.text
                    : null,
                startDate: _startDate,
                endDate: _endDate,
                isCurrent: _isCurrent,
                description:
                    _descCtrl.text.isNotEmpty ? _descCtrl.text : null,
              ),
            );
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}

class _EducationDialog extends StatefulWidget {
  const _EducationDialog();

  @override
  State<_EducationDialog> createState() => _EducationDialogState();
}

class _EducationDialogState extends State<_EducationDialog> {
  final _institutionCtrl = TextEditingController();
  final _degreeCtrl = TextEditingController();
  final _fieldCtrl = TextEditingController();
  final _startYearCtrl = TextEditingController();
  final _endYearCtrl = TextEditingController();

  @override
  void dispose() {
    _institutionCtrl.dispose();
    _degreeCtrl.dispose();
    _fieldCtrl.dispose();
    _startYearCtrl.dispose();
    _endYearCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Education'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _institutionCtrl,
              decoration:
                  const InputDecoration(labelText: 'Institution *'),
            ),
            TextField(
              controller: _degreeCtrl,
              decoration: const InputDecoration(labelText: 'Degree *'),
            ),
            TextField(
              controller: _fieldCtrl,
              decoration:
                  const InputDecoration(labelText: 'Field of Study'),
            ),
            TextField(
              controller: _startYearCtrl,
              decoration: const InputDecoration(labelText: 'Start Year'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _endYearCtrl,
              decoration: const InputDecoration(labelText: 'End Year'),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () {
            if (_institutionCtrl.text.isEmpty ||
                _degreeCtrl.text.isEmpty) {
              return;
            }
            Navigator.pop(
              context,
              EducationEntry(
                institution: _institutionCtrl.text,
                degree: _degreeCtrl.text,
                fieldOfStudy: _fieldCtrl.text.isNotEmpty
                    ? _fieldCtrl.text
                    : null,
                startYear: int.tryParse(_startYearCtrl.text),
                endYear: int.tryParse(_endYearCtrl.text),
              ),
            );
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}

class _CertificationDialog extends StatefulWidget {
  const _CertificationDialog();

  @override
  State<_CertificationDialog> createState() => _CertificationDialogState();
}

class _CertificationDialogState extends State<_CertificationDialog> {
  final _nameCtrl = TextEditingController();
  final _orgCtrl = TextEditingController();
  final _credIdCtrl = TextEditingController();
  final _credUrlCtrl = TextEditingController();
  DateTime _issueDate = DateTime.now();

  @override
  void dispose() {
    _nameCtrl.dispose();
    _orgCtrl.dispose();
    _credIdCtrl.dispose();
    _credUrlCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Certification'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _nameCtrl,
              decoration:
                  const InputDecoration(labelText: 'Certification Name *'),
            ),
            TextField(
              controller: _orgCtrl,
              decoration: const InputDecoration(
                labelText: 'Issuing Organization *',
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Issued: ${DateFormat.yMMMM().format(_issueDate)}',
              ),
              trailing: const Icon(Icons.calendar_today, size: 18),
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: _issueDate,
                  firstDate: DateTime(1970),
                  lastDate: DateTime.now(),
                );
                if (date != null) setState(() => _issueDate = date);
              },
            ),
            TextField(
              controller: _credIdCtrl,
              decoration:
                  const InputDecoration(labelText: 'Credential ID'),
            ),
            TextField(
              controller: _credUrlCtrl,
              decoration:
                  const InputDecoration(labelText: 'Credential URL'),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () {
            if (_nameCtrl.text.isEmpty || _orgCtrl.text.isEmpty) return;
            Navigator.pop(
              context,
              CertificationEntry(
                name: _nameCtrl.text,
                issuingOrganization: _orgCtrl.text,
                issueDate: _issueDate,
                credentialId: _credIdCtrl.text.isNotEmpty
                    ? _credIdCtrl.text
                    : null,
                credentialUrl: _credUrlCtrl.text.isNotEmpty
                    ? _credUrlCtrl.text
                    : null,
              ),
            );
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
