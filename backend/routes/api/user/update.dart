import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// PATCH /api/user/update
///
/// Updates the authenticated user's basic profile fields.
///
/// Request body (all fields optional):
/// ```json
/// {
///   "name": "string",
///   "image": "string (URL)",
///   "phone": "string",
///   "timezone": "string"
/// }
/// ```
///
/// Returns `{ "data": { ... } }` with the updated user.
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.patch) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    final body =
        await context.request.json() as Map<String, dynamic>;

    final name = body['name'] as String?;
    final image = body['image'] as String?;
    final phone = body['phone'] as String?;
    final timezone = body['timezone'] as String?;

    final result = await context.read<DatabaseClient>().users.update(
          id: userId,
          name: name,
          image: image,
          phone: phone,
          timezone: timezone,
        );

    return Response.json(
      body: {'data': result},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Failed to update user',
      context: 'UserUpdateRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to update user'},
      },
    );
  }
}
