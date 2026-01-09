import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/errors/exceptions.dart';
import '../providers/review_provider.dart';
import 'star_rating_input.dart';

/// Dialog for submitting a review for a consultant
class SubmitReviewDialog extends ConsumerStatefulWidget {
  final String consultantProfileId;
  final String consultantName;
  final String? consultantImage;

  const SubmitReviewDialog({
    super.key,
    required this.consultantProfileId,
    required this.consultantName,
    this.consultantImage,
  });

  /// Show the review dialog and return true if a review was submitted
  static Future<bool> show(
    BuildContext context, {
    required String consultantProfileId,
    required String consultantName,
    String? consultantImage,
  }) async {
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => SubmitReviewDialog(
        consultantProfileId: consultantProfileId,
        consultantName: consultantName,
        consultantImage: consultantImage,
      ),
    );
    return result ?? false;
  }

  @override
  ConsumerState<SubmitReviewDialog> createState() => _SubmitReviewDialogState();
}

class _SubmitReviewDialogState extends ConsumerState<SubmitReviewDialog> {
  final _descriptionController = TextEditingController();
  int _rating = 0;
  bool _isSubmitting = false;
  String? _error;

  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (_rating == 0) {
      setState(() => _error = 'Please select a rating');
      return;
    }

    setState(() {
      _isSubmitting = true;
      _error = null;
    });

    final review = await ref.read(submitReviewProvider.notifier).submit(
          consultantProfileId: widget.consultantProfileId,
          rating: _rating,
          reviewDescription: _descriptionController.text.trim().isEmpty
              ? null
              : _descriptionController.text.trim(),
        );

    setState(() => _isSubmitting = false);

    if (review != null && mounted) {
      Navigator.of(context).pop(true);
    } else {
      final state = ref.read(submitReviewProvider);
      if (state is AsyncError) {
        final error = state.error;
        if (error is AlreadyExistsException) {
          setState(() {
            _error = 'You have already reviewed this consultant';
          });
        } else {
          setState(() {
            _error = 'Failed to submit review. Please try again.';
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Row(
              children: [
                // Consultant avatar
                CircleAvatar(
                  radius: 24,
                  backgroundImage: widget.consultantImage != null
                      ? NetworkImage(widget.consultantImage!)
                      : null,
                  backgroundColor: colorScheme.primaryContainer,
                  child: widget.consultantImage == null
                      ? Icon(
                          Icons.person,
                          color: colorScheme.primary,
                        )
                      : null,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rate your session',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'with ${widget.consultantName}',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  icon: const Icon(Icons.close),
                  visualDensity: VisualDensity.compact,
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Star rating
            StarRatingInput(
              rating: _rating,
              onRatingChanged: (value) => setState(() {
                _rating = value;
                _error = null;
              }),
              size: 44,
            ),
            const SizedBox(height: 8),
            Text(
              _getRatingLabel(_rating),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 24),

            // Description field
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                hintText: 'Share your experience (optional)',
                filled: true,
                fillColor: colorScheme.surfaceContainerHighest,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              maxLines: 3,
              minLines: 2,
              textCapitalization: TextCapitalization.sentences,
            ),

            // Error message
            if (_error != null) ...[
              const SizedBox(height: 12),
              Text(
                _error!,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colorScheme.error,
                ),
              ),
            ],

            const SizedBox(height: 24),

            // Buttons
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: _isSubmitting
                        ? null
                        : () => Navigator.of(context).pop(false),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('Skip'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: FilledButton(
                    onPressed: _isSubmitting ? null : _submit,
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: _isSubmitting
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : const Text('Submit'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _getRatingLabel(int rating) {
    switch (rating) {
      case 1:
        return 'Poor';
      case 2:
        return 'Fair';
      case 3:
        return 'Good';
      case 4:
        return 'Very Good';
      case 5:
        return 'Excellent';
      default:
        return 'Tap to rate';
    }
  }
}
