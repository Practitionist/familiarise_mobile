import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for announcement operations (read-only on mobile).
class AnnouncementRepository extends BaseRepository {
  AnnouncementRepository(super._executor);

  /// Get active announcements (within date range, active status).
  Future<List<Map<String, dynamic>>> getActive() async {
    final now = nowIso8601;
    final query = JsonQueryBuilder()
        .model('announcements')
        .action(QueryAction.findMany)
        .where({
      'isActive': true,
      'startDate': {'lte': now},
      'OR': [
        {'endDate': null},
        {'endDate': {'gte': now}},
      ],
    }).build();
    return executeQueryAsMaps(query);
  }
}
