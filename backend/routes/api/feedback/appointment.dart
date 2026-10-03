import 'package:dart_frog/dart_frog.dart';

import 'index.dart' as feedback_index;

/// Dedicated Post-Call Session CSAT endpoint (`/api/feedback/appointment`)
///
/// Delegates to `/api/feedback` which handles `appointmentId` CSAT payloads
/// (`AppointmentFeedback` + `SessionRatingCause` + optional
/// `ConsultantReview`).
Future<Response> onRequest(RequestContext context) =>
    feedback_index.onRequest(context);
