import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for meeting recording operations.
class RecordingRepository extends BaseRepository {
  RecordingRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Get a recording by ID.
  Future<Recording?> findById(String id) async {
    return _prisma.recording.findUnique(
      where: RecordingWhereUniqueInput(id: id),
    );
  }

  /// Get recordings for a meeting session.
  Future<List<Recording>> findByMeetingSession(
    String meetingSessionId,
  ) async {
    return _prisma.recording.findMany(
      where: RecordingWhereInput(
        meetingSessionId: StringFilter(equals: meetingSessionId),
      ),
    );
  }

  /// Update recording metadata (e.g., after transfer to Supabase).
  Future<Map<String, dynamic>?> updateMetadata({
    required String id,
    String? storageUrl,
    String? storagePath,
    String? transferStatus,
    int? fileSize,
    int? duration,
  }) async {
    final data = <String, dynamic>{
      'updatedAt': nowIso8601,
    };
    if (storageUrl != null) data['storageUrl'] = storageUrl;
    if (storagePath != null) data['storagePath'] = storagePath;
    if (transferStatus != null) {
      data['transferStatus'] = transferStatus;
    }
    if (fileSize != null) data['fileSize'] = fileSize;
    if (duration != null) data['duration'] = duration;

    final query = JsonQueryBuilder()
        .model('Recording')
        .action(QueryAction.update)
        .where({'id': id})
        .data(data)
        .build();
    return executeQueryAsSingleMap(query);
  }
}
