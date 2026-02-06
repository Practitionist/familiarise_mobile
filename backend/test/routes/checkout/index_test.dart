import 'dart:io';

import 'package:backend/database/database_client.dart' hide Platform;
import 'package:backend/database/repositories/appointment_repository.dart';
import 'package:backend/database/repositories/checkout_repository.dart';
import 'package:backend/database/repositories/consultee_profile_repository.dart';
import 'package:backend/services/auth/jwt_service.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

import '../../../routes/api/checkout/index.dart' as route;

class _MockRequestContext extends Mock implements RequestContext {}

class _MockRequest extends Mock implements Request {}

class _MockDatabaseClient extends Mock implements DatabaseClient {}

class _MockJwtService extends Mock implements JwtService {}

class _MockCheckoutRepository extends Mock implements CheckoutRepository {}

class _MockAppointmentRepository extends Mock
    implements AppointmentRepository {}

class _MockConsulteeProfileRepository extends Mock
    implements ConsulteeProfileRepository {}

class _MockDotEnv extends Mock implements DotEnv {}

class _MockQueryExecutor extends Mock implements QueryExecutor {}

void main() {
  late _MockRequestContext context;
  late _MockRequest request;
  late _MockDatabaseClient db;
  late _MockJwtService jwtService;
  late _MockCheckoutRepository checkoutRepo;
  late _MockAppointmentRepository appointmentRepo;
  late _MockConsulteeProfileRepository consulteeProfileRepo;
  late _MockDotEnv env;
  late _MockQueryExecutor executor;

  setUp(() {
    context = _MockRequestContext();
    request = _MockRequest();
    db = _MockDatabaseClient();
    jwtService = _MockJwtService();
    checkoutRepo = _MockCheckoutRepository();
    appointmentRepo = _MockAppointmentRepository();
    consulteeProfileRepo = _MockConsulteeProfileRepository();
    env = _MockDotEnv();
    executor = _MockQueryExecutor();

    when(() => context.request).thenReturn(request);
    when(() => context.read<DatabaseClient>()).thenReturn(db);
    when(() => context.read<JwtService>()).thenReturn(jwtService);
    when(() => context.read<DotEnv>()).thenReturn(env);

    when(() => db.checkout).thenReturn(checkoutRepo);
    when(() => db.appointments).thenReturn(appointmentRepo);
    when(() => db.consulteeProfiles).thenReturn(consulteeProfileRepo);
    when(() => db.executor).thenReturn(executor);
  });

  group('POST /api/checkout', () {
    setUp(() {
      when(() => request.method).thenReturn(HttpMethod.post);
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

    test('returns 400 when required fields are missing', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => <String, dynamic>{},
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(
        body['error']['code'],
        equals('MISSING_REQUIRED_FIELDS'),
      );
    });

    test(
        'returns 400 when neither bookingId nor consultantProfileId+planId provided',
        () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'appointmentType': 'CONSULTATION',
          'paymentGateway': 'RAZORPAY',
        },
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['code'], equals('INVALID_CHECKOUT_REQUEST'));
    });

    test('returns 404 when bookingId is not found (request-then-pay flow)',
        () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'bookingId': 'non-existent-booking',
          'appointmentType': 'CONSULTATION',
          'paymentGateway': 'RAZORPAY',
        },
      );
      when(
        () => checkoutRepo.getBookingById(
          'non-existent-booking',
          'CONSULTATION',
        ),
      ).thenAnswer((_) async => null);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.notFound));
      final body = await response.json();
      expect(body['error']['code'], equals('BOOKING_NOT_FOUND'));
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
  });

  group('Non-POST methods', () {
    test('GET returns 405 Method Not Allowed', () async {
      when(() => request.method).thenReturn(HttpMethod.get);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
    });

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
