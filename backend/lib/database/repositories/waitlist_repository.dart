import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Repository for waitlist operations.
///
/// Uses JsonQueryBuilder for creates (foreign keys) and PrismaClient
/// typed delegates for reads/updates.
class WaitlistRepository extends BaseRepository {
  WaitlistRepository(super._executor, this._prisma);

  final PrismaClient _prisma;
  static const _uuid = Uuid();

  /// Join a waitlist for a webinar or class.
  Future<Map<String, dynamic>> join({
    required String userId,
    String? webinarId,
    String? classId,
  }) async {
    final now = nowIso8601;
    final query = JsonQueryBuilder()
        .model('Waitlist')
        .action(QueryAction.create)
        .data({
      'id': _uuid.v4(),
      'userId': userId,
      'webinarId': webinarId,
      'classId': classId,
      'status': 'WAITING',
      'priority': 0,
      'joinedAt': now,
      'createdAt': now,
      'updatedAt': now,
    }).build();
    final result = await executeQueryAsSingleMap(query);
    if (result == null) throw Exception('Failed to join waitlist');
    return result;
  }

  /// Get a waitlist entry by ID.
  Future<Waitlist?> findById(String id) async {
    return _prisma.waitlist.findUnique(
      where: WaitlistWhereUniqueInput(id: id),
    );
  }

  /// Get all waitlist entries for a user.
  Future<List<Map<String, dynamic>>> findByUser(String userId) async {
    final query = JsonQueryBuilder()
        .model('Waitlist')
        .action(QueryAction.findMany)
        .where({'userId': userId})
        .build();
    return executeQueryAsMaps(query);
  }

  /// Leave a waitlist (set status to CANCELLED).
  Future<Waitlist> leave(String id) async {
    return _prisma.waitlist.update(
      where: WaitlistWhereUniqueInput(id: id),
      data: const UpdateWaitlistInput(
        status: WaitlistStatus.cancelled,
      ),
    );
  }

  /// Respond to a waitlist notification (accept/decline).
  Future<Waitlist> respond({
    required String id,
    required bool accept,
  }) async {
    final now = DateTime.now().toUtc();
    if (accept) {
      return _prisma.waitlist.update(
        where: WaitlistWhereUniqueInput(id: id),
        data: UpdateWaitlistInput(
          status: WaitlistStatus.booked,
          bookedAt: now,
          respondedAt: now,
        ),
      );
    } else {
      return _prisma.waitlist.update(
        where: WaitlistWhereUniqueInput(id: id),
        data: UpdateWaitlistInput(
          status: WaitlistStatus.skipped,
          respondedAt: now,
        ),
      );
    }
  }

  /// Get waitlist count for a webinar or class.
  Future<int> getWaitingCount({
    String? webinarId,
    String? classId,
  }) async {
    final where = <String, dynamic>{
      'status': 'WAITING',
    };
    if (webinarId != null) where['webinarId'] = webinarId;
    if (classId != null) where['classId'] = classId;

    final query = JsonQueryBuilder()
        .model('Waitlist')
        .action(QueryAction.count)
        .where(where)
        .build();
    return executeCount(query);
  }
}
