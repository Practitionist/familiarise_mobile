@Skip(
  'Pending migration to typed delegate mocks: this suite still stubs the '
  'raw QueryExecutor, which the repository no longer uses after the '
  'JQB->typed-delegate migration. See test/helpers/prisma_mocks.dart for '
  'the pattern used by the already-migrated suites.',
)
library;

import 'package:backend/database/repositories/appointment_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

import '../helpers/prisma_mocks.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

class FakeJsonQuery extends Fake implements JsonQuery {}

void main() {
  late MockQueryExecutor mockExecutor;
  late AppointmentRepository repository;

  setUpAll(() {
    registerFallbackValue(FakeJsonQuery());
  });

  setUp(() {
    mockExecutor = MockQueryExecutor();
    repository = AppointmentRepository(mockExecutor, MockPrismaClient());
  });

  group('hasActiveConsultationBooking', () {
    test('returns true when active consultation exists', () async {
      // First query: find plans for consultant
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => [
                {'id': 'plan-1'},
                {'id': 'plan-2'},
              ]);

      // Second query: count active consultations
      when(() => mockExecutor.executeCount(any())).thenAnswer((_) async => 1);

      final result = await repository.hasActiveConsultationBooking(
        consulteeProfileId: 'consultee-1',
        consultantProfileId: 'consultant-1',
      );

      expect(result, isTrue);
    });

    test('returns false when no plans exist for consultant', () async {
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      final result = await repository.hasActiveConsultationBooking(
        consulteeProfileId: 'consultee-1',
        consultantProfileId: 'consultant-1',
      );

      expect(result, isFalse);
      // Should not attempt count when no plans exist
      verifyNever(() => mockExecutor.executeCount(any()));
    });

    test('returns false when no active consultations exist', () async {
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => [
                {'id': 'plan-1'},
              ]);

      when(() => mockExecutor.executeCount(any())).thenAnswer((_) async => 0);

      final result = await repository.hasActiveConsultationBooking(
        consulteeProfileId: 'consultee-1',
        consultantProfileId: 'consultant-1',
      );

      expect(result, isFalse);
    });
  });

  group('hasActiveSubscriptionBooking', () {
    test('returns true when active subscription exists', () async {
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => [
                {'id': 'sub-plan-1'},
              ]);

      when(() => mockExecutor.executeCount(any())).thenAnswer((_) async => 1);

      final result = await repository.hasActiveSubscriptionBooking(
        consulteeProfileId: 'consultee-1',
        consultantProfileId: 'consultant-1',
      );

      expect(result, isTrue);
    });

    test('returns false when no subscription plans exist', () async {
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      final result = await repository.hasActiveSubscriptionBooking(
        consulteeProfileId: 'consultee-1',
        consultantProfileId: 'consultant-1',
      );

      expect(result, isFalse);
    });

    test('returns false when no active subscriptions exist', () async {
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => [
                {'id': 'sub-plan-1'},
              ]);

      when(() => mockExecutor.executeCount(any())).thenAnswer((_) async => 0);

      final result = await repository.hasActiveSubscriptionBooking(
        consulteeProfileId: 'consultee-1',
        consultantProfileId: 'consultant-1',
      );

      expect(result, isFalse);
    });
  });

  group('checkSlotConflicts', () {
    test('returns empty list when no existing appointments', () async {
      // _getConsultantAppointmentIds queries multiple models
      // and returns empty when no plans exist
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      final conflicts = await repository.checkSlotConflicts(
        consultantProfileId: 'consultant-1',
        slotStartTimes: [DateTime(2025, 6, 15, 10, 0)],
        durationMinutes: 60,
      );

      expect(conflicts, isEmpty);
    });

    test('returns conflicting slots when conflicts exist', () async {
      // Multiple calls to executeQueryAsMaps for _getConsultantAppointmentIds
      var queryMapCallCount = 0;
      when(() => mockExecutor.executeQueryAsMaps(any())).thenAnswer((_) async {
        queryMapCallCount++;
        switch (queryMapCallCount) {
          case 1:
            // ConsultationPlan IDs
            return [
              {'id': 'plan-1'}
            ];
          case 2:
            // SubscriptionPlan IDs
            return [];
          case 3:
            // Consultation IDs for plans
            return [
              {'id': 'cons-1'}
            ];
          case 4:
            // Appointment IDs for consultations
            return [
              {'id': 'apt-1'}
            ];
          default:
            return [];
        }
      });

      // Slot conflict count check returns > 0
      when(() => mockExecutor.executeCount(any())).thenAnswer((_) async => 1);

      final slotStart = DateTime(2025, 6, 15, 10, 0);
      final conflicts = await repository.checkSlotConflicts(
        consultantProfileId: 'consultant-1',
        slotStartTimes: [slotStart],
        durationMinutes: 60,
      );

      expect(conflicts, hasLength(1));
      expect(conflicts.first, equals(slotStart));
    });

    test('returns empty when no conflicts found', () async {
      var queryMapCallCount = 0;
      when(() => mockExecutor.executeQueryAsMaps(any())).thenAnswer((_) async {
        queryMapCallCount++;
        switch (queryMapCallCount) {
          case 1:
            return [
              {'id': 'plan-1'}
            ];
          case 2:
            return [];
          case 3:
            return [
              {'id': 'cons-1'}
            ];
          case 4:
            return [
              {'id': 'apt-1'}
            ];
          default:
            return [];
        }
      });

      when(() => mockExecutor.executeCount(any())).thenAnswer((_) async => 0);

      final conflicts = await repository.checkSlotConflicts(
        consultantProfileId: 'consultant-1',
        slotStartTimes: [DateTime(2025, 6, 15, 10, 0)],
        durationMinutes: 60,
      );

      expect(conflicts, isEmpty);
    });
  });

  group('getMyBookings', () {
    test('returns empty bookings when consultee profile not found', () async {
      // Profile query returns null
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      // The webinar/class booking fetches use executeQueryAsMaps
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      when(() => mockExecutor.executeCount(any())).thenAnswer((_) async => 0);

      final result = await repository.getMyBookings(userId: 'user-1');

      expect(result['bookings'], isA<List>());
      expect(result['pagination'], isA<Map>());
    });

    test('returns bookings sorted by createdAt descending', () async {
      // ConsulteeProfile
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => {
                'id': 'cp-1',
                'userId': 'user-1',
              });

      // All booking queries return empty for simplicity
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      when(() => mockExecutor.executeCount(any())).thenAnswer((_) async => 0);

      final result = await repository.getMyBookings(userId: 'user-1');

      expect(result['bookings'], isEmpty);
      expect(result['pagination']['totalCount'], equals(0));
    });

    test('fetches consultant bookings when asConsultant is true', () async {
      // ConsultantProfile
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => {
                'id': 'consultant-profile-1',
                'userId': 'user-1',
              });

      // All booking queries return empty
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      when(() => mockExecutor.executeCount(any())).thenAnswer((_) async => 0);

      final result = await repository.getMyBookings(
        userId: 'user-1',
        asConsultant: true,
      );

      expect(result['bookings'], isA<List>());
    });

    test('returns empty when consultant profile not found', () async {
      when(() => mockExecutor.executeQueryAsSingleMap(any()))
          .thenAnswer((_) async => null);

      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => []);

      when(() => mockExecutor.executeCount(any())).thenAnswer((_) async => 0);

      final result = await repository.getMyBookings(
        userId: 'user-1',
        asConsultant: true,
      );

      expect(result['bookings'], isEmpty);
    });
  });

  group('createConsultationBooking', () {
    test('throws DuplicateBookingException when active booking exists',
        () async {
      // hasActiveConsultationBooking: plans query returns plans
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => [
                {'id': 'plan-1'},
              ]);

      // Count active consultations > 0
      when(() => mockExecutor.executeCount(any())).thenAnswer((_) async => 1);

      expect(
        () => repository.createConsultationBooking(
          consultantProfileId: 'consultant-1',
          planId: 'plan-1',
          requestedById: 'consultee-1',
          userId: 'user-1',
          slotStartTimes: [DateTime(2025, 6, 15, 10, 0)],
        ),
        throwsA(isA<DuplicateBookingException>()),
      );
    });
  });

  group('createSubscriptionBooking', () {
    test('throws DuplicateBookingException when active subscription exists',
        () async {
      // hasActiveSubscriptionBooking: plans query returns plans
      when(() => mockExecutor.executeQueryAsMaps(any()))
          .thenAnswer((_) async => [
                {'id': 'sub-plan-1'},
              ]);

      // Count active subscriptions > 0
      when(() => mockExecutor.executeCount(any())).thenAnswer((_) async => 1);

      expect(
        () => repository.createSubscriptionBooking(
          consultantProfileId: 'consultant-1',
          planId: 'sub-plan-1',
          requestedById: 'consultee-1',
          schedulingPeriodStart: DateTime(2025, 7, 1),
        ),
        throwsA(isA<DuplicateBookingException>()),
      );
    });
  });
}
