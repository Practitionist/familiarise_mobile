import 'package:familiarise_mobile/core/errors/exceptions.dart';
import 'package:familiarise_mobile/data/datasources/remote/support_remote_source.dart';
import 'package:familiarise_mobile/data/repositories/support_repository_impl.dart';
import 'package:familiarise_mobile/domain/entities/support/support_entities.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Mock classes
class MockSupportRemoteSource extends Mock implements SupportRemoteSource {}

// Fallback values
class FakeCreateTicketRequest extends Fake implements CreateTicketRequest {}

void main() {
  late SupportRepositoryImpl repository;
  late MockSupportRemoteSource mockRemoteSource;

  setUpAll(() {
    registerFallbackValue(FakeCreateTicketRequest());
  });

  setUp(() {
    mockRemoteSource = MockSupportRemoteSource();
    repository = SupportRepositoryImpl(remoteSource: mockRemoteSource);
  });

  // Test data
  const testTicketId = 'ticket-123';

  final testTicket = SupportTicket(
    id: testTicketId,
    title: 'Payment issue',
    description: 'I was charged twice',
    status: TicketStatus.open,
    priority: TicketPriority.high,
    issueType: SupportIssueType.chargedTwice,
    createdAt: DateTime(2024, 6, 1),
  );

  final testResponse = SupportResponse(
    id: 'response-1',
    message: 'We are looking into this',
    responderId: 'staff-1',
    responderName: 'Support Agent',
    isStaff: true,
    createdAt: DateTime(2024, 6, 2),
  );

  final testTicketsResponse = SupportTicketsResponse(
    tickets: [testTicket],
    pagination: const SupportPagination(
      page: 0,
      pageSize: 20,
      totalCount: 1,
      totalPages: 1,
    ),
  );

  group('getTickets', () {
    test('should return tickets response with pagination', () async {
      // Arrange
      when(() => mockRemoteSource.getTickets(
            status: any(named: 'status'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          )).thenAnswer((_) async => testTicketsResponse);

      // Act
      final result = await repository.getTickets();

      // Assert
      expect(result.tickets.length, 1);
      expect(result.tickets.first.id, testTicketId);
      expect(result.tickets.first.title, 'Payment issue');
      expect(result.pagination.totalCount, 1);
    });

    test('should pass status filter to remote source', () async {
      // Arrange
      when(() => mockRemoteSource.getTickets(
            status: any(named: 'status'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          )).thenAnswer((_) async => testTicketsResponse);

      // Act
      await repository.getTickets(status: 'OPEN');

      // Assert
      verify(() => mockRemoteSource.getTickets(status: 'OPEN')).called(1);
    });

    test('should pass pagination parameters', () async {
      // Arrange
      when(() => mockRemoteSource.getTickets(
            status: any(named: 'status'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          )).thenAnswer((_) async => testTicketsResponse);

      // Act
      await repository.getTickets(page: 2, pageSize: 10);

      // Assert
      verify(() => mockRemoteSource.getTickets(page: 2, pageSize: 10))
          .called(1);
    });

    test('should return empty list when no tickets', () async {
      // Arrange
      when(() => mockRemoteSource.getTickets(
            status: any(named: 'status'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          )).thenAnswer((_) async => const SupportTicketsResponse(
            tickets: [],
            pagination: SupportPagination(
              page: 0,
              pageSize: 20,
              totalCount: 0,
              totalPages: 0,
            ),
          ));

      // Act
      final result = await repository.getTickets();

      // Assert
      expect(result.tickets, isEmpty);
    });

    test('should throw ServerException when remote source fails', () async {
      // Arrange
      when(() => mockRemoteSource.getTickets(
            status: any(named: 'status'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          )).thenThrow(const ServerException(
        message: 'Failed to fetch tickets',
        statusCode: 500,
      ));

      // Act & Assert
      expect(
        () => repository.getTickets(),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('getTicketById', () {
    test('should return ticket with responses when found', () async {
      // Arrange
      final ticketWithResponses = testTicket.copyWith(
        responses: [testResponse],
      );
      when(() => mockRemoteSource.getTicketById(any()))
          .thenAnswer((_) async => ticketWithResponses);

      // Act
      final result = await repository.getTicketById(testTicketId);

      // Assert
      expect(result.id, testTicketId);
      expect(result.responses?.length, 1);
      expect(result.responses?.first.message, 'We are looking into this');
    });

    test('should throw NotFoundException when ticket not found', () async {
      // Arrange
      when(() => mockRemoteSource.getTicketById(any()))
          .thenThrow(const NotFoundException(resource: 'Support ticket'));

      // Act & Assert
      expect(
        () => repository.getTicketById('nonexistent'),
        throwsA(isA<NotFoundException>()),
      );
    });

    test('should throw ServerException on server error', () async {
      // Arrange
      when(() => mockRemoteSource.getTicketById(any()))
          .thenThrow(const ServerException(
        message: 'Server error',
        statusCode: 500,
      ));

      // Act & Assert
      expect(
        () => repository.getTicketById(testTicketId),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('createTicket', () {
    const createRequest = CreateTicketRequest(
      title: 'Payment issue',
      description: 'I was charged twice for my consultation',
      issueType: 'CHARGED_TWICE',
      priority: 'HIGH',
    );

    test('should return created ticket on success', () async {
      // Arrange
      when(() => mockRemoteSource.createTicket(any()))
          .thenAnswer((_) async => testTicket);

      // Act
      final result = await repository.createTicket(createRequest);

      // Assert
      expect(result.id, testTicketId);
      expect(result.title, 'Payment issue');
      expect(result.status, TicketStatus.open);
      expect(result.priority, TicketPriority.high);
      verify(() => mockRemoteSource.createTicket(createRequest)).called(1);
    });

    test('should throw ServerException when creation fails', () async {
      // Arrange
      when(() => mockRemoteSource.createTicket(any()))
          .thenThrow(const ServerException(
        message: 'Failed to create ticket',
        statusCode: 500,
      ));

      // Act & Assert
      expect(
        () => repository.createTicket(createRequest),
        throwsA(isA<ServerException>()),
      );
    });

    test('should throw AuthException when not authenticated', () async {
      // Arrange
      when(() => mockRemoteSource.createTicket(any()))
          .thenThrow(const AuthException(message: 'Not authenticated'));

      // Act & Assert
      expect(
        () => repository.createTicket(createRequest),
        throwsA(isA<AuthException>()),
      );
    });
  });

  group('addResponse', () {
    test('should return SupportResponse on success', () async {
      // Arrange
      when(() => mockRemoteSource.addResponse(
            ticketId: any(named: 'ticketId'),
            message: any(named: 'message'),
          )).thenAnswer((_) async => testResponse);

      // Act
      final result = await repository.addResponse(
        ticketId: testTicketId,
        message: 'Thank you for looking into this',
      );

      // Assert
      expect(result.id, 'response-1');
      expect(result.message, 'We are looking into this');
      verify(() => mockRemoteSource.addResponse(
            ticketId: testTicketId,
            message: 'Thank you for looking into this',
          )).called(1);
    });

    test('should throw NotFoundException when ticket not found', () async {
      // Arrange
      when(() => mockRemoteSource.addResponse(
            ticketId: any(named: 'ticketId'),
            message: any(named: 'message'),
          )).thenThrow(const NotFoundException(resource: 'Support ticket'));

      // Act & Assert
      expect(
        () => repository.addResponse(
          ticketId: 'nonexistent',
          message: 'Hello',
        ),
        throwsA(isA<NotFoundException>()),
      );
    });

    test('should throw ServerException on server error', () async {
      // Arrange
      when(() => mockRemoteSource.addResponse(
            ticketId: any(named: 'ticketId'),
            message: any(named: 'message'),
          )).thenThrow(const ServerException(
        message: 'Failed to add response',
        statusCode: 500,
      ));

      // Act & Assert
      expect(
        () => repository.addResponse(
          ticketId: testTicketId,
          message: 'Hello',
        ),
        throwsA(isA<ServerException>()),
      );
    });
  });
}
