import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// GET /api/domains/:id — Single domain with its subdomains
Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final db = context.read<DatabaseClient>();

    final domainQuery = JsonQueryBuilder()
        .model('Domain')
        .action(QueryAction.findFirst)
        .where({'id': id})
        .build();
    final domain = await db.executor.executeQueryAsSingleMap(domainQuery);

    if (domain == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Domain not found'}},
      );
    }

    final subdomainQuery = JsonQueryBuilder()
        .model('SubDomain')
        .action(QueryAction.findMany)
        .where({'domainId': id})
        .build();
    final subdomains = await db.executor.executeQueryAsMaps(
      subdomainQuery,
    );

    final result =
        Map<String, dynamic>.from(serializeForJson(domain) as Map);
    result['subdomains'] =
        subdomains.map(serializeForJson).toList();

    return Response.json(body: {'data': result});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Domain fetch failed',
      context: 'DomainGetById',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to get domain'}},
    );
  }
}
