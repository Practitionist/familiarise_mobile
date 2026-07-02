import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/config/feature_flags.dart';
import '../../core/constants/enums.dart';

part 'navigation_provider.g.dart';

/// Provider to track the currently selected navigation tab index
@riverpod
class NavigationIndex extends _$NavigationIndex {
  @override
  int build() => 0; // Default to first tab

  void setIndex(int index) {
    state = index;
  }
}

/// Navigation tab destinations (kept for backward compatibility)
enum NavigationTab {
  explore('/explore', 'Explore'),
  programs('/programs', 'Programs'),
  dashboard('/dashboard', 'Dashboard'),
  messages('/messages', 'Messages'),
  profile('/profile', 'Profile');

  const NavigationTab(this.path, this.label);

  final String path;
  final String label;

  static NavigationTab fromIndex(int idx) {
    if (idx < 0 || idx >= NavigationTab.values.length) {
      return NavigationTab.explore;
    }
    return NavigationTab.values[idx];
  }

  static NavigationTab fromPath(String path) {
    return NavigationTab.values.firstWhere(
      (tab) => path.startsWith(tab.path),
      orElse: () => NavigationTab.explore,
    );
  }
}

/// A navigation tab definition with icons
class AppNavTab {
  const AppNavTab({
    required this.path,
    required this.label,
    required this.icon,
    required this.selectedIcon,
  });

  final String path;
  final String label;
  final IconData icon;
  final IconData selectedIcon;
}

/// Role-aware navigation tab configuration
class AppNavigationTabs {
  AppNavigationTabs._();

  /// One shared 5-tab layout for consultees and consultants. Home is the
  /// role-adaptive dashboard; Schedule and Programs are reachable from
  /// Home quick actions and Explore.
  static const _mainTabs = [
    AppNavTab(
      path: '/dashboard',
      label: 'Home',
      icon: Icons.home_outlined,
      selectedIcon: Icons.home,
    ),
    AppNavTab(
      path: '/explore',
      label: 'Explore',
      icon: Icons.explore_outlined,
      selectedIcon: Icons.explore,
    ),
    AppNavTab(
      path: '/my-bookings',
      label: 'Bookings',
      icon: Icons.calendar_month_outlined,
      selectedIcon: Icons.calendar_month,
    ),
    AppNavTab(
      path: '/messages',
      label: 'Chat',
      icon: Icons.chat_bubble_outline,
      selectedIcon: Icons.chat_bubble,
    ),
    AppNavTab(
      path: '/profile',
      label: 'Profile',
      icon: Icons.person_outline,
      selectedIcon: Icons.person,
    ),
  ];

  static const _staffTabs = [
    AppNavTab(
      path: '/staff',
      label: 'Staff',
      icon: Icons.admin_panel_settings_outlined,
      selectedIcon: Icons.admin_panel_settings,
    ),
    AppNavTab(
      path: '/staff/verifications',
      label: 'Verify',
      icon: Icons.verified_user_outlined,
      selectedIcon: Icons.verified_user,
    ),
    AppNavTab(
      path: '/staff/tickets',
      label: 'Tickets',
      icon: Icons.support_agent_outlined,
      selectedIcon: Icons.support_agent,
    ),
    AppNavTab(
      path: '/staff/feedback',
      label: 'Feedback',
      icon: Icons.feedback_outlined,
      selectedIcon: Icons.feedback,
    ),
    AppNavTab(
      path: '/profile',
      label: 'Profile',
      icon: Icons.person_outline,
      selectedIcon: Icons.person,
    ),
  ];

  /// Get the tab list for a given user role
  static List<AppNavTab> forRole(UserRole role) {
    if ((role == UserRole.staff || role == UserRole.admin) &&
        FeatureFlags.staffTools) {
      return _staffTabs;
    }
    return _mainTabs;
  }

  /// Get tab index from path for a given role
  static int indexFromPath(String path, UserRole role) {
    final tabs = forRole(role);
    for (var i = 0; i < tabs.length; i++) {
      if (path.startsWith(tabs[i].path)) {
        return i;
      }
    }
    return 0;
  }

  /// Get path from index for a given role
  static String pathFromIndex(int index, UserRole role) {
    final tabs = forRole(role);
    if (index < 0 || index >= tabs.length) return tabs.first.path;
    return tabs[index].path;
  }
}
