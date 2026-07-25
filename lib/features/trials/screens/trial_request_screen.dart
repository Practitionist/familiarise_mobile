import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/sentry_logger.dart';
import '../providers/trial_provider.dart';

/// Screen for a consultee to request a trial with a consultant.
///
/// Receives consultantProfileId and subscriptionPlanId as parameters.
class TrialRequestScreen extends ConsumerStatefulWidget {
  const TrialRequestScreen({
    required this.consultantProfileId,
    required this.subscriptionPlanId,
    super.key,
  });

  final String consultantProfileId;
  final String subscriptionPlanId;

  @override
  ConsumerState<TrialRequestScreen> createState() => _TrialRequestScreenState();
}

class _TrialRequestScreenState extends ConsumerState<TrialRequestScreen> {
  final _notesController = TextEditingController();
  bool _isSubmitting = false;

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final eligibilityAsync = ref.watch(
      trialEligibilityProvider(widget.consultantProfileId),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Request Trial')),
      body: eligibilityAsync.when(
        data: (eligibility) {
          if (!eligibility.eligible) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.info_outline,
                      size: 64,
                      color: Colors.orange,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Not Eligible',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      eligibility.reason ??
                          'You are not eligible '
                              'for a trial with this consultant.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Request a Free Trial',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                const Text(
                  'You can have one free trial per consultant. '
                  'The consultant will review your request and '
                  'schedule a session.',
                ),
                const SizedBox(height: 24),
                TextField(
                  controller: _notesController,
                  decoration: const InputDecoration(
                    labelText: 'Notes (optional)',
                    hintText: 'What would you like to discuss?',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 4,
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
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
                        : const Text('Request Trial'),
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }

  Future<void> _submit() async {
    setState(() => _isSubmitting = true);
    try {
      await ref.read(trialListProvider.notifier).requestTrial(
            consultantProfileId: widget.consultantProfileId,
            subscriptionPlanId: widget.subscriptionPlanId,
            notes: _notesController.text.isEmpty ? null : _notesController.text,
          );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Trial request submitted')),
        );
        context.pop();
      }
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'TrialRequest._submit',
      );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed: $e')),
        );
      }
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }
}
