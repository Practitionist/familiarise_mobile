import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/enums.dart';
import '../../auth/providers/auth_provider.dart';
import 'consultee_dashboard_screen.dart';
import 'consultant_dashboard_screen.dart';

/// Dashboard screen - dispatches to role-specific dashboard
class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);
    final role = user?.role ?? UserRole.consultee;

    if (role == UserRole.consultant) {
      return const ConsultantDashboardScreen();
    }

    return const ConsulteeDashboardScreen();
  }
}
