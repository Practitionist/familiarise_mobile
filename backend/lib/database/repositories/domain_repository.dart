import 'package:postgres/postgres.dart' as pg;
import 'package:prisma_flutter_connector/runtime_server.dart';

import 'base_repository.dart';

/// Repository for domain and subdomain database operations
///
/// Uses raw SQL for list operations since the Prisma Flutter Connector
/// has limited support for findMany queries.
class DomainRepository extends BaseRepository {
  /// Create a domain repository with the given executor and connection
  DomainRepository(QueryExecutor executor, this._connection) : super(executor);

  final pg.Connection _connection;

  /// Get all domains
  Future<List<Map<String, dynamic>>> findAll() async {
    final result = await _connection.execute(
      pg.Sql.named(
        'SELECT id, name, description, "createdAt", "updatedAt" '
        'FROM "Domain" ORDER BY name ASC',
      ),
    );

    return result.map((row) => row.toColumnMap()).toList();
  }

  /// Get all domains with their subdomains
  ///
  /// Returns a list of domains, each with a 'subDomains' field containing
  /// the list of subdomains for that domain.
  Future<List<Map<String, dynamic>>> findAllWithSubDomains() async {
    // Get all domains
    final domains = await findAll();

    // For each domain, get its subdomains
    final result = <Map<String, dynamic>>[];
    for (final domain in domains) {
      final domainId = domain['id'] as String;
      final subDomains = await findSubDomainsByDomainId(domainId);

      result.add({
        ...domain,
        'subDomains': subDomains,
      });
    }

    return result;
  }

  /// Find a domain by ID
  Future<Map<String, dynamic>?> findById(String id) async {
    final query = JsonQueryBuilder()
        .model('Domain')
        .action(QueryAction.findUnique)
        .where({'id': id})
        .build();

    return executeQueryAsSingleMap(query);
  }

  /// Get all subdomains for a domain
  Future<List<Map<String, dynamic>>> findSubDomainsByDomainId(
    String domainId,
  ) async {
    final result = await _connection.execute(
      pg.Sql.named(
        'SELECT id, name, description, "domainId", "createdAt", "updatedAt" '
        'FROM "SubDomain" WHERE "domainId" = @domainId ORDER BY name ASC',
      ),
      parameters: {'domainId': domainId},
    );

    return result.map((row) => row.toColumnMap()).toList();
  }

  /// Find a subdomain by ID
  Future<Map<String, dynamic>?> findSubDomainById(String id) async {
    final query = JsonQueryBuilder()
        .model('SubDomain')
        .action(QueryAction.findUnique)
        .where({'id': id})
        .build();

    return executeQueryAsSingleMap(query);
  }
}
