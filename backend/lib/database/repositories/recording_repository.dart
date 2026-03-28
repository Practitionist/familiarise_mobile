import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';

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
  Future<Map<String, dynamic>> updateMetadata({
    required String id,
    String? supabaseUrl,
    String? supabasePath,
    RecordingStatus? status,
    BigInt? fileSize,
    int? durationInMinutes,
  }) async {
    final recording = await _prisma.recording.update(
      where: RecordingWhereUniqueInput(id: id),
      data: UpdateRecordingInput(
        supabaseUrl: supabaseUrl,
        supabasePath: supabasePath,
        status: status,
        fileSize: fileSize,
        durationInMinutes: durationInMinutes,
      ),
    );
    return recording.toJson();
  }
}
