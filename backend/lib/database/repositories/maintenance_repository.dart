import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for maintenance window operations (read-only).
///
/// The maintenance_windows table uses a `phase` enum (OFF, DEGRADED, OFFLINE)
/// instead of an `isActive` boolean. A window is "active" when phase != OFF
/// and startedAt is set.
class MaintenanceRepository extends BaseRepository {
  MaintenanceRepository(super._executor);

  /// Get the current active maintenance window (if any).
  ///
  /// Active = phase is not OFF and startedAt is set.
  Future<Map<String, dynamic>?> getActive() async {
    final query = JsonQueryBuilder()
        .model('maintenance_windows')
        .action(QueryAction.findFirst)
        .where({
      'phase': {'not': 'OFF'},
      'startedAt': {'not': null},
      'endedAt': null,
    }).build();
    return executeQueryAsSingleMap(query);
  }
}
