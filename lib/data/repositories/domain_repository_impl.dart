import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/errors/exceptions.dart';
import '../../core/utils/sentry_logger.dart';
import '../../core/errors/failures.dart';
import '../../core/network/network_info.dart';
import '../../domain/entities/onboarding/domain_entity.dart';
import '../../domain/repositories/domain_repository.dart';
import '../datasources/remote/domain_remote_source.dart';

part 'domain_repository_impl.g.dart';

/// Provider for DomainRepository
@riverpod
DomainRepository domainRepository(Ref ref) {
  return DomainRepositoryImpl(
    remoteSource: ref.watch(domainRemoteSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  );
}

/// Implementation of DomainRepository
class DomainRepositoryImpl implements DomainRepository {
  final DomainRemoteSource remoteSource;
  final NetworkInfo networkInfo;

  DomainRepositoryImpl({
    required this.remoteSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<DomainEntity>>> getAllDomains() async {
    if (!await networkInfo.isConnected) {
      return const Left(Failure.network());
    }

    try {
      final models = await remoteSource.getAllDomains();
      final entities = models.map((m) => m.toEntity()).toList();
      return Right(entities);
    } on ServerException catch (e) {
      return Left(Failure.server(
        message: e.message,
        statusCode: e.statusCode,
      ));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e, stackTrace) {
      SentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'DomainRepository.getAllDomains');
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, DomainEntity>> getDomainById(String id) async {
    if (!await networkInfo.isConnected) {
      return const Left(Failure.network());
    }

    try {
      final model = await remoteSource.getDomainById(id);
      return Right(model.toEntity());
    } on NotFoundException catch (e) {
      return Left(Failure.notFound(resource: e.resource));
    } on ServerException catch (e) {
      return Left(Failure.server(
        message: e.message,
        statusCode: e.statusCode,
      ));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e, stackTrace) {
      SentryLogger.captureException(e,
          stackTrace: stackTrace, context: 'DomainRepository.getDomainById');
      return Left(Failure.unknown(message: e.toString()));
    }
  }
}
