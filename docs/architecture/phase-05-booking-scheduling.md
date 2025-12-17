# Phase 5: Booking & Scheduling

## Overview

This phase implements the booking flow where users can view consultant availability, select time slots, and submit booking requests. The system handles different appointment types (consultations, subscriptions) and integrates with the backend slot management.

**Prerequisites:** Phases 1-4 completed
**Target Completion:** Complete booking request flow

---

## Key Features

1. **Availability Calendar** - View consultant's available dates
2. **Time Slot Selection** - Choose from available time slots
3. **Booking Request** - Submit request for approval
4. **Booking Management** - View and manage pending/confirmed bookings

---

## 1. Domain Layer

### 1.1 Availability Entity

Create `lib/domain/entities/availability.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability.freezed.dart';

@freezed
class AvailabilitySlot with _$AvailabilitySlot {
  const AvailabilitySlot._();

  const factory AvailabilitySlot({
    required String id,
    required DateTime startsAt,
    required DateTime endsAt,
    @Default(false) bool isBooked,
    @Default(false) bool isTentative,
  }) = _AvailabilitySlot;

  Duration get duration => endsAt.difference(startsAt);

  bool get isAvailable => !isBooked && !isTentative;

  String get timeRange {
    final startHour = startsAt.hour.toString().padLeft(2, '0');
    final startMin = startsAt.minute.toString().padLeft(2, '0');
    final endHour = endsAt.hour.toString().padLeft(2, '0');
    final endMin = endsAt.minute.toString().padLeft(2, '0');
    return '$startHour:$startMin - $endHour:$endMin';
  }
}

@freezed
class DayAvailability with _$DayAvailability {
  const factory DayAvailability({
    required DateTime date,
    required List<AvailabilitySlot> slots,
  }) = _DayAvailability;
}
```

### 1.2 Booking Entity

Create `lib/domain/entities/booking.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/constants/enums.dart';
import 'consultant.dart';
import 'availability.dart';

part 'booking.freezed.dart';

@freezed
class BookingRequest with _$BookingRequest {
  const factory BookingRequest({
    required String consultantId,
    required String planId,
    required String planType, // 'consultation' or 'subscription'
    required List<DateTime> selectedSlots,
    String? message,
    List<String>? documentUrls,
  }) = _BookingRequest;
}

@freezed
class Booking with _$Booking {
  const Booking._();

  const factory Booking({
    required String id,
    required AppointmentType appointmentType,
    required RequestStatus status,
    required Consultant consultant,
    required ConsultationPlan plan,
    required List<AvailabilitySlot> slots,
    String? message,
    String? rejectionReason,
    DateTime? paymentDeadline,
    String? paymentUrl,
    DateTime? createdAt,
  }) = _Booking;

  bool get isPending => status == RequestStatus.pending;
  bool get isApproved => status == RequestStatus.approved;
  bool get requiresPayment => status == RequestStatus.approvedPendingPayment;
  bool get isScheduled => status == RequestStatus.scheduled;
  bool get isCancelled => status == RequestStatus.cancelled;

  DateTime? get nextSlotTime =>
      slots.isNotEmpty ? slots.first.startsAt : null;
}
```

### 1.3 Booking Repository Interface

Create `lib/domain/repositories/booking_repository.dart`:

```dart
import '../entities/availability.dart';
import '../entities/booking.dart';
import '../../core/errors/result.dart';

abstract class BookingRepository {
  /// Get consultant's availability for a date range
  AsyncResult<List<DayAvailability>> getAvailability({
    required String consultantId,
    required DateTime startDate,
    required DateTime endDate,
  });

  /// Submit a booking request
  AsyncResult<Booking> createBookingRequest(BookingRequest request);

  /// Get user's bookings
  AsyncResult<List<Booking>> getMyBookings({
    RequestStatus? status,
    int page = 0,
    int pageSize = 20,
  });

  /// Get booking by ID
  AsyncResult<Booking> getBookingById(String id);

  /// Cancel a booking
  AsyncResult<void> cancelBooking(String id, {String? reason});

  /// Reschedule a booking
  AsyncResult<Booking> rescheduleBooking(
    String id,
    List<DateTime> newSlots,
  );
}
```

---

## 2. Data Layer

