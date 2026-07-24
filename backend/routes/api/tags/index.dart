import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/generated/index.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/tags — List tags with optional search filter
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final search = context.request.uri.queryParameters['search'];
    final db = context.read<DatabaseClient>();

    // Typed delegate (prisma_flutter_connector v0.7.0) — replaces the raw
    // JsonQueryBuilder path. Compile-time-checked model, field, and filter.
    final tags = await db.prisma.tag.findMany(
      where: (search != null && search.isNotEmpty)
          ? TagWhereInput(
              name: StringFilter(contains: search, mode: 'insensitive'))
          : null,
    );

    return Response.json(
      body: {'data': tags.map((t) => serializeForJson(t.toJson())).toList()},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Tags fetch failed',
      context: 'TagsGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to load tags'}
      },
    );
  }
}
