import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/errors/exceptions.dart';
import '../../reviews/widgets/star_rating_input.dart';
import '../providers/feedback_provider.dart';

/// Post-Call 1-Tap CSAT & Verified Review bottom sheet.
///
/// Allows consultees and consultants to rate a session 1–5 stars
/// (`AppointmentFeedback`), select a `SessionRatingCause` chip, and optionally
/// publish a verified `ConsultantReview`.
class PostCallCsatSheet extends ConsumerStatefulWidget {
  const PostCallCsatSheet({
    required this.appointmentId,
    this.consultantProfileId,
    this.consultantName,
    this.sessionTitle,
    this.organizationId,
    this.initialRating = 0,
    super.key,
  });

  final String appointmentId;
  final String? consultantProfileId;
  final String? consultantName;
  final String? sessionTitle;
  final String? organizationId;
  final int initialRating;

  /// Helper to present the Post-Call 1-Tap CSAT sheet as a modal bottom sheet.
  static Future<AppointmentCsatResult?> show(
    BuildContext context, {
    required String appointmentId,
    String? consultantProfileId,
    String? consultantName,
    String? sessionTitle,
    String? organizationId,
    int initialRating = 0,
  }) {
    return showModalBottomSheet<AppointmentCsatResult>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) => PostCallCsatSheet(
        appointmentId: appointmentId,
        consultantProfileId: consultantProfileId,
        consultantName: consultantName,
        sessionTitle: sessionTitle,
        organizationId: organizationId,
        initialRating: initialRating,
      ),
    );
  }

  @override
  ConsumerState<PostCallCsatSheet> createState() => _PostCallCsatSheetState();
}

class _PostCallCsatSheetState extends ConsumerState<PostCallCsatSheet> {
  late int _rating = widget.initialRating;
  SessionRatingCause? _selectedCause;
  bool _publishPublicReview = false;
  final _commentController = TextEditingController();
  bool _isSubmitting = false;

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  String _ratingHeadline(int rating) {
    switch (rating) {
      case 1:
        return 'Very dissatisfied';
      case 2:
        return 'Could be better';
      case 3:
        return 'Okay experience';
      case 4:
        return 'Good session!';
      case 5:
        return 'Excellent session!';
      default:
        return 'Tap a star to rate this session';
    }
  }

  String _resolveErrorMessage(Object? error) {
    if (error is AppException && error.message.trim().isNotEmpty) {
      return error.message;
    }
    if (error is DioException) {
      final inner = error.error;
      if (inner is AppException && inner.message.trim().isNotEmpty) {
        return inner.message;
      }
      final data = error.response?.data;
      if (data is Map<String, dynamic>) {
        final err = data['error'];
        if (err is Map<String, dynamic> && err['message'] is String) {
          final msg = (err['message'] as String).trim();
          if (msg.isNotEmpty) return msg;
        }
      }
    }
    return 'Could not submit rating. Please try again.';
  }

  Future<void> _submit() async {
    if (_rating < 1 || _isSubmitting) return;
    setState(() => _isSubmitting = true);

    final hasConsultantProfile =
        widget.consultantProfileId?.isNotEmpty ?? false;
    final result = await ref.read(postCallCsatProvider.notifier).submitCsat(
          appointmentId: widget.appointmentId,
          rating: _rating,
          ratingCause: _selectedCause,
          comment: _commentController.text,
          consultantProfileId: widget.consultantProfileId,
          organizationId: widget.organizationId,
          publishPublicReview: hasConsultantProfile && _publishPublicReview,
        );

    if (!mounted) return;
    setState(() => _isSubmitting = false);

    if (result != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            result.reviewCreated
                ? 'Session rating and verified review submitted!'
                : 'Thanks for rating your session!',
          ),
          behavior: SnackBarBehavior.floating,
        ),
      );
      Navigator.of(context).pop(result);
    } else {
      final errorObj = ref.read(postCallCsatProvider).error;
      final errorMessage = _resolveErrorMessage(errorObj);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
          backgroundColor: Theme.of(context).colorScheme.error,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Padding(
      padding: EdgeInsets.fromLTRB(20, 16, 20, bottomInset + 24),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Drag handle
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.stars_rounded, color: colorScheme.primary, size: 28),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'How was your session?',
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (widget.sessionTitle != null ||
                          widget.consultantName != null)
                        Text(
                          [
                            if (widget.sessionTitle != null)
                              widget.sessionTitle!,
                            if (widget.consultantName != null)
                              'with ${widget.consultantName!}',
                          ].join(' • '),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // 1-Tap Star Rating Input
            Center(
              child: StarRatingInput(
                rating: _rating,
                onRatingChanged: (val) => setState(() => _rating = val),
                size: 44,
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                _ratingHeadline(_rating),
                style: theme.textTheme.titleSmall?.copyWith(
                  color: _rating > 0
                      ? colorScheme.primary
                      : colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // SessionRatingCause quick-select chips
            Text(
              _rating > 0 && _rating <= 3
                  ? 'What mainly affected your rating?'
                  : 'What stood out? (optional)',
              style: theme.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: SessionRatingCause.values.map((cause) {
                final selected = _selectedCause == cause;
                return ChoiceChip(
                  label: Text(cause.label),
                  selected: selected,
                  onSelected: (_) => setState(() {
                    _selectedCause = selected ? null : cause;
                  }),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),

            // Optional comment / review text
            TextField(
              controller: _commentController,
              maxLines: 3,
              minLines: 2,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                labelText: 'Share a quick note or review (optional)',
                hintText: 'What went well or could be improved?',
                filled: true,
                fillColor: colorScheme.surfaceContainerLow,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            // Verified public review toggle if consultantProfileId is known
            if (widget.consultantProfileId != null &&
                widget.consultantProfileId!.isNotEmpty) ...[
              const SizedBox(height: 8),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Also publish as verified consultant review'),
                subtitle: Text(
                  'Share your rating on ${widget.consultantName ?? "the consultant"}\'s profile',
                ),
                value: _publishPublicReview,
                onChanged: (v) => setState(() => _publishPublicReview = v),
              ),
            ],

            const SizedBox(height: 20),
            FilledButton.icon(
              onPressed: _rating < 1 || _isSubmitting ? null : _submit,
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: _isSubmitting
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : const Icon(Icons.check_circle_outline),
              label: Text(
                _isSubmitting ? 'Submitting...' : 'Submit 1-Tap Rating',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
