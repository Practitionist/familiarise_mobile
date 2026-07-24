import 'dart:convert';
import 'dart:io';
import 'dart:io' as io show Platform;

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/pan_crypto.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

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

    final taxInfo = await db.prisma.consultantTaxInfo.findFirst(
      where: ConsultantTaxInfoWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
    );

    return Response.json(
      body: {
        'data': taxInfo != null ? _toApiTaxInfo(taxInfo.toJson()) : null,
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
    final taxResidency = body['taxResidency'] as String? ?? 'IN';
    final panNumber = body['panNumber'] as String?;
    final gstNumber = body['gstNumber'] as String?;

    // Upsert tax info
    final existing = await db.prisma.consultantTaxInfo.findFirst(
      where: ConsultantTaxInfoWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
    );

    if (existing != null) {
      // Typed update auto-refreshes updatedAt — no manual timestamp needed.
      final result = await db.prisma.consultantTaxInfo.update(
        where: ConsultantTaxInfoWhereUniqueInput(id: existing.id),
        data: UpdateConsultantTaxInfoInput(
          panEncrypted: (body.containsKey('panNumber') && panNumber != null)
              ? PanCrypto.encrypt(panNumber, keyHex: _panKey())
              : null,
          panLast4:
              body.containsKey('panNumber') ? _last4(panNumber) : null,
          gstin: body.containsKey('gstNumber') ? gstNumber : null,
          country: body.containsKey('taxResidency') ? taxResidency : null,
          isIndianResident: body.containsKey('taxResidency')
              ? taxResidency.toUpperCase() == 'IN'
              : null,
        ),
      );
      return Response.json(
        body: {
          'data': _toApiTaxInfo(result.toJson()),
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

      // Typed create autofills id/createdAt/updatedAt defaults.
      final result = await db.prisma.consultantTaxInfo.create(
        data: CreateConsultantTaxInfoInput(
          consultantProfileId: consultantProfileId,
          panEncrypted: PanCrypto.encrypt(panNumber, keyHex: _panKey()),
          panLast4: _last4(panNumber),
          gstin: gstNumber,
          country: taxResidency,
          isIndianResident: taxResidency.toUpperCase() == 'IN',
          panVerified: false,
          gstinVerified: false,
        ),
      );
      return Response.json(
        statusCode: HttpStatus.created,
        body: {
          'data': _toApiTaxInfo(result.toJson()),
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

String _panKey() => io.Platform.environment['PAN_ENCRYPTION_KEY'] ?? '';

/// Decrypt the stored AES-256-GCM PAN ciphertext back to plaintext.
/// Tolerates legacy plaintext-bytes rows written before encryption landed.
String? _panValue(dynamic value) {
  if (value == null) return null;
  List<int>? bytes;
  if (value is List<int>) {
    bytes = value;
  } else if (value is List) {
    bytes = value.cast<int>();
  } else if (value is String) {
    return value;
  } else {
    return value.toString();
  }
  try {
    return PanCrypto.decrypt(bytes, keyHex: _panKey());
  } catch (_) {
    // Legacy row stored as raw UTF-8 bytes, or a wrong/absent key — fall back
    // to a best-effort plaintext decode rather than throwing on read.
    try {
      return utf8.decode(bytes);
    } catch (_) {
      return null;
    }
  }
}
