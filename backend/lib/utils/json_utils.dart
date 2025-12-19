/// Convert DateTime values to ISO8601 strings for JSON serialization
///
/// Recursively handles nested Maps and Lists, converting any DateTime
/// values to UTC ISO8601 strings. This is useful when returning database
/// results via JSON APIs, as DateTime objects aren't directly JSON-encodable.
Map<String, dynamic> serializeForJson(Map<String, dynamic> map) {
  final result = <String, dynamic>{};
  for (final entry in map.entries) {
    final value = entry.value;
    if (value is DateTime) {
      result[entry.key] = value.toUtc().toIso8601String();
    } else if (value is Map<String, dynamic>) {
      result[entry.key] = serializeForJson(value);
    } else if (value is List) {
      result[entry.key] = value.map((e) {
        if (e is DateTime) {
          return e.toUtc().toIso8601String();
        } else if (e is Map<String, dynamic>) {
          return serializeForJson(e);
        }
        return e;
      }).toList();
    } else {
      result[entry.key] = value;
    }
  }
  return result;
}
