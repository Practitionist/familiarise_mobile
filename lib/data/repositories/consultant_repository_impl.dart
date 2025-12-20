import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/common/paginated_result.dart';
import '../../domain/entities/explore/consultant.dart';
import '../../domain/entities/explore/consultant_details.dart';
import '../../domain/entities/explore/explore_filters.dart';
import '../../domain/entities/explore/review.dart';
import '../../domain/repositories/consultant_repository.dart';
import '../datasources/remote/consultant_remote_source.dart';

part 'consultant_repository_impl.g.dart';

/// Provider for ConsultantRepository
@riverpod
ConsultantRepository consultantRepository(Ref ref) {
  return ConsultantRepositoryImpl(ref.watch(consultantRemoteSourceProvider));
}

/// Implementation of ConsultantRepository
class ConsultantRepositoryImpl implements ConsultantRepository {
  final ConsultantRemoteSource _remoteSource;

  ConsultantRepositoryImpl(this._remoteSource);

  @override
  Future<PaginatedResult<Consultant>> getConsultants({
    ExploreFilters? filters,
    int page = 0,
    int pageSize = 20,
  }) async {
    final result = await _remoteSource.getConsultants(
      filters: filters,
      page: page,
      pageSize: pageSize,
    );

    return PaginatedResult(
      items: result.consultants.map((m) => m.toEntity()).toList(),
      pagination: result.pagination,
    );
  }

  @override
  Future<ConsultantDetails?> getConsultantById(String id) async {
    final result = await _remoteSource.getConsultantById(id);
    return result?.toEntity();
  }

  @override
  Future<PaginatedResult<Review>> getConsultantReviews({
    required String consultantId,
    int page = 0,
    int pageSize = 10,
  }) async {
    final result = await _remoteSource.getConsultantReviews(
      consultantId: consultantId,
      page: page,
      pageSize: pageSize,
    );

    return PaginatedResult(
      items: result.reviews.map((m) => m.toEntity()).toList(),
      pagination: result.pagination,
    );
  }
}
