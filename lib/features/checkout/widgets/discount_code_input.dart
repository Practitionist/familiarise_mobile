import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/checkout_flow_provider.dart';

/// Widget for entering and validating discount codes
class DiscountCodeInput extends ConsumerStatefulWidget {
  final String bookingId;
  final double? originalAmount;
  final ValueChanged<String> onDiscountApplied;
  final VoidCallback onDiscountRemoved;

  const DiscountCodeInput({
    super.key,
    required this.bookingId,
    this.originalAmount,
    required this.onDiscountApplied,
    required this.onDiscountRemoved,
  });

  @override
  ConsumerState<DiscountCodeInput> createState() => _DiscountCodeInputState();
}

class _DiscountCodeInputState extends ConsumerState<DiscountCodeInput> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  bool _isApplied = false;

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final discountState = ref.watch(discountCodeValidatorProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                focusNode: _focusNode,
                enabled: !_isApplied,
                textCapitalization: TextCapitalization.characters,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z0-9]')),
                  UpperCaseTextFormatter(),
                ],
                decoration: InputDecoration(
                  hintText: 'Enter discount code',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 14,
                  ),
                  suffixIcon: _isApplied
                      ? IconButton(
                          icon: Icon(
                            Icons.close,
                            color: theme.colorScheme.error,
                          ),
                          onPressed: _removeDiscount,
                          tooltip: 'Remove discount',
                        )
                      : null,
                ),
                onSubmitted: (_) => _applyDiscount(),
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
              height: 48,
              child: FilledButton.tonal(
                onPressed:
                    _isApplied || discountState.isLoading ? null : _applyDiscount,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                ),
                child: discountState.isLoading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Text(_isApplied ? 'Applied' : 'Apply'),
              ),
            ),
          ],
        ),

        // Status messages
        const SizedBox(height: 8),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: _buildStatusMessage(theme, discountState),
        ),
      ],
    );
  }

  Widget _buildStatusMessage(
    ThemeData theme,
    AsyncValue discountState,
  ) {
    // Error state
    if (discountState.hasError && !_isApplied) {
      return Container(
        key: const ValueKey('error'),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: theme.colorScheme.errorContainer.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Icon(
              Icons.error_outline,
              size: 16,
              color: theme.colorScheme.error,
            ),
            const SizedBox(width: 6),
            Expanded(
              child: Text(
                discountState.error.toString(),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.error,
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Success state
    if (_isApplied && discountState.hasValue && discountState.value != null) {
      final discount = discountState.value!;
      return Container(
        key: const ValueKey('success'),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.green.shade100,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Icon(
              Icons.check_circle,
              size: 16,
              color: Colors.green.shade700,
            ),
            const SizedBox(width: 6),
            Expanded(
              child: Text(
                discount.displayText,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Empty state
    return const SizedBox.shrink(key: ValueKey('empty'));
  }

  Future<void> _applyDiscount() async {
    final code = _controller.text.trim();
    if (code.isEmpty) return;

    _focusNode.unfocus();

    await ref.read(discountCodeValidatorProvider.notifier).validateCode(
          code: code,
          bookingId: widget.bookingId,
          amount: widget.originalAmount,
        );

    final state = ref.read(discountCodeValidatorProvider);
    if (state.hasValue && state.value != null && state.value!.isValid) {
      setState(() => _isApplied = true);
      widget.onDiscountApplied(code);
    }
  }

  void _removeDiscount() {
    setState(() {
      _isApplied = false;
      _controller.clear();
    });
    ref.read(discountCodeValidatorProvider.notifier).clear();
    widget.onDiscountRemoved();
  }
}

/// Text formatter to convert input to uppercase
class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return newValue.copyWith(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
