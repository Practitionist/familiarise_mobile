import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

/// GET /api/invoices/:id — View invoice by ID or invoice number
///
/// The legacy per-payment `Invoice` model was removed in the schema sync with
/// the web app (invoicing is now the org-scoped `OrganizationInvoice`, part
/// of the deferred enterprise billing feature). This endpoint is stubbed
/// until payments/invoicing ship on mobile — see the payments GitHub issue.
Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  return Response.json(
    statusCode: HttpStatus.notImplemented,
    body: {
      'error': {
        'code': 'feature_disabled',
        'message': 'Invoices are not available in this version of the app',
      },
    },
  );
}
