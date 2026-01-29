import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/booking_repository_impl.dart';
import '../../../domain/entities/chat/chat_entities.dart';

part 'clients_provider.g.dart';

/// Provider for consultant's client list (derived from booking data)
@riverpod
Future<List<AppointmentConsultant>> clientsList(Ref ref) async {
  final bookingRepo = ref.watch(bookingRepositoryProvider);

  // Reuse the existing getAllMyConsultants method which fetches unique
  // consultees from booking data. For a consultant, these are their clients.
  return bookingRepo.getAllMyConsultants();
}
