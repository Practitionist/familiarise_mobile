import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/document/document_entities.dart';
import '../providers/document_provider.dart';

class AppointmentDocumentsScreen extends ConsumerWidget {
  const AppointmentDocumentsScreen({
    required this.appointmentId,
    super.key,
  });

  final String appointmentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final docsAsync = ref.watch(
      appointmentDocumentsProvider(appointmentId),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Documents')),
      body: docsAsync.when(
        data: (docs) {
          if (docs.isEmpty) {
            return const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.folder_open, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('No documents yet'),
                ],
              ),
            );
          }
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: docs.length,
            itemBuilder: (context, index) => _DocumentCard(
              document: docs[index],
            ),
          );
        },
        loading: () =>
            const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }
}

class _DocumentCard extends StatelessWidget {
  const _DocumentCard({required this.document});

  final AppointmentDocument document;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final (color, icon) = _statusDecoration(document.reviewStatus);

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(_fileIcon(document.mimeType),
                    color: theme.colorScheme.primary),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        document.originalName,
                        style: theme.textTheme.titleSmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '${_formatSize(document.fileSize)} - '
                        'Uploaded by ${document.uploadedByRole}',
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Chip(
                  avatar: Icon(icon, size: 14, color: color),
                  label: Text(
                    document.reviewStatus.displayLabel,
                    style: TextStyle(fontSize: 11, color: color),
                  ),
                  backgroundColor: color.withValues(alpha: 0.1),
                  side: BorderSide.none,
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
            if (document.description != null) ...[
              const SizedBox(height: 8),
              Text(document.description!,
                  style: theme.textTheme.bodyMedium),
            ],
            if (document.reviewNotes != null) ...[
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Review: ${document.reviewNotes}',
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
            const SizedBox(height: 4),
            Text(
              DateFormat.yMMMd().format(document.uploadedAt),
              style: theme.textTheme.bodySmall?.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _fileIcon(String mimeType) {
    if (mimeType.startsWith('image/')) return Icons.image;
    if (mimeType == 'application/pdf') return Icons.picture_as_pdf;
    return Icons.insert_drive_file;
  }

  String _formatSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) {
      return '${(bytes / 1024).toStringAsFixed(1)} KB';
    }
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }

  (Color, IconData) _statusDecoration(
    DocumentReviewStatus status,
  ) =>
      switch (status) {
        DocumentReviewStatus.pending =>
          (Colors.orange, Icons.hourglass_top),
        DocumentReviewStatus.inReview =>
          (Colors.blue, Icons.rate_review),
        DocumentReviewStatus.approved =>
          (Colors.green, Icons.check_circle),
        DocumentReviewStatus.rejected =>
          (Colors.red, Icons.cancel),
        DocumentReviewStatus.needsRevision =>
          (Colors.amber, Icons.edit_note),
      };
}
