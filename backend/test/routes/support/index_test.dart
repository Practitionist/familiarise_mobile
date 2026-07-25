// Mock stubbing spans several generated delegate classes that share no base
// type, so the shared stub helpers take `dynamic` — which costs type
// inference on the mocktail calls. Test-only plumbing, not a correctness gap.
// ignore_for_file: inference_failure_on_function_invocation, strict_raw_type

import 'dart:io';

import 'package:backend/database/database_client.dart' hide Platform;
import 'package:backend/database/repositories/support_ticket_repository.dart';
import 'package:backend/services/auth/jwt_service.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../routes/api/support/index.dart' as route;

class _MockRequestContext extends Mock implements RequestContext {}

class _MockRequest extends Mock implements Request {}

class _MockDatabaseClient extends Mock implements DatabaseClient {}

class _MockJwtService extends Mock implements JwtService {}

class _MockSupportTicketRepository extends Mock
    implements SupportTicketRepository {}

void main() {
  late _MockRequestContext context;
  late _MockRequest request;
  late _MockDatabaseClient db;
  late _MockJwtService jwtService;
  late _MockSupportTicketRepository supportTicketRepo;

  setUp(() {
    context = _MockRequestContext();
    request = _MockRequest();
    db = _MockDatabaseClient();
    jwtService = _MockJwtService();
    supportTicketRepo = _MockSupportTicketRepository();

    when(() => context.request).thenReturn(request);
    when(() => context.read<DatabaseClient>()).thenReturn(db);
    when(() => context.read<JwtService>()).thenReturn(jwtService);

    when(() => db.supportTickets).thenReturn(supportTicketRepo);
  });

  group('GET /api/support', () {
    setUp(() {
      when(() => request.method).thenReturn(HttpMethod.get);
    });

    test('returns 401 when no auth token is provided', () async {
      when(() => request.headers).thenReturn({});

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.unauthorized));
      final body = await response.json();
      expect(body['error']['message'], equals('Unauthorized'));
    });

    test('returns 401 when auth token is invalid', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer invalid-token',
      });
      when(() => jwtService.tryVerify('invalid-token')).thenReturn(null);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.unauthorized));
    });

    test('returns 200 with tickets on success', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.uri).thenReturn(
        Uri.parse('http://localhost/api/support'),
      );

      final ticketsResult = {
        'tickets': <Map<String, dynamic>>[
          {
            'id': 'ticket-1',
            'title': 'Payment issue',
            'status': 'OPEN',
          },
        ],
        'pagination': {
          'page': 0,
          'pageSize': 20,
          'totalCount': 1,
          'totalPages': 1,
        },
      };

      when(
        () => supportTicketRepo.getTicketsByUserId(
          userId: 'user-123',
          status: null,
          page: 0,
          pageSize: 20,
        ),
      ).thenAnswer((_) async => ticketsResult);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.ok));
      final body = await response.json();
      expect(body['tickets'], isA<List>());
      expect(body['pagination']['totalCount'], equals(1));
    });

    test('passes status query parameter to repository', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.uri).thenReturn(
        Uri.parse('http://localhost/api/support?status=OPEN'),
      );

      when(
        () => supportTicketRepo.getTicketsByUserId(
          userId: 'user-123',
          status: 'OPEN',
          page: 0,
          pageSize: 20,
        ),
      ).thenAnswer(
        (_) async => {
          'tickets': <Map<String, dynamic>>[],
          'pagination': {
            'page': 0,
            'pageSize': 20,
            'totalCount': 0,
            'totalPages': 0,
          },
        },
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.ok));
      verify(
        () => supportTicketRepo.getTicketsByUserId(
          userId: 'user-123',
          status: 'OPEN',
          page: 0,
          pageSize: 20,
        ),
      ).called(1);
    });

    test('passes pagination query parameters to repository', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.uri).thenReturn(
        Uri.parse('http://localhost/api/support?page=2&pageSize=10'),
      );

      when(
        () => supportTicketRepo.getTicketsByUserId(
          userId: 'user-123',
          status: null,
          page: 2,
          pageSize: 10,
        ),
      ).thenAnswer(
        (_) async => {
          'tickets': <Map<String, dynamic>>[],
          'pagination': {
            'page': 2,
            'pageSize': 10,
            'totalCount': 25,
            'totalPages': 3,
          },
        },
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.ok));
      verify(
        () => supportTicketRepo.getTicketsByUserId(
          userId: 'user-123',
          status: null,
          page: 2,
          pageSize: 10,
        ),
      ).called(1);
    });

    test('returns 500 on internal error', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.uri).thenReturn(
        Uri.parse('http://localhost/api/support'),
      );

      when(
        () => supportTicketRepo.getTicketsByUserId(
          userId: 'user-123',
          status: null,
          page: 0,
          pageSize: 20,
        ),
      ).thenThrow(Exception('Database error'));

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.internalServerError));
      final body = await response.json();
      expect(body['error']['message'], contains('Failed to fetch tickets'));
    });
  });

  group('POST /api/support', () {
    setUp(() {
      when(() => request.method).thenReturn(HttpMethod.post);
    });

    test('returns 401 when no auth token is provided', () async {
      when(() => request.headers).thenReturn({});

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.unauthorized));
    });

    test('returns 401 when auth token is invalid', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer bad-token',
      });
      when(() => jwtService.tryVerify('bad-token')).thenReturn(null);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.unauthorized));
    });

    test('returns 400 when title is missing', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'description': 'Some description',
        },
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('Title is required'));
    });

    test('returns 400 when title is empty', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'title': '',
          'description': 'Some description',
        },
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('Title is required'));
    });

    test('returns 400 when description is missing', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'title': 'My Issue',
        },
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('Description is required'));
    });

    test('returns 400 when description is empty', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'title': 'My Issue',
          'description': '',
        },
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('Description is required'));
    });

    test('returns 201 on successful ticket creation', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'title': 'Payment Failed',
          'description': 'My payment did not go through',
          'issueType': 'PAYMENT_FAILED',
          'priority': 'HIGH',
        },
      );

      final ticketResult = {
        'id': 'ticket-789',
        'title': 'Payment Failed',
        'description': 'My payment did not go through',
        'status': 'OPEN',
        'priority': 'HIGH',
        'issueType': 'PAYMENT_FAILED',
        'userId': 'user-123',
      };

      when(
        () => supportTicketRepo.createTicket(
          userId: 'user-123',
          title: 'Payment Failed',
          description: 'My payment did not go through',
          issueType: 'PAYMENT_FAILED',
          priority: 'HIGH',
          category: null,
          consultationId: null,
          subscriptionId: null,
          paymentId: null,
        ),
      ).thenAnswer((_) async => ticketResult);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.created));
      final body = await response.json();
      expect(body['id'], equals('ticket-789'));
      expect(body['status'], equals('OPEN'));
    });

    test('returns 201 with optional linked entities', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'title': 'Refund Request',
          'description': 'I need a refund for my consultation',
          'issueType': 'REFUND_REQUEST',
          'consultationId': 'consultation-abc',
          'paymentId': 'payment-xyz',
        },
      );

      final ticketResult = {
        'id': 'ticket-999',
        'title': 'Refund Request',
        'description': 'I need a refund for my consultation',
        'status': 'OPEN',
        'priority': 'MEDIUM',
        'userId': 'user-123',
      };

      when(
        () => supportTicketRepo.createTicket(
          userId: 'user-123',
          title: 'Refund Request',
          description: 'I need a refund for my consultation',
          issueType: 'REFUND_REQUEST',
          priority: null,
          category: null,
          consultationId: 'consultation-abc',
          subscriptionId: null,
          paymentId: 'payment-xyz',
        ),
      ).thenAnswer((_) async => ticketResult);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.created));
    });

    test('returns 400 on invalid request body format', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenThrow(const FormatException());

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('Invalid request body'));
    });

    test('returns 500 on unexpected error', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'title': 'Test Issue',
          'description': 'Test description',
        },
      );

      when(
        () => supportTicketRepo.createTicket(
          userId: 'user-123',
          title: 'Test Issue',
          description: 'Test description',
          issueType: null,
          priority: null,
          category: null,
          consultationId: null,
          subscriptionId: null,
          paymentId: null,
        ),
      ).thenThrow(Exception('Database error'));

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.internalServerError));
      final body = await response.json();
      expect(body['error']['message'], contains('Failed to create ticket'));
    });
  });

  group('Non-GET/POST methods', () {
    test('PUT returns 405 Method Not Allowed', () async {
      when(() => request.method).thenReturn(HttpMethod.put);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
    });

    test('DELETE returns 405 Method Not Allowed', () async {
      when(() => request.method).thenReturn(HttpMethod.delete);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
    });
  });
}
