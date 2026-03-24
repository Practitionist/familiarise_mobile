import 'package:flutter/material.dart';

import '../../../domain/entities/verification/verification_document.dart';

class DocumentUploadCard extends StatelessWidget {
  const DocumentUploadCard({
    required this.document,
    super.key,
  });

  final VerificationDocument document;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: ListTile(
        leading: Icon(
          _iconForMimeType(document.mimeType),
          color: theme.colorScheme.primary,
        ),
        title: Text(
          document.originalName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          '${_formatFileSize(document.fileSize)}'
          '${document.description != null ? ' - ${document.description}' : ''}',
          style: theme.textTheme.bodySmall,
        ),
        trailing: _buildValidityIndicator(document.isValid),
      ),
    );
  }

  IconData _iconForMimeType(String mimeType) {
    if (mimeType.startsWith('image/')) return Icons.image;
    if (mimeType == 'application/pdf') return Icons.picture_as_pdf;
    return Icons.insert_drive_file;
  }

  String _formatFileSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }

  Widget? _buildValidityIndicator(bool? isValid) {
    if (isValid == null) return null;
    return Icon(
      isValid ? Icons.check_circle : Icons.error,
      color: isValid ? Colors.green : Colors.red,
      size: 20,
    );
  }
}
