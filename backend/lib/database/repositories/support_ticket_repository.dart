import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/utils/enum_utils.dart';
import 'package:backend/generated/index.dart';

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
/// Uses typed delegates for queries where possible, with JsonQueryBuilder
/// for mutations and count queries that require raw where maps.
class SupportTicketRepository extends BaseRepository {
  /// Create a support ticket repository with the given executor
  SupportTicketRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

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
    final where = SupportTicketWhereInput(
      userId: StringFilter(equals: userId),
      status: status != null && status.isNotEmpty
          ? SupportTicketStatusFilter(
              equals: SupportTicketStatus.values
                  .firstWhere((e) => e.toJson() == status),
            )
          : null,
    );

    // Count total tickets
    final totalCount = await _prisma.supportTicket.count(where: where);

    final tickets = await _prisma.supportTicket.findMany(
      where: where,
      orderBy: {'createdAt': 'desc'},
      skip: offset,
      take: effectivePageSize,
    );

    return {
      'tickets': tickets.map((t) => t.toJson()).toList(),
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
    final ticket = await _prisma.supportTicket.findFirst(
      where: SupportTicketWhereInput(
        id: StringFilter(equals: ticketId),
        userId: StringFilter(equals: userId),
      ),
    );

    if (ticket == null) {
      throw const RecordNotFoundException('Ticket not found or access denied');
    }

    // Fetch responses separately
    final responses = await _prisma.supportResponse.findMany(
      where: SupportResponseWhereInput(
        supportTicketId: StringFilter(equals: ticketId),
        isInternal: BooleanFilter(equals: false),
      ),
      orderBy: {'createdAt': 'asc'},
    );

    // Fetch attachments separately
    final attachments = await _prisma.supportTicketAttachment.findMany(
      where: SupportTicketAttachmentWhereInput(
        ticketId: StringFilter(equals: ticketId),
      ),
    );

    return {
      ...ticket.toJson(),
      'responses': responses.map((r) => r.toJson()).toList(),
      'attachments': attachments.map((a) => a.toJson()).toList(),
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
    // id/timestamps autofilled; status defaults to OPEN on the typed input.
    final created = await _prisma.supportTicket.create(
      data: CreateSupportTicketInput(
        userId: userId,
        title: title,
        description: description,
        priority: enumFromWire(SupportPriority.values, priority ?? 'MEDIUM',
            field: 'priority'),
        issueType: issueType != null
            ? enumFromWire(SupportIssueType.values, issueType,
                field: 'issueType')
            : null,
        category: category,
        consultationId: consultationId,
        subscriptionId: subscriptionId,
        paymentId: paymentId,
      ),
    );

    // Return the created ticket
    final result = await _prisma.supportTicket.findFirst(
      where: SupportTicketWhereInput(id: StringFilter(equals: created.id)),
    );

    if (result == null) {
      throw Exception('Failed to create ticket');
    }

    return result.toJson();
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
    final ticket = await _prisma.supportTicket.findFirst(
      where: SupportTicketWhereInput(
        id: StringFilter(equals: ticketId),
        userId: StringFilter(equals: userId),
      ),
    );

    if (ticket == null) {
      throw const RecordNotFoundException('Ticket not found or access denied');
    }

    // Create response (id/timestamps autofilled; isInternal defaults false —
    // user responses are never internal).
    final created = await _prisma.supportResponse.create(
      data: CreateSupportResponseInput(
        supportTicketId: ticketId,
        userId: userId,
        message: message,
      ),
    );

    // Touch the ticket so updatedAt reflects the new response (auto-refreshed
    // by the typed update even with an empty data payload).
    await _prisma.supportTicket.update(
      where: SupportTicketWhereUniqueInput(id: ticketId),
      data: const UpdateSupportTicketInput(),
    );

    final result = await _prisma.supportResponse.findFirst(
      where: SupportResponseWhereInput(id: StringFilter(equals: created.id)),
    );

    if (result == null) {
      throw Exception('Failed to create response');
    }

    return result.toJson();
  }

  /// Get ticket count by status for a user
  ///
  /// Useful for showing badge counts (e.g., "3 open tickets")
  Future<Map<String, int>> getTicketCountsByStatus(String userId) async {
    final counts = <String, int>{};

    for (final status in SupportTicketStatus.values) {
      counts[status.toJson().toLowerCase()] = await _prisma.supportTicket.count(
        where: SupportTicketWhereInput(
          userId: StringFilter(equals: userId),
          status: SupportTicketStatusFilter(equals: status),
        ),
      );
    }

    // Also get total
    counts['total'] = await _prisma.supportTicket.count(
      where: SupportTicketWhereInput(userId: StringFilter(equals: userId)),
    );

    return counts;
  }
}
