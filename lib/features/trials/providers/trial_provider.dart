import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/sentry_logger.dart';
import '../../../data/datasources/remote/trial_remote_source.dart';
import '../../../domain/entities/trial/trial_entities.dart';

part 'trial_provider.g.dart';

/// Provider for user's trial sessions list with client-side filtering
@riverpod
class TrialList extends _$TrialList {
  List<TrialSession> _allTrials = [];
  TrialStatus? _statusFilter;

  @override
  Future<List<TrialSession>> build() async {
    final source = ref.read(trialRemoteSourceProvider);
    _allTrials = await source.getTrials();
    return _applyFilter();
  }

  List<TrialSession> _applyFilter() {
    if (_statusFilter == null) return _allTrials;
    return _allTrials.where((t) => t.status == _statusFilter).toList();
  }

  /// Filter trials by status (null = show all)
  void filterByStatus(TrialStatus? status) {
    _statusFilter = status;
    state = AsyncData(_applyFilter());
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    try {
      final source = ref.read(trialRemoteSourceProvider);
      _allTrials = await source.getTrials();
      state = AsyncData(_applyFilter());
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
  Future<TrialSession> requestTrial({
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
      _allTrials = [trial, ..._allTrials];
      state = AsyncData(_applyFilter());
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
    required TrialStatus status,
  }) async {
    try {
      final source = ref.read(trialRemoteSourceProvider);
      final updated =
          await source.updateTrialStatus(trialId: trialId, status: status);
      _allTrials =
          _allTrials.map((t) => t.id == trialId ? updated : t).toList();
      state = AsyncData(_applyFilter());
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
