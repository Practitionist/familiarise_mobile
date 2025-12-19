// ignore_for_file: avoid_print

import 'package:backend/database/repositories/base_repository.dart';
import 'package:postgres/postgres.dart' as pg;
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for domain and subdomain database operations
///
/// Uses the Prisma Flutter Connector's new features:
/// - findMany for list queries
/// - include for relations (JOINs)
/// - Raw SQL API as escape hatch
class DomainRepository extends BaseRepository {
  /// Create a domain repository with the given executor and connection
  DomainRepository(super.executor, this._connection);

  // Kept for potential future raw SQL needs
  // ignore: unused_field
  final pg.Connection _connection;

  /// Get all domains using the connector's findMany
  ///
  /// This replaces the raw SQL approach with the type-safe query builder.
  Future<List<Map<String, dynamic>>> findAll() async {
    final query = JsonQueryBuilder()
        .model('Domain')
        .action(QueryAction.findMany)
        .orderBy({'name': 'asc'}).build();

    return executeQueryAsMaps(query);
  }

  /// Get all domains with their subdomains using a single JOIN query
  ///
  /// This uses the connector's new `include` feature to fetch related
  /// subdomains in a single query, avoiding N+1 query problems.
  ///
  /// NOTE: Requires SchemaRegistry to be populated with relation metadata.
  /// For now, falls back to the N+1 approach if relations aren't configured.
  Future<List<Map<String, dynamic>>> findAllWithSubDomains() async {
    // Try using include for relations (single JOIN query)
    // This requires the schema registry to be set up
    try {
      final query = JsonQueryBuilder()
          .model('Domain')
          .action(QueryAction.findMany)
          .include({'subDomains': true}).orderBy({'name': 'asc'}).build();

      final results = await executeQueryAsMaps(query);

      // If we got nested results, return them directly
      if (results.isNotEmpty && results.first.containsKey('subDomains')) {
        return results;
      }
    } catch (e) {
      // Fall through to optimized 2-query approach if include isn't supported
      print('Note: Include not fully configured, using 2-query fallback: $e');
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
    final query = JsonQueryBuilder()
        .model('Domain')
        .action(QueryAction.findUnique)
        .where({'id': id}).build();

    return executeQueryAsSingleMap(query);
  }

  /// Get all subdomains for a domain using findMany
  Future<List<Map<String, dynamic>>> findSubDomainsByDomainId(
    String domainId,
  ) async {
    final query = JsonQueryBuilder()
        .model('SubDomain')
        .action(QueryAction.findMany)
        .where({'domainId': domainId}).orderBy({'name': 'asc'}).build();

    return executeQueryAsMaps(query);
  }

  /// Get ALL subdomains (used for optimized batch loading)
  Future<List<Map<String, dynamic>>> _findAllSubDomains() async {
    final query = JsonQueryBuilder()
        .model('SubDomain')
        .action(QueryAction.findMany)
        .orderBy({'name': 'asc'}).build();

    return executeQueryAsMaps(query);
  }

  /// Find a subdomain by ID
  Future<Map<String, dynamic>?> findSubDomainById(String id) async {
    final query = JsonQueryBuilder()
        .model('SubDomain')
        .action(QueryAction.findUnique)
        .where({'id': id}).build();

    return executeQueryAsSingleMap(query);
  }

  /// Get domain count using aggregation
  ///
  /// Demonstrates the connector's aggregation support.
  Future<int> count() async {
    final query =
        JsonQueryBuilder().model('Domain').action(QueryAction.count).build();

    return executeCount(query);
  }

  /// Execute a custom raw SQL query
  ///
  /// Demonstrates the connector's raw SQL escape hatch for complex queries
  /// that can't be expressed with the query builder.
  Future<List<Map<String, dynamic>>> findDomainsWithSubDomainCountRaw() async {
    return executor.executeRaw(
      '''
      SELECT d.id, d.name, d.description, d."createdAt", d."updatedAt",
             COUNT(s.id) as "subDomainCount"
      FROM "Domain" d
      LEFT JOIN "SubDomain" s ON s."domainId" = d.id
      GROUP BY d.id, d.name, d.description, d."createdAt", d."updatedAt"
      ORDER BY d.name ASC
      ''',
      [],
    );
  }
}
