import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/explore/explore_filters.dart';
import '../providers/consultants_provider.dart';
import '../providers/explore_filters_provider.dart';
import '../widgets/consultant_card.dart';
import '../widgets/consultant_card_skeleton.dart';
import '../widgets/explore_search_bar.dart';
import '../widgets/filter_sheet.dart';

/// Main explore screen for browsing consultants
class ExploreScreen extends ConsumerWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final consultantsState = ref.watch(consultantsNotifierProvider);
    final filters = ref.watch(exploreFiltersNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
        centerTitle: false,
        actions: [
          // Filter button with badge
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    filters.hasActiveFilters
                        ? Icons.filter_list
                        : Icons.tune_rounded,
                  ),
                  onPressed: () => showFilterSheet(context),
                  tooltip: 'Filters',
                ),
                if (filters.activeFilterCount > 0)
                  Positioned(
                    right: 8,
                    top: 8,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '${filters.activeFilterCount}',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.onPrimary,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: const ExploreSearchBar(),
          ),
          // Active filters chips
          if (filters.hasActiveFilters)
            _buildActiveFiltersBar(context, ref, filters),
          // Consultants list
          Expanded(
            child: _buildContent(context, ref, consultantsState),
          ),
        ],
      ),
    );
  }

  Widget _buildActiveFiltersBar(
    BuildContext context,
    WidgetRef ref,
    ExploreFilters filters,
  ) {
    final theme = Theme.of(context);

    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                if (filters.searchQuery != null)
                  _buildFilterChip(
                    theme,
                    label: '"${filters.searchQuery}"',
                    onRemove: () => ref
                        .read(exploreFiltersNotifierProvider.notifier)
                        .updateFilters(filters.copyWith(searchQuery: null)),
                  ),
                if (filters.minRating != null)
                  _buildFilterChip(
                    theme,
                    label: '${filters.minRating}+ stars',
                    onRemove: () => ref
                        .read(exploreFiltersNotifierProvider.notifier)
                        .updateFilters(filters.copyWith(minRating: null)),
                  ),
                if (filters.maxPrice != null)
                  _buildFilterChip(
                    theme,
                    label: 'Up to ₹${filters.maxPrice}',
                    onRemove: () => ref
                        .read(exploreFiltersNotifierProvider.notifier)
                        .updateFilters(filters.copyWith(maxPrice: null)),
                  ),
              ],
            ),
          ),
          TextButton(
            onPressed: () =>
                ref.read(exploreFiltersNotifierProvider.notifier).clearFilters(),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              minimumSize: const Size(0, 32),
            ),
            child: const Text('Clear all'),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(
    ThemeData theme, {
    required String label,
    required VoidCallback onRemove,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Chip(
        label: Text(
          label,
          style: theme.textTheme.labelSmall,
        ),
        deleteIcon: const Icon(Icons.close, size: 16),
        onDeleted: onRemove,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        padding: EdgeInsets.zero,
        labelPadding: const EdgeInsets.only(left: 8),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    WidgetRef ref,
    ConsultantsState state,
  ) {
    if (state.isLoading) {
      return const ConsultantListSkeleton();
    }

    if (state.error != null) {
      return _buildError(context, ref, state.error!);
    }

    if (state.isEmpty) {
      return _buildEmpty(context, ref);
    }

    return RefreshIndicator(
      onRefresh: () => ref.read(consultantsNotifierProvider.notifier).refresh(),
      child: ListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        itemCount: state.consultants.length + (state.hasMore ? 1 : 0),
        itemBuilder: (context, index) {
          // Load more trigger
          if (index == state.consultants.length) {
            // Trigger load more when reaching the end
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ref.read(consultantsNotifierProvider.notifier).loadMore();
            });
            return Padding(
              padding: const EdgeInsets.all(24),
              child: Center(
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ),
              ),
            );
          }

          final consultant = state.consultants[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: ConsultantCard(
              consultant: consultant,
              onTap: () {
                context.go('/explore/consultant/${consultant.id}');
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildError(BuildContext context, WidgetRef ref, String error) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.colorScheme.errorContainer.withValues(alpha: 0.3),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.cloud_off_rounded,
                size: 48,
                color: theme.colorScheme.error,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Unable to load consultants',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              error,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: () =>
                  ref.read(consultantsNotifierProvider.notifier).refresh(),
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Try again'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmpty(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final filters = ref.watch(exploreFiltersNotifierProvider);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                shape: BoxShape.circle,
              ),
              child: Icon(
                filters.hasActiveFilters
                    ? Icons.filter_alt_off_rounded
                    : Icons.person_search_rounded,
                size: 48,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              filters.hasActiveFilters
                  ? 'No matches found'
                  : 'No consultants yet',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              filters.hasActiveFilters
                  ? 'Try adjusting your search or filters'
                  : 'Check back later for new consultants',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            if (filters.hasActiveFilters) ...[
              const SizedBox(height: 24),
              OutlinedButton.icon(
                onPressed: () => ref
                    .read(exploreFiltersNotifierProvider.notifier)
                    .clearFilters(),
                icon: const Icon(Icons.clear_all_rounded),
                label: const Text('Clear filters'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