### 2.1 Availability Model

Create `lib/data/models/availability_model.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/availability.dart';

part 'availability_model.freezed.dart';
part 'availability_model.g.dart';

@freezed
class AvailabilitySlotModel with _$AvailabilitySlotModel {
  const AvailabilitySlotModel._();

  const factory AvailabilitySlotModel({
    required String id,
    @JsonKey(name: 'starts_at') required DateTime startsAt,
    @JsonKey(name: 'ends_at') required DateTime endsAt,
    @JsonKey(name: 'is_booked') @Default(false) bool isBooked,
    @JsonKey(name: 'is_tentative') @Default(false) bool isTentative,
  }) = _AvailabilitySlotModel;

  factory AvailabilitySlotModel.fromJson(Map<String, dynamic> json) =>
      _$AvailabilitySlotModelFromJson(json);

  AvailabilitySlot toEntity() => AvailabilitySlot(
        id: id,
        startsAt: startsAt,
        endsAt: endsAt,
        isBooked: isBooked,
        isTentative: isTentative,
      );
}

@freezed
class DayAvailabilityModel with _$DayAvailabilityModel {
  const DayAvailabilityModel._();

  const factory DayAvailabilityModel({
    required DateTime date,
    required List<AvailabilitySlotModel> slots,
  }) = _DayAvailabilityModel;

  factory DayAvailabilityModel.fromJson(Map<String, dynamic> json) =>
      _$DayAvailabilityModelFromJson(json);

  DayAvailability toEntity() => DayAvailability(
        date: date,
        slots: slots.map((s) => s.toEntity()).toList(),
      );
}
```

### 2.2 Booking Remote Source

Create `lib/data/datasources/remote/booking_remote_source.dart`:

```dart
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../core/network/dio_client.dart';
import '../../../domain/entities/booking.dart';
import '../../models/availability_model.dart';
import '../../models/booking_model.dart';

part 'booking_remote_source.g.dart';

@riverpod
BookingRemoteSource bookingRemoteSource(BookingRemoteSourceRef ref) {
  return BookingRemoteSourceImpl(ref.watch(dioProvider));
}

abstract class BookingRemoteSource {
  Future<List<DayAvailabilityModel>> getAvailability({
    required String consultantId,
    required DateTime startDate,
    required DateTime endDate,
  });

  Future<BookingModel> createBookingRequest(BookingRequest request);
  Future<List<BookingModel>> getMyBookings({
    String? status,
    int page = 0,
    int pageSize = 20,
  });
  Future<BookingModel> getBookingById(String id);
  Future<void> cancelBooking(String id, {String? reason});
}

class BookingRemoteSourceImpl implements BookingRemoteSource {
  final Dio _dio;

  BookingRemoteSourceImpl(this._dio);

  @override
  Future<List<DayAvailabilityModel>> getAvailability({
    required String consultantId,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    try {
      final response = await _dio.get(
        ApiEndpoints.consultantAvailability(consultantId),
        queryParameters: {
          'startDate': startDate.toIso8601String(),
          'endDate': endDate.toIso8601String(),
        },
      );

      final list = response.data['availability'] as List;
      return list
          .map((json) =>
              DayAvailabilityModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<BookingModel> createBookingRequest(BookingRequest request) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.requestSlot,
        data: {
          'consultantId': request.consultantId,
          'planId': request.planId,
          'planType': request.planType,
          'slots': request.selectedSlots
              .map((s) => s.toIso8601String())
              .toList(),
          if (request.message != null) 'message': request.message,
          if (request.documentUrls != null)
            'documentUrls': request.documentUrls,
        },
      );

      return BookingModel.fromJson(
        response.data['booking'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<List<BookingModel>> getMyBookings({
    String? status,
    int page = 0,
    int pageSize = 20,
  }) async {
    try {
      final response = await _dio.get(
        ApiEndpoints.bookings,
        queryParameters: {
          if (status != null) 'status': status,
          'page': page,
          'pageSize': pageSize,
        },
      );

      final list = response.data['bookings'] as List;
      return list
          .map((json) => BookingModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<BookingModel> getBookingById(String id) async {
    try {
      final response = await _dio.get(ApiEndpoints.bookingById(id));
      return BookingModel.fromJson(
        response.data['booking'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<void> cancelBooking(String id, {String? reason}) async {
    try {
      await _dio.post(
        ApiEndpoints.cancelAppointment(id),
        data: {if (reason != null) 'reason': reason},
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }
}
```

