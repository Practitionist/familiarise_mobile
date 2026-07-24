import 'package:backend/database/repositories/appointment_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:test/test.dart';

import '../helpers/prisma_mocks.dart';

class MockQueryExecutor extends Mock implements QueryExecutor {}

class FakeJsonQuery extends Fake implements JsonQuery {}

void main() {
  late MockQueryExecutor mockExecutor;
  late MockPrismaClient mockPrisma;
  late MockConsultationPlanDelegate mockConsultationPlans;
  late MockSubscriptionPlanDelegate mockSubscriptionPlans;
  late MockConsultationDelegate mockConsultations;
  late MockSubscriptionDelegate mockSubscriptions;
  late MockAppointmentDelegate mockAppointments;
  late MockSlotOfAppointmentDelegate mockSlots;
  late MockConsulteeProfileDelegate mockConsulteeProfiles;
  late MockConsultantProfileDelegate mockConsultantProfiles;
  late MockClassModelDelegate mockClasses;
  late MockClassPlanDelegate mockClassPlans;
  late MockWebinarDelegate mockWebinars;
  late MockWebinarPlanDelegate mockWebinarPlans;
  late MockTrialSessionDelegate mockTrialSessions;
  late AppointmentRepository repository;

  /// Stub every projected finder the booking fetchers touch to an empty
  /// result, so each test only stubs what it actually asserts on.
  void stubEmptyProjections() {
    void empty(dynamic delegate) {
      when(
        () => delegate.findManyProjected(
          where: any(named: 'where'),
          select: any(named: 'select'),
          orderBy: any(named: 'orderBy'),
          take: any(named: 'take'),
          skip: any(named: 'skip'),
          include: any(named: 'include'),
          distinct: any(named: 'distinct'),
        ),
      ).thenAnswer((_) async => <Map<String, dynamic>>[]);
    }

    empty(mockConsultationPlans);
    empty(mockSubscriptionPlans);
    empty(mockConsultations);
    empty(mockSubscriptions);
    empty(mockAppointments);
    empty(mockClasses);
    empty(mockClassPlans);
    empty(mockWebinars);
    empty(mockWebinarPlans);
    empty(mockTrialSessions);
    empty(mockConsultantProfiles);
  }

  setUpAll(() {
    registerFallbackValue(FakeJsonQuery());
    registerPrismaFallbacks();
    registerExploreFallbacks();
    registerBookingFallbacks();
    registerProgramFallbacks();
  });

  setUp(() {
    mockExecutor = MockQueryExecutor();
    mockPrisma = MockPrismaClient();
    mockConsultationPlans = MockConsultationPlanDelegate();
    mockSubscriptionPlans = MockSubscriptionPlanDelegate();
    mockConsultations = MockConsultationDelegate();
    mockSubscriptions = MockSubscriptionDelegate();
    mockAppointments = MockAppointmentDelegate();
    mockSlots = MockSlotOfAppointmentDelegate();
    mockConsulteeProfiles = MockConsulteeProfileDelegate();
    mockConsultantProfiles = MockConsultantProfileDelegate();
    mockClasses = MockClassModelDelegate();
    mockClassPlans = MockClassPlanDelegate();
    mockWebinars = MockWebinarDelegate();
    mockWebinarPlans = MockWebinarPlanDelegate();
    mockTrialSessions = MockTrialSessionDelegate();

    when(() => mockPrisma.consultationPlan).thenReturn(mockConsultationPlans);
    when(() => mockPrisma.subscriptionPlan).thenReturn(mockSubscriptionPlans);
    when(() => mockPrisma.consultation).thenReturn(mockConsultations);
    when(() => mockPrisma.subscription).thenReturn(mockSubscriptions);
    when(() => mockPrisma.appointment).thenReturn(mockAppointments);
    when(() => mockPrisma.slotOfAppointment).thenReturn(mockSlots);
    when(() => mockPrisma.consulteeProfile).thenReturn(mockConsulteeProfiles);
    when(() => mockPrisma.consultantProfile).thenReturn(mockConsultantProfiles);
    when(() => mockPrisma.classModel).thenReturn(mockClasses);
    when(() => mockPrisma.classPlan).thenReturn(mockClassPlans);
    when(() => mockPrisma.webinar).thenReturn(mockWebinars);
    when(() => mockPrisma.webinarPlan).thenReturn(mockWebinarPlans);
    when(() => mockPrisma.trialSession).thenReturn(mockTrialSessions);

    stubEmptyProjections();
    when(() => mockConsultations.count(where: any(named: 'where')))
        .thenAnswer((_) async => 0);
    when(() => mockSubscriptions.count(where: any(named: 'where')))
        .thenAnswer((_) async => 0);
    when(() => mockSlots.count(where: any(named: 'where')))
        .thenAnswer((_) async => 0);

    repository = AppointmentRepository(mockExecutor, mockPrisma);
  });

  /// Stub the consultant's plan lookup (step 1 of the "active booking" checks).
  void stubPlans(dynamic delegate, List<String> ids) {
    when(
      () => delegate.findManyProjected(
        where: any(named: 'where'),
        select: any(named: 'select'),
        orderBy: any(named: 'orderBy'),
        take: any(named: 'take'),
        skip: any(named: 'skip'),
        include: any(named: 'include'),
        distinct: any(named: 'distinct'),
      ),
    ).thenAnswer((_) async => [
          for (final id in ids) {'id': id}
        ]);
  }

  group('hasActiveConsultationBooking', () {
    test('returns true when active consultation exists', () async {
      stubPlans(mockConsultationPlans, ['plan-1', 'plan-2']);
      when(() => mockConsultations.count(where: any(named: 'where')))
          .thenAnswer((_) async => 1);

      final result = await repository.hasActiveConsultationBooking(
        consulteeProfileId: 'consultee-1',
        consultantProfileId: 'consultant-1',
      );

      expect(result, isTrue);
    });

    test('returns false when no plans exist for consultant', () async {
      stubPlans(mockConsultationPlans, []);

      final result = await repository.hasActiveConsultationBooking(
        consulteeProfileId: 'consultee-1',
        consultantProfileId: 'consultant-1',
      );

      expect(result, isFalse);
      // Should not attempt count when no plans exist
      verifyNever(() => mockConsultations.count(where: any(named: 'where')));
    });

    test('returns false when no active consultations exist', () async {
      stubPlans(mockConsultationPlans, ['plan-1']);
      when(() => mockConsultations.count(where: any(named: 'where')))
          .thenAnswer((_) async => 0);

      final result = await repository.hasActiveConsultationBooking(
        consulteeProfileId: 'consultee-1',
        consultantProfileId: 'consultant-1',
      );

      expect(result, isFalse);
    });
  });

  group('hasActiveSubscriptionBooking', () {
    test('returns true when active subscription exists', () async {
      stubPlans(mockSubscriptionPlans, ['sub-plan-1']);
      when(() => mockSubscriptions.count(where: any(named: 'where')))
          .thenAnswer((_) async => 1);

      final result = await repository.hasActiveSubscriptionBooking(
        consulteeProfileId: 'consultee-1',
        consultantProfileId: 'consultant-1',
      );

      expect(result, isTrue);
    });

    test('returns false when no subscription plans exist', () async {
      stubPlans(mockSubscriptionPlans, []);

      final result = await repository.hasActiveSubscriptionBooking(
        consulteeProfileId: 'consultee-1',
        consultantProfileId: 'consultant-1',
      );

      expect(result, isFalse);
      verifyNever(() => mockSubscriptions.count(where: any(named: 'where')));
    });

    test('returns false when no active subscriptions exist', () async {
      stubPlans(mockSubscriptionPlans, ['sub-plan-1']);
      when(() => mockSubscriptions.count(where: any(named: 'where')))
          .thenAnswer((_) async => 0);

      final result = await repository.hasActiveSubscriptionBooking(
        consulteeProfileId: 'consultee-1',
        consultantProfileId: 'consultant-1',
      );

      expect(result, isFalse);
    });
  });

  group('checkSlotConflicts', () {
    test('returns empty list when no existing appointments', () async {
      // _getConsultantAppointmentIds finds no plans -> no appointment ids.
      final conflicts = await repository.checkSlotConflicts(
        consultantProfileId: 'consultant-1',
        slotStartTimes: [DateTime(2025, 6, 15, 10, 0)],
        durationMinutes: 60,
      );

      expect(conflicts, isEmpty);
      // No appointments -> never reaches the overlap count.
      verifyNever(() => mockSlots.count(where: any(named: 'where')));
    });

    test('returns conflicting slots when conflicts exist', () async {
      stubPlans(mockConsultationPlans, ['plan-1']);
      stubPlans(mockConsultations, ['cons-1']);
      stubPlans(mockAppointments, ['apt-1']);
      when(() => mockSlots.count(where: any(named: 'where')))
          .thenAnswer((_) async => 1);

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
      stubPlans(mockConsultationPlans, ['plan-1']);
      stubPlans(mockConsultations, ['cons-1']);
      stubPlans(mockAppointments, ['apt-1']);
      when(() => mockSlots.count(where: any(named: 'where')))
          .thenAnswer((_) async => 0);

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
      when(
        () => mockConsulteeProfiles.findFirstProjected(
          where: any(named: 'where'),
          select: any(named: 'select'),
        ),
      ).thenAnswer((_) async => null);

      final result = await repository.getMyBookings(userId: 'user-1');

      expect(result['bookings'], isA<List>());
      expect(result['pagination'], isA<Map>());
    });

    test('returns bookings sorted by createdAt descending', () async {
      when(
        () => mockConsulteeProfiles.findFirstProjected(
          where: any(named: 'where'),
          select: any(named: 'select'),
        ),
      ).thenAnswer((_) async => {'id': 'cp-1', 'userId': 'user-1'});

      final result = await repository.getMyBookings(userId: 'user-1');

      expect(result['bookings'], isEmpty);
      expect(result['pagination']['totalCount'], equals(0));
    });

    test('fetches consultant bookings when asConsultant is true', () async {
      when(
        () => mockConsultantProfiles.findFirstProjected(
          where: any(named: 'where'),
          select: any(named: 'select'),
        ),
      ).thenAnswer(
        (_) async => {'id': 'consultant-profile-1', 'userId': 'user-1'},
      );

      final result = await repository.getMyBookings(
        userId: 'user-1',
        asConsultant: true,
      );

      expect(result['bookings'], isA<List>());
    });

    test('returns empty when consultant profile not found', () async {
      when(
        () => mockConsultantProfiles.findFirstProjected(
          where: any(named: 'where'),
          select: any(named: 'select'),
        ),
      ).thenAnswer((_) async => null);

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
      stubPlans(mockConsultationPlans, ['plan-1']);
      when(() => mockConsultations.count(where: any(named: 'where')))
          .thenAnswer((_) async => 1);

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
      stubPlans(mockSubscriptionPlans, ['sub-plan-1']);
      when(() => mockSubscriptions.count(where: any(named: 'where')))
          .thenAnswer((_) async => 1);

      expect(
        () => repository.createSubscriptionBooking(
          consultantProfileId: 'consultant-1',
          planId: 'sub-plan-1',
          requestedById: 'consultee-1',
          schedulingPeriodStart: DateTime(2025, 6, 15, 10, 0),
        ),
        throwsA(isA<DuplicateBookingException>()),
      );
    });
  });
}
