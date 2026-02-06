import 'package:familiarise_mobile/core/errors/exceptions.dart';
import 'package:familiarise_mobile/data/datasources/remote/booking_remote_source.dart';
import 'package:familiarise_mobile/data/repositories/booking_repository_impl.dart';
import 'package:familiarise_mobile/domain/entities/booking/booking_entities.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Mock classes
class MockBookingRemoteSource extends Mock implements BookingRemoteSource {}

// Fallback values
class FakeConsultationBookingRequest extends Fake
    implements ConsultationBookingRequest {}

class FakeSubscriptionBookingRequest extends Fake
    implements SubscriptionBookingRequest {}

void main() {
  late BookingRepositoryImpl repository;
  late MockBookingRemoteSource mockRemoteSource;

  setUpAll(() {
    registerFallbackValue(FakeConsultationBookingRequest());
    registerFallbackValue(FakeSubscriptionBookingRequest());
    registerFallbackValue(BookingType.consultation);
  });

  setUp(() {
    mockRemoteSource = MockBookingRemoteSource();
    repository = BookingRepositoryImpl(remoteSource: mockRemoteSource);
  });

  // Test data
  const testBookingId = 'booking-123';
  const testConsultantProfileId = 'consultant-profile-1';
  const testPlanId = 'plan-1';

  final testBooking = Booking(
    id: testBookingId,
    bookingType: BookingType.consultation,
    status: RequestStatus.pending,
    consultantProfileId: testConsultantProfileId,
    consultantUserId: 'user-consultant-1',
    consultantName: 'Dr. Smith',
    planId: testPlanId,
    planTitle: 'Basic Consultation',
    planPrice: 1000.0,
    createdAt: DateTime(2024, 6, 1),
  );

  final testBookingsResponse = BookingsResponse(
    bookings: [testBooking],
    pagination: const BookingsPagination(
      page: 0,
      pageSize: 20,
      totalCount: 1,
      totalPages: 1,
    ),
  );

  group('createConsultationBooking', () {
    final request = ConsultationBookingRequest(
      consultantProfileId: testConsultantProfileId,
      planId: testPlanId,
      slotStartTimes: [DateTime(2024, 7, 1, 10, 0)],
      message: 'Hello',
    );

    test('should return Booking when creation is successful', () async {
      // Arrange
      when(() => mockRemoteSource.createConsultationBooking(any()))
          .thenAnswer((_) async => testBooking);

      // Act
      final result = await repository.createConsultationBooking(request);

      // Assert
      expect(result.id, testBookingId);
      expect(result.bookingType, BookingType.consultation);
      verify(() => mockRemoteSource.createConsultationBooking(request))
          .called(1);
    });

    test('should throw ServerException when remote source fails', () async {
      // Arrange
      when(() => mockRemoteSource.createConsultationBooking(any()))
          .thenThrow(const ServerException(
        message: 'Failed to create booking',
        statusCode: 500,
      ));

      // Act & Assert
      expect(
        () => repository.createConsultationBooking(request),
        throwsA(isA<ServerException>()),
      );
    });

    test('should throw SlotConflictException when slot is taken', () async {
      // Arrange
      when(() => mockRemoteSource.createConsultationBooking(any()))
          .thenThrow(const SlotConflictException(
        message: 'Slot no longer available',
      ));

      // Act & Assert
      expect(
        () => repository.createConsultationBooking(request),
        throwsA(isA<SlotConflictException>()),
      );
    });
  });

  group('createSubscriptionBooking', () {
    final request = SubscriptionBookingRequest(
      consultantProfileId: testConsultantProfileId,
      planId: testPlanId,
      schedulingPeriodStart: DateTime(2024, 7, 1),
    );

    final subscriptionBooking = Booking(
      id: 'sub-booking-1',
      bookingType: BookingType.subscription,
      status: RequestStatus.pending,
      consultantProfileId: testConsultantProfileId,
      consultantUserId: 'user-consultant-1',
      consultantName: 'Dr. Smith',
    );

    test('should return Booking when subscription creation is successful',
        () async {
      // Arrange
      when(() => mockRemoteSource.createSubscriptionBooking(any()))
          .thenAnswer((_) async => subscriptionBooking);

      // Act
      final result = await repository.createSubscriptionBooking(request);

      // Assert
      expect(result.id, 'sub-booking-1');
      expect(result.bookingType, BookingType.subscription);
      verify(() => mockRemoteSource.createSubscriptionBooking(request))
          .called(1);
    });

    test('should throw when remote source fails', () async {
      // Arrange
      when(() => mockRemoteSource.createSubscriptionBooking(any()))
          .thenThrow(const ServerException(
        message: 'Failed',
        statusCode: 500,
      ));

      // Act & Assert
      expect(
        () => repository.createSubscriptionBooking(request),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('getMyBookings', () {
    test('should return BookingsResponse when fetch is successful', () async {
      // Arrange
      when(() => mockRemoteSource.getMyBookings(
            status: any(named: 'status'),
            role: any(named: 'role'),
          )).thenAnswer((_) async => testBookingsResponse);

      // Act
      final result = await repository.getMyBookings();

      // Assert
      expect(result.bookings.length, 1);
      expect(result.bookings.first.id, testBookingId);
      expect(result.pagination.totalCount, 1);
    });

    test('should pass status filter to remote source', () async {
      // Arrange
      when(() => mockRemoteSource.getMyBookings(
            status: any(named: 'status'),
            role: any(named: 'role'),
          )).thenAnswer((_) async => testBookingsResponse);

      // Act
      await repository.getMyBookings(status: 'PENDING');

      // Assert
      verify(() => mockRemoteSource.getMyBookings(status: 'PENDING'))
          .called(1);
    });

    test('should pass role filter to remote source', () async {
      // Arrange
      when(() => mockRemoteSource.getMyBookings(
            status: any(named: 'status'),
            role: any(named: 'role'),
          )).thenAnswer((_) async => testBookingsResponse);

      // Act
      await repository.getMyBookings(role: 'consultant');

      // Assert
      verify(() => mockRemoteSource.getMyBookings(role: 'consultant'))
          .called(1);
    });

    test('should throw when remote source fails', () async {
      // Arrange
      when(() => mockRemoteSource.getMyBookings(
            status: any(named: 'status'),
            role: any(named: 'role'),
          )).thenThrow(const ServerException(
        message: 'Failed to fetch bookings',
        statusCode: 500,
      ));

      // Act & Assert
      expect(
        () => repository.getMyBookings(),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('getBookingById', () {
    test('should return Booking when found', () async {
      // Arrange
      when(() => mockRemoteSource.getBookingById(
            id: any(named: 'id'),
            type: any(named: 'type'),
          )).thenAnswer((_) async => testBooking);

      // Act
      final result = await repository.getBookingById(
        id: testBookingId,
        type: BookingType.consultation,
      );

      // Assert
      expect(result.id, testBookingId);
      verify(() => mockRemoteSource.getBookingById(
            id: testBookingId,
            type: BookingType.consultation,
          )).called(1);
    });

    test('should throw NotFoundException when booking not found', () async {
      // Arrange
      when(() => mockRemoteSource.getBookingById(
            id: any(named: 'id'),
            type: any(named: 'type'),
          )).thenThrow(const NotFoundException(resource: 'Booking'));

      // Act & Assert
      expect(
        () => repository.getBookingById(
          id: 'nonexistent',
          type: BookingType.consultation,
        ),
        throwsA(isA<NotFoundException>()),
      );
    });
  });

  group('cancelBooking', () {
    test('should complete successfully when cancellation succeeds', () async {
      // Arrange
      when(() => mockRemoteSource.cancelBooking(
            id: any(named: 'id'),
            type: any(named: 'type'),
            reason: any(named: 'reason'),
          )).thenAnswer((_) async {});

      // Act & Assert - should not throw
      await repository.cancelBooking(
        id: testBookingId,
        type: BookingType.consultation,
        reason: 'Changed plans',
      );

      verify(() => mockRemoteSource.cancelBooking(
            id: testBookingId,
            type: BookingType.consultation,
            reason: 'Changed plans',
          )).called(1);
    });

    test('should throw when cancellation fails', () async {
      // Arrange
      when(() => mockRemoteSource.cancelBooking(
            id: any(named: 'id'),
            type: any(named: 'type'),
            reason: any(named: 'reason'),
          )).thenThrow(const ServerException(
        message: 'Cannot cancel',
        statusCode: 400,
      ));

      // Act & Assert
      expect(
        () => repository.cancelBooking(
          id: testBookingId,
          type: BookingType.consultation,
        ),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('rescheduleBooking', () {
    test('should return updated Booking when reschedule succeeds', () async {
      // Arrange
      final rescheduledBooking = Booking(
        id: testBookingId,
        bookingType: BookingType.consultation,
        status: RequestStatus.scheduled,
        slots: [
          BookingSlot(
            id: 'slot-new',
            startsAt: DateTime(2024, 7, 15, 10, 0),
            endsAt: DateTime(2024, 7, 15, 11, 0),
          ),
        ],
      );
      when(() => mockRemoteSource.rescheduleBooking(
            id: any(named: 'id'),
            type: any(named: 'type'),
            slotId: any(named: 'slotId'),
          )).thenAnswer((_) async => rescheduledBooking);

      // Act
      final result = await repository.rescheduleBooking(
        id: testBookingId,
        type: BookingType.consultation,
      );

      // Assert
      expect(result.id, testBookingId);
      expect(result.status, RequestStatus.scheduled);
    });

    test('should throw when booking not found', () async {
      // Arrange
      when(() => mockRemoteSource.rescheduleBooking(
            id: any(named: 'id'),
            type: any(named: 'type'),
            slotId: any(named: 'slotId'),
          )).thenThrow(const NotFoundException(resource: 'Booking'));

      // Act & Assert
      expect(
        () => repository.rescheduleBooking(
          id: 'nonexistent',
          type: BookingType.consultation,
        ),
        throwsA(isA<NotFoundException>()),
      );
    });
  });

  group('getConsultantAvailability', () {
    test('should return availability data', () async {
      // Arrange
      final availability = [
        DayAvailability(
          date: DateTime(2024, 7, 1),
          slots: [
            AvailabilitySlot(
              id: 'slot-1',
              startsAt: DateTime.now().add(const Duration(days: 1)),
              endsAt: DateTime.now().add(const Duration(days: 1, hours: 1)),
            ),
          ],
        ),
      ];
      when(() => mockRemoteSource.getConsultantAvailability(
            consultantProfileId: any(named: 'consultantProfileId'),
            startDate: any(named: 'startDate'),
            endDate: any(named: 'endDate'),
            planId: any(named: 'planId'),
            planType: any(named: 'planType'),
          )).thenAnswer((_) async => availability);

      // Act
      final result = await repository.getConsultantAvailability(
        consultantProfileId: testConsultantProfileId,
        startDate: DateTime(2024, 7, 1),
        endDate: DateTime(2024, 7, 7),
      );

      // Assert
      expect(result.length, 1);
      expect(result.first.slots.length, 1);
      expect(result.first.slots.first.isAvailable, true);
    });
  });

  group('getAllMyConsultants', () {
    test('should return deduplicated list of consultants sorted by date',
        () async {
      // Arrange
      final bookings = [
        Booking(
          id: 'b1',
          bookingType: BookingType.consultation,
          status: RequestStatus.scheduled,
          consultantUserId: 'consultant-1',
          consultantName: 'Dr. A',
          createdAt: DateTime(2024, 6, 1),
        ),
        Booking(
          id: 'b2',
          bookingType: BookingType.subscription,
          status: RequestStatus.scheduled,
          consultantUserId: 'consultant-1',
          consultantName: 'Dr. A',
          createdAt: DateTime(2024, 7, 1),
        ),
        Booking(
          id: 'b3',
          bookingType: BookingType.consultation,
          status: RequestStatus.pending,
          consultantUserId: 'consultant-2',
          consultantName: 'Dr. B',
          createdAt: DateTime(2024, 5, 1),
        ),
      ];

      when(() => mockRemoteSource.getMyBookings(
            status: any(named: 'status'),
            role: any(named: 'role'),
          )).thenAnswer((_) async => BookingsResponse(
            bookings: bookings,
            pagination: const BookingsPagination(
              page: 0,
              pageSize: 20,
              totalCount: 3,
              totalPages: 1,
            ),
          ));

      // Act
      final result = await repository.getAllMyConsultants();

      // Assert - should be deduplicated to 2 consultants
      expect(result.length, 2);
      // Should be sorted by most recent first
      expect(result.first.consultantUserId, 'consultant-1');
      expect(result.first.consultantName, 'Dr. A');
      // Dr. A should have both booking types
      expect(result.first.allBookingTypes.length, 2);
    });

    test('should handle group programs separately from 1:1 bookings',
        () async {
      // Arrange
      final bookings = [
        Booking(
          id: 'webinar-1',
          bookingType: BookingType.webinar,
          status: RequestStatus.scheduled,
          consultantUserId: 'consultant-1',
          consultantName: 'Dr. A',
          planTitle: 'Webinar Session',
          createdAt: DateTime(2024, 7, 1),
        ),
        Booking(
          id: 'consultation-1',
          bookingType: BookingType.consultation,
          status: RequestStatus.scheduled,
          consultantUserId: 'consultant-1',
          consultantName: 'Dr. A',
          createdAt: DateTime(2024, 6, 1),
        ),
      ];

      when(() => mockRemoteSource.getMyBookings(
            status: any(named: 'status'),
            role: any(named: 'role'),
          )).thenAnswer((_) async => BookingsResponse(
            bookings: bookings,
            pagination: const BookingsPagination(
              page: 0,
              pageSize: 20,
              totalCount: 2,
              totalPages: 1,
            ),
          ));

      // Act
      final result = await repository.getAllMyConsultants();

      // Assert - webinar and consultation are separate entries
      expect(result.length, 2);
    });

    test('should return empty list when no bookings', () async {
      // Arrange
      when(() => mockRemoteSource.getMyBookings(
            status: any(named: 'status'),
            role: any(named: 'role'),
          )).thenAnswer((_) async => const BookingsResponse(
            bookings: [],
            pagination: BookingsPagination(
              page: 0,
              pageSize: 20,
              totalCount: 0,
              totalPages: 0,
            ),
          ));

      // Act
      final result = await repository.getAllMyConsultants();

      // Assert
      expect(result, isEmpty);
    });
  });

  group('getAllMyClients', () {
    test('should fetch bookings with consultant role', () async {
      // Arrange
      when(() => mockRemoteSource.getMyBookings(
            status: any(named: 'status'),
            role: any(named: 'role'),
          )).thenAnswer((_) async => const BookingsResponse(
            bookings: [],
            pagination: BookingsPagination(
              page: 0,
              pageSize: 20,
              totalCount: 0,
              totalPages: 0,
            ),
          ));

      // Act
      await repository.getAllMyClients();

      // Assert
      verify(() => mockRemoteSource.getMyBookings(role: 'consultant'))
          .called(1);
    });

    test('should return deduplicated list of clients', () async {
      // Arrange
      final bookings = [
        Booking(
          id: 'b1',
          bookingType: BookingType.consultation,
          status: RequestStatus.scheduled,
          consulteeUserId: 'client-1',
          consulteeName: 'Client A',
          createdAt: DateTime(2024, 6, 1),
        ),
        Booking(
          id: 'b2',
          bookingType: BookingType.consultation,
          status: RequestStatus.completed,
          consulteeUserId: 'client-1',
          consulteeName: 'Client A',
          createdAt: DateTime(2024, 7, 1),
        ),
      ];

      when(() => mockRemoteSource.getMyBookings(
            status: any(named: 'status'),
            role: any(named: 'role'),
          )).thenAnswer((_) async => BookingsResponse(
            bookings: bookings,
            pagination: const BookingsPagination(
              page: 0,
              pageSize: 20,
              totalCount: 2,
              totalPages: 1,
            ),
          ));

      // Act
      final result = await repository.getAllMyClients();

      // Assert - should be deduplicated to 1 client
      expect(result.length, 1);
      expect(result.first.consultantName, 'Client A');
    });
  });
}
