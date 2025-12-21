import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/explore/explore_filters.dart';

part 'explore_filters_provider.g.dart';

/// Provider for managing explore filters state
@riverpod
class ExploreFiltersNotifier extends _$ExploreFiltersNotifier {
  @override
  ExploreFilters build() => const ExploreFilters();

  /// Update the search query
  void setSearchQuery(String? query) {
    state = state.copyWith(searchQuery: query);
  }

  /// Update the domain filter
  void setDomainId(String? domainId) {
    state = state.copyWith(domainId: domainId, subDomainId: null);
  }

  /// Update the subdomain filter
  void setSubDomainId(String? subDomainId) {
    state = state.copyWith(subDomainId: subDomainId);
  }

  /// Update the minimum rating filter
  void setMinRating(double? minRating) {
    state = state.copyWith(minRating: minRating);
  }

  /// Update the maximum price filter
  void setMaxPrice(int? maxPrice) {
    state = state.copyWith(maxPrice: maxPrice);
  }

  /// Update the sort options
  void setSorting({required String sortBy, required bool sortDesc}) {
    state = state.copyWith(sortBy: sortBy, sortDesc: sortDesc);
  }

  /// Clear all filters
  void clearFilters() {
    state = state.clearFilters();
  }

  /// Update multiple filters at once
  void updateFilters(ExploreFilters filters) {
    state = filters;
  }
}
