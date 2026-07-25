// Mock stubbing spans several generated delegate classes that share no base
// type, so the shared stub helpers take `dynamic` — which costs type
// inference on the mocktail calls. Test-only plumbing, not a correctness gap.
// ignore_for_file: inference_failure_on_function_invocation, strict_raw_type

import 'package:backend/database/repositories/support_ticket_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart'
    hide RecordNotFoundException;
import 'package:test/test.dart';

import '../helpers/prisma_mocks.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

class FakeJsonQuery extends Fake implements JsonQuery {}

void main() {
  late MockQueryExecutor mockExecutor;
  late MockPrismaClient mockPrisma;
  late MockSupportTicketDelegate mockTickets;
  late MockSupportResponseDelegate mockResponses;
  late MockSupportTicketAttachmentDelegate mockAttachments;
  late SupportTicketRepository repository;

  setUpAll(() {
    registerFallbackValue(FakeJsonQuery());
    registerPrismaFallbacks();
  });

  setUp(() {
    mockExecutor = MockQueryExecutor();
    mockPrisma = MockPrismaClient();
    mockTickets = MockSupportTicketDelegate();
    mockResponses = MockSupportResponseDelegate();
    mockAttachments = MockSupportTicketAttachmentDelegate();
    when(() => mockPrisma.supportTicket).thenReturn(mockTickets);
    when(() => mockPrisma.supportResponse).thenReturn(mockResponses);
    when(() => mockPrisma.supportTicketAttachment).thenReturn(mockAttachments);
    repository = SupportTicketRepository(mockExecutor, mockPrisma);
  });

  group('getTicketsByUserId', () {
    test('returns tickets with pagination', () async {
      when(() => mockTickets.count(where: any(named: 'where')))
          .thenAnswer((_) async => 2);

      when(
        () => mockTickets.findMany(
          where: any(named: 'where'),
          orderBy: any(named: 'orderBy'),
          skip: any(named: 'skip'),
          take: any(named: 'take'),
        ),
      ).thenAnswer(
        (_) async => [
          buildSupportTicket(id: 'ticket-1', title: 'Issue 1'),
          buildSupportTicket(id: 'ticket-2', title: 'Issue 2'),
        ],
      );

      final result = await repository.getTicketsByUserId(userId: 'user-1');

      expect(result['tickets'], hasLength(2));
      expect(result['pagination']['totalCount'], equals(2));
      expect(result['pagination']['page'], equals(0));
      verify(() => mockTickets.count(where: any(named: 'where'))).called(1);
      verify(
        () => mockTickets.findMany(
          where: any(named: 'where'),
          orderBy: any(named: 'orderBy'),
          skip: any(named: 'skip'),
          take: any(named: 'take'),
        ),
      ).called(1);
    });

    test('filters tickets by status', () async {
      when(() => mockTickets.count(where: any(named: 'where')))
          .thenAnswer((_) async => 1);

      when(
        () => mockTickets.findMany(
          where: any(named: 'where'),
          orderBy: any(named: 'orderBy'),
          skip: any(named: 'skip'),
          take: any(named: 'take'),
        ),
      ).thenAnswer(
        (_) async => [
          buildSupportTicket(
            id: 'ticket-1',
            status: SupportTicketStatus.resolved,
          ),
        ],
      );

      final result = await repository.getTicketsByUserId(
        userId: 'user-1',
        status: 'RESOLVED',
      );

      expect(result['tickets'], hasLength(1));
      expect(result['pagination']['totalCount'], equals(1));
    });

    test('returns empty list when no tickets', () async {
      when(() => mockTickets.count(where: any(named: 'where')))
          .thenAnswer((_) async => 0);

      when(
        () => mockTickets.findMany(
          where: any(named: 'where'),
          orderBy: any(named: 'orderBy'),
          skip: any(named: 'skip'),
          take: any(named: 'take'),
        ),
      ).thenAnswer((_) async => []);

      final result = await repository.getTicketsByUserId(userId: 'user-2');

      expect(result['tickets'], isEmpty);
      expect(result['pagination']['totalCount'], equals(0));
    });

    test('clamps page size to maximum 50', () async {
      when(() => mockTickets.count(where: any(named: 'where')))
          .thenAnswer((_) async => 0);

      when(
        () => mockTickets.findMany(
          where: any(named: 'where'),
          orderBy: any(named: 'orderBy'),
          skip: any(named: 'skip'),
          take: any(named: 'take'),
        ),
      ).thenAnswer((_) async => []);

      final result = await repository.getTicketsByUserId(
        userId: 'user-1',
        pageSize: 100,
      );

      expect(result['pagination']['pageSize'], equals(50));
    });

    test('supports pagination with page parameter', () async {
      when(() => mockTickets.count(where: any(named: 'where')))
          .thenAnswer((_) async => 25);

      when(
        () => mockTickets.findMany(
          where: any(named: 'where'),
          orderBy: any(named: 'orderBy'),
          skip: any(named: 'skip'),
          take: any(named: 'take'),
        ),
      ).thenAnswer((_) async => []);

      final result = await repository.getTicketsByUserId(
        userId: 'user-1',
        page: 1,
        pageSize: 10,
      );

      expect(result['pagination']['page'], equals(1));
      expect(result['pagination']['totalPages'], equals(3));
    });
  });

  group('getTicketById', () {
    test('returns ticket with responses and attachments', () async {
      // First call: find ticket
      when(
        () => mockTickets.findFirst(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer((_) async => buildSupportTicket());

      when(
        () => mockResponses.findMany(
          where: any(named: 'where'),
          orderBy: any(named: 'orderBy'),
        ),
      ).thenAnswer((_) async => [buildSupportResponse()]);
      when(
        () => mockAttachments.findMany(
          where: any(named: 'where'),
          orderBy: any(named: 'orderBy'),
        ),
      ).thenAnswer((_) async => [buildSupportTicketAttachment()]);

      final result = await repository.getTicketById(
        ticketId: 'ticket-1',
        userId: 'user-1',
      );

      expect(result['id'], equals('ticket-1'));
      expect(result['responses'], hasLength(1));
      expect(result['attachments'], hasLength(1));
    });

    test('throws RecordNotFoundException when ticket not found', () async {
      when(
        () => mockTickets.findFirst(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer((_) async => null);

      expect(
        () => repository.getTicketById(
          ticketId: 'nonexistent',
          userId: 'user-1',
        ),
        throwsA(isA<RecordNotFoundException>()),
      );
    });

    test('throws RecordNotFoundException when user does not own ticket',
        () async {
      when(
        () => mockTickets.findFirst(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer((_) async => null);

      expect(
        () => repository.getTicketById(
          ticketId: 'ticket-1',
          userId: 'wrong-user',
        ),
        throwsA(isA<RecordNotFoundException>()),
      );
    });
  });

  group('createTicket', () {
    test('creates ticket and returns the created record', () async {
      final created = buildSupportTicket(
        id: 'generated-id',
        title: 'New Issue',
        description: 'Issue description',
      );
      when(() => mockTickets.create(data: any(named: 'data')))
          .thenAnswer((_) async => created);
      when(
        () => mockTickets.findFirst(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer((_) async => created);

      final result = await repository.createTicket(
        userId: 'user-1',
        title: 'New Issue',
        description: 'Issue description',
      );

      expect(result['title'], equals('New Issue'));
      expect(result['status'], equals('OPEN'));
      expect(result['priority'], equals('MEDIUM'));
      verify(() => mockTickets.create(data: any(named: 'data'))).called(1);
    });

    test('creates ticket with optional fields', () async {
      final created = buildSupportTicket(
        id: 'generated-id',
        title: 'Payment Issue',
        description: 'Payment failed',
        priority: SupportPriority.high,
        issueType: SupportIssueType.paymentFailed,
      );
      when(() => mockTickets.create(data: any(named: 'data')))
          .thenAnswer((_) async => created);
      when(
        () => mockTickets.findFirst(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer((_) async => created);

      final result = await repository.createTicket(
        userId: 'user-1',
        title: 'Payment Issue',
        description: 'Payment failed',
        priority: 'HIGH',
        issueType: 'PAYMENT_FAILED',
        category: 'BILLING',
        paymentId: 'pay-1',
      );

      expect(result['priority'], equals('HIGH'));
      expect(result['issueType'], equals('PAYMENT_FAILED'));
    });

    test('throws when ticket creation fails', () async {
      when(() => mockTickets.create(data: any(named: 'data')))
          .thenAnswer((_) async => throw Exception('insert failed'));

      expect(
        () => repository.createTicket(
          userId: 'user-1',
          title: 'Test',
          description: 'Test',
        ),
        throwsA(isA<Exception>()),
      );
    });
  });

  group('addResponse', () {
    test('adds response to ticket and returns it', () async {
      when(
        () => mockTickets.findFirst(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer((_) async => buildSupportTicket());
      when(() => mockResponses.create(data: any(named: 'data'))).thenAnswer(
        (_) async => buildSupportResponse(message: 'My response'),
      );
      when(
        () => mockTickets.update(
          where: any(named: 'where'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => buildSupportTicket());
      when(
        () => mockResponses.findFirst(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer(
        (_) async => buildSupportResponse(message: 'My response'),
      );

      final result = await repository.addResponse(
        ticketId: 'ticket-1',
        userId: 'user-1',
        message: 'My response',
      );

      expect(result['message'], equals('My response'));
      expect(result['isInternal'], isFalse);
      verify(() => mockResponses.create(data: any(named: 'data'))).called(1);
    });

    test('throws RecordNotFoundException when ticket not found', () async {
      when(
        () => mockTickets.findFirst(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer((_) async => null);

      expect(
        () => repository.addResponse(
          ticketId: 'nonexistent',
          userId: 'user-1',
          message: 'test',
        ),
        throwsA(isA<RecordNotFoundException>()),
      );
    });

    test('throws when response creation fails', () async {
      when(
        () => mockTickets.findFirst(
          where: any(named: 'where'),
          include: any(named: 'include'),
        ),
      ).thenAnswer((_) async => buildSupportTicket());
      when(() => mockResponses.create(data: any(named: 'data')))
          .thenAnswer((_) async => throw Exception('insert failed'));

      expect(
        () => repository.addResponse(
          ticketId: 'ticket-1',
          userId: 'user-1',
          message: 'test',
        ),
        throwsA(isA<Exception>()),
      );
    });
  });

  group('getTicketCountsByStatus', () {
    test('returns counts for all statuses', () async {
      // 5 status queries + 1 total query = 6 calls
      var countCallCount = 0;
      when(() => mockTickets.count(where: any(named: 'where')))
          .thenAnswer((_) async {
        countCallCount++;
        switch (countCallCount) {
          case 1:
            return 3; // OPEN
          case 2:
            return 2; // IN_PROGRESS
          case 3:
            return 1; // ON_HOLD
          case 4:
            return 5; // RESOLVED
          case 5:
            return 4; // CLOSED
          case 6:
            return 15; // total
          default:
            return 0;
        }
      });

      final result = await repository.getTicketCountsByStatus('user-1');

      expect(result['open'], equals(3));
      expect(result['in_progress'], equals(2));
      expect(result['on_hold'], equals(1));
      expect(result['resolved'], equals(5));
      expect(result['closed'], equals(4));
      expect(result['total'], equals(15));
      verify(() => mockTickets.count(where: any(named: 'where'))).called(6);
    });

    test('returns zeros when no tickets exist', () async {
      when(() => mockTickets.count(where: any(named: 'where')))
          .thenAnswer((_) async => 0);

      final result = await repository.getTicketCountsByStatus('user-1');

      expect(result['open'], equals(0));
      expect(result['total'], equals(0));
    });
  });
}
