import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/checkout/validate-discount
///
/// Body:
/// {
///   "code": "SAVE10",
///   "bookingId": "optional-booking-id",
///   "amount": 1000
/// }
///
/// Response:
/// {
///   "valid": true,
///   "discountType": "PERCENTAGE",
///   "discountAmount": 200,
///   "discountPercentage": 20,
///   "maximumDiscountAmount": null,
///   "expiresAt": "2026-04-01T00:00:00.000Z"
/// }
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
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

    final body = await context.request.json() as Map<String, dynamic>;
    final code = (body['code'] as String?)?.trim().toUpperCase();
    final amount = (body['amount'] as num?)?.toDouble();

    if (code == null || code.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'code is required'},
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final discount = await db.checkout.validateDiscountCode(
      code: code,
      amount: amount,
    );

    if (discount == null || discount['valid'] != true) {
      return Response.json(
        body: {
          'valid': false,
          'message': 'Invalid discount code',
        },
      );
    }

    final discountType = discount['discountType'] as String?;
    final discountValue = (discount['discountValue'] as num?)?.toDouble();
    final discountAmount = (discount['discountAmount'] as num?)?.toDouble();
    final maximumDiscountAmount =
        (discount['maxDiscount'] as num?)?.toDouble();
    final expiresAt = discount['expiresAt'];

    return Response.json(
      body: {
        'valid': true,
        'discountType': discountType,
        'discountAmount': discountAmount,
        'discountPercentage':
            discountType == 'PERCENTAGE' ? discountValue : null,
        'maximumDiscountAmount': maximumDiscountAmount,
        'expiresAt': expiresAt is DateTime
            ? expiresAt.toUtc().toIso8601String()
            : expiresAt?.toString(),
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Checkout discount validation failed',
      context: 'CheckoutValidateDiscount',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to validate discount code'},
      },
    );
  }
}
