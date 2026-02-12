import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/referral/referral_entities.dart';
import '../../domain/repositories/referral_repository.dart';
import '../datasources/remote/referral_remote_source.dart';

part 'referral_repository_impl.g.dart';

/// Provider for ReferralRepository
@riverpod
ReferralRepository referralRepository(Ref ref) {
  return ReferralRepositoryImpl(
    remoteSource: ref.watch(referralRemoteSourceProvider),
  );
}

/// Implementation of ReferralRepository
class ReferralRepositoryImpl implements ReferralRepository {
  final ReferralRemoteSource _remoteSource;

  ReferralRepositoryImpl({required ReferralRemoteSource remoteSource})
      : _remoteSource = remoteSource;

  @override
  Future<void> applyReferralCode(String code) {
    return _remoteSource.applyReferralCode(code);
  }

  @override
  Future<ReferralCodeInfo?> getReferralCode() {
    return _remoteSource.getReferralCode();
  }

  @override
  Future<ReferralCodeInfo> createReferralCode() {
    return _remoteSource.createReferralCode();
  }

  @override
  Future<ReferralCreditsAvailable> getAvailableCredits() {
    return _remoteSource.getAvailableCredits();
  }
}
