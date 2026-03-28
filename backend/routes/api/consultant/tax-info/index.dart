import 'dart:convert';
import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// GET /api/consultant/tax-info — Get consultant's tax information
/// PUT /api/consultant/tax-info — Update tax information
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handleGet(context);
  if (method == HttpMethod.put) return _handlePut(context);

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

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
    final user = await db.users.findById(userId);
    final consultantProfileId = user?['consultantProfileId'] as String?;
    if (consultantProfileId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Only consultants can view tax info'},
        },
      );
    }

    final query = JsonQueryBuilder()
        .model('ConsultantTaxInfo')
        .action(QueryAction.findFirst)
        .where({'consultantProfileId': consultantProfileId}).build();
    final taxInfo = await db.executor.executeQueryAsSingleMap(query);

    return Response.json(
      body: {
        'data': taxInfo != null ? _toApiTaxInfo(taxInfo) : null,
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Tax info get failed',
      context: 'TaxInfoGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to get tax info'}
      },
    );
  }
}

Future<Response> _handlePut(RequestContext context) async {
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
    final user = await db.users.findById(userId);
    final consultantProfileId = user?['consultantProfileId'] as String?;
    if (consultantProfileId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Only consultants can update tax info',
          },
        },
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final now = DateTime.now().toUtc().toIso8601String();
    final taxResidency = body['taxResidency'] as String? ?? 'IN';
    final panNumber = body['panNumber'] as String?;
    final gstNumber = body['gstNumber'] as String?;

    // Upsert tax info
    final existingQuery = JsonQueryBuilder()
        .model('ConsultantTaxInfo')
        .action(QueryAction.findFirst)
        .where({'consultantProfileId': consultantProfileId}).build();
    final existing = await db.executor.executeQueryAsSingleMap(existingQuery);

    if (existing != null) {
      final updateQuery = JsonQueryBuilder()
          .model('ConsultantTaxInfo')
          .action(QueryAction.update)
          .where({'id': existing['id']}).data({
        if (body.containsKey('panNumber')) 'panEncrypted': panNumber,
        if (body.containsKey('panNumber')) 'panLast4': _last4(panNumber),
        if (body.containsKey('gstNumber')) 'gstin': gstNumber,
        if (body.containsKey('taxResidency')) 'country': taxResidency,
        if (body.containsKey('taxResidency'))
          'isIndianResident': taxResidency.toUpperCase() == 'IN',
        'updatedAt': now,
      }).build();
      final result = await db.executor.executeQueryAsSingleMap(updateQuery);
      return Response.json(
        body: {
          'data': result != null ? _toApiTaxInfo(result) : null,
        },
      );
    } else {
      // Validate required fields for creation
      if (panNumber == null || panNumber.isEmpty) {
        return Response.json(
          statusCode: HttpStatus.badRequest,
          body: {
            'error': {
              'message': 'panNumber is required for new tax info',
            },
          },
        );
      }

      final createQuery = JsonQueryBuilder()
          .model('ConsultantTaxInfo')
          .action(QueryAction.create)
          .data({
        'id': const Uuid().v4(),
        'consultantProfileId': consultantProfileId,
        'panEncrypted': panNumber,
        'panLast4': _last4(panNumber),
        'gstin': gstNumber,
        'country': taxResidency,
        'isIndianResident': taxResidency.toUpperCase() == 'IN',
        'panVerified': false,
        'gstinVerified': false,
        'createdAt': now,
        'updatedAt': now,
      }).build();
      final result = await db.executor.executeQueryAsSingleMap(createQuery);
      return Response.json(
        statusCode: HttpStatus.created,
        body: {
          'data': result != null ? _toApiTaxInfo(result) : null,
        },
      );
    }
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Tax info update failed',
      context: 'TaxInfoPut',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to update tax info'}
      },
    );
  }
}

Map<String, dynamic> _toApiTaxInfo(Map<String, dynamic> taxInfo) {
  return serializeForJson({
    'id': taxInfo['id'],
    'consultantProfileId': taxInfo['consultantProfileId'],
    'panNumber': _panValue(taxInfo['panEncrypted']),
    'gstNumber': taxInfo['gstin'],
    'taxResidency': taxInfo['country'],
    'createdAt': taxInfo['createdAt'],
    'updatedAt': taxInfo['updatedAt'],
    'panLast4': taxInfo['panLast4'],
    'panVerified': taxInfo['panVerified'],
  });
}

String? _last4(String? value) {
  if (value == null || value.isEmpty) return null;
  if (value.length <= 4) return value;
  return value.substring(value.length - 4);
}

String? _panValue(dynamic value) {
  if (value == null) return null;
  if (value is String) return value;
  if (value is List<int>) return utf8.decode(value);
  if (value is List) {
    return utf8.decode(value.cast<int>());
  }
  return value.toString();
}
