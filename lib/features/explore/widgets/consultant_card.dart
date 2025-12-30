import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/explore/consultant.dart';

/// Modern premium consultant card with soft & elegant styling
class ConsultantCard extends StatelessWidget {
  final Consultant consultant;
  final VoidCallback? onTap;

  const ConsultantCard({
    super.key,
    required this.consultant,
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
                    _buildProfileImage(theme),
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

  Widget _buildProfileImage(ThemeData theme) {
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
        child: consultant.imageUrl != null
            ? CachedNetworkImage(
                imageUrl: consultant.imageUrl!,
                fit: BoxFit.cover,
                placeholder: (context, url) => _buildImagePlaceholder(theme),
                errorWidget: (context, url, error) =>
                    _buildInitialsPlaceholder(theme),
              )
            : _buildInitialsPlaceholder(theme),
      ),
    );
  }

  Widget _buildContent(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Name + Verified badge
        Row(
          children: [
            Flexible(
              child: Text(
                consultant.displayName,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.3,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (consultant.isVerified == true) ...[
              const SizedBox(width: 6),
              Icon(
                Icons.verified,
                size: 18,
                color: theme.colorScheme.primary,
              ),
            ],
          ],
        ),
        // Domain
        if (consultant.domain != null) ...[
          const SizedBox(height: 2),
          Text(
            consultant.domain!.name,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
        // Headline
        if (consultant.headline != null) ...[
          const SizedBox(height: 8),
          Text(
            consultant.headline!,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              height: 1.4,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
        // Stats row
        const SizedBox(height: 10),
        _buildStatsRow(theme),
      ],
    );
  }

  Widget _buildStatsRow(ThemeData theme) {
    final items = <Widget>[];

    // Rating
    if (consultant.rating != null) {
      items.add(
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.star_rounded,
              size: 16,
              color: Colors.amber.shade600,
            ),
            const SizedBox(width: 3),
            Text(
              consultant.formattedRating,
              style: theme.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.onSurface,
              ),
            ),
          ],
        ),
      );
    }

    // Experience
    if (consultant.experience != null) {
      items.add(
        Text(
          consultant.formattedExperience,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      );
    }

    // First subdomain
    if (consultant.subDomains.isNotEmpty) {
      items.add(
        Flexible(
          child: Text(
            consultant.subDomains.first.name,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      );
    }

    if (items.isEmpty) return const SizedBox.shrink();

    // Add separators between items
    final separated = <Widget>[];
    for (var i = 0; i < items.length; i++) {
      separated.add(items[i]);
      if (i < items.length - 1) {
        separated.add(
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              '•',
              style: TextStyle(
                color: theme.colorScheme.outline,
                fontSize: 12,
              ),
            ),
          ),
        );
      }
    }

    return Row(
      children: separated,
    );
  }

  Widget _buildBottomRow(ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Price
        if (consultant.minPrice != null)
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Starting at only ',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                TextSpan(
                  text: consultant.priceCurrency == 'INR'
                      ? '₹${consultant.minPrice!.toStringAsFixed(0)}'
                      : '\$${consultant.minPrice!.toStringAsFixed(0)}',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          )
        else
          const Spacer(),
        // View plans button
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
                'View plans',
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

  Widget _buildImagePlaceholder(ThemeData theme) {
    return Container(
      color: theme.colorScheme.surfaceContainerHighest,
      child: Center(
        child: SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: theme.colorScheme.primary,
          ),
        ),
      ),
    );
  }

  Widget _buildInitialsPlaceholder(ThemeData theme) {
    // Generate a consistent color based on the name
    final colors = [
      const Color(0xFF6366F1), // Indigo
      const Color(0xFF8B5CF6), // Violet
      const Color(0xFF0EA5E9), // Sky
      const Color(0xFF14B8A6), // Teal
      const Color(0xFFF59E0B), // Amber
      const Color(0xFFEC4899), // Pink
    ];
    final colorIndex = consultant.displayName.hashCode.abs() % colors.length;

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
      child: Center(
        child: Text(
          consultant.displayName.isNotEmpty
              ? consultant.displayName[0].toUpperCase()
              : '?',
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
