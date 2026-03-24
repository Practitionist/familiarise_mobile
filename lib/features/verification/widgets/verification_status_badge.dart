import 'package:flutter/material.dart';

import '../../../domain/entities/verification/verification_status.dart';

class VerificationStatusBadge extends StatelessWidget {
  const VerificationStatusBadge({
    required this.status,
    super.key,
  });

  final VerificationStatus status;

  @override
  Widget build(BuildContext context) {
    final (color, icon) = switch (status) {
      VerificationStatus.pending => (Colors.orange, Icons.hourglass_top),
      VerificationStatus.approved => (Colors.green, Icons.verified),
      VerificationStatus.rejected => (Colors.red, Icons.cancel),
      VerificationStatus.needsInfo => (Colors.blue, Icons.info),
      VerificationStatus.superseded => (Colors.grey, Icons.history),
    };

    return Chip(
      avatar: Icon(icon, size: 16, color: color),
      label: Text(
        status.displayLabel,
        style: TextStyle(color: color, fontSize: 12),
      ),
      backgroundColor: color.withValues(alpha: 0.1),
      side: BorderSide(color: color.withValues(alpha: 0.3)),
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
    );
  }
}
