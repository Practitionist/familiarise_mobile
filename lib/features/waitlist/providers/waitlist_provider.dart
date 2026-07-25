import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/sentry_logger.dart';
import '../../../data/datasources/remote/waitlist_remote_source.dart';
import '../../../domain/entities/waitlist/waitlist_entities.dart';

part 'waitlist_provider.g.dart';

@riverpod
class WaitlistEntries extends _$WaitlistEntries {
  @override
  Future<List<WaitlistEntry>> build() async {
    final source = ref.read(waitlistRemoteSourceProvider);
    return source.getEntries();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    try {
      final source = ref.read(waitlistRemoteSourceProvider);
      state = AsyncData(await source.getEntries());
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'WaitlistEntries.refresh',
      );
      state = AsyncError(e, stack);
    }
  }

  Future<WaitlistEntry?> join({
    String? webinarId,
    String? classId,
  }) async {
    try {
      final source = ref.read(waitlistRemoteSourceProvider);
      final entry = await source.joinWaitlist(
        webinarId: webinarId,
        classId: classId,
      );
      final current = state.valueOrNull ?? [];
      state = AsyncData([entry, ...current]);
      return entry;
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'WaitlistEntries.join',
      );
      rethrow;
    }
  }

  Future<void> leave(String id) async {
    try {
      final source = ref.read(waitlistRemoteSourceProvider);
      await source.leaveWaitlist(id);
      final current = state.valueOrNull ?? [];
      state = AsyncData(current.where((e) => e.id != id).toList());
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'WaitlistEntries.leave',
      );
      rethrow;
    }
  }
}
