import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/booking/booking_entities.dart';
import '../../domain/entities/chat/chat_entities.dart';
import '../../domain/repositories/booking_repository.dart';
import '../datasources/remote/booking_remote_source.dart';

part 'booking_repository_impl.g.dart';

/// Provider for BookingRepository
@riverpod
BookingRepository bookingRepository(Ref ref) {
  return BookingRepositoryImpl(
    remoteSource: ref.watch(bookingRemoteSourceProvider),
  );
}

/// Implementation of BookingRepository
class BookingRepositoryImpl implements BookingRepository {
  final BookingRemoteSource _remoteSource;

  BookingRepositoryImpl({required BookingRemoteSource remoteSource})
      : _remoteSource = remoteSource;

  @override
  Future<List<DayAvailability>> getConsultantAvailability({
    required String consultantProfileId,
    required DateTime startDate,
    required DateTime endDate,
    String? planId,
    String? planType,
  }) {
    return _remoteSource.getConsultantAvailability(
      consultantProfileId: consultantProfileId,
      startDate: startDate,
      endDate: endDate,
      planId: planId,
      planType: planType,
    );
  }

  @override
  Future<BookingsResponse> getMyBookings({
    String? status,
    String? role,
  }) {
    return _remoteSource.getMyBookings(
      status: status,
      role: role,
    );
  }

  @override
  Future<Booking> getBookingById({
    required String id,
    required BookingType type,
  }) {
    return _remoteSource.getBookingById(id: id, type: type);
  }

  @override
  Future<Booking> createConsultationBooking(
    ConsultationBookingRequest request,
  ) {
    return _remoteSource.createConsultationBooking(request);
  }

  @override
  Future<Booking> createSubscriptionBooking(
    SubscriptionBookingRequest request,
  ) {
    return _remoteSource.createSubscriptionBooking(request);
  }

  @override
  Future<void> cancelBooking({
    required String id,
    required BookingType type,
    String? reason,
  }) {
    return _remoteSource.cancelBooking(id: id, type: type, reason: reason);
  }

  @override
  Future<void> respondToBookingRequest({
    required String id,
    required BookingType type,
    required bool approve,
  }) {
    return _remoteSource.respondToBookingRequest(
      id: id,
      type: type,
      approve: approve,
    );
  }

  @override
  Future<Booking> rescheduleBooking({
    required String id,
    required BookingType type,
    String? slotId,
  }) {
    return _remoteSource.rescheduleBooking(id: id, type: type, slotId: slotId);
  }

  @override
  Future<List<AppointmentConsultant>> getAllMyConsultants() async {
    // Fetch all bookings (large page size to get all consultants)
    // We fetch without status filter to include all appointment types
    final response = await _remoteSource.getMyBookings();

    // Separate map keys for 1:1 DMs vs group programs to prevent merging
    final consultantsMap = <String, AppointmentConsultant>{};

    for (final booking in response.bookings) {
      if (booking.consultantUserId == null) continue;

      final isGroupProgram = booking.bookingType == BookingType.webinar ||
          booking.bookingType == BookingType.classes;

      if (isGroupProgram) {
        // Group programs keyed by program ID to avoid merging with 1:1 entries
        final key = 'group_${booking.id}';
        if (!consultantsMap.containsKey(key)) {
          consultantsMap[key] = AppointmentConsultant.fromBooking(booking)
              .copyWith(allBookingTypes: [booking.bookingType]);
        }
      } else {
        // 1:1 bookings keyed by consultant user ID
        final userId = booking.consultantUserId!;

        if (!consultantsMap.containsKey(userId)) {
          consultantsMap[userId] =
              AppointmentConsultant.fromBooking(booking).copyWith(
            allBookingTypes: [booking.bookingType],
          );
        } else {
          final existing = consultantsMap[userId]!;
          final types = {...existing.allBookingTypes};
          types.add(booking.bookingType);

          if (booking.createdAt != null &&
              (existing.lastAppointmentDate == null ||
                  booking.createdAt!.isAfter(existing.lastAppointmentDate!))) {
            consultantsMap[userId] = AppointmentConsultant.fromBooking(booking)
                .copyWith(allBookingTypes: types.toList());
          } else {
            consultantsMap[userId] =
                existing.copyWith(allBookingTypes: types.toList());
          }
        }
      }
    }

    // Sort by most recent appointment date (descending)
    final consultants = consultantsMap.values.toList()
      ..sort((a, b) {
        if (a.lastAppointmentDate == null && b.lastAppointmentDate == null) {
          return 0;
        }
        if (a.lastAppointmentDate == null) return 1;
        if (b.lastAppointmentDate == null) return -1;
        return b.lastAppointmentDate!.compareTo(a.lastAppointmentDate!);
      });

    return consultants;
  }

