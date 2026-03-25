import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/sentry_logger.dart';
import '../../../data/datasources/remote/payout_remote_source.dart';
import '../../../domain/entities/payout/payout_entities.dart';

part 'payout_provider.g.dart';

@riverpod
class PayoutAccounts extends _$PayoutAccounts {
  @override
  Future<List<PayoutAccount>> build() async {
    final source = ref.read(payoutRemoteSourceProvider);
    return source.getAccounts();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    try {
      final source = ref.read(payoutRemoteSourceProvider);
      state = AsyncData(await source.getAccounts());
    } catch (e, stack) {
      AppSentryLogger.captureException(e,
          stackTrace: stack, context: 'PayoutAccounts.refresh');
      state = AsyncError(e, stack);
    }
  }

  Future<void> create(Map<String, dynamic> data) async {
    try {
      final source = ref.read(payoutRemoteSourceProvider);
      final account = await source.createAccount(data);
      final current = state.valueOrNull ?? [];
      state = AsyncData([...current, account]);
    } catch (e, stack) {
      AppSentryLogger.captureException(e,
          stackTrace: stack, context: 'PayoutAccounts.create');
      rethrow;
    }
  }

  Future<void> delete(String id) async {
    try {
      final source = ref.read(payoutRemoteSourceProvider);
      await source.deleteAccount(id);
      final current = state.valueOrNull ?? [];
      state = AsyncData(current.where((a) => a.id != id).toList());
    } catch (e, stack) {
      AppSentryLogger.captureException(e,
          stackTrace: stack, context: 'PayoutAccounts.delete');
      rethrow;
    }
  }

  Future<void> setDefault(String id) async {
    try {
      final source = ref.read(payoutRemoteSourceProvider);
      await source.setDefault(id);
      final current = state.valueOrNull ?? [];
      state = AsyncData(
        current
            .map((a) => a.copyWith(isDefault: a.id == id))
            .toList(),
      );
    } catch (e, stack) {
      AppSentryLogger.captureException(e,
          stackTrace: stack, context: 'PayoutAccounts.setDefault');
      rethrow;
    }
  }
}
