import 'package:skeletonizer/skeletonizer.dart';

import '../../domain/entities/booking/booking.dart';
import '../../domain/entities/chat/appointment_consultant.dart';
import '../../domain/entities/explore/class_plan.dart';
import '../../domain/entities/explore/consultant.dart';
import '../../domain/entities/explore/consultant_details.dart';
import '../../domain/entities/explore/consultation_plan.dart';
import '../../domain/entities/explore/subscription_plan.dart';
import '../../domain/entities/explore/webinar_plan.dart';
import '../../domain/entities/support/support_entities.dart';

/// Centralized fake data factories for Skeletonizer skeleton loading states.
///
/// Every entity is `@freezed` — we can't add static methods to them,
/// so a standalone utility class is cleanest.
class FakeData {
  FakeData._();

  // --- Booking ---
  static Booking booking() => Booking(
        id: BoneMock.name,
        bookingType: BookingType.consultation,
        status: RequestStatus.scheduled,
        consultantName: BoneMock.name,
        planTitle: BoneMock.words(3),
        planPrice: 2000,
        createdAt: DateTime.now(),
        slots: [
          BookingSlot(
            id: 'fake',
            startsAt: DateTime.now().add(const Duration(days: 3)),
            endsAt: DateTime.now().add(const Duration(days: 3, hours: 1)),
          ),
        ],
      );

  static List<Booking> bookings([int count = 4]) =>
      List.generate(count, (_) => booking());

  // --- SupportTicket ---
  static SupportTicket supportTicket() => SupportTicket(
        id: BoneMock.name,
        title: BoneMock.words(4),
        description: BoneMock.words(12),
        status: TicketStatus.open,
        priority: TicketPriority.medium,
        createdAt: DateTime.now(),
      );

  static List<SupportTicket> supportTickets([int count = 4]) =>
      List.generate(count, (_) => supportTicket());

  // --- Consultant ---
  static Consultant consultant() => Consultant(
        id: BoneMock.name,
        userId: BoneMock.name,
        headline: BoneMock.words(5),
        rating: 4.5,
        experience: 5,
        totalMenteesHelped: 50,
        user: ConsultantUser(name: BoneMock.name),
        minPrice: 2000,
      );

  static List<Consultant> consultants([int count = 5]) =>
      List.generate(count, (_) => consultant());

  // --- ConsultantDetails ---
  static ConsultantDetails consultantDetails() => ConsultantDetails(
        id: BoneMock.name,
        userId: BoneMock.name,
        headline: BoneMock.words(5),
        description: BoneMock.words(20),
        rating: 4.5,
        experience: 5,
        languages: const ['English'],
        totalMenteesHelped: 50,
        isVerified: true,
        user: ConsultantUserDetails(name: BoneMock.name),
        consultationPlans: [
          ConsultationPlan(
            id: 'fake',
            title: BoneMock.words(3),
            price: 2000,
          ),
        ],
        subscriptionPlans: [
          SubscriptionPlan(
            id: 'fake',
            title: BoneMock.words(3),
            price: 15000,
          ),
        ],
      );

  // --- WebinarPlan ---
  static WebinarPlan webinarPlan() => WebinarPlan(
        id: BoneMock.name,
        title: BoneMock.words(4),
        description: BoneMock.words(15),
        price: 1500,
        durationInHours: 2,
        maxParticipants: 30,
        consultant: ConsultantBrief(id: 'fake', name: BoneMock.name),
      );

  static List<WebinarPlan> webinarPlans([int count = 3]) =>
      List.generate(count, (_) => webinarPlan());

  // --- ClassPlan ---
  static ClassPlan classPlan() => ClassPlan(
        id: BoneMock.name,
        title: BoneMock.words(4),
        description: BoneMock.words(15),
        price: 15000,
        durationInMonths: 3,
        meetingsPerWeek: 2,
        sessionDurationInHours: 1.5,
        totalSessions: 24,
        maxParticipants: 20,
        consultant: ConsultantBrief(id: 'fake', name: BoneMock.name),
      );

  static List<ClassPlan> classPlans([int count = 3]) =>
      List.generate(count, (_) => classPlan());

  // --- AppointmentConsultant ---
  static AppointmentConsultant appointmentConsultant() =>
      AppointmentConsultant(
        consultantUserId: BoneMock.name,
        consultantName: BoneMock.name,
        lastAppointmentType: BookingType.consultation,
        allBookingTypes: const [BookingType.consultation],
      );

  static List<AppointmentConsultant> appointmentConsultants([int count = 4]) =>
      List.generate(count, (_) => appointmentConsultant());
}
