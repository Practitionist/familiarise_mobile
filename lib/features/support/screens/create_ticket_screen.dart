import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/support/support_entities.dart';
import '../providers/support_provider.dart';
import '../widgets/issue_type_picker.dart';

/// Screen for creating a new support ticket
class CreateTicketScreen extends ConsumerStatefulWidget {
  /// Optional booking ID to link the ticket to
  final String? bookingId;

  /// Optional booking type (CONSULTATION, SUBSCRIPTION, etc.)
  final String? bookingType;

  const CreateTicketScreen({
    super.key,
    this.bookingId,
    this.bookingType,
  });

  @override
  ConsumerState<CreateTicketScreen> createState() => _CreateTicketScreenState();
}

class _CreateTicketScreenState extends ConsumerState<CreateTicketScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  SupportIssueType? _selectedIssueType;
  TicketPriority _selectedPriority = TicketPriority.medium;
  bool _isSubmitting = false;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    if (_isSubmitting) return;

    setState(() => _isSubmitting = true);

    final request = CreateTicketRequest(
      title: _titleController.text.trim(),
      description: _descriptionController.text.trim(),
      issueType: _selectedIssueType?.value,
      priority: _selectedPriority.value,
      consultationId: widget.bookingType == 'CONSULTATION' ? widget.bookingId : null,
      subscriptionId: widget.bookingType == 'SUBSCRIPTION' ? widget.bookingId : null,
    );

    final ticket = await ref.read(createTicketProvider.notifier).submit(request);

    setState(() => _isSubmitting = false);

    if (ticket != null && mounted) {
      // Show success and navigate back
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Ticket created successfully'),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.green.shade600,
        ),
      );
      context.pop();
    } else if (mounted) {
      // Show error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Failed to create ticket. Please try again.'),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Theme.of(context).colorScheme.error,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
      appBar: AppBar(
        title: const Text('Create Ticket'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // Title field
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'Title',
                hintText: 'Brief summary of your issue',
                filled: true,
                fillColor: colorScheme.surface,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: colorScheme.outlineVariant.withValues(alpha: 0.5),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: colorScheme.outlineVariant.withValues(alpha: 0.5),
                  ),
                ),
              ),
              textCapitalization: TextCapitalization.sentences,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter a title';
                }
                if (value.trim().length < 5) {
                  return 'Title must be at least 5 characters';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            // Issue type picker
            _buildSectionLabel(theme, 'Issue Type'),
            const SizedBox(height: 8),
            IssueTypePicker(
              selectedType: _selectedIssueType,
              onChanged: (type) => setState(() => _selectedIssueType = type),
            ),
            const SizedBox(height: 16),

            // Priority selector
            _buildSectionLabel(theme, 'Priority'),
            const SizedBox(height: 8),
            _buildPrioritySelector(theme),
            const SizedBox(height: 16),

            // Description field
            TextFormField(
              controller: _descriptionController,
              decoration: InputDecoration(
                labelText: 'Description',
                hintText: 'Please describe your issue in detail...',
                alignLabelWithHint: true,
                filled: true,
                fillColor: colorScheme.surface,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: colorScheme.outlineVariant.withValues(alpha: 0.5),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: colorScheme.outlineVariant.withValues(alpha: 0.5),
                  ),
                ),
              ),
              maxLines: 6,
              minLines: 4,
              textCapitalization: TextCapitalization.sentences,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please describe your issue';
                }
                if (value.trim().length < 20) {
                  return 'Please provide more detail (at least 20 characters)';
                }
                return null;
              },
            ),
            const SizedBox(height: 8),
            Text(
              'Include relevant details like dates, names, or error messages.',
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),

            // Linked booking info
            if (widget.bookingId != null) ...[
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: colorScheme.primaryContainer,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.link,
                      size: 20,
                      color: colorScheme.primary,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Linked to ${widget.bookingType?.toLowerCase() ?? 'booking'}',
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: colorScheme.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'This ticket will be associated with your booking',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],

            const SizedBox(height: 32),

            // Submit button
            FilledButton(
              onPressed: _isSubmitting ? null : _submit,
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
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
                  : const Text('Submit Ticket'),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionLabel(ThemeData theme, String label) {
    return Text(
      label,
      style: theme.textTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildPrioritySelector(ThemeData theme) {
    return Wrap(
      spacing: 8,
      children: TicketPriority.values.map((priority) {
        final isSelected = _selectedPriority == priority;
        final (color, _) = _getPriorityColors(priority);

        return FilterChip(
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.flag, size: 14, color: isSelected ? Colors.white : color),
              const SizedBox(width: 4),
              Text(priority.displayName),
            ],
          ),
          selected: isSelected,
          onSelected: (_) => setState(() => _selectedPriority = priority),
          selectedColor: color,
          checkmarkColor: Colors.white,
          labelStyle: TextStyle(
            color: isSelected ? Colors.white : theme.colorScheme.onSurface,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: isSelected ? color : theme.colorScheme.outlineVariant,
            ),
          ),
        );
      }).toList(),
    );
  }

  (Color, Color) _getPriorityColors(TicketPriority priority) {
    switch (priority) {
      case TicketPriority.low:
        return (Colors.grey.shade600, Colors.grey.shade100);
      case TicketPriority.medium:
        return (Colors.blue.shade600, Colors.blue.shade50);
      case TicketPriority.high:
        return (Colors.orange.shade600, Colors.orange.shade50);
      case TicketPriority.urgent:
        return (Colors.red.shade600, Colors.red.shade50);
    }
  }
}