---

## 3. Presentation Layer

### 3.1 Booking Provider

Create `lib/features/booking/providers/booking_provider.dart`:

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/booking_repository_impl.dart';
import '../../../domain/entities/availability.dart';
import '../../../domain/entities/booking.dart';
import '../../../domain/entities/consultant.dart';
import '../../../domain/repositories/booking_repository.dart';

part 'booking_provider.g.dart';

@riverpod
class BookingFlow extends _$BookingFlow {
  @override
  BookingFlowState build() => const BookingFlowState();

  void setConsultant(Consultant consultant) {
    state = state.copyWith(consultant: consultant);
  }

  void setPlan(ConsultationPlan plan) {
    state = state.copyWith(plan: plan);
  }

  void setSelectedDate(DateTime date) {
    state = state.copyWith(
      selectedDate: date,
      selectedSlots: [], // Clear slots when date changes
    );
  }

  void toggleSlot(AvailabilitySlot slot) {
    final currentSlots = List<AvailabilitySlot>.from(state.selectedSlots);

    if (currentSlots.any((s) => s.id == slot.id)) {
      currentSlots.removeWhere((s) => s.id == slot.id);
    } else {
      // For now, only allow single slot selection
      currentSlots.clear();
      currentSlots.add(slot);
    }

    state = state.copyWith(selectedSlots: currentSlots);
  }

  void setMessage(String message) {
    state = state.copyWith(message: message);
  }

  Future<bool> submitBooking() async {
    if (state.consultant == null || state.plan == null) return false;
    if (state.selectedSlots.isEmpty) return false;

    state = state.copyWith(isSubmitting: true, error: null);

    final repository = ref.read(bookingRepositoryProvider);
    final result = await repository.createBookingRequest(
      BookingRequest(
        consultantId: state.consultant!.id,
        planId: state.plan!.id,
        planType: 'consultation',
        selectedSlots: state.selectedSlots.map((s) => s.startsAt).toList(),
        message: state.message,
      ),
    );

    return result.fold(
      (failure) {
        state = state.copyWith(
          isSubmitting: false,
          error: failure.userMessage,
        );
        return false;
      },
      (booking) {
        state = state.copyWith(
          isSubmitting: false,
          createdBooking: booking,
        );
        return true;
      },
    );
  }

  void reset() {
    state = const BookingFlowState();
  }
}

class BookingFlowState {
  final Consultant? consultant;
  final ConsultationPlan? plan;
  final DateTime? selectedDate;
  final List<AvailabilitySlot> selectedSlots;
  final String? message;
  final bool isSubmitting;
  final String? error;
  final Booking? createdBooking;

  const BookingFlowState({
    this.consultant,
    this.plan,
    this.selectedDate,
    this.selectedSlots = const [],
    this.message,
    this.isSubmitting = false,
    this.error,
    this.createdBooking,
  });

  BookingFlowState copyWith({
    Consultant? consultant,
    ConsultationPlan? plan,
    DateTime? selectedDate,
    List<AvailabilitySlot>? selectedSlots,
    String? message,
    bool? isSubmitting,
    String? error,
    Booking? createdBooking,
  }) {
    return BookingFlowState(
      consultant: consultant ?? this.consultant,
      plan: plan ?? this.plan,
      selectedDate: selectedDate ?? this.selectedDate,
      selectedSlots: selectedSlots ?? this.selectedSlots,
      message: message ?? this.message,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      error: error ?? this.error,
      createdBooking: createdBooking ?? this.createdBooking,
    );
  }

  bool get canSubmit =>
      consultant != null &&
      plan != null &&
      selectedSlots.isNotEmpty &&
      !isSubmitting;
}

@riverpod
Future<List<DayAvailability>> consultantAvailability(
  ConsultantAvailabilityRef ref, {
  required String consultantId,
  required DateTime startDate,
  required DateTime endDate,
}) async {
  final repository = ref.watch(bookingRepositoryProvider);
  final result = await repository.getAvailability(
    consultantId: consultantId,
    startDate: startDate,
    endDate: endDate,
  );

  return result.fold(
    (failure) => throw Exception(failure.userMessage),
    (availability) => availability,
  );
}

