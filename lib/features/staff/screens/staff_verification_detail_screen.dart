import 'package:flutter/material.dart';

import '../../../shared/widgets/coming_soon_screen.dart';

/// Deprecated stub retained only until router `/staff` routes are removed.
/// Staff backoffice is web-only (`FeatureFlags.staffTools = false`).
class StaffVerificationDetailScreen extends StatelessWidget {
  const StaffVerificationDetailScreen({
    required this.verificationId,
    super.key,
  });

  final String verificationId;

  @override
  Widget build(BuildContext context) {
    return const ComingSoonScreen(
      feature: 'Staff tools',
      description: 'Staff backoffice tools are available on the web dashboard.',
    );
  }
}
