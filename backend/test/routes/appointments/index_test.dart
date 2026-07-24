import 'dart:io';

import 'package:backend/database/database_client.dart' hide Platform;
import 'package:backend/database/repositories/appointment_repository.dart';
import 'package:backend/database/repositories/consultee_profile_repository.dart';
import 'package:backend/services/auth/jwt_service.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../routes/api/appointments/index.dart' as route;

class _MockRequestContext extends Mock implements RequestContext {}

class _MockRequest extends Mock implements Request {}

class _MockDatabaseClient extends Mock implements DatabaseClient {}

class _MockJwtService extends Mock implements JwtService {}

class _MockAppointmentRepository extends Mock
    implements AppointmentRepository {}

class _MockConsulteeProfileRepository extends Mock
    implements ConsulteeProfileRepository {}

void main() {
  late _MockRequestContext context;
  late _MockRequest request;
  late _MockDatabaseClient db;
  late _MockJwtService jwtService;
  late _MockAppointmentRepository appointmentRepo;
  late _MockConsulteeProfileRepository consulteeProfileRepo;

  setUp(() {
    context = _MockRequestContext();
    request = _MockRequest();
    db = _MockDatabaseClient();
    jwtService = _MockJwtService();
    appointmentRepo = _MockAppointmentRepository();
    consulteeProfileRepo = _MockConsulteeProfileRepository();

    when(() => context.request).thenReturn(request);
    when(() => context.read<DatabaseClient>()).thenReturn(db);
    when(() => context.read<JwtService>()).thenReturn(jwtService);

    when(() => db.appointments).thenReturn(appointmentRepo);
    when(() => db.consulteeProfiles).thenReturn(consulteeProfileRepo);
  });

  group('GET /api/appointments', () {
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

    test('returns 200 with bookings list on success', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.uri).thenReturn(
        Uri.parse('http://localhost/api/appointments'),
      );

      final bookingsResult = {
        'bookings': <Map<String, dynamic>>[
          {
            'id': 'booking-1',
            'type': 'CONSULTATION',
            'status': 'SCHEDULED',
          },
        ],
        'pagination': {
          'page': 0,
          'pageSize': 10,
          'totalCount': 1,
        },
      };

      when(
        () => appointmentRepo.getMyBookings(
          userId: 'user-123',
          status: null,
          asConsultant: false,
        ),
      ).thenAnswer((_) async => bookingsResult);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.ok));
      final body = await response.json();
      expect(body['bookings'], isA<List>());
    });

    test('passes status query parameter to repository', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.uri).thenReturn(
        Uri.parse('http://localhost/api/appointments?status=PENDING'),
      );

      when(
        () => appointmentRepo.getMyBookings(
          userId: 'user-123',
          status: 'PENDING',
          asConsultant: false,
        ),
      ).thenAnswer(
        (_) async => {
          'bookings': <Map<String, dynamic>>[],
          'pagination': {
            'page': 0,
            'pageSize': 10,
            'totalCount': 0,
          },
        },
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.ok));
      verify(
        () => appointmentRepo.getMyBookings(
          userId: 'user-123',
          status: 'PENDING',
          asConsultant: false,
        ),
      ).called(1);
    });

    test('passes role=consultant query parameter to repository', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.uri).thenReturn(
        Uri.parse('http://localhost/api/appointments?role=consultant'),
      );

      when(
        () => appointmentRepo.getMyBookings(
          userId: 'user-123',
          status: null,
          asConsultant: true,
        ),
      ).thenAnswer(
        (_) async => {
          'bookings': <Map<String, dynamic>>[],
          'pagination': {
            'page': 0,
            'pageSize': 10,
            'totalCount': 0,
          },
        },
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.ok));
      verify(
        () => appointmentRepo.getMyBookings(
          userId: 'user-123',
          status: null,
          asConsultant: true,
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
        Uri.parse('http://localhost/api/appointments'),
      );

      when(
        () => appointmentRepo.getMyBookings(
          userId: 'user-123',
          status: null,
          asConsultant: false,
        ),
      ).thenThrow(Exception('Database error'));

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.internalServerError));
      final body = await response.json();
      expect(body['error']['message'], contains('Failed to fetch bookings'));
    });
  });

  group('POST /api/appointments', () {
    setUp(() {
      when(() => request.method).thenReturn(HttpMethod.post);
    });

    test('returns 401 when no auth token is provided', () async {
      when(() => request.headers).thenReturn({});

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
        (_) async => {
          'type': 'CONSULTATION',
          // Missing consultantProfileId and planId
        },
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('Missing required fields'));
    });

    test('returns 400 when user has no consultee profile', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'type': 'CONSULTATION',
          'consultantProfileId': 'consultant-123',
          'planId': 'plan-123',
          'slotStartTimes': ['2025-06-15T09:00:00Z'],
        },
      );
      when(() => consulteeProfileRepo.findByUserId('user-123'))
          .thenAnswer((_) async => null);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('consultee profile'));
    });

    test('returns 400 when consultation has no slotStartTimes', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'type': 'CONSULTATION',
          'consultantProfileId': 'consultant-123',
          'planId': 'plan-123',
        },
      );
      when(() => consulteeProfileRepo.findByUserId('user-123')).thenAnswer(
          (_) async => {'id': 'consultee-456', 'userId': 'user-123'});

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('slotStartTimes'));
    });

    test('returns 201 on successful consultation booking', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'type': 'CONSULTATION',
          'consultantProfileId': 'consultant-123',
          'planId': 'plan-123',
          'slotStartTimes': ['2025-06-15T09:00:00Z'],
          'message': 'Looking forward to it',
        },
      );
      when(() => consulteeProfileRepo.findByUserId('user-123')).thenAnswer(
          (_) async => {'id': 'consultee-456', 'userId': 'user-123'});

      final bookingResult = {
        'id': 'booking-789',
        'requestStatus': 'PENDING',
        'consultationPlanId': 'plan-123',
      };

      when(
        () => appointmentRepo.createConsultationBooking(
          consultantProfileId: 'consultant-123',
          planId: 'plan-123',
          requestedById: 'consultee-456',
          userId: 'user-123',
          slotStartTimes: any(named: 'slotStartTimes'),
          message: 'Looking forward to it',
        ),
      ).thenAnswer((_) async => bookingResult);

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.created));
    });

    test('returns 400 for invalid booking type', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'type': 'INVALID_TYPE',
          'consultantProfileId': 'consultant-123',
          'planId': 'plan-123',
        },
      );
      when(() => consulteeProfileRepo.findByUserId('user-123')).thenAnswer(
          (_) async => {'id': 'consultee-456', 'userId': 'user-123'});

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(body['error']['message'], contains('Invalid type'));
    });

    test('returns 400 when subscription is missing schedulingPeriodStart',
        () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'type': 'SUBSCRIPTION',
          'consultantProfileId': 'consultant-123',
          'planId': 'plan-123',
        },
      );
      when(() => consulteeProfileRepo.findByUserId('user-123')).thenAnswer(
          (_) async => {'id': 'consultee-456', 'userId': 'user-123'});

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.badRequest));
      final body = await response.json();
      expect(
        body['error']['message'],
        contains('schedulingPeriodStart'),
      );
    });

    test('returns 409 on duplicate booking', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'type': 'CONSULTATION',
          'consultantProfileId': 'consultant-123',
          'planId': 'plan-123',
          'slotStartTimes': ['2025-06-15T09:00:00Z'],
        },
      );
      when(() => consulteeProfileRepo.findByUserId('user-123')).thenAnswer(
          (_) async => {'id': 'consultee-456', 'userId': 'user-123'});

      when(
        () => appointmentRepo.createConsultationBooking(
          consultantProfileId: 'consultant-123',
          planId: 'plan-123',
          requestedById: 'consultee-456',
          userId: 'user-123',
          slotStartTimes: any(named: 'slotStartTimes'),
          message: null,
        ),
      ).thenThrow(
        DuplicateBookingException(
          'You already have an active booking with this consultant',
        ),
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.conflict));
      final body = await response.json();
      expect(body['error']['code'], equals('DUPLICATE_BOOKING'));
    });

    test('returns 409 on slot conflict', () async {
      when(() => request.headers).thenReturn({
        'authorization': 'Bearer valid-token',
      });
      when(() => jwtService.tryVerify('valid-token')).thenReturn({
        'userId': 'user-123',
      });
      when(() => request.json()).thenAnswer(
        (_) async => {
          'type': 'CONSULTATION',
          'consultantProfileId': 'consultant-123',
          'planId': 'plan-123',
          'slotStartTimes': ['2025-06-15T09:00:00Z'],
        },
      );
      when(() => consulteeProfileRepo.findByUserId('user-123')).thenAnswer(
          (_) async => {'id': 'consultee-456', 'userId': 'user-123'});

      when(
        () => appointmentRepo.createConsultationBooking(
          consultantProfileId: 'consultant-123',
          planId: 'plan-123',
          requestedById: 'consultee-456',
          userId: 'user-123',
          slotStartTimes: any(named: 'slotStartTimes'),
          message: null,
        ),
      ).thenThrow(
        SlotConflictException(
          'Time slot conflicts with existing booking',
          ['2025-06-15T09:00:00Z'],
        ),
      );

      final response = await route.onRequest(context);

      expect(response.statusCode, equals(HttpStatus.conflict));
      final body = await response.json();
      expect(body['error']['code'], equals('SLOT_CONFLICT'));
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
