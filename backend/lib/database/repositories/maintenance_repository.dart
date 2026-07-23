import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';

/// Repository for maintenance window operations (read-only).
///
/// The maintenance_windows table uses a `phase` enum (OFF, DEGRADED, OFFLINE)
/// instead of an `isActive` boolean. A window is "active" when phase != OFF
/// and startedAt is set.
class MaintenanceRepository extends BaseRepository {
  MaintenanceRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Get the current active maintenance window (if any).
  ///
  /// Active = phase is not OFF and startedAt is set.
  Future<Map<String, dynamic>?> getActive() async {
    // The typed DateTimeFilter cannot express `IS NULL` / `IS NOT NULL`, so
    // the startedAt/endedAt null checks are applied in Dart. Maintenance
    // windows are a tiny table, so fetching non-OFF rows is cheap.
    final windows = await _prisma.maintenanceWindow.findMany(
      where: const MaintenanceWindowWhereInput(
        phase: MaintenancePhaseFilter(not: MaintenancePhase.off),
      ),
    );
    for (final window in windows) {
      if (window.startedAt != null && window.endedAt == null) {
        return window.toJson();
      }
    }
    return null;
  }
}
