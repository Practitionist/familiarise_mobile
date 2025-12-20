import 'package:freezed_annotation/freezed_annotation.dart';

part 'explore_filters.freezed.dart';
part 'explore_filters.g.dart';

/// Filters for exploring consultants
@freezed
class ExploreFilters with _$ExploreFilters {
  const factory ExploreFilters({
    String? domainId,
    String? subDomainId,
    double? minRating,
    int? maxPrice,
    String? searchQuery,
    @Default('rating') String sortBy,
    @Default(true) bool sortDesc,
  }) = _ExploreFilters;

  const ExploreFilters._();

  factory ExploreFilters.fromJson(Map<String, dynamic> json) =>
      _$ExploreFiltersFromJson(json);

  /// Check if any filters are active
  bool get hasActiveFilters =>
      domainId != null ||
      subDomainId != null ||
      minRating != null ||
      maxPrice != null ||
      (searchQuery != null && searchQuery!.isNotEmpty);

  /// Count of active filters
  int get activeFilterCount {
    int count = 0;
    if (domainId != null) count++;
    if (subDomainId != null) count++;
    if (minRating != null) count++;
    if (maxPrice != null) count++;
    return count;
  }

  /// Create a copy with filters cleared
  ExploreFilters clearFilters() => copyWith(
        domainId: null,
        subDomainId: null,
        minRating: null,
        maxPrice: null,
        searchQuery: null,
      );

  /// Convert to query parameters for API
  Map<String, String> toQueryParams() {
    final params = <String, String>{};
    if (domainId != null) params['domainId'] = domainId!;
    if (subDomainId != null) params['subDomainId'] = subDomainId!;
    if (minRating != null) params['minRating'] = minRating.toString();
    if (maxPrice != null) params['maxPrice'] = maxPrice.toString();
    if (searchQuery != null && searchQuery!.isNotEmpty) {
      params['search'] = searchQuery!;
    }
    params['sortBy'] = sortBy;
    params['sortOrder'] = sortDesc ? 'desc' : 'asc';
    return params;
  }
}
