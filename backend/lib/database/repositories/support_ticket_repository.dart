import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Exception thrown when a record is not found or access is denied
class RecordNotFoundException implements Exception {
  final String message;
  const RecordNotFoundException(this.message);

  @override
  String toString() => message;
}

/// Repository for support ticket operations using Prisma ORM
///
/// Handles creation, retrieval, and management of support tickets.
/// Uses JsonQueryBuilder for type-safe queries.
class SupportTicketRepository extends BaseRepository {
  /// Create a support ticket repository with the given executor
  SupportTicketRepository(super._executor);

  final _uuid = const Uuid();

  /// Get tickets for a user with optional status filter and pagination
  ///
  /// Returns tickets with responses (excluding internal notes) ordered by
  /// creation date descending.
  Future<Map<String, dynamic>> getTicketsByUserId({
    required String userId,
    String? status,
    int page = 0,
    int pageSize = 20,
  }) async {
    final effectivePageSize = pageSize.clamp(1, 50);
    final offset = page * effectivePageSize;

    // Build where clause
    final where = <String, dynamic>{
      'userId': userId,
    };
    if (status != null && status.isNotEmpty) {
      where['status'] = status;
    }

    // Count total tickets
    final countQuery = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.count)
        .where(where)
        .build();

    final totalCount = await executeCount(countQuery);

    // Fetch tickets — schema registry now auto-generated (#29), includes available
    final query = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.findMany)
        .where(where)
        .orderBy({'createdAt': 'desc'})
        .skip(offset)
        .take(effectivePageSize)
        .build();

    final tickets = await executeQueryAsMaps(query);

    return {
      'tickets': tickets,
      'pagination': {
        'page': page,
        'pageSize': effectivePageSize,
        'totalCount': totalCount,
        'totalPages': (totalCount / effectivePageSize).ceil(),
      },
    };
  }

  /// Get a single ticket by ID with all responses (excludes internal)
  ///
  /// Returns the ticket with responses ordered by creation date.
  /// Throws if ticket not found or user doesn't own it.
  Future<Map<String, dynamic>> getTicketById({
    required String ticketId,
    required String userId,
  }) async {
    // Fetch ticket
    final query = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.findFirst)
        .where({
      'id': ticketId,
      'userId': userId,
    }).build();

    final ticket = await executeQueryAsSingleMap(query);

    if (ticket == null) {
      throw const RecordNotFoundException('Ticket not found or access denied');
    }

    // Fetch responses separately
    final responsesQuery = JsonQueryBuilder()
        .model('SupportResponse')
        .action(QueryAction.findMany)
        .where({
      'supportTicketId': ticketId,
      'isInternal': false,
    }).orderBy({'createdAt': 'asc'}).build();

    final responses = await executeQueryAsMaps(responsesQuery);

    // Fetch attachments separately
    final attachmentsQuery = JsonQueryBuilder()
        .model('SupportTicketAttachment')
        .action(QueryAction.findMany)
        .where({'ticketId': ticketId}).build();

    final attachments = await executeQueryAsMaps(attachmentsQuery);

    return {
      ...ticket,
      'responses': responses,
      'attachments': attachments,
    };
  }

  /// Create a new support ticket
  ///
  /// Creates a ticket with optional entity links (consultation, payment).
  /// Returns the created ticket with ID.
  Future<Map<String, dynamic>> createTicket({
    required String userId,
    required String title,
    required String description,
    String? issueType,
    String? priority,
    String? category,
    String? consultationId,
    String? subscriptionId,
    String? paymentId,
  }) async {
    final now = nowIso8601;
    final ticketId = _uuid.v4();

    final data = <String, dynamic>{
      'id': ticketId,
      'userId': userId,
      'title': title,
      'description': description,
      'status': 'OPEN',
      'priority': priority ?? 'MEDIUM',
      'createdAt': now,
      'updatedAt': now,
    };

    // Add optional fields
    if (issueType != null) data['issueType'] = issueType;
    if (category != null) data['category'] = category;
    if (consultationId != null) data['consultationId'] = consultationId;
    if (subscriptionId != null) data['subscriptionId'] = subscriptionId;
    if (paymentId != null) data['paymentId'] = paymentId;

    final createQuery = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.create)
        .data(data)
        .build();

    await executeMutation(createQuery);

    // Return the created ticket
    final resultQuery = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.findUnique)
        .where({'id': ticketId}).build();

    final result = await executeQueryAsSingleMap(resultQuery);

    if (result == null) {
      throw Exception('Failed to create ticket');
    }

    return result;
  }

  /// Add a user response to a ticket
  ///
  /// Creates a non-internal response from the user.
  /// Returns the created response.
  Future<Map<String, dynamic>> addResponse({
    required String ticketId,
    required String userId,
    required String message,
  }) async {
    // First verify the user owns the ticket
    final ticketQuery = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.findFirst)
        .where({
      'id': ticketId,
      'userId': userId,
    }).build();

    final ticket = await executeQueryAsSingleMap(ticketQuery);

    if (ticket == null) {
      throw const RecordNotFoundException('Ticket not found or access denied');
    }

    final now = nowIso8601;
    final responseId = _uuid.v4();

    // Create response
    final createQuery = JsonQueryBuilder()
        .model('SupportResponse')
        .action(QueryAction.create)
        .data({
      'id': responseId,
      'supportTicketId': ticketId,
      'userId': userId,
      'message': message,
      'isInternal': false, // User responses are never internal
      'createdAt': now,
      'updatedAt': now,
    }).build();

    await executeMutation(createQuery);

    // Update ticket updatedAt
    final updateQuery = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.update)
        .where({'id': ticketId}).data({'updatedAt': now}).build();

    await executeMutation(updateQuery);

    // Return the created response — schema registry now auto-generated (#29)
    final resultQuery = JsonQueryBuilder()
        .model('SupportResponse')
        .action(QueryAction.findUnique)
        .where({'id': responseId}).build();

    final result = await executeQueryAsSingleMap(resultQuery);

    if (result == null) {
      throw Exception('Failed to create response');
    }

    return result;
  }

  /// Get ticket count by status for a user
  ///
  /// Useful for showing badge counts (e.g., "3 open tickets")
  Future<Map<String, int>> getTicketCountsByStatus(String userId) async {
    final statuses = ['OPEN', 'IN_PROGRESS', 'ON_HOLD', 'RESOLVED', 'CLOSED'];
    final counts = <String, int>{};

    for (final status in statuses) {
      final query = JsonQueryBuilder()
          .model('SupportTicket')
          .action(QueryAction.count)
          .where({
        'userId': userId,
        'status': status,
      }).build();

      counts[status.toLowerCase()] = await executeCount(query);
    }

    // Also get total
    final totalQuery = JsonQueryBuilder()
        .model('SupportTicket')
        .action(QueryAction.count)
        .where({'userId': userId}).build();

    counts['total'] = await executeCount(totalQuery);

    return counts;
  }
}
