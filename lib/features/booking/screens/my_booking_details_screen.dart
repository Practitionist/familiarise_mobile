import 'package:flutter/material.dart';

import '../../../domain/entities/booking/booking_entities.dart';
import 'appointment_detail_screen.dart';

/// Screen showing detailed booking information with Companion Starter actions.
///
/// Delegates to [AppointmentDetailScreen] so all routes pointing to
/// [MyBookingDetailsScreen] render the Companion Starter countdown, 1-tap
/// "Join Video Call", and "Manage Availability / Reschedule on Web" experience.
class MyBookingDetailsScreen extends StatelessWidget {
  final String bookingId;
  final BookingType bookingType;

  const MyBookingDetailsScreen({
    super.key,
    required this.bookingId,
    required this.bookingType,
  });

  @override
  Widget build(BuildContext context) {
    return AppointmentDetailScreen(
      bookingId: bookingId,
      bookingType: bookingType,
    );
  }
}
