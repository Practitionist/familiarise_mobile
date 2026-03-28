import 'package:prisma_flutter_connector/runtime_server.dart';
import '../models/consultant_earnings.dart';
import '../filters.dart';

/// Delegate for ConsultantEarnings operations
/// Provides type-safe CRUD operations using database adapters
class ConsultantEarningsDelegate {
  final BaseExecutor _executor;

  ConsultantEarningsDelegate(this._executor);

  /// Find a single ConsultantEarnings by unique field(s)
  Future<ConsultantEarnings?> findUnique({
    required ConsultantEarningsWhereUniqueInput where,
  }) async {
    final query = JsonQueryBuilder()
        .model('ConsultantEarnings')
        .action(QueryAction.findUnique)
        .where(_whereUniqueToJson(where))
        .build();

    final result = await _executor.executeQueryAsSingleMap(query);
    return result != null ? ConsultantEarnings.fromJson(_normalizeForJson(result)) : null;
  }

  /// Find a single ConsultantEarnings or throw if not found
  Future<ConsultantEarnings> findUniqueOrThrow({
    required ConsultantEarningsWhereUniqueInput where,
  }) async {
    final result = await findUnique(where: where);
    if (result == null) {
      throw Exception('ConsultantEarnings not found');
    }
    return result;
  }

  /// Find the first ConsultantEarnings matching criteria
  Future<ConsultantEarnings?> findFirst({
    ConsultantEarningsWhereInput? where,
    ConsultantEarningsOrderByInput? orderBy,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('ConsultantEarnings')
        .action(QueryAction.findFirst);

    if (where != null) queryBuilder.where(_whereToJson(where));
    if (orderBy != null) queryBuilder.orderBy(_orderByToJson(orderBy));

    final result = await _executor.executeQueryAsSingleMap(queryBuilder.build());
    return result != null ? ConsultantEarnings.fromJson(_normalizeForJson(result)) : null;
  }

  /// Find multiple ConsultantEarningss with optional filters
  Future<List<ConsultantEarnings>> findMany({
    ConsultantEarningsWhereInput? where,
    ConsultantEarningsOrderByInput? orderBy,
    int? take,
    int? skip,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('ConsultantEarnings')
        .action(QueryAction.findMany);

    if (where != null) queryBuilder.where(_whereToJson(where));
    if (orderBy != null) queryBuilder.orderBy(_orderByToJson(orderBy));
    if (take != null) queryBuilder.take(take);
    if (skip != null) queryBuilder.skip(skip);

    final results = await _executor.executeQueryAsMaps(queryBuilder.build());
    return results.map((json) => ConsultantEarnings.fromJson(_normalizeForJson(json))).toList();
  }

  /// Create a new ConsultantEarnings
  Future<ConsultantEarnings> create({
    required CreateConsultantEarningsInput data,
  }) async {
    final query = JsonQueryBuilder()
        .model('ConsultantEarnings')
        .action(QueryAction.create)
        .data(data.toJson())
        .build();

    final result = await _executor.executeQueryAsSingleMap(query);
    if (result == null) {
      throw Exception('Failed to create ConsultantEarnings');
    }
    return ConsultantEarnings.fromJson(_normalizeForJson(result));
  }

  /// Create multiple ConsultantEarningss
  Future<int> createMany({
    required List<CreateConsultantEarningsInput> data,
  }) async {
    final query = JsonQueryBuilder()
        .model('ConsultantEarnings')
        .action(QueryAction.createMany)
        .data({'data': data.map((d) => d.toJson()).toList()})
        .build();

    return await _executor.executeMutation(query);
  }

  /// Update a ConsultantEarnings
  Future<ConsultantEarnings> update({
    required ConsultantEarningsWhereUniqueInput where,
    required UpdateConsultantEarningsInput data,
  }) async {
    final query = JsonQueryBuilder()
        .model('ConsultantEarnings')
        .action(QueryAction.update)
        .where(_whereUniqueToJson(where))
        .data(data.toJson())
        .build();

    await _executor.executeMutation(query);

    // Fetch the updated record
    return await findUniqueOrThrow(where: where);
  }

  /// Update multiple ConsultantEarningss
  Future<int> updateMany({
    required ConsultantEarningsWhereInput where,
    required UpdateConsultantEarningsInput data,
  }) async {
    final query = JsonQueryBuilder()
        .model('ConsultantEarnings')
        .action(QueryAction.updateMany)
        .where(_whereToJson(where))
        .data(data.toJson())
        .build();

    return await _executor.executeMutation(query);
  }

  /// Delete a ConsultantEarnings
  Future<ConsultantEarnings> delete({
    required ConsultantEarningsWhereUniqueInput where,
  }) async {
    // Fetch before deleting
    final existing = await findUniqueOrThrow(where: where);

    final query = JsonQueryBuilder()
        .model('ConsultantEarnings')
        .action(QueryAction.delete)
        .where(_whereUniqueToJson(where))
        .build();

    await _executor.executeMutation(query);
    return existing;
  }

  /// Delete multiple ConsultantEarningss
  Future<int> deleteMany({
    required ConsultantEarningsWhereInput where,
  }) async {
    final query = JsonQueryBuilder()
        .model('ConsultantEarnings')
        .action(QueryAction.deleteMany)
        .where(_whereToJson(where))
        .build();

    return await _executor.executeMutation(query);
  }

  /// Count ConsultantEarningss matching criteria
  Future<int> count({
    ConsultantEarningsWhereInput? where,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('ConsultantEarnings')
        .action(QueryAction.count);

    if (where != null) queryBuilder.where(_whereToJson(where));

    return await _executor.executeCount(queryBuilder.build());
  }

  /// Group ConsultantEarningss by fields with aggregations
  Future<List<Map<String, dynamic>>> groupBy({
    required List<String> by,
    ConsultantEarningsWhereInput? where,
    bool? count,
    Map<String, bool>? sum,
    Map<String, bool>? avg,
    Map<String, bool>? min,
    Map<String, bool>? max,
    dynamic orderBy,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('ConsultantEarnings')
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
  Map<String, dynamic> _whereUniqueToJson(ConsultantEarningsWhereUniqueInput where) {
    return where.toJson()..removeWhere((key, value) => value == null);
  }

  /// Convert WhereInput to JSON for JsonQueryBuilder
  Map<String, dynamic> _whereToJson(ConsultantEarningsWhereInput where) {
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
            return (item as ConsultantEarningsWhereInput).toJson();
          }).toList();
        }
      } else if (entry.key == 'NOT') {
        final not = entry.value;
        if (not is Map) {
          result[entry.key] = not;
        } else if (not is ConsultantEarningsWhereInput) {
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
  Map<String, dynamic> _orderByToJson(ConsultantEarningsOrderByInput orderBy) {
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
