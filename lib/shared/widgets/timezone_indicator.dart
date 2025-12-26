import 'package:flutter/material.dart';

/// A compact widget that displays the current timezone.
///
/// Shows the timezone name and UTC offset (e.g., "IST (UTC+5:30)").
/// Useful for indicating to users what timezone times are displayed in.
class TimezoneIndicator extends StatelessWidget {
  const TimezoneIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final now = DateTime.now();
    final offset = now.timeZoneOffset;
    final hours = offset.inHours;
    final minutes = offset.inMinutes.remainder(60).abs();
    final sign = hours >= 0 ? '+' : '';
    final tzName = now.timeZoneName; // e.g., "IST", "PST", "EST"

    // Format: "IST (UTC+5:30)" or "PST (UTC-8)"
    final offsetStr = minutes > 0
        ? 'UTC$sign$hours:${minutes.toString().padLeft(2, '0')}'
        : 'UTC$sign$hours';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.schedule,
            size: 14,
            color: theme.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 4),
          Text(
            '$tzName ($offsetStr)',
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
