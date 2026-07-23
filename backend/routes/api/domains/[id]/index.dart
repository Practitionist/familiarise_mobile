import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/domains/:id — Single domain with its subdomains
Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final db = context.read<DatabaseClient>();

    final domain = await db.prisma.domain.findFirst(
      where: DomainWhereInput(id: StringFilter(equals: id)),
    );

    if (domain == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Domain not found'}},
      );
    }

    final subdomains = await db.prisma.subDomain.findMany(
      where: SubDomainWhereInput(domainId: StringFilter(equals: id)),
    );

    final result =
        Map<String, dynamic>.from(serializeForJson(domain.toJson()));
    result['subdomains'] =
        subdomains.map((s) => serializeForJson(s.toJson())).toList();

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
