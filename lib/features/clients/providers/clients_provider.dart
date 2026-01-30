import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/booking_repository_impl.dart';
import '../../../domain/entities/chat/chat_entities.dart';

part 'clients_provider.g.dart';

/// Provider for consultant's client list (derived from booking data)
@riverpod
Future<List<AppointmentConsultant>> clientsList(Ref ref) async {
  final bookingRepo = ref.watch(bookingRepositoryProvider);

  // Fetch bookings where the current user is the consultant,
  // then extract unique clients (consultees) from those bookings.
  return bookingRepo.getAllMyClients();
}
