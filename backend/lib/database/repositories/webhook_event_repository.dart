import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for webhook event tracking and idempotency
///
/// This repository handles storing and checking webhook events to prevent
/// duplicate processing when both mobile and web backends receive the same webhook.
class WebhookEventRepository extends BaseRepository {
  WebhookEventRepository(super._executor);

  /// Record a webhook event and check if it was already processed
  ///
  /// Returns true if this is a new event that should be processed.
  /// Returns false if the event was already processed (duplicate).
  ///
  /// This method is idempotent - calling it multiple times with the same
  /// eventId will only return true on the first call.
  Future<bool> recordEvent({
    required String eventId,
    required String provider,
    required String eventType,
    required Map<String, dynamic> payload,
    String? signature,
  }) async {
    // First check if event already exists
    final existingEvent = await _findByEventId(eventId);
    if (existingEvent != null) {
      return false; // Already processed
    }

    // Try to create the event record
    // If another process created it first, this will fail with unique constraint violation
    try {
      final createQuery = JsonQueryBuilder()
          .model('WebhookEvent')
          .action(QueryAction.create)
          .data({
        'eventId': eventId,
        'provider': provider,
        'eventType': eventType,
        'payload': payload, // Json type - pass object directly
        'signature': signature,
        'processed': false,
        'receivedAt': nowIso8601,
      }).build();

      await executeMutation(createQuery);
      return true; // New event, should be processed
    } catch (e) {
      // Log to help diagnose if this is NOT a unique constraint violation
      // Unique constraint violations are expected in distributed systems
      SentryLogger.warning(
        'Error recording webhook event (possibly duplicate): $eventId - $e',
        context: 'WebhookEventRepository',
      );
      return false;
    }
  }

  /// Check if an event has been recorded in the database
  Future<bool> isEventRecorded(String eventId) async {
    final event = await _findByEventId(eventId);
    return event != null;
  }

  /// Mark an event as successfully processed
  Future<void> markProcessed(String eventId) async {
    final updateQuery = JsonQueryBuilder()
        .model('WebhookEvent')
        .action(QueryAction.update)
        .where({'eventId': eventId}).data({
      'processed': true,
      'processedAt': nowIso8601,
    }).build();

    await executeMutation(updateQuery);
  }

  /// Mark an event as failed with error message
  Future<void> markFailed(String eventId, String error) async {
    final updateQuery = JsonQueryBuilder()
        .model('WebhookEvent')
        .action(QueryAction.update)
        .where({'eventId': eventId}).data({
      'processed': false,
      'error': error,
    }).build();

    await executeMutation(updateQuery);
  }

  /// Find an event by its gateway-specific ID
  Future<Map<String, dynamic>?> _findByEventId(String eventId) async {
    final query = JsonQueryBuilder()
        .model('WebhookEvent')
        .action(QueryAction.findUnique)
        .where({'eventId': eventId}).build();

    return executeQueryAsSingleMap(query);
  }

  /// Get all unprocessed events (for retry mechanisms)
  Future<List<Map<String, dynamic>>> getUnprocessedEvents({
    String? provider,
    int limit = 100,
  }) async {
    final whereClause = <String, dynamic>{
      'processed': false,
    };

    if (provider != null) {
      whereClause['provider'] = provider;
    }

    final query = JsonQueryBuilder()
        .model('WebhookEvent')
        .action(QueryAction.findMany)
        .where(whereClause)
        .orderBy({'receivedAt': 'asc'})
        .take(limit)
        .build();

    return executeQueryAsMaps(query);
  }
}
