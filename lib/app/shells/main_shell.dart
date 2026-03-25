import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/enums.dart';
import '../../features/announcements/widgets/announcement_banner.dart';
import '../../features/auth/providers/auth_provider.dart';
import '../../shared/widgets/timezone_indicator.dart';
import '../providers/navigation_provider.dart';

/// Main shell widget that wraps the app content with a bottom navigation bar.
/// Used with GoRouter's ShellRoute to provide persistent navigation across tabs.
class MainShell extends ConsumerWidget {
  const MainShell({
    required this.child,
    super.key,
  });

  /// The child widget from GoRouter (the current route's screen)
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navigationIndexProvider);
    final user = ref.watch(currentUserProvider);
    final role = user?.role ?? UserRole.consultee;
    final tabs = AppNavigationTabs.forRole(role);

    return Scaffold(
      body: Column(
        children: [
          const AnnouncementBanner(),
          Expanded(child: child),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Timezone indicator banner
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              border: Border(
                top: BorderSide(
                  color: Theme.of(context).colorScheme.outlineVariant,
                  width: 0.5,
                ),
              ),
            ),
            child: const Center(child: TimezoneIndicator()),
          ),
          NavigationBar(
            selectedIndex: currentIndex.clamp(0, tabs.length - 1),
            onDestinationSelected: (index) {
              ref.read(navigationIndexProvider.notifier).setIndex(index);
              final path = AppNavigationTabs.pathFromIndex(index, role);
              context.go(path);
            },
            destinations: tabs
                .map(
                  (tab) => NavigationDestination(
                    icon: Icon(tab.icon),
                    selectedIcon: Icon(tab.selectedIcon),
                    label: tab.label,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
