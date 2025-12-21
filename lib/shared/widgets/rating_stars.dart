import 'package:flutter/material.dart';

/// Widget to display star rating
class RatingStars extends StatelessWidget {
  final double rating;
  final double size;
  final Color? activeColor;
  final Color? inactiveColor;
  final bool showValue;

  const RatingStars({
    super.key,
    required this.rating,
    this.size = 16,
    this.activeColor,
    this.inactiveColor,
    this.showValue = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final active = activeColor ?? Colors.amber;
    final inactive = inactiveColor ?? theme.colorScheme.outline;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(5, (index) {
          final starValue = index + 1;
          if (rating >= starValue) {
            return Icon(Icons.star, size: size, color: active);
          } else if (rating >= starValue - 0.5) {
            return Icon(Icons.star_half, size: size, color: active);
          } else {
            return Icon(Icons.star_border, size: size, color: inactive);
          }
        }),
        if (showValue) ...[
          const SizedBox(width: 4),
          Text(
            rating.toStringAsFixed(1),
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ],
    );
  }
}

/// Compact rating display with just icon and value
class RatingBadge extends StatelessWidget {
  final double rating;
  final double iconSize;

  const RatingBadge({
    super.key,
    required this.rating,
    this.iconSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            size: iconSize,
            color: Colors.amber,
          ),
          const SizedBox(width: 2),
          Text(
            rating.toStringAsFixed(1),
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
