import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
        actions: [
          // Filter button with badge
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.tune),
                onPressed: () => showFilterSheet(context),
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
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(16),
            child: const ExploreSearchBar(),
          ),
          // Consultants grid
          Expanded(
            child: _buildContent(context, ref, consultantsState),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    WidgetRef ref,
    ConsultantsState state,
  ) {
    if (state.isLoading) {
      return const ConsultantGridSkeleton();
    }

    if (state.error != null) {
      return _buildError(context, ref, state.error!);
    }

    if (state.isEmpty) {
      return _buildEmpty(context, ref);
    }

    return RefreshIndicator(
      onRefresh: () => ref.read(consultantsNotifierProvider.notifier).refresh(),
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: state.consultants.length + (state.hasMore ? 1 : 0),
        itemBuilder: (context, index) {
          // Load more trigger
          if (index == state.consultants.length) {
            // Trigger load more when reaching the end
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ref.read(consultantsNotifierProvider.notifier).loadMore();
            });
            return const Center(child: CircularProgressIndicator());
          }

          final consultant = state.consultants[index];
          return ConsultantCard(
            consultant: consultant,
            onTap: () {
              context.push('/explore/consultant/${consultant.id}');
            },
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
            Icon(
              Icons.error_outline,
              size: 48,
              color: theme.colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              'Something went wrong',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              error,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: () =>
                  ref.read(consultantsNotifierProvider.notifier).refresh(),
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
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
            Icon(
              Icons.search_off,
              size: 48,
              color: theme.colorScheme.outline,
            ),
            const SizedBox(height: 16),
            Text(
              'No consultants found',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              filters.hasActiveFilters
                  ? 'Try adjusting your filters'
                  : 'Check back later for new consultants',
              style: theme.textTheme.bodySmall?.copyWith(
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
                icon: const Icon(Icons.clear_all),
                label: const Text('Clear filters'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