  @override
  Future<List<AppointmentConsultant>> getAllMyClients() async {
    // Fetch bookings where the current user is the consultant
    final response = await _remoteSource.getMyBookings(
      role: 'consultant',
    );

    // Separate map keys for 1:1 DMs vs group programs.
    // Note: when role=consultant, the booking's consultant fields actually
    // contain the consultee (client) information from the API response.
    // Group programs (webinar/class) may have null consultantUserId since
    // they don't have a single consultee — they're multi-participant.
    final clientsMap = <String, AppointmentConsultant>{};

    for (final booking in response.bookings) {
      final isGroupProgram = booking.bookingType == BookingType.webinar ||
          booking.bookingType == BookingType.classes;

      if (isGroupProgram) {
        // Group programs keyed by booking ID (webinarId/classId)
        final key = 'group_${booking.id}';
        if (!clientsMap.containsKey(key)) {
          clientsMap[key] = AppointmentConsultant(
            consultantUserId: booking.id,
            consultantName: booking.planTitle ?? 'Group Program',
            lastAppointmentType: booking.bookingType,
            lastAppointmentDate: booking.createdAt,
            programId: booking.id,
            programName: booking.planTitle,
            allBookingTypes: [booking.bookingType],
          );
        }
      } else {
        // 1:1 bookings keyed by client user ID.
        // For consultant-view bookings, the client info is in consultee fields.
        final clientUserId =
            booking.consulteeUserId ?? booking.consultantUserId;
        if (clientUserId == null) continue;

        if (!clientsMap.containsKey(clientUserId)) {
          clientsMap[clientUserId] = AppointmentConsultant(
            consultantUserId: clientUserId,
            consultantName:
                booking.consulteeName ?? booking.consultantName ?? 'Unknown',
            consultantImage: booking.consulteeImage ?? booking.consultantImage,
            consultantProfileId:
                booking.consulteeProfileId ?? booking.consultantProfileId,
            lastAppointmentType: booking.bookingType,
            lastAppointmentDate: booking.createdAt,
            allBookingTypes: [booking.bookingType],
          );
        } else {
          final existing = clientsMap[clientUserId]!;
          final types = {...existing.allBookingTypes};
          types.add(booking.bookingType);

          if (booking.createdAt != null &&
              (existing.lastAppointmentDate == null ||
                  booking.createdAt!.isAfter(existing.lastAppointmentDate!))) {
            clientsMap[clientUserId] = AppointmentConsultant(
              consultantUserId: clientUserId,
              consultantName:
                  booking.consulteeName ?? booking.consultantName ?? 'Unknown',
              consultantImage:
                  booking.consulteeImage ?? booking.consultantImage,
              consultantProfileId:
                  booking.consulteeProfileId ?? booking.consultantProfileId,
              lastAppointmentType: booking.bookingType,
              lastAppointmentDate: booking.createdAt,
              allBookingTypes: types.toList(),
            );
          } else {
            clientsMap[clientUserId] =
                existing.copyWith(allBookingTypes: types.toList());
          }
        }
      }
    }

    final clients = clientsMap.values.toList()
      ..sort((a, b) {
        if (a.lastAppointmentDate == null && b.lastAppointmentDate == null) {
          return 0;
        }
        if (a.lastAppointmentDate == null) return 1;
        if (b.lastAppointmentDate == null) return -1;
        return b.lastAppointmentDate!.compareTo(a.lastAppointmentDate!);
      });

    return clients;
  }
}
