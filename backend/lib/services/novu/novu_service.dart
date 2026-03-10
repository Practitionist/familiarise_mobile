import 'dart:convert';

import 'package:backend/services/novu/novu_config.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:http/http.dart' as http;

/// Core Novu HTTP client for triggering workflows and managing events.
///
/// All public methods are fire-and-forget safe — exceptions are caught, logged
/// via [SentryLogger], and a `bool` is returned to indicate success.
class NovuService {
  /// Creates a [NovuService] backed by the given [NovuConfig].
  NovuService(this._config);

  final NovuConfig _config;

  static const _timeout = Duration(seconds: 10);

  /// Whether Novu is properly configured (secret key present).
  bool get isConfigured => _config.isConfigured;

  /// Common HTTP headers for Novu API requests.
  Map<String, String> get _headers => {
        'Authorization': 'ApiKey ${_config.secretKey}',
        'Content-Type': 'application/json',
      };

  /// Trigger a single Novu workflow for one subscriber.
  ///
  /// Returns `true` on success, `false` on failure.
  ///
  /// [workflowId] — Novu workflow/template identifier (see `NovuWorkflows`).
  /// [subscriberId] — the target subscriber (usually the user's ID).
  /// [payload] — template variable data.
  /// [overrides] — optional channel/provider overrides.
  /// [transactionId] — optional idempotency key; also used by [cancelTrigger].
  Future<bool> triggerWorkflow({
    required String workflowId,
    required String subscriberId,
    Map<String, dynamic>? payload,
    Map<String, dynamic>? overrides,
    String? transactionId,
  }) async {
    if (!isConfigured) {
      SentryLogger.info(
        'Novu not configured — skipping trigger for $workflowId',
        context: 'NovuService.triggerWorkflow',
      );
      return false;
    }

    try {
      final url = Uri.parse('${_config.apiUrl}/events/trigger');

      final body = <String, dynamic>{
        'name': workflowId,
        'to': {'subscriberId': subscriberId},
      };
      if (payload != null) body['payload'] = payload;
      if (overrides != null) body['overrides'] = overrides;
      if (transactionId != null) body['transactionId'] = transactionId;

      final response = await http
          .post(url, headers: _headers, body: jsonEncode(body))
          .timeout(_timeout);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        SentryLogger.info(
          'Triggered workflow $workflowId for subscriber $subscriberId',
          context: 'NovuService.triggerWorkflow',
        );
        return true;
      }

      await SentryLogger.error(
        'Novu trigger failed: ${response.statusCode} — ${response.body}',
        context: 'NovuService.triggerWorkflow',
      );
      return false;
    } catch (e, stackTrace) {
      await SentryLogger.error(
        'Exception triggering Novu workflow $workflowId',
        context: 'NovuService.triggerWorkflow',
        error: e,
        stackTrace: stackTrace,
      );
      return false;
    }
  }

  /// Trigger a workflow for multiple subscribers sequentially.
  ///
  /// Returns `true` only if **all** individual triggers succeed.
  Future<bool> triggerForMultiple({
    required String workflowId,
    required List<String> subscriberIds,
    Map<String, dynamic>? payload,
  }) async {
    if (subscriberIds.isEmpty) return true;

    var allSucceeded = true;
    for (final subscriberId in subscriberIds) {
      final ok = await triggerWorkflow(
        workflowId: workflowId,
        subscriberId: subscriberId,
        payload: payload,
      );
      if (!ok) allSucceeded = false;
    }
    return allSucceeded;
  }

  /// Cancel a previously triggered event by its [transactionId].
  ///
  /// Returns `true` on success, `false` on failure.
  Future<bool> cancelTrigger(String transactionId) async {
    if (!isConfigured) {
      SentryLogger.info(
        'Novu not configured — skipping cancel for $transactionId',
        context: 'NovuService.cancelTrigger',
      );
      return false;
    }

    try {
      final url = Uri.parse(
        '${_config.apiUrl}/events/trigger/$transactionId',
      );

      final response =
          await http.delete(url, headers: _headers).timeout(_timeout);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        SentryLogger.info(
          'Cancelled trigger $transactionId',
          context: 'NovuService.cancelTrigger',
        );
        return true;
      }

      await SentryLogger.error(
        'Novu cancel failed: ${response.statusCode} — ${response.body}',
        context: 'NovuService.cancelTrigger',
      );
      return false;
    } catch (e, stackTrace) {
      await SentryLogger.error(
        'Exception cancelling Novu trigger $transactionId',
        context: 'NovuService.cancelTrigger',
        error: e,
        stackTrace: stackTrace,
      );
      return false;
    }
  }
}
