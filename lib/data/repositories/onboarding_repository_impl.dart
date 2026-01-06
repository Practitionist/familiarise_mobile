import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/errors/exceptions.dart';
import '../../core/utils/sentry_logger.dart';
import '../../core/errors/failures.dart';
import '../../core/network/network_info.dart';
import '../../domain/entities/onboarding/onboarding_state.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/onboarding_repository.dart';
import '../datasources/local/onboarding_local_source.dart';
import '../datasources/remote/onboarding_remote_source.dart';
import '../models/onboarding/onboarding_draft_model.dart';
import '../models/onboarding/onboarding_request_model.dart';

part 'onboarding_repository_impl.g.dart';

/// Provider for OnboardingRepository
@riverpod
OnboardingRepository onboardingRepository(Ref ref) {
  return OnboardingRepositoryImpl(
    remoteSource: ref.watch(onboardingRemoteSourceProvider),
    localSource: ref.watch(onboardingLocalSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  );
}

/// Extended repository interface with draft management
abstract class OnboardingRepositoryExtended extends OnboardingRepository {
  /// Save onboarding state as draft locally
  Future<Either<Failure, void>> saveDraft(OnboardingState state);

  /// Load saved draft
  Future<Either<Failure, OnboardingState?>> loadDraft();

  /// Clear saved draft
  Future<Either<Failure, void>> clearDraft();

  /// Check if there's a saved draft
  Future<bool> hasDraft();

  /// Upload profile image and get URL
  Future<Either<Failure, String>> uploadProfileImage({
    required Uint8List imageBytes,
    required String fileName,
    required String contentType,
  });
}

/// Provider for extended onboarding repository
@riverpod
OnboardingRepositoryExtended onboardingRepositoryExtended(Ref ref) {
  return OnboardingRepositoryImpl(
    remoteSource: ref.watch(onboardingRemoteSourceProvider),
    localSource: ref.watch(onboardingLocalSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  );
}

/// Implementation of OnboardingRepository
class OnboardingRepositoryImpl implements OnboardingRepositoryExtended {
  final OnboardingRemoteSource remoteSource;
  final OnboardingLocalSource localSource;
  final NetworkInfo networkInfo;

  OnboardingRepositoryImpl({
    required this.remoteSource,
    required this.localSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, User>> submitOnboarding(OnboardingState state) async {
    if (!await networkInfo.isConnected) {
      return const Left(Failure.network());
    }

    try {
      // Convert state to request model
      final request = OnboardingRequestModel.fromState(state);

      // Submit to API
      final userModel = await remoteSource.submitOnboarding(request);

      // Clear any saved draft on successful submission
      await localSource.clearDraft();

      return Right(userModel.toEntity());
    } on ValidationException catch (e) {
      return Left(Failure.validation(errors: e.errors));
    } on ServerException catch (e) {
      return Left(Failure.server(
        message: e.message,
        statusCode: e.statusCode,
      ));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on AuthException catch (e) {
      return Left(Failure.auth(message: e.message));
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace,
          context: 'OnboardingRepository.submitOnboarding');
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveDraft(OnboardingState state) async {
    try {
      final draft = OnboardingDraftModel.fromState(state);
      await localSource.saveDraft(draft);
      return const Right(null);
    } on CacheException catch (e) {
      return Left(Failure.unknown(message: e.message));
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'OnboardingRepository.saveDraft');
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, OnboardingState?>> loadDraft() async {
    try {
      final draft = await localSource.loadDraft();
      if (draft == null) return const Right(null);
      return Right(draft.toState());
    } on CacheException catch (e) {
      return Left(Failure.unknown(message: e.message));
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'OnboardingRepository.loadDraft');
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> clearDraft() async {
    try {
      await localSource.clearDraft();
      return const Right(null);
    } on CacheException catch (e) {
      return Left(Failure.unknown(message: e.message));
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'OnboardingRepository.clearDraft');
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<bool> hasDraft() async {
    return localSource.hasDraft();
  }

  @override
  Future<Either<Failure, String>> uploadProfileImage({
    required Uint8List imageBytes,
    required String fileName,
    required String contentType,
  }) async {
    if (!await networkInfo.isConnected) {
      return const Left(Failure.network());
    }

    try {
      final url = await remoteSource.uploadProfileImage(
        imageBytes: imageBytes,
        fileName: fileName,
        contentType: contentType,
      );
      return Right(url);
    } on ServerException catch (e) {
      return Left(Failure.server(
        message: e.message,
        statusCode: e.statusCode,
      ));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e, stackTrace) {
      AppSentryLogger.captureException(e,
          stackTrace: stackTrace,
          context: 'OnboardingRepository.uploadProfileImage');
      return Left(Failure.unknown(message: e.toString()));
    }
  }
}
