import 'package:flutter/material.dart';

import '../../../domain/entities/support/support_entities.dart';

/// Widget for selecting a support issue type
class IssueTypePicker extends StatelessWidget {
  final SupportIssueType? selectedType;
  final ValueChanged<SupportIssueType?> onChanged;

  const IssueTypePicker({
    super.key,
    required this.selectedType,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return InkWell(
      onTap: () => _showPicker(context),
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: colorScheme.outlineVariant.withValues(alpha: 0.5),
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.category_outlined,
              color: colorScheme.onSurfaceVariant,
              size: 20,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                selectedType?.displayName ?? 'Select issue type',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: selectedType != null
                      ? colorScheme.onSurface
                      : colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }

  void _showPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => _IssueTypePickerSheet(
        selectedType: selectedType,
        onSelected: (type) {
          onChanged(type);
          Navigator.pop(context);
        },
      ),
    );
  }
}

class _IssueTypePickerSheet extends StatelessWidget {
  final SupportIssueType? selectedType;
  final ValueChanged<SupportIssueType> onSelected;

  const _IssueTypePickerSheet({
    required this.selectedType,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final categories = SupportIssueType.groupedByCategory;

    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.9,
      expand: false,
      builder: (context, scrollController) {
        return Column(
          children: [
            // Handle
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 12),
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),

            // Title
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Select Issue Type',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Categories list
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                padding: const EdgeInsets.only(bottom: 32),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories.keys.elementAt(index);
                  final types = categories[category]!;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Category header
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                        child: Text(
                          category,
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      // Issue types in this category
                      ...types.map((type) {
                        final isSelected = type == selectedType;

                        return ListTile(
                          leading: Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? colorScheme.primaryContainer
                                  : colorScheme.surfaceContainerHighest,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              _getIconForType(type),
                              size: 18,
                              color: isSelected
                                  ? colorScheme.primary
                                  : colorScheme.onSurfaceVariant,
                            ),
                          ),
                          title: Text(
                            type.displayName,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontWeight:
                                  isSelected ? FontWeight.w600 : FontWeight.normal,
                            ),
                          ),
                          trailing: isSelected
                              ? Icon(
                                  Icons.check_circle,
                                  color: colorScheme.primary,
                                )
                              : null,
                          onTap: () => onSelected(type),
                        );
                      }),
                    ],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  IconData _getIconForType(SupportIssueType type) {
    switch (type) {
      case SupportIssueType.consultantNoShow:
        return Icons.person_off_outlined;
      case SupportIssueType.consultantLate:
        return Icons.schedule_outlined;
      case SupportIssueType.sessionEndedEarly:
        return Icons.timer_off_outlined;
      case SupportIssueType.sessionQualityPoor:
        return Icons.thumb_down_outlined;
      case SupportIssueType.communicationIssue:
        return Icons.chat_bubble_outline;
      case SupportIssueType.technicalIssues:
        return Icons.computer_outlined;
      case SupportIssueType.wrongConsultant:
        return Icons.person_search_outlined;
      case SupportIssueType.accessIssue:
        return Icons.lock_outline;
      case SupportIssueType.timezoneConfusion:
        return Icons.public_outlined;
      case SupportIssueType.reschedulingHelp:
        return Icons.event_repeat_outlined;
      case SupportIssueType.paymentFailed:
        return Icons.credit_card_off_outlined;
      case SupportIssueType.chargedTwice:
        return Icons.receipt_long_outlined;
      case SupportIssueType.refundRequest:
        return Icons.money_off_outlined;
      case SupportIssueType.billingQuestion:
        return Icons.help_outline;
      case SupportIssueType.documentIssue:
        return Icons.description_outlined;
      case SupportIssueType.wantToCancel:
        return Icons.cancel_outlined;
      case SupportIssueType.cancellationIssue:
        return Icons.block_outlined;
      case SupportIssueType.accountIssue:
        return Icons.account_circle_outlined;
      case SupportIssueType.generalInquiry:
        return Icons.info_outline;
      case SupportIssueType.other:
        return Icons.more_horiz;
    }
  }
}
