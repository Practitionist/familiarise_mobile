/// Convert DateTime values to ISO8601 strings for JSON serialization
///
/// Recursively handles nested Maps and Lists, converting any DateTime
/// values to UTC ISO8601 strings. This is useful when returning database
/// results via JSON APIs, as DateTime objects aren't directly JSON-encodable.
Map<String, dynamic> serializeForJson(Map<String, dynamic> map) {
  return _serializeValue(map) as Map<String, dynamic>;
}

/// Recursively serialize a value for JSON encoding
dynamic _serializeValue(dynamic value) {
  if (value == null) {
    return null;
  } else if (value is DateTime) {
    return value.toUtc().toIso8601String();
  } else if (value is Map) {
    final result = <String, dynamic>{};
    for (final entry in value.entries) {
      result[entry.key.toString()] = _serializeValue(entry.value);
    }
    return result;
  } else if (value is List) {
    return value.map(_serializeValue).toList();
  } else {
    return value;
  }
}
