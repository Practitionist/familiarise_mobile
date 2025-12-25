import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_provider.g.dart';

/// Provider to track the currently selected navigation tab index
@riverpod
class NavigationIndex extends _$NavigationIndex {
  @override
  int build() => 0; // Default to first tab (Explore)

  void setIndex(int index) {
    state = index;
  }
}

/// Navigation tab destinations
enum NavigationTab {
  explore('/explore', 'Explore'),
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
