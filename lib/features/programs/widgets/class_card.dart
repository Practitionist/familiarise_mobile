import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/explore/class_plan.dart';

/// Card widget displaying class plan summary in horizontal layout
class ClassCard extends StatelessWidget {
  final ClassPlan classPlan;
  final VoidCallback? onTap;

  const ClassCard({
    super.key,
    required this.classPlan,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Main content row
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildThumbnail(theme),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _buildContent(theme),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Bottom action row
                _buildBottomRow(theme),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildThumbnail(ThemeData theme) {
    return Container(
      width: 96,
      height: 96,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: classPlan.thumbnailUrl != null
            ? CachedNetworkImage(
                imageUrl: classPlan.thumbnailUrl!,
                fit: BoxFit.cover,
                placeholder: (context, url) => _buildPlaceholder(theme),
                errorWidget: (context, url, error) => _buildPlaceholder(theme),
              )
            : _buildPlaceholder(theme),
      ),
    );
  }

  Widget _buildPlaceholder(ThemeData theme) {
    // Generate a consistent color based on the title
    final colors = [
      const Color(0xFF6366F1), // Indigo
      const Color(0xFF8B5CF6), // Violet
      const Color(0xFF0EA5E9), // Sky
      const Color(0xFF14B8A6), // Teal
      const Color(0xFFF59E0B), // Amber
      const Color(0xFFEC4899), // Pink
    ];
    final colorIndex = classPlan.title.hashCode.abs() % colors.length;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            colors[colorIndex],
            colors[colorIndex].withValues(alpha: 0.7),
          ],
        ),
      ),
      child: const Center(
        child: Icon(
          Icons.school,
          size: 36,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildContent(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Status badge + Title row
        Row(
          children: [
            _buildStatusBadge(theme),
            const SizedBox(width: 8),
            if (classPlan.certificateProvided)
              Icon(
                Icons.verified,
                size: 16,
                color: theme.colorScheme.primary,
              ),
          ],
        ),
        const SizedBox(height: 6),
        // Title
        Text(
          classPlan.title,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            letterSpacing: -0.3,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        // Consultant info
        if (classPlan.consultant != null) ...[
          const SizedBox(height: 4),
          Row(
            children: [
              CircleAvatar(
                radius: 10,
                backgroundImage: classPlan.consultant!.image != null
                    ? NetworkImage(classPlan.consultant!.image!)
                    : null,
                child: classPlan.consultant!.image == null
                    ? Text(
                        classPlan.consultant!.name.isNotEmpty
                            ? classPlan.consultant!.name[0].toUpperCase()
                            : '?',
                        style:
                            theme.textTheme.labelSmall?.copyWith(fontSize: 8),
                      )
                    : null,
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  classPlan.consultant!.name,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
        const SizedBox(height: 8),
        // Stats row
        _buildStatsRow(theme),
      ],
    );
  }

  Widget _buildStatusBadge(ThemeData theme) {
    Color backgroundColor;
    Color textColor;
    String label;

    switch (classPlan.enrollmentStatus) {
      case ClassEnrollmentStatus.open:
        backgroundColor = Colors.green.shade100;
        textColor = Colors.green.shade800;
        label = 'Open';
      case ClassEnrollmentStatus.upcoming:
        backgroundColor = Colors.blue.shade100;
        textColor = Colors.blue.shade800;
        label = 'Soon';
      case ClassEnrollmentStatus.full:
        backgroundColor = Colors.orange.shade100;
        textColor = Colors.orange.shade800;
        label = 'Full';
      case ClassEnrollmentStatus.closed:
        backgroundColor = Colors.grey.shade200;
        textColor = Colors.grey.shade700;
        label = 'Closed';
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: theme.textTheme.labelSmall?.copyWith(
          color: textColor,
          fontWeight: FontWeight.w600,
          fontSize: 10,
        ),
      ),
    );
  }

  Widget _buildStatsRow(ThemeData theme) {
    return Wrap(
      spacing: 12,
      runSpacing: 4,
      children: [
        _buildInfoChip(
            theme, Icons.calendar_month, classPlan.formattedDuration),
        _buildInfoChip(
            theme, Icons.schedule, '${classPlan.meetingsPerWeek}x/week'),
        _buildInfoChip(
            theme, Icons.group_outlined, '${classPlan.spotsRemaining} spots'),
      ],
    );
  }

  Widget _buildInfoChip(ThemeData theme, IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 12,
          color: theme.colorScheme.onSurfaceVariant,
        ),
        const SizedBox(width: 3),
        Text(
          text,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
            fontSize: 11,
          ),
        ),
      ],
    );
  }

  Widget _buildBottomRow(ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Price
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Only ',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              TextSpan(
                text: classPlan.formattedPrice,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        // Enroll button
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Enroll',
                style: theme.textTheme.labelLarge?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 4),
              Icon(
                Icons.chevron_right_rounded,
                size: 18,
                color: theme.colorScheme.primary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
