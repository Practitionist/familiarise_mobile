import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:backend/utils/sentry_logger.dart';

/// Repository for webhook event tracking and idempotency
///
/// Uses typed PrismaClient delegates for compile-time safety.
/// Handles storing and checking webhook events to prevent
/// duplicate processing when both mobile and web backends receive the same webhook.
class WebhookEventRepository extends BaseRepository {
  WebhookEventRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Record a webhook event and check if it was already processed
  ///
  /// Returns true if this is a new event that should be processed.
  /// Returns false if the event was already processed (duplicate).
  Future<bool> recordEvent({
    required String eventId,
    required String provider,
    required String eventType,
    required Map<String, dynamic> payload,
    String? signature,
  }) async {
    // First check if event already exists
    final existing = await _prisma.webhookEvent.findUnique(
      where: WebhookEventWhereUniqueInput(eventId: eventId),
    );
    if (existing != null) {
      return false; // Already processed
    }

    // Try to create the event record
    // If another process created it first, this will fail with unique constraint
    try {
      await _prisma.webhookEvent.create(
        data: CreateWebhookEventInput(
          eventId: eventId,
          provider: provider,
          eventType: eventType,
          payload: payload,
          signature: signature,
          processed: false,
        ),
      );
      return true; // New event, should be processed
    } catch (e) {
      await SentryLogger.warning(
        'Error recording webhook event (possibly duplicate): $eventId - $e',
        context: 'WebhookEventRepository',
      );
      return false;
    }
  }

  /// Check if an event has been recorded in the database
  Future<bool> isEventRecorded(String eventId) async {
    final event = await _prisma.webhookEvent.findUnique(
      where: WebhookEventWhereUniqueInput(eventId: eventId),
    );
    return event != null;
  }

  /// Mark an event as successfully processed
  Future<void> markProcessed(String eventId) async {
    await _prisma.webhookEvent.update(
      where: WebhookEventWhereUniqueInput(eventId: eventId),
      data: UpdateWebhookEventInput(
        processed: true,
        processedAt: DateTime.now().toUtc(),
      ),
    );
  }

  /// Mark an event as failed with error message
  Future<void> markFailed(String eventId, String error) async {
    await _prisma.webhookEvent.update(
      where: WebhookEventWhereUniqueInput(eventId: eventId),
      data: UpdateWebhookEventInput(
        processed: false,
        error: error,
      ),
    );
  }

  /// Get all unprocessed events (for retry mechanisms)
  Future<List<Map<String, dynamic>>> getUnprocessedEvents({
    String? provider,
    int limit = 100,
  }) async {
    final where = WebhookEventWhereInput(
      processed: const BooleanFilter(equals: false),
      provider: provider != null ? StringFilter(equals: provider) : null,
    );

    final events = await _prisma.webhookEvent.findMany(
      where: where,
      orderBy: const WebhookEventOrderByInput(receivedAt: SortOrder.asc),
      take: limit,
    );

    return events.map((e) => e.toJson()).toList();
  }
}
