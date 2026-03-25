import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/sentry_logger.dart';
import '../providers/payout_provider.dart';

class AddPayoutAccountScreen extends ConsumerStatefulWidget {
  const AddPayoutAccountScreen({super.key});

  @override
  ConsumerState<AddPayoutAccountScreen> createState() =>
      _AddPayoutAccountScreenState();
}

class _AddPayoutAccountScreenState
    extends ConsumerState<AddPayoutAccountScreen> {
  String _accountType = 'BANK_ACCOUNT';
  final _holderNameCtrl = TextEditingController();
  final _bankNameCtrl = TextEditingController();
  final _last4Ctrl = TextEditingController();
  final _ifscCtrl = TextEditingController();
  final _upiCtrl = TextEditingController();
  bool _isSubmitting = false;

  @override
  void dispose() {
    _holderNameCtrl.dispose();
    _bankNameCtrl.dispose();
    _last4Ctrl.dispose();
    _ifscCtrl.dispose();
    _upiCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Payout Account')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SegmentedButton<String>(
              segments: const [
                ButtonSegment(
                  value: 'BANK_ACCOUNT',
                  label: Text('Bank'),
                  icon: Icon(Icons.account_balance),
                ),
                ButtonSegment(
                  value: 'UPI',
                  label: Text('UPI'),
                  icon: Icon(Icons.phone_android),
                ),
              ],
              selected: {_accountType},
              onSelectionChanged: (v) =>
                  setState(() => _accountType = v.first),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: _holderNameCtrl,
              decoration: const InputDecoration(
                labelText: 'Account Holder Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            if (_accountType == 'BANK_ACCOUNT') ...[
              TextField(
                controller: _bankNameCtrl,
                decoration: const InputDecoration(
                  labelText: 'Bank Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _last4Ctrl,
                decoration: const InputDecoration(
                  labelText: 'Last 4 digits of account number',
                  border: OutlineInputBorder(),
                ),
                maxLength: 4,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _ifscCtrl,
                decoration: const InputDecoration(
                  labelText: 'IFSC Code',
                  border: OutlineInputBorder(),
                ),
                textCapitalization: TextCapitalization.characters,
              ),
            ] else ...[
              TextField(
                controller: _upiCtrl,
                decoration: const InputDecoration(
                  labelText: 'UPI ID (e.g., name@upi)',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
            const SizedBox(height: 32),
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
                    : const Text('Add Account'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _submit() async {
    setState(() => _isSubmitting = true);
    try {
      await ref.read(payoutAccountsProvider.notifier).create({
        'provider': 'RAZORPAY',
        'accountType': _accountType,
        'accountHolderName': _holderNameCtrl.text.isEmpty
            ? null
            : _holderNameCtrl.text,
        if (_accountType == 'BANK_ACCOUNT') ...{
          'bankName': _bankNameCtrl.text.isEmpty
              ? null
              : _bankNameCtrl.text,
          'accountNumberLast4': _last4Ctrl.text.isEmpty
              ? null
              : _last4Ctrl.text,
          'ifscCode':
              _ifscCtrl.text.isEmpty ? null : _ifscCtrl.text,
        } else ...{
          'upiId': _upiCtrl.text.isEmpty ? null : _upiCtrl.text,
        },
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Account added')),
        );
        context.pop();
      }
    } catch (e, stack) {
      AppSentryLogger.captureException(e,
          stackTrace: stack, context: 'AddPayoutAccount._submit');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to add account. Please try again.'),
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }
}
