import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// GET /api/invoices/:id — View invoice by ID or invoice number
Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

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

    // Try by ID first, then by invoice number
    var query = JsonQueryBuilder()
        .model('Invoice')
        .action(QueryAction.findFirst)
        .where({'id': id}).build();
    var invoice = await db.executor.executeQueryAsSingleMap(query);

    if (invoice == null) {
      query = JsonQueryBuilder()
          .model('Invoice')
          .action(QueryAction.findFirst)
          .where({'invoiceNumber': id}).build();
      invoice = await db.executor.executeQueryAsSingleMap(query);
    }

    if (invoice == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Invoice not found'}
        },
      );
    }

    // Authorization: user's own invoice or admin
    final user = await db.users.findById(userId);
    final role = user?['role'] as String?;
    final paymentId = invoice['paymentId'] as String?;
    String? invoiceUserId;
    if (paymentId != null) {
      final paymentQuery = JsonQueryBuilder()
          .model('Payment')
          .action(QueryAction.findFirst)
          .where({'id': paymentId}).select({'userId': true}).build();
      final payment = await db.executor.executeQueryAsSingleMap(paymentQuery);
      invoiceUserId = payment?['userId'] as String?;
    }
    if (invoiceUserId != userId && role != 'ADMIN') {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Invoice not found'}
        },
      );
    }

    return Response.json(
      body: {'data': serializeForJson(invoice)},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe('Invoice get failed',
        context: 'InvoiceGet', error: e, stackTrace: stackTrace);
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to get invoice'}
      },
    );
  }
}
