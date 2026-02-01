import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/dashboard_repository_impl.dart';
import '../../../domain/entities/booking/booking.dart';

part 'consultant_schedule_provider.g.dart';

/// Provider for consultant's upcoming sessions (schedule tab)
@riverpod
Future<List<Booking>> consultantSchedule(Ref ref) async {
  final repo = ref.watch(dashboardRepositoryProvider);
  return repo.getConsultantUpcomingSessions();
}