@riverpod
Future<List<Booking>> myBookings(MyBookingsRef ref) async {
  final repository = ref.watch(bookingRepositoryProvider);
  final result = await repository.getMyBookings();

  return result.fold(
    (failure) => throw Exception(failure.userMessage),
    (bookings) => bookings,
  );
}
```

### 3.2 Booking Screen

Create `lib/features/booking/screens/booking_screen.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/extensions/context_extensions.dart';
import '../../../core/utils/currency_utils.dart';
import '../../../core/utils/date_utils.dart';
import '../../../domain/entities/availability.dart';
import '../providers/booking_provider.dart';
import '../widgets/time_slot_grid.dart';

class BookingScreen extends ConsumerStatefulWidget {
  final String consultantId;
  final String planId;

  const BookingScreen({
    super.key,
    required this.consultantId,
    required this.planId,
  });

  @override
  ConsumerState<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends ConsumerState<BookingScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bookingState = ref.watch(bookingFlowProvider);

    // Listen for errors
    ref.listen<BookingFlowState>(bookingFlowProvider, (_, state) {
      if (state.error != null) {
        context.showErrorSnackBar(state.error!);
      }
      if (state.createdBooking != null) {
        // Navigate to success screen
        context.goNamed('bookingSuccess', extra: state.createdBooking);
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Session'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(AppTheme.space4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Consultant & Plan info
                  if (bookingState.consultant != null &&
                      bookingState.plan != null)
                    _buildPlanSummary(bookingState),

                  const SizedBox(height: AppTheme.space4),

                  // Calendar
                  Text('Select a Date', style: AppTypography.h4),
                  const SizedBox(height: AppTheme.space2),
                  _buildCalendar(),

                  const SizedBox(height: AppTheme.space4),

                  // Time slots
                  if (_selectedDay != null) ...[
                    Text(
                      'Available Times for ${AppDateUtils.formatDate(_selectedDay!)}',
                      style: AppTypography.h4,
                    ),
                    const SizedBox(height: AppTheme.space2),
                    TimeSlotGrid(
                      consultantId: widget.consultantId,
                      date: _selectedDay!,
                      selectedSlots: bookingState.selectedSlots,
                      onSlotSelected: (slot) {
                        ref.read(bookingFlowProvider.notifier).toggleSlot(slot);
                      },
                    ),
                  ],

                  const SizedBox(height: AppTheme.space4),

                  // Message (optional)
                  Text('Message (Optional)', style: AppTypography.label),
                  const SizedBox(height: AppTheme.space2),
                  TextField(
                    controller: _messageController,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      hintText: 'Any specific topics you want to discuss?',
                    ),
                    onChanged: (value) {
                      ref.read(bookingFlowProvider.notifier).setMessage(value);
                    },
                  ),
                ],
              ),
            ),
          ),

          // Bottom button
          Container(
            padding: EdgeInsets.only(
              left: AppTheme.space4,
              right: AppTheme.space4,
              bottom: context.bottomPadding + AppTheme.space4,
              top: AppTheme.space4,
            ),
            decoration: BoxDecoration(
              color: AppColors.background,
              border: Border(
                top: BorderSide(color: AppColors.border),
              ),
            ),
            child: ElevatedButton(
              onPressed: bookingState.canSubmit
                  ? () async {
                      final success = await ref
                          .read(bookingFlowProvider.notifier)
                          .submitBooking();
                      if (success && mounted) {
                        context.goNamed('bookingSuccess');
                      }
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, AppTheme.buttonHeight),
              ),
              child: bookingState.isSubmitting
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: AppColors.primaryForeground,
                      ),
                    )
                  : const Text('Request Booking'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlanSummary(BookingFlowState state) {
    final plan = state.plan!;
    return Container(
      padding: const EdgeInsets.all(AppTheme.space4),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(AppTheme.radiusLg),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plan.title,
                  style: AppTypography.body.copyWith(
                    fontWeight: AppTypography.fontSemibold,
                  ),
                ),
                const SizedBox(height: AppTheme.space1),
                Text(
                  '${plan.durationMinutes} minutes',
                  style: AppTypography.bodySmall,
                ),
              ],
            ),
          ),
          Text(
            CurrencyUtils.format(plan.price, currency: plan.currency),
            style: AppTypography.h4,
          ),
        ],
      ),
    );
  }

  Widget _buildCalendar() {
    return TableCalendar(
      firstDay: DateTime.now(),
      lastDay: DateTime.now().add(const Duration(days: 60)),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      calendarFormat: CalendarFormat.month,
      startingDayOfWeek: StartingDayOfWeek.monday,
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle: AppTypography.h4,
      ),
      calendarStyle: CalendarStyle(
        selectedDecoration: const BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.3),
          shape: BoxShape.circle,
        ),
      ),
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
        ref.read(bookingFlowProvider.notifier).setSelectedDate(selectedDay);
      },
      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },
    );
  }
}
```

### 3.3 Time Slot Grid Widget

Create `lib/features/booking/widgets/time_slot_grid.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';
import '../../../app/theme/app_typography.dart';
import '../../../domain/entities/availability.dart';
import '../providers/booking_provider.dart';

