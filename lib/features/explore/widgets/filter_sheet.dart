import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/explore/explore_filters.dart';
import '../../../domain/entities/onboarding/domain_entity.dart';
import '../../onboarding/providers/domains_provider.dart';
import '../providers/explore_filters_provider.dart';

/// Bottom sheet for filtering consultants
class FilterSheet extends ConsumerStatefulWidget {
  const FilterSheet({super.key});

  @override
  ConsumerState<FilterSheet> createState() => _FilterSheetState();
}

class _FilterSheetState extends ConsumerState<FilterSheet> {
  late ExploreFilters _tempFilters;

  @override
  void initState() {
    super.initState();
    _tempFilters = ref.read(exploreFiltersNotifierProvider);
  }

  void _applyFilters() {
    ref
        .read(exploreFiltersNotifierProvider.notifier)
        .updateFilters(_tempFilters);
    Navigator.pop(context);
  }

  void _clearFilters() {
    setState(() {
      _tempFilters = const ExploreFilters();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final domainsAsync = ref.watch(domainsProvider);

    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.9,
      expand: false,
      builder: (context, scrollController) {
        return Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: theme.colorScheme.outlineVariant,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: _clearFilters,
                    child: const Text('Clear'),
                  ),
                  Text(
                    'Filters',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: _applyFilters,
                    child: const Text('Apply'),
                  ),
                ],
              ),
            ),
            // Filter content
            Expanded(
              child: ListView(
                controller: scrollController,
                padding: const EdgeInsets.all(16),
                children: [
                  // Domain filter
                  _buildSectionTitle(theme, 'Domain'),
                  const SizedBox(height: 8),
                  domainsAsync.when(
                    data: (domains) => _buildDomainChips(domains),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (_, __) => const Text('Failed to load domains'),
                  ),
                  const SizedBox(height: 24),

                  // Rating filter
                  _buildSectionTitle(theme, 'Minimum Rating'),
                  const SizedBox(height: 8),
                  _buildRatingSlider(theme),
                  const SizedBox(height: 24),

                  // Price filter
                  _buildSectionTitle(theme, 'Maximum Price'),
                  const SizedBox(height: 8),
                  _buildPriceSlider(theme),
                  const SizedBox(height: 24),

                  // Sort options
                  _buildSectionTitle(theme, 'Sort By'),
                  const SizedBox(height: 8),
                  _buildSortOptions(theme),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildSectionTitle(ThemeData theme, String title) {
    return Text(
      title,
      style: theme.textTheme.titleSmall?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildDomainChips(List<DomainEntity> domains) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        FilterChip(
          label: const Text('All'),
          selected: _tempFilters.domainId == null,
          onSelected: (_) {
            setState(() {
              _tempFilters = _tempFilters.copyWith(
                domainId: null,
                subDomainId: null,
              );
            });
          },
        ),
        ...domains.map((domain) => FilterChip(
              label: Text(domain.name),
              selected: _tempFilters.domainId == domain.id,
              onSelected: (_) {
                setState(() {
                  _tempFilters = _tempFilters.copyWith(
                    domainId:
                        _tempFilters.domainId == domain.id ? null : domain.id,
                    subDomainId: null,
                  );
                });
              },
            )),
      ],
    );
  }

  Widget _buildRatingSlider(ThemeData theme) {
    return Column(
      children: [
        Slider(
          value: _tempFilters.minRating ?? 0,
          min: 0,
          max: 5,
          divisions: 10,
          label: _tempFilters.minRating?.toStringAsFixed(1) ?? 'Any',
          onChanged: (value) {
            setState(() {
              _tempFilters = _tempFilters.copyWith(
                minRating: value == 0 ? null : value,
              );
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Any', style: theme.textTheme.bodySmall),
            Text('5.0', style: theme.textTheme.bodySmall),
          ],
        ),
      ],
    );
  }

  Widget _buildPriceSlider(ThemeData theme) {
    final maxPrice = (_tempFilters.maxPrice ?? 50000).toDouble();

    return Column(
      children: [
        Slider(
          value: maxPrice,
          min: 0,
          max: 50000,
          divisions: 50,
          label: maxPrice == 50000 ? 'Any' : '₹${maxPrice.toInt()}',
          onChanged: (value) {
            setState(() {
              _tempFilters = _tempFilters.copyWith(
                maxPrice: value >= 50000 ? null : value.toInt(),
              );
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('₹0', style: theme.textTheme.bodySmall),
            Text('₹50,000+', style: theme.textTheme.bodySmall),
          ],
        ),
      ],
    );
  }

  Widget _buildSortOptions(ThemeData theme) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        ChoiceChip(
          label: const Text('Rating ↓'),
          selected: _tempFilters.sortBy == 'rating' && _tempFilters.sortDesc,
          onSelected: (_) {
            setState(() {
              _tempFilters = _tempFilters.copyWith(
                sortBy: 'rating',
                sortDesc: true,
              );
            });
          },
        ),
        ChoiceChip(
          label: const Text('Rating ↑'),
          selected: _tempFilters.sortBy == 'rating' && !_tempFilters.sortDesc,
          onSelected: (_) {
            setState(() {
              _tempFilters = _tempFilters.copyWith(
                sortBy: 'rating',
                sortDesc: false,
              );
            });
          },
        ),
        ChoiceChip(
          label: const Text('Price ↓'),
          selected: _tempFilters.sortBy == 'price' && _tempFilters.sortDesc,
          onSelected: (_) {
            setState(() {
              _tempFilters = _tempFilters.copyWith(
                sortBy: 'price',
                sortDesc: true,
              );
            });
          },
        ),
        ChoiceChip(
          label: const Text('Price ↑'),
          selected: _tempFilters.sortBy == 'price' && !_tempFilters.sortDesc,
          onSelected: (_) {
            setState(() {
              _tempFilters = _tempFilters.copyWith(
                sortBy: 'price',
                sortDesc: false,
              );
            });
          },
        ),
        ChoiceChip(
          label: const Text('Experience ↓'),
          selected:
              _tempFilters.sortBy == 'experience' && _tempFilters.sortDesc,
          onSelected: (_) {
            setState(() {
              _tempFilters = _tempFilters.copyWith(
                sortBy: 'experience',
                sortDesc: true,
              );
            });
          },
        ),
      ],
    );
  }
}

/// Show the filter sheet
Future<void> showFilterSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (context) => const FilterSheet(),
  );
}
