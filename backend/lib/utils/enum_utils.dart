/// Map an external enum wire string (SCREAMING_CASE `toJson()` value) to a
/// generated enum value, throwing [ArgumentError] on mismatch.
///
/// Prefer this over `Enum.values.firstWhere((e) => e.toJson() == wire)` for
/// any value that originates from client input: the bare `firstWhere` throws a
/// `StateError` ("Bad state: No element") that surfaces as an opaque 500,
/// whereas the [ArgumentError] here carries the field name and the allowed
/// values and is mapped to a 400 by the route error handlers.
///
/// [toWire] defaults to calling `.toJson()` via `(dynamic e) => e.toJson()`.
T enumFromWire<T>(
  List<T> values,
  String wire, {
  required String field,
  String Function(T)? toWire,
}) {
  final encode = toWire ?? (T e) => (e as dynamic).toJson() as String;
  for (final e in values) {
    if (encode(e) == wire) return e;
  }
  throw ArgumentError.value(
    wire,
    field,
    'Unsupported value. Allowed: ${values.map(encode).join(', ')}',
  );
}
