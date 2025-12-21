import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_result.freezed.dart';
part 'paginated_result.g.dart';

/// Generic paginated result wrapper
@Freezed(genericArgumentFactories: true)
class PaginatedResult<T> with _$PaginatedResult<T> {
  const factory PaginatedResult({
    required List<T> items,
    required Pagination pagination,
  }) = _PaginatedResult<T>;

  const PaginatedResult._();

  factory PaginatedResult.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginatedResultFromJson(json, fromJsonT);

  /// Check if there are more items to load
  bool get hasMore => pagination.hasNextPage;

  /// Check if this is the first page
  bool get isFirstPage => pagination.page == 0;

  /// Check if items is empty
  bool get isEmpty => items.isEmpty;

  /// Check if items is not empty
  bool get isNotEmpty => items.isNotEmpty;
}

/// Pagination metadata
@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    @Default(0) int page,
    @Default(20) int pageSize,
    @Default(0) int totalCount,
    @Default(0) int totalPages,
    @Default(false) bool hasNextPage,
    @Default(false) bool hasPreviousPage,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
