import 'package:flutter/material.dart';

/// A quick action button definition
class QuickAction {
  const QuickAction({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final VoidCallback onTap;
}

/// Row of quick action buttons
class QuickActionsRow extends StatelessWidget {
  const QuickActionsRow({
    required this.actions,
    super.key,
  });

  final List<QuickAction> actions;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: actions.map((action) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: action.onTap,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Icon(
                      action.icon,
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      action.label,
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
