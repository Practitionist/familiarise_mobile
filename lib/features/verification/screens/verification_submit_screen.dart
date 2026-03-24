import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/file_upload_helper.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../../data/datasources/remote/verification_remote_source.dart';
import '../providers/verification_provider.dart';

class VerificationSubmitScreen extends ConsumerStatefulWidget {
  const VerificationSubmitScreen({super.key});

  @override
  ConsumerState<VerificationSubmitScreen> createState() =>
      _VerificationSubmitScreenState();
}

class _VerificationSubmitScreenState
    extends ConsumerState<VerificationSubmitScreen> {
  final _notesController = TextEditingController();
  final _uploadedFiles = <_UploadedFile>[];
  bool _isSubmitting = false;
  bool _isUploading = false;

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Submit Verification')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Upload documents to verify your profile',
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Upload your ID, degree certificates, professional '
            'certifications, or any other relevant documents.',
            style: theme.textTheme.bodySmall,
          ),
          const SizedBox(height: 24),

          // Notes field
          TextField(
            controller: _notesController,
            decoration: const InputDecoration(
              labelText: 'Notes (optional)',
              hintText: 'Any additional information for reviewers...',
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 24),

          // Upload button
          OutlinedButton.icon(
            onPressed: _isUploading ? null : _pickAndUploadFile,
            icon: _isUploading
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.upload_file),
            label: Text(_isUploading ? 'Uploading...' : 'Add Document'),
          ),
          const SizedBox(height: 16),

          // Uploaded files list
          if (_uploadedFiles.isNotEmpty) ...[
            Text('Uploaded Documents', style: theme.textTheme.titleSmall),
            const SizedBox(height: 8),
            ..._uploadedFiles.map(
              (f) => Card(
                child: ListTile(
                  leading: const Icon(Icons.insert_drive_file),
                  title: Text(
                    f.originalName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(f.description ?? 'Document'),
                  trailing: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () =>
                        setState(() => _uploadedFiles.remove(f)),
                  ),
                ),
              ),
            ),
          ],

          const SizedBox(height: 32),

          // Submit button
          FilledButton(
            onPressed: _isSubmitting ? null : _submit,
            child: _isSubmitting
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                : const Text('Submit Verification'),
          ),
        ],
      ),
    );
  }

  Future<void> _pickAndUploadFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png', 'doc', 'docx'],
    );

    if (result == null || result.files.isEmpty) return;

    final file = result.files.first;
    if (file.path == null) return;

    setState(() => _isUploading = true);

    try {
      // Get description from user
      final description = await _askDescription();

      // Get signed URL from backend via remote source
      final source = ref.read(verificationRemoteSourceProvider);
      final urlData = await source.getSignedUploadUrl(
        fileName: file.name,
        contentType: _getMimeType(file.extension ?? 'bin'),
      );
      final signedUrl = urlData['signedUrl'] as String;
      final publicUrl = urlData['publicUrl'] as String;
      final storagePath = urlData['path'] as String;

      // Upload file to Supabase
      final uploaded = await FileUploadHelper.uploadToSignedUrl(
        signedUrl: signedUrl,
        file: File(file.path!),
        contentType: _getMimeType(file.extension ?? 'bin'),
      );

      if (!uploaded) throw Exception('Upload failed');

      setState(() {
        _uploadedFiles.add(_UploadedFile(
          fileName: file.name,
          originalName: file.name,
          fileSize: file.size,
          mimeType: _getMimeType(file.extension ?? 'bin'),
          fileUrl: publicUrl,
          storagePath: storagePath,
          description: description,
        ));
      });
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'VerificationSubmit._pickAndUploadFile',
      );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to upload file')),
        );
      }
    } finally {
      if (mounted) setState(() => _isUploading = false);
    }
  }

  Future<String?> _askDescription() async {
    final controller = TextEditingController();
    final result = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Document Type'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'e.g., Government ID, Degree Certificate',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Skip'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, controller.text),
            child: const Text('OK'),
          ),
        ],
      ),
    );
    controller.dispose();
    return result?.isNotEmpty == true ? result : null;
  }

  Future<void> _submit() async {
    setState(() => _isSubmitting = true);

    try {
      // Submit or resubmit verification
      final notifier = ref.read(verificationStateProvider.notifier);
      final currentVerification =
          ref.read(verificationStateProvider).valueOrNull;

      if (currentVerification != null && currentVerification.canResubmit) {
        await notifier.resubmit(notes: _notesController.text);
      } else {
        await notifier.submit(notes: _notesController.text);
      }

      // Add documents to the verification
      final docsNotifier =
          ref.read(verificationDocumentsProvider.notifier);
      for (final file in _uploadedFiles) {
        await docsNotifier.addDocument(
          fileName: file.fileName,
          originalName: file.originalName,
          fileSize: file.fileSize,
          mimeType: file.mimeType,
          fileUrl: file.fileUrl,
          storagePath: file.storagePath,
          description: file.description,
        );
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Verification submitted successfully'),
          ),
        );
        context.pop();
      }
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'VerificationSubmit._submit',
      );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to submit: $e')),
        );
      }
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  String _getMimeType(String ext) => switch (ext.toLowerCase()) {
        'pdf' => 'application/pdf',
        'jpg' || 'jpeg' => 'image/jpeg',
        'png' => 'image/png',
        'doc' => 'application/msword',
        'docx' =>
          'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
        _ => 'application/octet-stream',
      };
}

class _UploadedFile {
  final String fileName;
  final String originalName;
  final int fileSize;
  final String mimeType;
  final String fileUrl;
  final String storagePath;
  final String? description;

  _UploadedFile({
    required this.fileName,
    required this.originalName,
    required this.fileSize,
    required this.mimeType,
    required this.fileUrl,
    required this.storagePath,
    this.description,
  });
}
