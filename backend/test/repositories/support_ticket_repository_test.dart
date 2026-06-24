import 'package:backend/database/repositories/support_ticket_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart' hide RecordNotFoundException;
import 'package:test/test.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

class MockPrismaClient extends Mock implements PrismaClient {}

class FakeJsonQuery extends Fake implements JsonQuery {}

void main() {
  late MockQueryExecutor mockExecutor;
  late SupportTicketRepository repository;

  setUpAll(() {
    registerFallbackValue(FakeJsonQuery());
  });

  setUp(() {
    mockExecutor = MockQueryExecutor();
    repository = SupportTicketRepository(mockExecutor, MockPrismaClient());
  });

  group('getTicketsByUserId', () {
    test('returns tickets with pagination', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 2);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => [
                {
                  'id': 'ticket-1',
                  'title': 'Issue 1',
                  'status': 'OPEN',
                  'userId': 'user-1',
                },
                {
                  'id': 'ticket-2',
                  'title': 'Issue 2',
                  'status': 'OPEN',
                  'userId': 'user-1',
                },
              ]);

      final result = await repository.getTicketsByUserId(userId: 'user-1');

      expect(result['tickets'], hasLength(2));
      expect(result['pagination']['totalCount'], equals(2));
      expect(result['pagination']['page'], equals(0));
      verify(() => mockExecutor.executeCount(any())).called(1);
      verify(() => mockExecutor.executeQueryAsMaps(any())).called(1);
    });

    test('filters tickets by status', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 1);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => [
                {
                  'id': 'ticket-1',
                  'title': 'Issue 1',
                  'status': 'RESOLVED',
                  'userId': 'user-1',
                },
              ]);

      final result = await repository.getTicketsByUserId(
        userId: 'user-1',
        status: 'RESOLVED',
      );

      expect(result['tickets'], hasLength(1));
      expect(result['pagination']['totalCount'], equals(1));
    });

    test('returns empty list when no tickets', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 0);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      final result = await repository.getTicketsByUserId(userId: 'user-2');

      expect(result['tickets'], isEmpty);
      expect(result['pagination']['totalCount'], equals(0));
    });

    test('clamps page size to maximum 50', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 0);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      final result = await repository.getTicketsByUserId(
        userId: 'user-1',
        pageSize: 100,
      );

      expect(result['pagination']['pageSize'], equals(50));
    });

    test('supports pagination with page parameter', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 25);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

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
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => {
                'id': 'ticket-1',
                'title': 'Test Issue',
                'description': 'Details here',
                'status': 'OPEN',
                'userId': 'user-1',
              });

      // executeQueryAsMaps: first for responses, then attachments
      var queryAsMapsCallCount = 0;
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async {
        queryAsMapsCallCount++;
        if (queryAsMapsCallCount == 1) {
          // Responses
          return [
            {
              'id': 'resp-1',
              'message': 'Response message',
              'isInternal': false,
            },
          ];
        }
        // Attachments
        return [
          {
            'id': 'att-1',
            'fileName': 'screenshot.png',
          },
        ];
      });

      final result = await repository.getTicketById(
        ticketId: 'ticket-1',
        userId: 'user-1',
      );

      expect(result['id'], equals('ticket-1'));
      expect(result['responses'], hasLength(1));
      expect(result['attachments'], hasLength(1));
    });

    test('throws RecordNotFoundException when ticket not found', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

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
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

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
      // First call: executeMutation for create
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 1);

      // Second call: executeQueryAsSingleMap for fetch
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => {
                'id': 'generated-id',
                'title': 'New Issue',
                'description': 'Issue description',
                'status': 'OPEN',
                'priority': 'MEDIUM',
                'userId': 'user-1',
              });

      final result = await repository.createTicket(
        userId: 'user-1',
        title: 'New Issue',
        description: 'Issue description',
      );

      expect(result['title'], equals('New Issue'));
      expect(result['status'], equals('OPEN'));
      expect(result['priority'], equals('MEDIUM'));
      verify(() => mockExecutor.executeMutation(any())).called(1);
      verify(() => mockExecutor.executeQueryAsSingleMap(any())).called(1);
    });

    test('creates ticket with optional fields', () async {
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 1);

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => {
                'id': 'generated-id',
                'title': 'Payment Issue',
                'description': 'Payment failed',
                'status': 'OPEN',
                'priority': 'HIGH',
                'issueType': 'PAYMENT',
                'category': 'BILLING',
                'paymentId': 'pay-1',
                'userId': 'user-1',
              });

      final result = await repository.createTicket(
        userId: 'user-1',
        title: 'Payment Issue',
        description: 'Payment failed',
        priority: 'HIGH',
        issueType: 'PAYMENT',
        category: 'BILLING',
        paymentId: 'pay-1',
      );

      expect(result['priority'], equals('HIGH'));
      expect(result['issueType'], equals('PAYMENT'));
    });

    test('throws when ticket creation fails', () async {
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 1);

      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

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
      var singleMapCallCount = 0;
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async {
        singleMapCallCount++;
        if (singleMapCallCount == 1) {
          // Verify ticket ownership
          return {
            'id': 'ticket-1',
            'userId': 'user-1',
          };
        }
        // Return created response
        return {
          'id': 'resp-1',
          'supportTicketId': 'ticket-1',
          'userId': 'user-1',
          'message': 'My response',
          'isInternal': false,
        };
      });

      // Create response + update ticket
      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 1);

      final result = await repository.addResponse(
        ticketId: 'ticket-1',
        userId: 'user-1',
        message: 'My response',
      );

      expect(result['message'], equals('My response'));
      expect(result['isInternal'], isFalse);
      // 2 mutations: create response + update ticket updatedAt
      verify(() => mockExecutor.executeMutation(any())).called(2);
    });

    test('throws RecordNotFoundException when ticket not found', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

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
      var singleMapCallCount = 0;
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async {
        singleMapCallCount++;
        if (singleMapCallCount == 1) {
          return {'id': 'ticket-1', 'userId': 'user-1'};
        }
        return null; // Response fetch fails
      });

      when(() => mockExecutor.executeMutation(any()))
          .thenAnswer((_) async => 1);

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
      when(() => mockExecutor.executeCount(any())).thenAnswer((_) async {
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
      verify(() => mockExecutor.executeCount(any())).called(6);
    });

    test('returns zeros when no tickets exist', () async {
      when(() => mockExecutor.executeCount(any()))
          .thenAnswer((_) async => 0);

      final result = await repository.getTicketCountsByStatus('user-1');

      expect(result['open'], equals(0));
      expect(result['total'], equals(0));
    });
  });
}
