import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/verification/verification_entities.dart';
import '../providers/verification_provider.dart';
import '../widgets/document_upload_card.dart';
import '../widgets/verification_status_badge.dart';

class VerificationStatusScreen extends ConsumerWidget {
  const VerificationStatusScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final verificationAsync = ref.watch(verificationStateProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Verification Status')),
      body: verificationAsync.when(
        data: (verification) {
          if (verification == null) {
            return _buildNoVerification(context);
          }
          return _buildVerificationDetails(
            context,
            ref,
            verification,
            theme,
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Failed to load status: $error'),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () =>
                    ref.read(verificationStateProvider.notifier).refresh(),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNoVerification(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.verified_user, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            Text(
              'No Verification Submitted',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            const Text(
              'Submit your verification to get your profile verified '
              'and build trust with consultees.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: () => context.push('/verification/submit'),
              icon: const Icon(Icons.upload_file),
              label: const Text('Submit Verification'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVerificationDetails(
    BuildContext context,
    WidgetRef ref,
    VerificationRequest verification,
    ThemeData theme,
  ) {
    final documentsAsync = ref.watch(verificationDocumentsProvider);

    return RefreshIndicator(
      onRefresh: () =>
          ref.read(verificationStateProvider.notifier).refresh(),
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Status card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Verification',
                        style: theme.textTheme.titleMedium,
                      ),
                      VerificationStatusBadge(status: verification.status),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _infoRow('Submitted', _formatDate(verification.submittedAt)),
                  if (verification.notes != null)
                    _infoRow('Notes', verification.notes!),
                  if (verification.reviewedAt != null)
                    _infoRow(
                      'Reviewed',
                      _formatDate(verification.reviewedAt!),
                    ),
                ],
              ),
            ),
          ),

          // Rejection feedback
          if (verification.rejectionReason != null) ...[
            const SizedBox(height: 16),
            Card(
              color: Colors.red.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Feedback',
                      style: theme.textTheme.titleSmall?.copyWith(
                        color: Colors.red.shade700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(verification.rejectionReason!),
                    if (verification.feedbackDetails != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        verification.feedbackDetails!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],

          // Documents
          const SizedBox(height: 16),
          Text('Documents', style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          documentsAsync.when(
            data: (documents) {
              if (documents.isEmpty) {
                return const Card(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('No documents uploaded yet.'),
                  ),
                );
              }
              return Column(
                children: documents
                    .map((doc) => DocumentUploadCard(document: doc))
                    .toList(),
              );
            },
            loading: () =>
                const Center(child: CircularProgressIndicator()),
            error: (e, _) => Text('Failed to load documents: $e'),
          ),

          // Actions
          const SizedBox(height: 24),
          if (verification.isPending)
            OutlinedButton.icon(
              onPressed: () => context.push('/verification/submit'),
              icon: const Icon(Icons.add),
              label: const Text('Add Documents'),
            ),
          if (verification.canResubmit)
            FilledButton.icon(
              onPressed: () => context.push('/verification/submit'),
              icon: const Icon(Icons.refresh),
              label: const Text('Resubmit Verification'),
            ),
        ],
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
