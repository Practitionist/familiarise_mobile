import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/domains
///
/// Returns all domains with their subdomains.
/// Used by the mobile app for onboarding (consultant domain selection).
Future<Response> onRequest(RequestContext context) async {
  // Only allow GET requests
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final db = context.read<DatabaseClient>();
    final domains = await db.domains.findAllWithSubDomains();

    // Serialize DateTime values for JSON encoding
    final serializedDomains = domains.map(_serializeForJson).toList();

    return Response.json(
      body: {'domains': serializedDomains},
    );
  } catch (e, stackTrace) {
    // Log error for debugging
    // ignore: avoid_print
    print('Error in GET /api/domains: $e');
    // ignore: avoid_print
    print('Stack trace: $stackTrace');

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to fetch domains'}},
    );
  }
}

/// Convert DateTime values to ISO8601 strings for JSON serialization
Map<String, dynamic> _serializeForJson(Map<String, dynamic> map) {
  final result = <String, dynamic>{};
  for (final entry in map.entries) {
    final value = entry.value;
    if (value is DateTime) {
      result[entry.key] = value.toUtc().toIso8601String();
    } else if (value is Map<String, dynamic>) {
      result[entry.key] = _serializeForJson(value);
    } else if (value is List) {
      result[entry.key] = value.map((e) {
        if (e is DateTime) {
          return e.toUtc().toIso8601String();
        } else if (e is Map<String, dynamic>) {
          return _serializeForJson(e);
        }
        return e;
      }).toList();
    } else {
      result[entry.key] = value;
    }
  }
  return result;
}
