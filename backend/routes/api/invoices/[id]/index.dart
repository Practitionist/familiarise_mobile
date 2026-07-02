import 'dart:io';

import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

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

    // NOTE (schema re-sync): the standalone `Invoice` model was removed in the
    // web source-of-truth schema in favour of the org billing/ledger models
    // (OrganizationInvoice, InvoiceLineItem, OrgInvoiceCounter), which are not
    // part of the consultee/consultant mobile surface. There is no consultee
    // invoice-by-id to return, so respond 404 rather than querying a table that
    // no longer exists (which previously 500'd).
    // TODO(billing): wire to the new billing model if mobile ever surfaces it.
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {
        'error': {'message': 'Invoice not found'}
      },
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
