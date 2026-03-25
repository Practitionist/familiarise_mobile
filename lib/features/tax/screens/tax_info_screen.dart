import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/sentry_logger.dart';
import '../providers/tax_provider.dart';

class TaxInfoScreen extends ConsumerStatefulWidget {
  const TaxInfoScreen({super.key});

  @override
  ConsumerState<TaxInfoScreen> createState() => _TaxInfoScreenState();
}

class _TaxInfoScreenState extends ConsumerState<TaxInfoScreen> {
  final _panCtrl = TextEditingController();
  final _gstCtrl = TextEditingController();
  bool _isSubmitting = false;
  bool _initialized = false;

  @override
  void dispose() {
    _panCtrl.dispose();
    _gstCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final taxInfoAsync = ref.watch(taxInfoStateProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Tax Information')),
      body: taxInfoAsync.when(
        data: (taxInfo) {
          if (!_initialized && taxInfo != null) {
            _panCtrl.text = taxInfo.panNumber ?? '';
            _gstCtrl.text = taxInfo.gstNumber ?? '';
            _initialized = true;
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tax Details',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Required for TDS compliance and generating '
                  'tax invoices.',
                ),
                const SizedBox(height: 24),
                TextField(
                  controller: _panCtrl,
                  decoration: const InputDecoration(
                    labelText: 'PAN Number',
                    hintText: 'ABCDE1234F',
                    border: OutlineInputBorder(),
                  ),
                  textCapitalization: TextCapitalization.characters,
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _gstCtrl,
                  decoration: const InputDecoration(
                    labelText: 'GST Number (optional)',
                    hintText: '22AAAAA0000A1Z5',
                    border: OutlineInputBorder(),
                  ),
                  textCapitalization: TextCapitalization.characters,
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: _isSubmitting ? null : _save,
                    child: _isSubmitting
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : const Text('Save Tax Info'),
                  ),
                ),
              ],
            ),
          );
        },
        loading: () =>
            const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }

  Future<void> _save() async {
    setState(() => _isSubmitting = true);
    try {
      await ref.read(taxInfoStateProvider.notifier).save({
        'panNumber':
            _panCtrl.text.isEmpty ? null : _panCtrl.text,
        'gstNumber':
            _gstCtrl.text.isEmpty ? null : _gstCtrl.text,
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Tax info saved')),
        );
      }
    } catch (e, stack) {
      AppSentryLogger.captureException(e,
          stackTrace: stack, context: 'TaxInfoScreen._save');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to save. Please try again.'),
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }
}
