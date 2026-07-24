import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/consultee/profile — fetch own consultee profile
/// PATCH /api/consultee/profile — update consultee profile fields
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.get) {
    return _handleGet(context);
  } else if (method == HttpMethod.patch) {
    return _handlePatch(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// GET /api/consultee/profile
Future<Response> _handleGet(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'}
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final profile = await db.consulteeProfiles.findByUserId(userId);

    if (profile == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Consultee profile not found'}
        },
      );
    }

    return Response.json(body: serializeForJson(profile));
  } on ArgumentError catch (e) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': e.message?.toString() ?? 'Invalid input'},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/consultee/profile',
      context: 'ConsulteeProfileRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch consultee profile'}
      },
    );
  }
}

/// PATCH /api/consultee/profile
///
/// Request body (all fields optional):
/// ```json
/// {
///   "occupation": "string",
///   "aboutMe": "string",
///   "careerStage": "string",
///   "currentCompany": "string",
///   "industry": "string",
///   "skillsToDevelop": ["Dart", "Flutter"],
///   "budgetPreference": "string",
///   "preferredCommunicationMethod": "string",
///   "preferredLanguage": "string",
///   "linkedinUrl": "string"
/// }
/// ```
Future<Response> _handlePatch(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'}
        },
      );
    }

    final db = context.read<DatabaseClient>();

    // Verify consultee profile exists
    final existing = await db.consulteeProfiles.findByUserId(userId);
    if (existing == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Consultee profile not found'}
        },
      );
    }

    final data = await context.request.json() as Map<String, dynamic>;

    // Update profile via upsert
    final updated = await db.consulteeProfiles.upsert(
      userId: userId,
      occupation: data['occupation'] as String?,
      aboutMe: data['aboutMe'] as String?,
      careerStage: data['careerStage'] as String?,
      currentCompany: data['currentCompany'] as String?,
      industry: data['industry'] as String?,
      skillsToDevelop: _parseStringList(data['skillsToDevelop']),
      budgetPreference: data['budgetPreference'] as String?,
      preferredCommunicationMethod:
          data['preferredCommunicationMethod'] as String?,
      preferredLanguage: data['preferredLanguage'] as String?,
      linkedinUrl: data['linkedinUrl'] as String?,
    );

    return Response.json(body: serializeForJson(updated));
  } on FormatException catch (_) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'Invalid request body format'},
      },
    );
  } on ArgumentError catch (e) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': e.message?.toString() ?? 'Invalid input'},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in PATCH /api/consultee/profile',
      context: 'ConsulteeProfileRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to update consultee profile'}
      },
    );
  }
}

List<String>? _parseStringList(dynamic value) {
  if (value == null) return null;
  if (value is List) {
    return value.map((e) => e.toString()).toList();
  }
  return null;
}
