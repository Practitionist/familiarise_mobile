import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';

/// Repository for announcement operations (read-only on mobile).
class AnnouncementRepository extends BaseRepository {
  AnnouncementRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Get active announcements (within date range, active status).
  Future<List<Map<String, dynamic>>> getActive() async {
    final now = DateTime.now().toUtc();
    // The typed DateTimeFilter cannot express `endDate IS NULL`, so the
    // "no end date" half of the old raw OR-clause is applied in Dart.
    final results = await _prisma.announcement.findMany(
      where: AnnouncementWhereInput(
        isActive: const BooleanFilter(equals: true),
        startDate: DateTimeFilter(lte: now),
      ),
    );
    return results
        .where((a) => a.endDate == null || !a.endDate!.isBefore(now))
        .map((a) => a.toJson())
        .toList();
  }
}
