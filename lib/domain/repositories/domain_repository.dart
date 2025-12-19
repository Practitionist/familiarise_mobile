import 'package:fpdart/fpdart.dart';

import '../../core/errors/failures.dart';
import '../entities/onboarding/domain_entity.dart';

/// Repository interface for domain/subdomain operations
abstract class DomainRepository {
  /// Get all domains with their subdomains
  ///
  /// Returns a list of [DomainEntity] on success, or a [Failure] on error.
  Future<Either<Failure, List<DomainEntity>>> getAllDomains();

  /// Get a single domain by ID
  Future<Either<Failure, DomainEntity>> getDomainById(String id);
}