class TimeSlotGrid extends ConsumerWidget {
  final String consultantId;
  final DateTime date;
  final List<AvailabilitySlot> selectedSlots;
  final ValueChanged<AvailabilitySlot> onSlotSelected;

  const TimeSlotGrid({
    super.key,
    required this.consultantId,
    required this.date,
    required this.selectedSlots,
    required this.onSlotSelected,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availabilityAsync = ref.watch(
      consultantAvailabilityProvider(
        consultantId: consultantId,
        startDate: date,
        endDate: date.add(const Duration(days: 1)),
      ),
    );

    return availabilityAsync.when(
      data: (availability) {
        final daySlots = availability
            .where((a) =>
                a.date.year == date.year &&
                a.date.month == date.month &&
                a.date.day == date.day)
            .expand((a) => a.slots)
            .where((s) => s.isAvailable)
            .toList();

        if (daySlots.isEmpty) {
          return Container(
            padding: const EdgeInsets.all(AppTheme.space6),
            alignment: Alignment.center,
            child: Text(
              'No available slots for this date',
              style: AppTypography.body.copyWith(
                color: AppColors.mutedForeground,
              ),
            ),
          );
        }

        return Wrap(
          spacing: AppTheme.space2,
          runSpacing: AppTheme.space2,
          children: daySlots.map((slot) {
            final isSelected = selectedSlots.any((s) => s.id == slot.id);

            return ChoiceChip(
              label: Text(_formatTime(slot.startsAt)),
              selected: isSelected,
              onSelected: (_) => onSlotSelected(slot),
              selectedColor: AppColors.primary,
              labelStyle: TextStyle(
                color: isSelected
                    ? AppColors.primaryForeground
                    : AppColors.foreground,
              ),
            );
          }).toList(),
        );
      },
      loading: () => const Center(
        child: Padding(
          padding: EdgeInsets.all(AppTheme.space6),
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, _) => Center(
        child: Text('Error loading slots: $error'),
      ),
    );
  }

  String _formatTime(DateTime time) {
    final hour = time.hour;
    final minute = time.minute.toString().padLeft(2, '0');
    final period = hour >= 12 ? 'PM' : 'AM';
    final displayHour = hour > 12 ? hour - 12 : (hour == 0 ? 12 : hour);
    return '$displayHour:$minute $period';
  }
}
```

---

## 4. Additional Dependencies

Add to `pubspec.yaml`:

```yaml
dependencies:
  # Calendar
  table_calendar: ^3.1.1
```

---

## 5. Acceptance Criteria

- [ ] Calendar displays consultant availability
- [ ] Users can select a date to view time slots
- [ ] Available time slots are displayed correctly
- [ ] Booked/tentative slots are disabled
- [ ] Single slot selection works
- [ ] Optional message can be added
- [ ] Booking request submits successfully
- [ ] Success/error states handled
- [ ] Navigation to success screen works

---

## 6. Next Phase

Proceed to **Phase 6: Checkout & Payments** to implement:
- Payment flow with Razorpay/Stripe
- Order summary
- Payment confirmation
