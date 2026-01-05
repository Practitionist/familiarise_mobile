import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/meeting/meeting_entities.dart';
import '../../domain/repositories/meeting_repository.dart';
import '../datasources/remote/meeting_remote_source.dart';

part 'meeting_repository_impl.g.dart';

/// Provider for MeetingRepository
@riverpod
MeetingRepository meetingRepository(Ref ref) {
  return MeetingRepositoryImpl(
    remoteSource: ref.watch(meetingRemoteSourceProvider),
  );
}

/// Implementation of MeetingRepository
class MeetingRepositoryImpl implements MeetingRepository {
  final MeetingRemoteSource _remoteSource;

  MeetingRepositoryImpl({required MeetingRemoteSource remoteSource})
      : _remoteSource = remoteSource;

  @override
  Future<MeetingToken> getMeetingToken(String appointmentId) {
    return _remoteSource.getMeetingToken(appointmentId);
  }

  @override
  Future<MeetingSession> getMeetingDetails(String appointmentId) {
    return _remoteSource.getMeetingDetails(appointmentId);
  }

  @override
  Future<void> startMeeting(String appointmentId) {
    return _remoteSource.startMeeting(appointmentId);
  }

  @override
  Future<void> endMeeting(String appointmentId) {
    return _remoteSource.endMeeting(appointmentId);
  }
}
