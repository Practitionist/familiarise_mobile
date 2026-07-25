import 'package:flutter/material.dart';

import '../../../core/constants/enums.dart' show CancellationReason;
import '../../../domain/entities/booking/booking_entities.dart';

/// Result of cancel dialog containing both reason enum and notes
class CancelResult {
  final CancellationReason? reason;
  final String? notes;
  const CancelResult({this.reason, this.notes});
}

/// Shows a confirmation dialog for cancelling a booking
///
/// Returns a [CancelResult] if confirmed, null if dismissed
Future<CancelResult?> showCancelDialog({
  required BuildContext context,
  required Booking booking,
}) async {
  return showDialog<CancelResult>(
    context: context,
    builder: (context) => _CancelDialog(booking: booking),
  );
}

class _CancelDialog extends StatefulWidget {
  final Booking booking;

  const _CancelDialog({required this.booking});

  @override
  State<_CancelDialog> createState() => _CancelDialogState();
}

class _CancelDialogState extends State<_CancelDialog> {
  final _reasonController = TextEditingController();
  CancellationReason? _selectedReason;

  /// Only show user-relevant cancellation reasons
  static const _userReasons = [
    CancellationReason.scheduleConflict,
    CancellationReason.foundAlternative,
    CancellationReason.financialReasons,
    CancellationReason.personalEmergency,
    CancellationReason.noLongerNeeded,
    CancellationReason.other,
  ];

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isPaid = widget.booking.isPaid;

    return AlertDialog(
      title: const Text('Cancel Booking?'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Are you sure you want to cancel this ${_getBookingTypeText()}?',
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),

            // Refund message for paid bookings
            if (isPaid) ...[
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.green.shade200),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      color: Colors.green.shade700,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Refund will be processed within 5-7 business days',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.green.shade700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],

            // Warning for non-refundable cases
            if (!isPaid &&
                widget.booking.status ==
                    RequestStatus.approvedPendingPayment) ...[
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.orange.shade200),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.orange.shade700,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'This booking has not been paid yet.',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.orange.shade700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],

            // Cancellation reason selector
            Text(
              'Reason for cancellation',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _userReasons.map((reason) {
                final isSelected = _selectedReason == reason;
                return FilterChip(
                  label: Text(_reasonLabel(reason)),
                  selected: isSelected,
                  onSelected: (_) => setState(() => _selectedReason = reason),
                  selectedColor: theme.colorScheme.errorContainer,
                  checkmarkColor: theme.colorScheme.onErrorContainer,
                );
              }).toList(),
            ),
            const SizedBox(height: 16),

            // Additional notes
            Text(
              'Additional notes (optional)',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _reasonController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Let us know more details...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: const EdgeInsets.all(12),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Keep Booking'),
        ),
        FilledButton(
          onPressed: () {
            Navigator.of(context).pop(CancelResult(
              reason: _selectedReason,
              notes: _reasonController.text.trim().isEmpty
                  ? null
                  : _reasonController.text.trim(),
            ));
          },
          style: FilledButton.styleFrom(
            backgroundColor: theme.colorScheme.error,
          ),
          child: const Text('Cancel Booking'),
        ),
      ],
    );
  }

  String _getBookingTypeText() {
    switch (widget.booking.bookingType) {
      case BookingType.consultation:
        return 'consultation';
      case BookingType.subscription:
        return 'subscription';
      case BookingType.webinar:
        return 'webinar';
      case BookingType.classes:
        return 'class';
      case BookingType.trial:
        return 'trial';
    }
  }

  String _reasonLabel(CancellationReason reason) {
    switch (reason) {
      case CancellationReason.scheduleConflict:
        return 'Schedule conflict';
      case CancellationReason.foundAlternative:
        return 'Found alternative';
      case CancellationReason.financialReasons:
        return 'Financial reasons';
      case CancellationReason.personalEmergency:
        return 'Personal emergency';
      case CancellationReason.noLongerNeeded:
        return 'No longer needed';
      case CancellationReason.other:
        return 'Other';
      default:
        return reason.name;
    }
  }
}
