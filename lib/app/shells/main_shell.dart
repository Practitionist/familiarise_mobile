import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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

    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          // Update the provider state
          ref.read(navigationIndexProvider.notifier).setIndex(index);

          // Navigate to the corresponding route
          final tab = NavigationTab.fromIndex(index);
          context.go(tab.path);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.explore_outlined),
            selectedIcon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.dashboard_outlined),
            selectedIcon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
