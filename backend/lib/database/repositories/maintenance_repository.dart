import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for maintenance window operations (read-only).
class MaintenanceRepository extends BaseRepository {
  MaintenanceRepository(super._executor);

  /// Get the current active maintenance window (if any).
  Future<Map<String, dynamic>?> getActive() async {
    final now = nowIso8601;
    final query = JsonQueryBuilder()
        .model('maintenance_windows')
        .action(QueryAction.findFirst)
        .where({
      'isActive': true,
      'startTime': {'lte': now},
      'endTime': {'gte': now},
    }).build();
    return executeQueryAsSingleMap(query);
  }
}
