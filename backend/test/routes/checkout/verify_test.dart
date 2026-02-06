import 'dart:io' as io;

import 'package:backend/database/database_client.dart' hide Platform;
import 'package:backend/database/repositories/checkout_repository.dart';
import 'package:backend/services/auth/jwt_service.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

import '../../../routes/api/checkout/verify.dart' as route;

class _MockRequestContext extends Mock implements RequestContext {}

class _MockRequest extends Mock implements Request {}

class _MockDatabaseClient extends Mock implements DatabaseClient {}

class _MockJwtService extends Mock implements JwtService {}

class _MockCheckoutRepository extends Mock implements CheckoutRepository {}

class _MockQueryExecutor extends Mock implements QueryExecutor {}

class _FakeJsonQuery extends Fake implements JsonQuery {}

void main() {
  setUpAll(() {
    registerFallbackValue(_FakeJsonQuery());
  });

  late _MockRequestContext context;
  late _MockRequest request;
  late _MockDatabaseClient db;
  late _MockJwtService jwtService;
  late _MockCheckoutRepository checkoutRepo;
  late _MockQueryExecutor executor;

  setUp(() {
    context = _MockRequestContext();
    request = _MockRequest();
    db = _MockDatabaseClient();
    jwtService = _MockJwtService();
    checkoutRepo = _MockCheckoutRepository();
    executor = _MockQueryExecutor();

    when(() => context.request).thenReturn(request);
    when(() => context.read<DatabaseClient>()).thenReturn(db);
    when(() => context.read<JwtService>()).thenReturn(jwtService);

    when(() => db.checkout).thenReturn(checkoutRepo);
    when(() => db.executor).thenReturn(executor);
  });

  group('GET /api/checkout/verify', () {
    setUp(() {
      when(() => request.method).thenReturn(HttpMethod.get);
    });

    test('returns 401 when no auth token is provided', () async {
      when(() => request.headers).thenReturn({});

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(io.HttpStatus.unauthorized));
      final body = await response.json();
      expect(body['error']['message'], equals('Unauthorized'));
    });

    test('returns 401 when auth token is invalid', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer bad-token',
      });
      when(() => jwtService.tryVerify('bad-token')).thenReturn(null);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(io.HttpStatus.unauthorized));
    });

    test('returns 400 when payment_intent query param is missing', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.uri).thenReturn(
        Uri.parse('http://localhost/api/checkout/verify'),
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(io.HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('payment_intent'));
    });

    test('returns 400 when payment_intent query param is empty', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.uri).thenReturn(
        Uri.parse('http://localhost/api/checkout/verify?payment_intent='),
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(io.HttpStatus.badRequest));
    });

    test('returns 404 when payment is not found', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.uri).thenReturn(
        Uri.parse(
          'http://localhost/api/checkout/verify?payment_intent=pi_unknown',
        ),
      );
      when(
        () => executor.executeQueryAsSingleMap(any()),
      ).thenAnswer((_) async => null);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(io.HttpStatus.notFound));
      final body = await response.json();
      expect(body['success'], isFalse);
      expect(body['paymentStatus'], equals('FAILED'));
    });

    test('returns already-processed status if payment is SUCCEEDED', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.uri).thenReturn(
        Uri.parse(
          'http://localhost/api/checkout/verify?payment_intent=pi_abc',
        ),
      );

      // First call returns the payment record
      when(
        () => executor.executeQueryAsSingleMap(any()),
      ).thenAnswer((_) async => {
            'id': 'pay-123',
            'appointmentId': null,
            'paymentStatus': 'SUCCEEDED',
          });

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(io.HttpStatus.ok));
      final body = await response.json();
      expect(body['success'], isTrue);
      expect(body['paymentStatus'], equals('SUCCEEDED'));
    });

    test('returns already-processed status if payment is FAILED', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.uri).thenReturn(
        Uri.parse(
          'http://localhost/api/checkout/verify?payment_intent=pi_abc',
        ),
      );

      when(
        () => executor.executeQueryAsSingleMap(any()),
      ).thenAnswer((_) async => {
            'id': 'pay-123',
            'appointmentId': null,
            'paymentStatus': 'FAILED',
          });

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(io.HttpStatus.ok));
      final body = await response.json();
      expect(body['success'], isFalse);
      expect(body['paymentStatus'], equals('FAILED'));
    });

    test('returns 400 when Razorpay verification params are missing', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.uri).thenReturn(
        Uri.parse(
          'http://localhost/api/checkout/verify?payment_intent=pi_pending',
        ),
      );

      // Payment exists but is PENDING (not yet processed)
      when(
        () => executor.executeQueryAsSingleMap(any()),
      ).thenAnswer((_) async => {
            'id': 'pay-123',
            'appointmentId': null,
            'paymentStatus': 'PENDING',
          });

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(io.HttpStatus.badRequest));
      final body = await response.json();
      expect(
        body['error']['message'],
        contains('Missing Razorpay verification parameters'),
      );
    });
  });

  group('Non-GET methods', () {
    test('POST returns 405 Method Not Allowed', () async {
      when(() => request.method).thenReturn(HttpMethod.post);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(io.HttpStatus.methodNotAllowed));
    });

    test('PUT returns 405 Method Not Allowed', () async {
      when(() => request.method).thenReturn(HttpMethod.put);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(io.HttpStatus.methodNotAllowed));
    });

    test('DELETE returns 405 Method Not Allowed', () async {
      when(() => request.method).thenReturn(HttpMethod.delete);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(io.HttpStatus.methodNotAllowed));
    });
  });
}
