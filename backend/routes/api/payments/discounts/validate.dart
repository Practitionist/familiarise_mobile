import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// POST /api/payments/discounts/validate — Validate a discount code
///
/// Body: { "code": "SAVE10", "amount": 1000 }
/// Response: { valid, code, discountType, discountValue, discountAmount }
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final code = (body['code'] as String?)?.toUpperCase().trim();
    final amount = (body['amount'] as num?)?.toDouble();

    if (code == null || code.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': {'message': 'code is required'}},
      );
    }

    final db = context.read<DatabaseClient>();
    final query = JsonQueryBuilder()
        .model('DiscountCode')
        .action(QueryAction.findFirst)
        .where({'code': code})
        .build();
    final discount =
        await db.executor.executeQueryAsSingleMap(query);

    if (discount == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'valid': false, 'message': 'Code not found'},
      );
    }

    // Check active
    if (discount['isActive'] != true) {
      return Response.json(
        body: {'valid': false, 'message': 'Code is inactive'},
      );
    }

    // Check expiry
    final expiresAt = discount['expiresAt'];
    if (expiresAt != null) {
      final expiry = expiresAt is DateTime
          ? expiresAt
          : DateTime.tryParse(expiresAt.toString());
      if (expiry != null && expiry.isBefore(DateTime.now().toUtc())) {
        return Response.json(
          body: {'valid': false, 'message': 'Code has expired'},
        );
      }
    }

    // Check max uses
    final maxUses = discount['maxUses'] as int?;
    final currentUses = discount['currentUses'] as int? ?? 0;
    if (maxUses != null && currentUses >= maxUses) {
      return Response.json(
        body: {
          'valid': false,
          'message': 'Code usage limit reached',
        },
      );
    }

    // Calculate discount
    final discountType = discount['discountType'] as String?;
    final discountValue =
        (discount['discountValue'] as num?)?.toDouble() ?? 0;
    final maxDiscount =
        (discount['maxDiscount'] as num?)?.toDouble();

    double? discountAmount;
    if (amount != null) {
      if (discountType == 'PERCENTAGE') {
        discountAmount = amount * discountValue / 100;
        if (maxDiscount != null && discountAmount > maxDiscount) {
          discountAmount = maxDiscount;
        }
      } else {
        // FIXED_AMOUNT
        discountAmount =
            discountValue < amount ? discountValue : amount;
      }
    }

    return Response.json(
      body: {
        'valid': true,
        'code': code,
        'discountType': discountType,
        'discountValue': discountValue,
        'discountAmount': discountAmount,
        'maxDiscount': maxDiscount,
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe('Discount validation failed',
        context: 'DiscountValidate',
        error: e, stackTrace: stackTrace);
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to validate code'}},
    );
  }
}
