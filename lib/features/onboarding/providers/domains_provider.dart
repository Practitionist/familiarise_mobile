import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../data/repositories/domain_repository_impl.dart';
import '../../../domain/entities/onboarding/domain_entity.dart';

part 'domains_provider.g.dart';

/// Provider to fetch all domains with their subdomains
/// Keeps the data alive to avoid refetching during onboarding
@Riverpod(keepAlive: true)
Future<List<DomainEntity>> domains(Ref ref) async {
  final repository = ref.watch(domainRepositoryProvider);
  final result = await repository.getAllDomains();

  return result.fold(
    (failure) => throw Exception(failure.displayMessage),
    (domains) => domains,
  );
}

/// Provider to get a single domain by ID
@riverpod
Future<DomainEntity?> domainById(Ref ref, String id) async {
  final domains = await ref.watch(domainsProvider.future);
  try {
    return domains.firstWhere((d) => d.id == id);
  } catch (_) {
    return null;
  }
}

/// Provider to get subdomains for a given domain
@riverpod
List<SubDomainEntity> subDomainsForDomain(Ref ref, String domainId) {
  final domains = ref.watch(domainsProvider).valueOrNull ?? [];
  try {
    final domain = domains.firstWhere((d) => d.id == domainId);
    return domain.subDomains;
  } catch (_) {
    return [];
  }
}
