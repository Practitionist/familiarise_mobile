import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// GET /api/topics — List topics with optional search filter
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final search = context.request.uri.queryParameters['search'];
    final db = context.read<DatabaseClient>();

    final where = <String, dynamic>{};
    if (search != null && search.isNotEmpty) {
      where['name'] = {'contains': search, 'mode': 'insensitive'};
    }

    final query = JsonQueryBuilder()
        .model('Topic')
        .action(QueryAction.findMany)
        .where(where)
        .build();
    final topics = await db.executor.executeQueryAsMaps(query);

    return Response.json(
      body: {'data': topics.map(serializeForJson).toList()},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Topics fetch failed',
      context: 'TopicsGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to load topics'}},
    );
  }
}
