import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/booking_repository_impl.dart';
import '../../../domain/entities/booking/booking_entities.dart';

part 'availability_provider.g.dart';

/// Parameters for fetching consultant availability
class AvailabilityParams {
  final String consultantProfileId;
  final DateTime startDate;
  final DateTime endDate;

  const AvailabilityParams({
    required this.consultantProfileId,
    required this.startDate,
    required this.endDate,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AvailabilityParams &&
        other.consultantProfileId == consultantProfileId &&
        other.startDate == startDate &&
        other.endDate == endDate;
  }

  @override
  int get hashCode =>
      consultantProfileId.hashCode ^ startDate.hashCode ^ endDate.hashCode;
}

/// Provider for fetching consultant availability
@riverpod
Future<List<DayAvailability>> consultantAvailability(
  Ref ref,
  AvailabilityParams params,
) async {
  final repository = ref.watch(bookingRepositoryProvider);
  return repository.getConsultantAvailability(
    consultantProfileId: params.consultantProfileId,
    startDate: params.startDate,
    endDate: params.endDate,
  );
}

/// Provider for the currently selected date in the calendar
@riverpod
class SelectedDate extends _$SelectedDate {
  @override
  DateTime build() => DateTime.now();

  void setDate(DateTime date) {
    state = date;
  }
}

/// Provider for the currently selected availability slot
@riverpod
class SelectedSlot extends _$SelectedSlot {
  @override
  AvailabilitySlot? build() => null;

  void selectSlot(AvailabilitySlot slot) {
    state = slot;
  }

  void clearSelection() {
    state = null;
  }
}
