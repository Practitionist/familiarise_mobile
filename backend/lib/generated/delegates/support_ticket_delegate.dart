import 'package:prisma_flutter_connector/runtime_server.dart';
import '../models/support_ticket.dart';
import '../filters.dart';

/// Delegate for SupportTicket operations
/// Provides type-safe CRUD operations using database adapters
class SupportTicketDelegate {
  final BaseExecutor _executor;

  SupportTicketDelegate(this._executor);

  /// Find a single SupportTicket by unique field(s)
  Future<SupportTicket?> findUnique({
    required SupportTicketWhereUniqueInput where,
  }) async {
    final query = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.findUnique)
        .where(_whereUniqueToJson(where))
        .build();

    final result = await _executor.executeQueryAsSingleMap(query);
    return result != null ? SupportTicket.fromJson(_normalizeForJson(result)) : null;
  }

  /// Find a single SupportTicket or throw if not found
  Future<SupportTicket> findUniqueOrThrow({
    required SupportTicketWhereUniqueInput where,
  }) async {
    final result = await findUnique(where: where);
    if (result == null) {
      throw Exception('SupportTicket not found');
    }
    return result;
  }

  /// Find the first SupportTicket matching criteria
  Future<SupportTicket?> findFirst({
    SupportTicketWhereInput? where,
    SupportTicketOrderByInput? orderBy,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.findFirst);

    if (where != null) queryBuilder.where(_whereToJson(where));
    if (orderBy != null) queryBuilder.orderBy(_orderByToJson(orderBy));

    final result = await _executor.executeQueryAsSingleMap(queryBuilder.build());
    return result != null ? SupportTicket.fromJson(_normalizeForJson(result)) : null;
  }

  /// Find multiple SupportTickets with optional filters
  Future<List<SupportTicket>> findMany({
    SupportTicketWhereInput? where,
    SupportTicketOrderByInput? orderBy,
    int? take,
    int? skip,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.findMany);

    if (where != null) queryBuilder.where(_whereToJson(where));
    if (orderBy != null) queryBuilder.orderBy(_orderByToJson(orderBy));
    if (take != null) queryBuilder.take(take);
    if (skip != null) queryBuilder.skip(skip);

    final results = await _executor.executeQueryAsMaps(queryBuilder.build());
    return results.map((json) => SupportTicket.fromJson(_normalizeForJson(json))).toList();
  }

  /// Create a new SupportTicket
  Future<SupportTicket> create({
    required CreateSupportTicketInput data,
  }) async {
    final query = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.create)
        .data(data.toJson())
        .build();

    final result = await _executor.executeQueryAsSingleMap(query);
    if (result == null) {
      throw Exception('Failed to create SupportTicket');
    }
    return SupportTicket.fromJson(_normalizeForJson(result));
  }

  /// Create multiple SupportTickets
  Future<int> createMany({
    required List<CreateSupportTicketInput> data,
  }) async {
    final query = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.createMany)
        .data({'data': data.map((d) => d.toJson()).toList()})
        .build();

    return await _executor.executeMutation(query);
  }

  /// Update a SupportTicket
  Future<SupportTicket> update({
    required SupportTicketWhereUniqueInput where,
    required UpdateSupportTicketInput data,
  }) async {
    final query = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.update)
        .where(_whereUniqueToJson(where))
        .data(data.toJson())
        .build();

    await _executor.executeMutation(query);

    // Fetch the updated record
    return await findUniqueOrThrow(where: where);
  }

  /// Update multiple SupportTickets
  Future<int> updateMany({
    required SupportTicketWhereInput where,
    required UpdateSupportTicketInput data,
  }) async {
    final query = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.updateMany)
        .where(_whereToJson(where))
        .data(data.toJson())
        .build();

    return await _executor.executeMutation(query);
  }

  /// Delete a SupportTicket
  Future<SupportTicket> delete({
    required SupportTicketWhereUniqueInput where,
  }) async {
    // Fetch before deleting
    final existing = await findUniqueOrThrow(where: where);

    final query = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.delete)
        .where(_whereUniqueToJson(where))
        .build();

    await _executor.executeMutation(query);
    return existing;
  }

  /// Delete multiple SupportTickets
  Future<int> deleteMany({
    required SupportTicketWhereInput where,
  }) async {
    final query = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.deleteMany)
        .where(_whereToJson(where))
        .build();

    return await _executor.executeMutation(query);
  }

  /// Count SupportTickets matching criteria
  Future<int> count({
    SupportTicketWhereInput? where,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.count);

    if (where != null) queryBuilder.where(_whereToJson(where));

    return await _executor.executeCount(queryBuilder.build());
  }

  /// Group SupportTickets by fields with aggregations
  Future<List<Map<String, dynamic>>> groupBy({
    required List<String> by,
    SupportTicketWhereInput? where,
    bool? count,
    Map<String, bool>? sum,
    Map<String, bool>? avg,
    Map<String, bool>? min,
    Map<String, bool>? max,
    dynamic orderBy,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.groupBy)
        .groupByFields(by);

    if (where != null) queryBuilder.where(_whereToJson(where));

    final agg = <String, dynamic>{};
    if (count == true) agg['_count'] = true;
    if (sum != null) agg['_sum'] = sum;
    if (avg != null) agg['_avg'] = avg;
    if (min != null) agg['_min'] = min;
    if (max != null) agg['_max'] = max;
    if (agg.isNotEmpty) queryBuilder.aggregation(agg);

    if (orderBy != null) queryBuilder.orderBy(orderBy);

    return await _executor.executeQueryAsMaps(queryBuilder.build());
  }

  /// Convert WhereUniqueInput to JSON for JsonQueryBuilder
  Map<String, dynamic> _whereUniqueToJson(SupportTicketWhereUniqueInput where) {
    return where.toJson()..removeWhere((key, value) => value == null);
  }

  /// Convert WhereInput to JSON for JsonQueryBuilder
  Map<String, dynamic> _whereToJson(SupportTicketWhereInput where) {
    final json = where.toJson();
    final result = <String, dynamic>{};

    // Convert filter objects to their JSON representation
    for (final entry in json.entries) {
      if (entry.value == null) continue;

      // Handle logical operators (AND, OR, NOT)
      if (entry.key == 'AND' || entry.key == 'OR') {
        final list = entry.value as List?;
        if (list != null && list.isNotEmpty) {
          result[entry.key] = list.map((item) {
            if (item is Map) return item;
            return (item as SupportTicketWhereInput).toJson();
          }).toList();
        }
      } else if (entry.key == 'NOT') {
        final not = entry.value;
        if (not is Map) {
          result[entry.key] = not;
        } else if (not is SupportTicketWhereInput) {
          result[entry.key] = not.toJson();
        }
      } else {
        // Handle filter objects (StringFilter, IntFilter, etc.)
        if (entry.value is Map) {
          final filterMap = entry.value as Map;
          final cleanedFilter = <String, dynamic>{};
          for (final filterEntry in filterMap.entries) {
            if (filterEntry.value != null) {
              cleanedFilter[filterEntry.key.toString()] = filterEntry.value;
            }
          }
          if (cleanedFilter.isNotEmpty) {
            result[entry.key] = cleanedFilter;
          }
        } else {
          // Handle filter objects that weren't serialized (e.g., StringFilter)
          try {
            final serialized = (entry.value as dynamic).toJson();
            if (serialized is Map) {
              final cleaned = <String, dynamic>{};
              for (final e in (serialized as Map).entries) {
                if (e.value != null) cleaned[e.key.toString()] = e.value;
              }
              if (cleaned.isNotEmpty) result[entry.key] = cleaned;
            } else {
              result[entry.key] = entry.value;
            }
          } catch (_) {
            result[entry.key] = entry.value;
          }
        }
      }
    }

    return result;
  }

  /// Normalize map values for Freezed fromJson (DateTime -> String, etc.)
  Map<String, dynamic> _normalizeForJson(Map<String, dynamic> map) {
    return map.map((key, value) {
      if (value is DateTime) return MapEntry(key, value.toIso8601String());
      if (value is Map<String, dynamic>) return MapEntry(key, _normalizeForJson(value));
      if (value is List) {
        return MapEntry(key, value.map((e) {
          if (e is Map<String, dynamic>) return _normalizeForJson(e);
          if (e is DateTime) return e.toIso8601String();
          return e;
        }).toList());
      }
      return MapEntry(key, value);
    });
  }

  /// Convert OrderByInput to JSON for JsonQueryBuilder
  Map<String, dynamic> _orderByToJson(SupportTicketOrderByInput orderBy) {
    final json = orderBy.toJson();
    final result = <String, dynamic>{};

    for (final entry in json.entries) {
      if (entry.value != null) {
        // Convert SortOrder enum to string
        result[entry.key] = entry.value.toString().split('.').last;
      }
    }

    return result;
  }
}
