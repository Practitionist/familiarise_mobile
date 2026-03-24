import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/trial/trial_entities.dart';
import '../providers/trial_provider.dart';
import '../widgets/trial_card.dart';

class TrialListScreen extends ConsumerWidget {
  const TrialListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trialsAsync = ref.watch(trialListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Trial Sessions')),
      body: trialsAsync.when(
        data: (trials) {
          if (trials.isEmpty) {
            return const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.science_outlined, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('No trial sessions yet'),
                ],
              ),
            );
          }
          return RefreshIndicator(
            onRefresh: () =>
                ref.read(trialListProvider.notifier).refresh(),
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: trials.length,
              itemBuilder: (context, index) {
                final trial = trials[index];
                return TrialCard(
                  trial: trial,
                  showActions: trial.status.isPending,
                  onAccept: () => _updateStatus(
                    ref,
                    context,
                    trial.id,
                    'SCHEDULED',
                  ),
                  onReject: () => _updateStatus(
                    ref,
                    context,
                    trial.id,
                    'REJECTED',
                  ),
                );
              },
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Error: $error'),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () =>
                    ref.read(trialListProvider.notifier).refresh(),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _updateStatus(
    WidgetRef ref,
    BuildContext context,
    String trialId,
    String status,
  ) async {
    try {
      await ref
          .read(trialListProvider.notifier)
          .updateStatus(trialId: trialId, status: status);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Trial ${status.toLowerCase()}')),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed: $e')),
        );
      }
    }
  }
}
