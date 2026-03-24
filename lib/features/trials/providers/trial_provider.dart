import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/sentry_logger.dart';
import '../../../data/datasources/remote/trial_remote_source.dart';
import '../../../domain/entities/trial/trial_entities.dart';

part 'trial_provider.g.dart';

/// Provider for user's trial sessions list
@riverpod
class TrialList extends _$TrialList {
  @override
  Future<List<TrialSession>> build() async {
    final source = ref.read(trialRemoteSourceProvider);
    return source.getTrials();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    try {
      final source = ref.read(trialRemoteSourceProvider);
      state = AsyncData(await source.getTrials());
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'TrialList.refresh',
      );
      state = AsyncError(e, stack);
    }
  }

  /// Request a new trial and add it to the list
  Future<TrialSession?> requestTrial({
    required String consultantProfileId,
    required String subscriptionPlanId,
    String? notes,
  }) async {
    try {
      final source = ref.read(trialRemoteSourceProvider);
      final trial = await source.requestTrial(
        consultantProfileId: consultantProfileId,
        subscriptionPlanId: subscriptionPlanId,
        notes: notes,
      );
      final current = state.valueOrNull ?? [];
      state = AsyncData([trial, ...current]);
      return trial;
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'TrialList.requestTrial',
      );
      rethrow;
    }
  }

  /// Update a trial's status (accept/reject for consultants)
  Future<void> updateStatus({
    required String trialId,
    required String status,
  }) async {
    try {
      final source = ref.read(trialRemoteSourceProvider);
      final updated =
          await source.updateTrialStatus(trialId: trialId, status: status);
      final current = state.valueOrNull ?? [];
      state = AsyncData(
        current.map((t) => t.id == trialId ? updated : t).toList(),
      );
    } catch (e, stack) {
      AppSentryLogger.captureException(
        e,
        stackTrace: stack,
        context: 'TrialList.updateStatus',
      );
      rethrow;
    }
  }
}

/// Provider to check trial eligibility for a specific consultant
@riverpod
Future<TrialEligibility> trialEligibility(
  Ref ref,
  String consultantProfileId,
) async {
  final source = ref.read(trialRemoteSourceProvider);
  return source.checkEligibility(consultantProfileId);
}

/// Provider for consultant's trial stats
@riverpod
Future<TrialStats> trialStats(Ref ref) async {
  final source = ref.read(trialRemoteSourceProvider);
  return source.getStats();
}
