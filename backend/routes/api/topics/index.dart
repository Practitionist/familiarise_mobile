import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/topics — List topics with optional search filter
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final search = context.request.uri.queryParameters['search'];
    final db = context.read<DatabaseClient>();

    final topics = await db.prisma.topic.findMany(
      where: (search != null && search.isNotEmpty)
          ? TopicWhereInput(
              name: StringFilter(contains: search, mode: 'insensitive'),
            )
          : null,
    );

    return Response.json(
      body: {
        'data': topics.map((t) => serializeForJson(t.toJson())).toList(),
      },
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
