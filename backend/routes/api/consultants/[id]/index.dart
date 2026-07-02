import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/consultants/:id
///
/// Returns detailed information about a specific consultant.
///
/// Includes:
/// - Basic profile information
/// - User details (name, image)
/// - Domain and subdomains
/// - Consultation and subscription plans
/// - Review summary (average rating, distribution)
Future<Response> onRequest(RequestContext context, String id) async {
  // Only allow GET requests
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final db = context.read<DatabaseClient>();

    // Authenticated org members can also see their orgs' ORG_ONLY plans
    var userOrgIds = const <String>[];
    final userId = getUserIdFromToken(context);
    if (userId != null) {
      try {
        final memberships = await db.organizations.getMyMemberships(userId);
        userOrgIds = memberships
            .map((m) =>
                (m['organization'] as Map<String, dynamic>)['id'] as String)
            .toList();
      } catch (_) {
        // Visibility fallback: anonymous view of public plans
      }
    }

    // Fetch consultant details
    final consultant = await db.consultantExplore.findByIdWithDetails(
      id,
      userOrgIds: userOrgIds,
    );

    if (consultant == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Consultant not found'},
        },
      );
    }

    // Serialize for JSON encoding
    final serializedConsultant = serializeForJson(consultant);

    return Response.json(
      body: {'consultant': serializedConsultant},
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/consultants/$id',
      context: 'ConsultantDetailsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch consultant details'},
      },
    );
  }
}
