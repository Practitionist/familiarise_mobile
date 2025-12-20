import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/explore_filters_provider.dart';

/// Search bar with debounced input for explore screen
class ExploreSearchBar extends ConsumerStatefulWidget {
  final Duration debounceDuration;

  const ExploreSearchBar({
    super.key,
    this.debounceDuration = const Duration(milliseconds: 300),
  });

  @override
  ConsumerState<ExploreSearchBar> createState() => _ExploreSearchBarState();
}

class _ExploreSearchBarState extends ConsumerState<ExploreSearchBar> {
  final _controller = TextEditingController();
  Timer? _debounceTimer;

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(widget.debounceDuration, () {
      ref
          .read(exploreFiltersNotifierProvider.notifier)
          .setSearchQuery(value.isEmpty ? null : value);
    });
  }

  void _clearSearch() {
    _controller.clear();
    ref.read(exploreFiltersNotifierProvider.notifier).setSearchQuery(null);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final filters = ref.watch(exploreFiltersNotifierProvider);

    // Sync controller with external state if needed
    if (filters.searchQuery == null && _controller.text.isNotEmpty) {
      _controller.clear();
    }

    return SearchBar(
      controller: _controller,
      hintText: 'Search consultants...',
      leading: const Icon(Icons.search),
      trailing: [
        if (_controller.text.isNotEmpty)
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: _clearSearch,
          ),
      ],
      onChanged: _onSearchChanged,
      elevation: WidgetStateProperty.all(0),
      backgroundColor: WidgetStateProperty.all(
        theme.colorScheme.surfaceContainerHighest,
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}
