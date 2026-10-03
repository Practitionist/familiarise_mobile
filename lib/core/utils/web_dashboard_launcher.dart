import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// Canonical URL for the Familiarise web dashboard.
const kFamiliariseWebDashboardUrl = 'https://familiarise.io/dashboard';

/// Opens the Familiarise web dashboard in an external browser and displays a
/// fallback [SnackBar] if launching fails.
Future<void> launchFamiliariseWebDashboard(BuildContext context) async {
  final uri = Uri.parse(kFamiliariseWebDashboardUrl);
  final launched = await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  );
  if (!launched && context.mounted) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Could not open $kFamiliariseWebDashboardUrl'),
      ),
    );
  }
}
