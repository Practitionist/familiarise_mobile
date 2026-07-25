import 'package:flutter/material.dart';

import '../../../core/constants/enums.dart';

/// A card widget for selecting user role (Consultee/Consultant)
class RoleSelectionCard extends StatelessWidget {
  const RoleSelectionCard({
    super.key,
    required this.role,
    required this.isSelected,
    required this.onTap,
  });

  final UserRole role;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final isConsultee = role == UserRole.consultee;
    final title = isConsultee ? 'I want to learn' : 'I want to teach';
    final subtitle = isConsultee
        ? 'Connect with experts and get personalized guidance'
        : 'Share your expertise and mentor others';
    final icon = isConsultee ? Icons.school_outlined : Icons.people_outlined;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? colorScheme.primary : colorScheme.outline,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(16),
          color: isSelected
              ? colorScheme.primaryContainer.withAlpha(50)
              : colorScheme.surface,
        ),
        child: Row(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: isSelected
                    ? colorScheme.primary
                    : colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                size: 28,
                color: isSelected
                    ? colorScheme.onPrimary
                    : colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: isSelected
                          ? colorScheme.primary
                          : colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            // Selection state comes from the RadioGroup<UserRole> ancestor in
            // RoleSelector; the old `groupValue: isSelected ? role : null` hack
            // is no longer needed (radio-api-redesign, Flutter 3.35).
            Radio<UserRole>(value: role),
          ],
        ),
      ),
    );
  }
}

/// Role selection widget showing both options
class RoleSelector extends StatelessWidget {
  const RoleSelector({
    super.key,
    required this.selectedRole,
    required this.onRoleSelected,
  });

  final UserRole selectedRole;
  final ValueChanged<UserRole> onRoleSelected;

  @override
  Widget build(BuildContext context) {
    return RadioGroup<UserRole>(
      groupValue: selectedRole,
      onChanged: (value) {
        if (value != null) onRoleSelected(value);
      },
      child: Column(
        children: [
          RoleSelectionCard(
            role: UserRole.consultee,
            isSelected: selectedRole == UserRole.consultee,
            onTap: () => onRoleSelected(UserRole.consultee),
          ),
          const SizedBox(height: 16),
          RoleSelectionCard(
            role: UserRole.consultant,
            isSelected: selectedRole == UserRole.consultant,
            onTap: () => onRoleSelected(UserRole.consultant),
          ),
        ],
      ),
    );
  }
}
