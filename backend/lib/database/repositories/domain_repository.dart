import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for domain and subdomain database operations
///
/// Uses the Prisma Flutter Connector's features:
/// - findMany for list queries
/// - include for relations (JOINs)
/// - computed fields for inline aggregations
class DomainRepository extends BaseRepository {
  /// Create a domain repository with the given executor
  DomainRepository(super._executor, this._prisma);
  final PrismaClient _prisma;

  /// Get all domains using typed delegates.
  Future<List<Map<String, dynamic>>> findAll() async {
    final domains = await _prisma.domain.findMany(
      orderBy: DomainOrderByInput(name: SortOrder.asc),
    );
    return domains.map((d) => d.toJson()).toList();
  }

  /// Get all domains with their subdomains using a single JOIN query
  ///
  /// This uses the connector's new `include` feature to fetch related
  /// subdomains in a single query, avoiding N+1 query problems.
  ///
  /// NOTE: Requires SchemaRegistry to be populated with relation metadata.
  /// For now, falls back to the N+1 approach if relations aren't configured.
  Future<List<Map<String, dynamic>>> findAllWithSubDomains() async {
    // Typed include (single JOIN query) — hydrates subDomains into each Domain.
    try {
      final domains = await _prisma.domain.findMany(
        include: DomainInclude(subDomains: SubDomainInclude()),
        orderBy: DomainOrderByInput(name: SortOrder.asc),
      );
      final results = domains.map((d) => d.toJson()).toList();

      // If we got nested results, return them directly
      if (results.isNotEmpty && results.first.containsKey('subDomains')) {
        return results;
      }
    } catch (e) {
      // Fall through to optimized 2-query approach if include isn't supported
      SentryLogger.debug(
        'Include not fully configured, using 2-query fallback: $e',
        context: 'DomainRepository',
      );
    }

    // Fallback: 2 parallel queries (optimized from N+1)
    final results = await Future.wait([
      findAll(),
      _findAllSubDomains(),
    ]);

    final domains = results[0];
    final allSubDomains = results[1];

    // Group subdomains by domainId in memory
    final subDomainsByDomainId = <String, List<Map<String, dynamic>>>{};
    for (final subDomain in allSubDomains) {
      final domainId = subDomain['domainId'] as String;
      (subDomainsByDomainId[domainId] ??= []).add(subDomain);
    }

    // Attach subdomains to their parent domains
    return domains.map((domain) {
      final domainId = domain['id'] as String;
      return {
        ...domain,
        'subDomains': subDomainsByDomainId[domainId] ?? [],
      };
    }).toList();
  }

  /// Find a domain by ID
  Future<Map<String, dynamic>?> findById(String id) async {
    final domain = await _prisma.domain.findUnique(
      where: DomainWhereUniqueInput(id: id),
    );
    return domain?.toJson();
  }

  /// Get all subdomains for a domain using findMany
  Future<List<Map<String, dynamic>>> findSubDomainsByDomainId(
    String domainId,
  ) async {
    final subs = await _prisma.subDomain.findMany(
      where: SubDomainWhereInput(domainId: StringFilter(equals: domainId)),
      orderBy: SubDomainOrderByInput(name: SortOrder.asc),
    );
    return subs.map((s) => s.toJson()).toList();
  }

  /// Get ALL subdomains (used for optimized batch loading)
  Future<List<Map<String, dynamic>>> _findAllSubDomains() async {
    final subs = await _prisma.subDomain.findMany(
      orderBy: SubDomainOrderByInput(name: SortOrder.asc),
    );
    return subs.map((s) => s.toJson()).toList();
  }

  /// Find a subdomain by ID
  Future<Map<String, dynamic>?> findSubDomainById(String id) async {
    final sub = await _prisma.subDomain.findUnique(
      where: SubDomainWhereUniqueInput(id: id),
    );
    return sub?.toJson();
  }

  /// Get domain count.
  Future<int> count() async {
    return _prisma.domain.count();
  }

  /// Get all domains with subdomain count using computed fields
  ///
  /// Uses ComputedField.count() to generate a correlated subquery for counting.
  Future<List<Map<String, dynamic>>> findDomainsWithSubDomainCount() async {
    final query = JsonQueryBuilder()
        .model('Domain')
        .action(QueryAction.findMany)
        .computed({
      'subDomainCount': ComputedField.count(
        from: 'SubDomain',
        where: {'domainId': FieldRef('id')},
      ),
    }).orderBy({'name': 'asc'}).build();

    return executeQueryAsMaps(query);
  }
}
