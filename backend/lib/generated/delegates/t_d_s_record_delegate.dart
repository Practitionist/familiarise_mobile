import 'package:prisma_flutter_connector/runtime_server.dart';
import '../models/t_d_s_record.dart';
import '../filters.dart';

/// Delegate for TDSRecord operations
/// Provides type-safe CRUD operations using database adapters
class TDSRecordDelegate {
  final BaseExecutor _executor;

  TDSRecordDelegate(this._executor);

  /// Find a single TDSRecord by unique field(s)
  Future<TDSRecord?> findUnique({
    required TDSRecordWhereUniqueInput where,
  }) async {
    final query = JsonQueryBuilder()
        .model('TDSRecord')
        .action(QueryAction.findUnique)
        .where(_whereUniqueToJson(where))
        .build();

    final result = await _executor.executeQueryAsSingleMap(query);
    return result != null ? TDSRecord.fromJson(_normalizeForJson(result)) : null;
  }

  /// Find a single TDSRecord or throw if not found
  Future<TDSRecord> findUniqueOrThrow({
    required TDSRecordWhereUniqueInput where,
  }) async {
    final result = await findUnique(where: where);
    if (result == null) {
      throw Exception('TDSRecord not found');
    }
    return result;
  }

  /// Find the first TDSRecord matching criteria
  Future<TDSRecord?> findFirst({
    TDSRecordWhereInput? where,
    TDSRecordOrderByInput? orderBy,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('TDSRecord')
        .action(QueryAction.findFirst);

    if (where != null) queryBuilder.where(_whereToJson(where));
    if (orderBy != null) queryBuilder.orderBy(_orderByToJson(orderBy));

    final result = await _executor.executeQueryAsSingleMap(queryBuilder.build());
    return result != null ? TDSRecord.fromJson(_normalizeForJson(result)) : null;
  }

  /// Find multiple TDSRecords with optional filters
  Future<List<TDSRecord>> findMany({
    TDSRecordWhereInput? where,
    TDSRecordOrderByInput? orderBy,
    int? take,
    int? skip,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('TDSRecord')
        .action(QueryAction.findMany);

    if (where != null) queryBuilder.where(_whereToJson(where));
    if (orderBy != null) queryBuilder.orderBy(_orderByToJson(orderBy));
    if (take != null) queryBuilder.take(take);
    if (skip != null) queryBuilder.skip(skip);

    final results = await _executor.executeQueryAsMaps(queryBuilder.build());
    return results.map((json) => TDSRecord.fromJson(_normalizeForJson(json))).toList();
  }

  /// Create a new TDSRecord
  Future<TDSRecord> create({
    required CreateTDSRecordInput data,
  }) async {
    final query = JsonQueryBuilder()
        .model('TDSRecord')
        .action(QueryAction.create)
        .data(data.toJson())
        .build();

    final result = await _executor.executeQueryAsSingleMap(query);
    if (result == null) {
      throw Exception('Failed to create TDSRecord');
    }
    return TDSRecord.fromJson(_normalizeForJson(result));
  }

  /// Create multiple TDSRecords
  Future<int> createMany({
    required List<CreateTDSRecordInput> data,
  }) async {
    final query = JsonQueryBuilder()
        .model('TDSRecord')
        .action(QueryAction.createMany)
        .data({'data': data.map((d) => d.toJson()).toList()})
        .build();

    return await _executor.executeMutation(query);
  }

  /// Update a TDSRecord
  Future<TDSRecord> update({
    required TDSRecordWhereUniqueInput where,
    required UpdateTDSRecordInput data,
  }) async {
    final query = JsonQueryBuilder()
        .model('TDSRecord')
        .action(QueryAction.update)
        .where(_whereUniqueToJson(where))
        .data(data.toJson())
        .build();

    await _executor.executeMutation(query);

    // Fetch the updated record
    return await findUniqueOrThrow(where: where);
  }

  /// Update multiple TDSRecords
  Future<int> updateMany({
    required TDSRecordWhereInput where,
    required UpdateTDSRecordInput data,
  }) async {
    final query = JsonQueryBuilder()
        .model('TDSRecord')
        .action(QueryAction.updateMany)
        .where(_whereToJson(where))
        .data(data.toJson())
        .build();

    return await _executor.executeMutation(query);
  }

  /// Delete a TDSRecord
  Future<TDSRecord> delete({
    required TDSRecordWhereUniqueInput where,
  }) async {
    // Fetch before deleting
    final existing = await findUniqueOrThrow(where: where);

    final query = JsonQueryBuilder()
        .model('TDSRecord')
        .action(QueryAction.delete)
        .where(_whereUniqueToJson(where))
        .build();

    await _executor.executeMutation(query);
    return existing;
  }

  /// Delete multiple TDSRecords
  Future<int> deleteMany({
    required TDSRecordWhereInput where,
  }) async {
    final query = JsonQueryBuilder()
        .model('TDSRecord')
        .action(QueryAction.deleteMany)
        .where(_whereToJson(where))
        .build();

    return await _executor.executeMutation(query);
  }

  /// Count TDSRecords matching criteria
  Future<int> count({
    TDSRecordWhereInput? where,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('TDSRecord')
        .action(QueryAction.count);

    if (where != null) queryBuilder.where(_whereToJson(where));

    return await _executor.executeCount(queryBuilder.build());
  }

  /// Group TDSRecords by fields with aggregations
  Future<List<Map<String, dynamic>>> groupBy({
    required List<String> by,
    TDSRecordWhereInput? where,
    bool? count,
    Map<String, bool>? sum,
    Map<String, bool>? avg,
    Map<String, bool>? min,
    Map<String, bool>? max,
    dynamic orderBy,
  }) async {
    final queryBuilder = JsonQueryBuilder()
        .model('TDSRecord')
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
  Map<String, dynamic> _whereUniqueToJson(TDSRecordWhereUniqueInput where) {
    return where.toJson()..removeWhere((key, value) => value == null);
  }

  /// Convert WhereInput to JSON for JsonQueryBuilder
  Map<String, dynamic> _whereToJson(TDSRecordWhereInput where) {
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
            return (item as TDSRecordWhereInput).toJson();
          }).toList();
        }
      } else if (entry.key == 'NOT') {
        final not = entry.value;
        if (not is Map) {
          result[entry.key] = not;
        } else if (not is TDSRecordWhereInput) {
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
  Map<String, dynamic> _orderByToJson(TDSRecordOrderByInput orderBy) {
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
