import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/referral_repository_impl.dart';
import '../../../domain/entities/referral/referral_entities.dart';

part 'referral_provider.g.dart';

/// Fetches the user's referral code
@riverpod
Future<ReferralCodeInfo?> myReferralCode(Ref ref) async {
  final repo = ref.watch(referralRepositoryProvider);
  return repo.getReferralCode();
}

/// Fetches available referral credits
@riverpod
Future<ReferralCreditsAvailable> availableCredits(Ref ref) async {
  final repo = ref.watch(referralRepositoryProvider);
  return repo.getAvailableCredits();
}

/// Notifier for applying a referral code
@riverpod
class ApplyReferralCode extends _$ApplyReferralCode {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> apply(String code) async {
    state = const AsyncLoading();
    try {
      final repo = ref.read(referralRepositoryProvider);
      await repo.applyReferralCode(code);
      state = const AsyncData(null);
      return true;
    } catch (e, st) {
      state = AsyncError(e, st);
      return false;
    }
  }
}

/// Notifier for creating a referral code
@riverpod
class CreateReferralCode extends _$CreateReferralCode {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> create() async {
    state = const AsyncLoading();
    try {
      final repo = ref.read(referralRepositoryProvider);
      await repo.createReferralCode();
      state = const AsyncData(null);
      // Refresh the referral code
      ref.invalidate(myReferralCodeProvider);
      return true;
    } catch (e, st) {
      state = AsyncError(e, st);
      return false;
    }
  }
}
