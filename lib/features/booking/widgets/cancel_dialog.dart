import 'package:flutter/material.dart';

import '../../../domain/entities/booking/booking_entities.dart';

/// Shows a confirmation dialog for cancelling a booking
///
/// Returns the cancellation reason if confirmed, null if cancelled
Future<String?> showCancelDialog({
  required BuildContext context,
  required Booking booking,
}) async {
  return showDialog<String>(
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

            // Reason field
            Text(
              'Reason for cancellation (optional)',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _reasonController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Let us know why you\'re cancelling...',
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
            // Return empty string if no reason, so we know user confirmed
            Navigator.of(context).pop(
              _reasonController.text.trim().isEmpty
                  ? '' // Empty string means confirmed without reason
                  : _reasonController.text.trim(),
            );
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
    }
  }
}
