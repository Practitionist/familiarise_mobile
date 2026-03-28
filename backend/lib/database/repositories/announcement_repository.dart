import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';

/// Repository for announcement operations (read-only on mobile).
class AnnouncementRepository extends BaseRepository {
  AnnouncementRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Get active announcements (within date range, active status).
  Future<List<Map<String, dynamic>>> getActive() async {
    final now = nowIso8601;
    return _prisma.announcement.findManyRaw(
      where: {
        'isActive': true,
        'startDate': {'lte': now},
        'OR': [
          {'endDate': {'equals': null}},
          {'endDate': {'gte': now}},
        ],
      },
    );
  }
}
