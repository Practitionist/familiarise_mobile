# Phase 9: Dashboard & Notifications

## Overview

Phase 9 implements the user dashboard - the central hub where consultees view their upcoming sessions, pending actions, and receive notifications. This phase also integrates Firebase Cloud Messaging (FCM) for push notifications.

**Duration**: 1-2 weeks
**Dependencies**: Phase 1-8 (all previous phases)
**Complexity**: Medium-High

---

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Dependencies](#dependencies)
3. [Architecture Overview](#architecture-overview)
4. [Domain Layer](#domain-layer)
5. [Data Layer](#data-layer)
6. [Presentation Layer](#presentation-layer)
7. [Push Notifications](#push-notifications)
8. [Calendar Integration](#calendar-integration)
9. [Testing](#testing)
10. [Acceptance Criteria](#acceptance-criteria)

---

## Prerequisites

Before starting this phase, ensure:

- [ ] Phases 1-8 are complete and functional
- [ ] Firebase project is configured
- [ ] User can authenticate and has appointments
- [ ] Backend notification endpoints are available
- [ ] APNs certificates configured (iOS)
- [ ] FCM server key available (Android)

---

## Dependencies

Add to `pubspec.yaml`:

```yaml
dependencies:
  # Push Notifications
  firebase_core: ^3.8.0
  firebase_messaging: ^15.1.5
  flutter_local_notifications: ^18.0.1

  # Calendar
  table_calendar: ^3.1.3

  # Badge/Indicators
  badges: ^3.1.2

  # Time formatting
  timeago: ^3.7.0

  # Pull to refresh
  pull_to_refresh: ^2.0.0
```

Run:
```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

---

## Architecture Overview

```
lib/features/dashboard/
├── providers/
│   ├── dashboard_provider.dart        # Main dashboard state
│   ├── appointments_provider.dart     # User appointments
│   ├── notifications_provider.dart    # Notification handling
│   └── calendar_provider.dart         # Calendar state
├── screens/
│   ├── dashboard_screen.dart          # Main dashboard
│   ├── appointments_screen.dart       # All appointments list
│   ├── calendar_screen.dart           # Calendar view
│   └── notifications_screen.dart      # Notification center
├── widgets/
│   ├── upcoming_session_card.dart     # Session preview card
│   ├── pending_payment_card.dart      # Payment reminder card
│   ├── quick_action_tile.dart         # Quick action buttons
│   ├── stats_overview.dart            # User statistics
│   ├── notification_tile.dart         # Notification list item
│   └── calendar_event_marker.dart     # Calendar event indicator
└── models/
    └── dashboard_stats.dart           # Dashboard statistics model
```

---

## Domain Layer

### Entities

#### Dashboard Stats Entity

```dart
// lib/domain/entities/dashboard_stats.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_stats.freezed.dart';

@freezed
class DashboardStats with _$DashboardStats {
  const factory DashboardStats({
    required int totalSessions,
    required int completedSessions,
    required int upcomingSessions,
    required int cancelledSessions,
    required double totalSpent,
    required int activeSubscriptions,
    required int pendingPayments,
    required int unreadNotifications,
  }) = _DashboardStats;

  const DashboardStats._();

  double get completionRate =>
    totalSessions > 0 ? completedSessions / totalSessions * 100 : 0;
}
```

#### App Notification Entity

```dart
// lib/domain/entities/app_notification.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_notification.freezed.dart';

enum NotificationType {
  sessionReminder,
  sessionStarting,
  sessionCancelled,
  paymentReceived,
  paymentFailed,
  paymentReminder,
  messageReceived,
  bookingConfirmed,
  bookingRejected,
  systemAnnouncement,
}

@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    required String id,
    required String title,
    required String body,
    required NotificationType type,
    required DateTime createdAt,
    required bool isRead,
    String? actionUrl,
    Map<String, dynamic>? data,
  }) = _AppNotification;
}
```

#### Appointment Entity (Extended)

```dart
// lib/domain/entities/appointment.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familiarise_mobile/core/constants/enums.dart';

part 'appointment.freezed.dart';

@freezed
class Appointment with _$Appointment {
  const factory Appointment({
    required String id,
    required AppointmentType type,
    required RequestStatus status,
    required DateTime scheduledAt,
    required DateTime endsAt,
    required String consultantId,
    required String consultantName,
    String? consultantImage,
    String? consultantHeadline,
    String? meetingLink,
    String? chatChannelId,
    String? consultationPlanId,
    String? subscriptionPlanId,
    double? price,
    String? currency,
    bool? isPaid,
    String? paymentId,
    String? cancellationReason,
    DateTime? cancelledAt,
    DateTime? createdAt,
  }) = _Appointment;

  const Appointment._();

  bool get isUpcoming =>
    status == RequestStatus.SCHEDULED &&
    scheduledAt.isAfter(DateTime.now());

  bool get isOngoing =>
    status == RequestStatus.SCHEDULED &&
    scheduledAt.isBefore(DateTime.now()) &&
    endsAt.isAfter(DateTime.now());

  bool get isPast => endsAt.isBefore(DateTime.now());

  bool get canJoin {
    final now = DateTime.now();
    final joinWindow = scheduledAt.subtract(const Duration(minutes: 5));
    return now.isAfter(joinWindow) && now.isBefore(endsAt);
  }

  bool get canCancel {
    final cancellationDeadline = scheduledAt.subtract(const Duration(hours: 24));
    return isUpcoming && DateTime.now().isBefore(cancellationDeadline);
  }

  Duration get timeUntilStart => scheduledAt.difference(DateTime.now());

  Duration get duration => endsAt.difference(scheduledAt);
}
```

### Repository Interface

```dart
// lib/domain/repositories/dashboard_repository.dart
import 'package:dartz/dartz.dart';
import 'package:familiarise_mobile/core/errors/failures.dart';
import 'package:familiarise_mobile/domain/entities/appointment.dart';
import 'package:familiarise_mobile/domain/entities/dashboard_stats.dart';
import 'package:familiarise_mobile/domain/entities/app_notification.dart';

abstract class DashboardRepository {
  /// Get dashboard statistics for current user
  Future<Either<Failure, DashboardStats>> getDashboardStats();

  /// Get upcoming appointments (next 7 days)
  Future<Either<Failure, List<Appointment>>> getUpcomingAppointments({
    int limit = 5,
  });

  /// Get all appointments with pagination
  Future<Either<Failure, List<Appointment>>> getAllAppointments({
    int page = 0,
    int pageSize = 20,
    RequestStatus? status,
    DateTime? startDate,
    DateTime? endDate,
  });

  /// Get appointment by ID
  Future<Either<Failure, Appointment>> getAppointmentById(String id);

  /// Cancel an appointment
  Future<Either<Failure, void>> cancelAppointment({
    required String appointmentId,
    required String reason,
  });

  /// Get appointments for calendar (by month)
  Future<Either<Failure, Map<DateTime, List<Appointment>>>> getAppointmentsForMonth({
    required int year,
    required int month,
  });

  /// Get pending payments
  Future<Either<Failure, List<Appointment>>> getPendingPayments();

  /// Get user notifications
  Future<Either<Failure, List<AppNotification>>> getNotifications({
    int page = 0,
    int pageSize = 20,
  });

  /// Mark notification as read
  Future<Either<Failure, void>> markNotificationRead(String notificationId);

  /// Mark all notifications as read
  Future<Either<Failure, void>> markAllNotificationsRead();

  /// Register FCM token
  Future<Either<Failure, void>> registerFcmToken(String token);

  /// Unregister FCM token (on logout)
  Future<Either<Failure, void>> unregisterFcmToken(String token);
}
```

---

## Data Layer

### Models

#### Dashboard Stats Model

```dart
// lib/data/models/dashboard_stats_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familiarise_mobile/domain/entities/dashboard_stats.dart';

part 'dashboard_stats_model.freezed.dart';
part 'dashboard_stats_model.g.dart';

@freezed
class DashboardStatsModel with _$DashboardStatsModel {
  const factory DashboardStatsModel({
    @JsonKey(name: 'total_sessions') required int totalSessions,
    @JsonKey(name: 'completed_sessions') required int completedSessions,
    @JsonKey(name: 'upcoming_sessions') required int upcomingSessions,
    @JsonKey(name: 'cancelled_sessions') required int cancelledSessions,
    @JsonKey(name: 'total_spent') required double totalSpent,
    @JsonKey(name: 'active_subscriptions') required int activeSubscriptions,
    @JsonKey(name: 'pending_payments') required int pendingPayments,
    @JsonKey(name: 'unread_notifications') required int unreadNotifications,
  }) = _DashboardStatsModel;

  const DashboardStatsModel._();

  factory DashboardStatsModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardStatsModelFromJson(json);

  DashboardStats toEntity() => DashboardStats(
    totalSessions: totalSessions,
    completedSessions: completedSessions,
    upcomingSessions: upcomingSessions,
    cancelledSessions: cancelledSessions,
    totalSpent: totalSpent,
    activeSubscriptions: activeSubscriptions,
    pendingPayments: pendingPayments,
    unreadNotifications: unreadNotifications,
  );
}
```

#### Appointment Model

```dart
// lib/data/models/appointment_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familiarise_mobile/core/constants/enums.dart';
import 'package:familiarise_mobile/domain/entities/appointment.dart';

part 'appointment_model.freezed.dart';
part 'appointment_model.g.dart';

@freezed
class AppointmentModel with _$AppointmentModel {
  const factory AppointmentModel({
    required String id,
    @JsonKey(name: 'appointment_type') required String appointmentType,
    required String status,
    @JsonKey(name: 'scheduled_at') required DateTime scheduledAt,
    @JsonKey(name: 'ends_at') required DateTime endsAt,
    @JsonKey(name: 'consultant_id') required String consultantId,
    @JsonKey(name: 'consultant_name') required String consultantName,
    @JsonKey(name: 'consultant_image') String? consultantImage,
    @JsonKey(name: 'consultant_headline') String? consultantHeadline,
    @JsonKey(name: 'meeting_link') String? meetingLink,
    @JsonKey(name: 'chat_channel_id') String? chatChannelId,
    @JsonKey(name: 'consultation_plan_id') String? consultationPlanId,
    @JsonKey(name: 'subscription_plan_id') String? subscriptionPlanId,
    double? price,
    String? currency,
    @JsonKey(name: 'is_paid') bool? isPaid,
    @JsonKey(name: 'payment_id') String? paymentId,
    @JsonKey(name: 'cancellation_reason') String? cancellationReason,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _AppointmentModel;

  const AppointmentModel._();

  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);

  Appointment toEntity() => Appointment(
    id: id,
    type: AppointmentType.values.firstWhere(
      (e) => e.name == appointmentType,
      orElse: () => AppointmentType.CONSULTATION,
    ),
    status: RequestStatus.values.firstWhere(
      (e) => e.name == status,
      orElse: () => RequestStatus.PENDING,
    ),
    scheduledAt: scheduledAt,
    endsAt: endsAt,
    consultantId: consultantId,
    consultantName: consultantName,
    consultantImage: consultantImage,
    consultantHeadline: consultantHeadline,
    meetingLink: meetingLink,
    chatChannelId: chatChannelId,
    consultationPlanId: consultationPlanId,
    subscriptionPlanId: subscriptionPlanId,
    price: price,
    currency: currency,
    isPaid: isPaid,
    paymentId: paymentId,
    cancellationReason: cancellationReason,
    cancelledAt: cancelledAt,
    createdAt: createdAt,
  );
}
```

#### Notification Model

```dart
// lib/data/models/notification_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familiarise_mobile/domain/entities/app_notification.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required String id,
    required String title,
    required String body,
    required String type,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'is_read') required bool isRead,
    @JsonKey(name: 'action_url') String? actionUrl,
    Map<String, dynamic>? data,
  }) = _NotificationModel;

  const NotificationModel._();

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  AppNotification toEntity() => AppNotification(
    id: id,
    title: title,
    body: body,
    type: NotificationType.values.firstWhere(
      (e) => e.name == type,
      orElse: () => NotificationType.systemAnnouncement,
    ),
    createdAt: createdAt,
    isRead: isRead,
    actionUrl: actionUrl,
    data: data,
  );
}
```

### Remote Data Source

```dart
// lib/data/datasources/remote/dashboard_remote_source.dart
import 'package:dio/dio.dart';
import 'package:familiarise_mobile/data/models/dashboard_stats_model.dart';
import 'package:familiarise_mobile/data/models/appointment_model.dart';
import 'package:familiarise_mobile/data/models/notification_model.dart';
import 'package:familiarise_mobile/core/errors/exceptions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_remote_source.g.dart';

@riverpod
DashboardRemoteSource dashboardRemoteSource(DashboardRemoteSourceRef ref) {
  return DashboardRemoteSource(ref.watch(dioProvider));
}

class DashboardRemoteSource {
  final Dio _dio;

  DashboardRemoteSource(this._dio);

  Future<DashboardStatsModel> getDashboardStats() async {
    try {
      final response = await _dio.get('/api/dashboard/stats');
      return DashboardStatsModel.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<List<AppointmentModel>> getUpcomingAppointments({
    int limit = 5,
  }) async {
    try {
      final response = await _dio.get(
        '/api/appointments/upcoming',
        queryParameters: {'limit': limit},
      );
      return (response.data as List)
          .map((json) => AppointmentModel.fromJson(json))
          .toList();
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<List<AppointmentModel>> getAllAppointments({
    int page = 0,
    int pageSize = 20,
    String? status,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      final response = await _dio.get(
        '/api/appointments',
        queryParameters: {
          'page': page,
          'pageSize': pageSize,
          if (status != null) 'status': status,
          if (startDate != null) 'startDate': startDate.toIso8601String(),
          if (endDate != null) 'endDate': endDate.toIso8601String(),
        },
      );
      return (response.data['appointments'] as List)
          .map((json) => AppointmentModel.fromJson(json))
          .toList();
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<AppointmentModel> getAppointmentById(String id) async {
    try {
      final response = await _dio.get('/api/appointments/$id');
      return AppointmentModel.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<void> cancelAppointment({
    required String appointmentId,
    required String reason,
  }) async {
    try {
      await _dio.post(
        '/api/appointments/$appointmentId/cancel',
        data: {'reason': reason},
      );
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<List<AppointmentModel>> getAppointmentsForMonth({
    required int year,
    required int month,
  }) async {
    try {
      final startDate = DateTime(year, month, 1);
      final endDate = DateTime(year, month + 1, 0); // Last day of month

      final response = await _dio.get(
        '/api/appointments',
        queryParameters: {
          'startDate': startDate.toIso8601String(),
          'endDate': endDate.toIso8601String(),
        },
      );
      return (response.data['appointments'] as List)
          .map((json) => AppointmentModel.fromJson(json))
          .toList();
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<List<AppointmentModel>> getPendingPayments() async {
    try {
      final response = await _dio.get('/api/appointments/pending-payment');
      return (response.data as List)
          .map((json) => AppointmentModel.fromJson(json))
          .toList();
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<List<NotificationModel>> getNotifications({
    int page = 0,
    int pageSize = 20,
  }) async {
    try {
      final response = await _dio.get(
        '/api/notifications',
        queryParameters: {'page': page, 'pageSize': pageSize},
      );
      return (response.data['notifications'] as List)
          .map((json) => NotificationModel.fromJson(json))
          .toList();
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<void> markNotificationRead(String notificationId) async {
    try {
      await _dio.patch('/api/notifications/$notificationId/read');
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<void> markAllNotificationsRead() async {
    try {
      await _dio.patch('/api/notifications/read-all');
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<void> registerFcmToken(String token) async {
    try {
      await _dio.post(
        '/api/notifications/register-device',
        data: {'token': token, 'platform': Platform.isIOS ? 'ios' : 'android'},
      );
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }

  Future<void> unregisterFcmToken(String token) async {
    try {
      await _dio.delete(
        '/api/notifications/unregister-device',
        data: {'token': token},
      );
    } on DioException catch (e) {
      throw ServerException.fromDioError(e);
    }
  }
}
```

### Repository Implementation

```dart
// lib/data/repositories/dashboard_repository_impl.dart
import 'package:dartz/dartz.dart';
import 'package:familiarise_mobile/core/errors/failures.dart';
import 'package:familiarise_mobile/core/errors/exceptions.dart';
import 'package:familiarise_mobile/core/network/network_info.dart';
import 'package:familiarise_mobile/data/datasources/remote/dashboard_remote_source.dart';
import 'package:familiarise_mobile/domain/entities/appointment.dart';
import 'package:familiarise_mobile/domain/entities/dashboard_stats.dart';
import 'package:familiarise_mobile/domain/entities/app_notification.dart';
import 'package:familiarise_mobile/domain/repositories/dashboard_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_repository_impl.g.dart';

@riverpod
DashboardRepository dashboardRepository(DashboardRepositoryRef ref) {
  return DashboardRepositoryImpl(
    remoteSource: ref.watch(dashboardRemoteSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  );
}

class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteSource _remoteSource;
  final NetworkInfo _networkInfo;

  DashboardRepositoryImpl({
    required DashboardRemoteSource remoteSource,
    required NetworkInfo networkInfo,
  })  : _remoteSource = remoteSource,
        _networkInfo = networkInfo;

  @override
  Future<Either<Failure, DashboardStats>> getDashboardStats() async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      final model = await _remoteSource.getDashboardStats();
      return Right(model.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Appointment>>> getUpcomingAppointments({
    int limit = 5,
  }) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      final models = await _remoteSource.getUpcomingAppointments(limit: limit);
      return Right(models.map((m) => m.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Appointment>>> getAllAppointments({
    int page = 0,
    int pageSize = 20,
    RequestStatus? status,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      final models = await _remoteSource.getAllAppointments(
        page: page,
        pageSize: pageSize,
        status: status?.name,
        startDate: startDate,
        endDate: endDate,
      );
      return Right(models.map((m) => m.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Appointment>> getAppointmentById(String id) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      final model = await _remoteSource.getAppointmentById(id);
      return Right(model.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> cancelAppointment({
    required String appointmentId,
    required String reason,
  }) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      await _remoteSource.cancelAppointment(
        appointmentId: appointmentId,
        reason: reason,
      );
      return const Right(null);
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<DateTime, List<Appointment>>>> getAppointmentsForMonth({
    required int year,
    required int month,
  }) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      final models = await _remoteSource.getAppointmentsForMonth(
        year: year,
        month: month,
      );

      final Map<DateTime, List<Appointment>> groupedAppointments = {};
      for (final model in models) {
        final entity = model.toEntity();
        final dateKey = DateTime(
          entity.scheduledAt.year,
          entity.scheduledAt.month,
          entity.scheduledAt.day,
        );
        groupedAppointments.putIfAbsent(dateKey, () => []).add(entity);
      }

      return Right(groupedAppointments);
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Appointment>>> getPendingPayments() async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      final models = await _remoteSource.getPendingPayments();
      return Right(models.map((m) => m.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AppNotification>>> getNotifications({
    int page = 0,
    int pageSize = 20,
  }) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      final models = await _remoteSource.getNotifications(
        page: page,
        pageSize: pageSize,
      );
      return Right(models.map((m) => m.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> markNotificationRead(String notificationId) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      await _remoteSource.markNotificationRead(notificationId);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> markAllNotificationsRead() async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      await _remoteSource.markAllNotificationsRead();
      return const Right(null);
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> registerFcmToken(String token) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      await _remoteSource.registerFcmToken(token);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> unregisterFcmToken(String token) async {
    if (!await _networkInfo.isConnected) {
      return const Left(Failure.network());
    }
    try {
      await _remoteSource.unregisterFcmToken(token);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }
}
```

---

## Presentation Layer

### Dashboard Provider

```dart
// lib/features/dashboard/providers/dashboard_provider.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:familiarise_mobile/domain/entities/dashboard_stats.dart';
import 'package:familiarise_mobile/domain/entities/appointment.dart';
import 'package:familiarise_mobile/data/repositories/dashboard_repository_impl.dart';

part 'dashboard_provider.g.dart';

@riverpod
Future<DashboardStats> dashboardStats(DashboardStatsRef ref) async {
  final repository = ref.watch(dashboardRepositoryProvider);
  final result = await repository.getDashboardStats();
  return result.fold(
    (failure) => throw failure,
    (stats) => stats,
  );
}

@riverpod
Future<List<Appointment>> upcomingAppointments(UpcomingAppointmentsRef ref) async {
  final repository = ref.watch(dashboardRepositoryProvider);
  final result = await repository.getUpcomingAppointments(limit: 5);
  return result.fold(
    (failure) => throw failure,
    (appointments) => appointments,
  );
}

@riverpod
Future<List<Appointment>> pendingPayments(PendingPaymentsRef ref) async {
  final repository = ref.watch(dashboardRepositoryProvider);
  final result = await repository.getPendingPayments();
  return result.fold(
    (failure) => throw failure,
    (appointments) => appointments,
  );
}
```

### Appointments Provider

```dart
// lib/features/dashboard/providers/appointments_provider.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:familiarise_mobile/core/constants/enums.dart';
import 'package:familiarise_mobile/domain/entities/appointment.dart';
import 'package:familiarise_mobile/data/repositories/dashboard_repository_impl.dart';

part 'appointments_provider.g.dart';

@riverpod
class AppointmentsList extends _$AppointmentsList {
  int _currentPage = 0;
  bool _hasMore = true;
  RequestStatus? _statusFilter;

  @override
  Future<List<Appointment>> build() async {
    return _fetchAppointments(page: 0);
  }

  Future<List<Appointment>> _fetchAppointments({required int page}) async {
    final repository = ref.watch(dashboardRepositoryProvider);
    final result = await repository.getAllAppointments(
      page: page,
      status: _statusFilter,
    );
    return result.fold(
      (failure) => throw failure,
      (appointments) {
        _hasMore = appointments.length >= 20;
        return appointments;
      },
    );
  }

  void setStatusFilter(RequestStatus? status) {
    _statusFilter = status;
    _currentPage = 0;
    ref.invalidateSelf();
  }

  Future<void> loadMore() async {
    if (!_hasMore) return;

    final currentAppointments = state.valueOrNull ?? [];
    _currentPage++;

    try {
      final newAppointments = await _fetchAppointments(page: _currentPage);
      state = AsyncData([...currentAppointments, ...newAppointments]);
    } catch (e) {
      _currentPage--;
      rethrow;
    }
  }

  Future<void> refresh() async {
    _currentPage = 0;
    _hasMore = true;
    ref.invalidateSelf();
  }

  bool get hasMore => _hasMore;
}

@riverpod
class AppointmentDetails extends _$AppointmentDetails {
  @override
  Future<Appointment> build(String appointmentId) async {
    final repository = ref.watch(dashboardRepositoryProvider);
    final result = await repository.getAppointmentById(appointmentId);
    return result.fold(
      (failure) => throw failure,
      (appointment) => appointment,
    );
  }
}

@riverpod
class CancelAppointment extends _$CancelAppointment {
  @override
  FutureOr<void> build() {}

  Future<bool> cancel({
    required String appointmentId,
    required String reason,
  }) async {
    state = const AsyncLoading();

    final repository = ref.watch(dashboardRepositoryProvider);
    final result = await repository.cancelAppointment(
      appointmentId: appointmentId,
      reason: reason,
    );

    return result.fold(
      (failure) {
        state = AsyncError(failure, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        // Invalidate related providers
        ref.invalidate(upcomingAppointmentsProvider);
        ref.invalidate(appointmentsListProvider);
        ref.invalidate(dashboardStatsProvider);
        return true;
      },
    );
  }
}
```

### Calendar Provider

```dart
// lib/features/dashboard/providers/calendar_provider.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:familiarise_mobile/domain/entities/appointment.dart';
import 'package:familiarise_mobile/data/repositories/dashboard_repository_impl.dart';

part 'calendar_provider.g.dart';

@riverpod
class CalendarState extends _$CalendarState {
  @override
  DateTime build() => DateTime.now();

  void setFocusedDay(DateTime day) {
    state = day;
  }
}

@riverpod
Future<Map<DateTime, List<Appointment>>> calendarAppointments(
  CalendarAppointmentsRef ref,
) async {
  final focusedDay = ref.watch(calendarStateProvider);
  final repository = ref.watch(dashboardRepositoryProvider);

  final result = await repository.getAppointmentsForMonth(
    year: focusedDay.year,
    month: focusedDay.month,
  );

  return result.fold(
    (failure) => throw failure,
    (appointments) => appointments,
  );
}

@riverpod
DateTime selectedDay(SelectedDayRef ref) {
  return DateTime.now();
}

@riverpod
class SelectedDayNotifier extends _$SelectedDayNotifier {
  @override
  DateTime build() => DateTime.now();

  void selectDay(DateTime day) {
    state = day;
  }
}
```

### Dashboard Screen

```dart
// lib/features/dashboard/screens/dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:badges/badges.dart' as badges;
import 'package:familiarise_mobile/features/auth/providers/auth_provider.dart';
import 'package:familiarise_mobile/features/dashboard/providers/dashboard_provider.dart';
import 'package:familiarise_mobile/features/dashboard/providers/notifications_provider.dart';
import 'package:familiarise_mobile/features/dashboard/widgets/upcoming_session_card.dart';
import 'package:familiarise_mobile/features/dashboard/widgets/pending_payment_card.dart';
import 'package:familiarise_mobile/features/dashboard/widgets/stats_overview.dart';
import 'package:familiarise_mobile/features/dashboard/widgets/quick_action_tile.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  final RefreshController _refreshController = RefreshController();

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    ref.invalidate(dashboardStatsProvider);
    ref.invalidate(upcomingAppointmentsProvider);
    ref.invalidate(pendingPaymentsProvider);
    ref.invalidate(notificationCountProvider);
    await Future.delayed(const Duration(milliseconds: 500));
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final user = ref.watch(currentUserProvider);
    final stats = ref.watch(dashboardStatsProvider);
    final upcomingAppointments = ref.watch(upcomingAppointmentsProvider);
    final pendingPayments = ref.watch(pendingPaymentsProvider);
    final notificationCount = ref.watch(notificationCountProvider);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back,',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            Text(
              user?.name ?? 'User',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          badges.Badge(
            showBadge: (notificationCount.valueOrNull ?? 0) > 0,
            badgeContent: Text(
              '${notificationCount.valueOrNull ?? 0}',
              style: const TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: IconButton(
              icon: const Icon(Icons.notifications_outlined),
              onPressed: () => context.push('/notifications'),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SmartRefresher(
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Stats Overview
              stats.when(
                data: (data) => StatsOverview(stats: data),
                loading: () => const StatsOverviewSkeleton(),
                error: (_, __) => const StatsOverviewError(),
              ),

              const SizedBox(height: 24),

              // Quick Actions
              Text(
                'Quick Actions',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: QuickActionTile(
                      icon: Icons.explore_outlined,
                      label: 'Find Expert',
                      onTap: () => context.go('/explore'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: QuickActionTile(
                      icon: Icons.calendar_month_outlined,
                      label: 'Calendar',
                      onTap: () => context.push('/calendar'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: QuickActionTile(
                      icon: Icons.chat_outlined,
                      label: 'Messages',
                      onTap: () => context.go('/chat'),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Pending Payments Alert
              pendingPayments.when(
                data: (payments) {
                  if (payments.isEmpty) return const SizedBox.shrink();
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pending Payments',
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.error,
                            ),
                          ),
                          TextButton(
                            onPressed: () => context.push('/payments/pending'),
                            child: const Text('View All'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      ...payments.take(2).map(
                        (payment) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: PendingPaymentCard(appointment: payment),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  );
                },
                loading: () => const SizedBox.shrink(),
                error: (_, __) => const SizedBox.shrink(),
              ),

              // Upcoming Sessions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Sessions',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.push('/appointments'),
                    child: const Text('View All'),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              upcomingAppointments.when(
                data: (appointments) {
                  if (appointments.isEmpty) {
                    return _buildEmptyState(context);
                  }
                  return Column(
                    children: appointments.map((appointment) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: UpcomingSessionCard(
                          appointment: appointment,
                          onTap: () => context.push(
                            '/appointments/${appointment.id}',
                          ),
                          onJoin: appointment.canJoin
                              ? () => _joinMeeting(appointment)
                              : null,
                        ),
                      );
                    }).toList(),
                  );
                },
                loading: () => const UpcomingSessionsSkeleton(),
                error: (error, _) => Center(
                  child: Text('Failed to load appointments: $error'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(
            Icons.calendar_today_outlined,
            size: 48,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 16),
          Text(
            'No upcoming sessions',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Book a session with an expert to get started',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () => context.go('/explore'),
            child: const Text('Find an Expert'),
          ),
        ],
      ),
    );
  }

  void _joinMeeting(Appointment appointment) {
    if (appointment.meetingLink != null) {
      context.push('/meeting/${appointment.meetingLink}');
    }
  }
}
```

### Upcoming Session Card Widget

```dart
// lib/features/dashboard/widgets/upcoming_session_card.dart
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';
import 'package:familiarise_mobile/domain/entities/appointment.dart';
import 'package:familiarise_mobile/core/constants/enums.dart';

class UpcomingSessionCard extends StatelessWidget {
  final Appointment appointment;
  final VoidCallback? onTap;
  final VoidCallback? onJoin;

  const UpcomingSessionCard({
    super.key,
    required this.appointment,
    this.onTap,
    this.onJoin,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dateFormat = DateFormat('EEE, MMM d');
    final timeFormat = DateFormat('h:mm a');

    final isToday = _isToday(appointment.scheduledAt);
    final isTomorrow = _isTomorrow(appointment.scheduledAt);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Date banner if today/tomorrow
              if (isToday || isTomorrow)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: isToday
                        ? theme.colorScheme.primaryContainer
                        : theme.colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    isToday ? 'TODAY' : 'TOMORROW',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: isToday
                          ? theme.colorScheme.onPrimaryContainer
                          : theme.colorScheme.onSecondaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              Row(
                children: [
                  // Consultant Avatar
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: appointment.consultantImage != null
                        ? CachedNetworkImageProvider(appointment.consultantImage!)
                        : null,
                    child: appointment.consultantImage == null
                        ? Text(
                            appointment.consultantName[0].toUpperCase(),
                            style: theme.textTheme.titleLarge,
                          )
                        : null,
                  ),
                  const SizedBox(width: 12),

                  // Session Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          appointment.consultantName,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (appointment.consultantHeadline != null) ...[
                          const SizedBox(height: 2),
                          Text(
                            appointment.consultantHeadline!,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(
                              Icons.schedule,
                              size: 14,
                              color: theme.colorScheme.primary,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${dateFormat.format(appointment.scheduledAt)} at ${timeFormat.format(appointment.scheduledAt)}',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.primary,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // Duration and Type
              Row(
                children: [
                  _buildInfoChip(
                    context,
                    Icons.timer_outlined,
                    '${appointment.duration.inMinutes} min',
                  ),
                  const SizedBox(width: 8),
                  _buildInfoChip(
                    context,
                    _getTypeIcon(appointment.type),
                    _getTypeLabel(appointment.type),
                  ),
                ],
              ),

              // Join Button (if can join)
              if (onJoin != null) ...[
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: onJoin,
                    icon: const Icon(Icons.videocam),
                    label: const Text('Join Meeting'),
                  ),
                ),
              ] else if (appointment.canJoin == false && appointment.isUpcoming) ...[
                const SizedBox(height: 12),
                _buildCountdown(context),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoChip(BuildContext context, IconData icon, String label) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: theme.colorScheme.onSurfaceVariant),
          const SizedBox(width: 4),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCountdown(BuildContext context) {
    final theme = Theme.of(context);
    final timeUntil = appointment.timeUntilStart;

    String countdownText;
    if (timeUntil.inDays > 0) {
      countdownText = 'Starts in ${timeUntil.inDays} day${timeUntil.inDays > 1 ? 's' : ''}';
    } else if (timeUntil.inHours > 0) {
      countdownText = 'Starts in ${timeUntil.inHours} hour${timeUntil.inHours > 1 ? 's' : ''}';
    } else {
      countdownText = 'Starts in ${timeUntil.inMinutes} min';
    }

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.access_time,
            size: 16,
            color: theme.colorScheme.onSecondaryContainer,
          ),
          const SizedBox(width: 8),
          Text(
            countdownText,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSecondaryContainer,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  bool _isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }

  bool _isTomorrow(DateTime date) {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return date.year == tomorrow.year &&
        date.month == tomorrow.month &&
        date.day == tomorrow.day;
  }

  IconData _getTypeIcon(AppointmentType type) {
    switch (type) {
      case AppointmentType.CONSULTATION:
        return Icons.person_outline;
      case AppointmentType.SUBSCRIPTION:
        return Icons.repeat;
      case AppointmentType.WEBINAR:
        return Icons.groups_outlined;
      case AppointmentType.CLASS:
        return Icons.school_outlined;
    }
  }

  String _getTypeLabel(AppointmentType type) {
    switch (type) {
      case AppointmentType.CONSULTATION:
        return '1:1 Session';
      case AppointmentType.SUBSCRIPTION:
        return 'Subscription';
      case AppointmentType.WEBINAR:
        return 'Webinar';
      case AppointmentType.CLASS:
        return 'Class';
    }
  }
}
```

### Stats Overview Widget

```dart
// lib/features/dashboard/widgets/stats_overview.dart
import 'package:flutter/material.dart';
import 'package:familiarise_mobile/domain/entities/dashboard_stats.dart';
import 'package:intl/intl.dart';

class StatsOverview extends StatelessWidget {
  final DashboardStats stats;

  const StatsOverview({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currencyFormat = NumberFormat.currency(symbol: '\$');

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.primary.withOpacity(0.8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Overview',
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _StatItem(
                  value: '${stats.upcomingSessions}',
                  label: 'Upcoming',
                  icon: Icons.event_outlined,
                ),
              ),
              Expanded(
                child: _StatItem(
                  value: '${stats.completedSessions}',
                  label: 'Completed',
                  icon: Icons.check_circle_outline,
                ),
              ),
              Expanded(
                child: _StatItem(
                  value: '${stats.activeSubscriptions}',
                  label: 'Active Plans',
                  icon: Icons.card_membership_outlined,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Divider(color: theme.colorScheme.onPrimary.withOpacity(0.2)),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Investment',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onPrimary.withOpacity(0.8),
                ),
              ),
              Text(
                currencyFormat.format(stats.totalSpent),
                style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;
  final IconData icon;

  const _StatItem({
    required this.value,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Icon(
          icon,
          color: theme.colorScheme.onPrimary.withOpacity(0.8),
          size: 20,
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: theme.textTheme.headlineSmall?.copyWith(
            color: theme.colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}

class StatsOverviewSkeleton extends StatelessWidget {
  const StatsOverviewSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}

class StatsOverviewError extends StatelessWidget {
  const StatsOverviewError({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(
            Icons.error_outline,
            color: Theme.of(context).colorScheme.onErrorContainer,
          ),
          const SizedBox(width: 12),
          Text(
            'Failed to load stats',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onErrorContainer,
            ),
          ),
        ],
      ),
    );
  }
}
```

### Calendar Screen

```dart
// lib/features/dashboard/screens/calendar_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:familiarise_mobile/domain/entities/appointment.dart';
import 'package:familiarise_mobile/features/dashboard/providers/calendar_provider.dart';
import 'package:familiarise_mobile/features/dashboard/widgets/upcoming_session_card.dart';

class CalendarScreen extends ConsumerStatefulWidget {
  const CalendarScreen({super.key});

  @override
  ConsumerState<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends ConsumerState<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final focusedDay = ref.watch(calendarStateProvider);
    final selectedDay = ref.watch(selectedDayNotifierProvider);
    final appointmentsAsync = ref.watch(calendarAppointmentsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
        actions: [
          IconButton(
            icon: const Icon(Icons.today),
            onPressed: () {
              final today = DateTime.now();
              ref.read(calendarStateProvider.notifier).setFocusedDay(today);
              ref.read(selectedDayNotifierProvider.notifier).selectDay(today);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          appointmentsAsync.when(
            data: (appointments) => TableCalendar<Appointment>(
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) => isSameDay(selectedDay, day),
              eventLoader: (day) {
                final dateKey = DateTime(day.year, day.month, day.day);
                return appointments[dateKey] ?? [];
              },
              onDaySelected: (selected, focused) {
                ref.read(selectedDayNotifierProvider.notifier).selectDay(selected);
                ref.read(calendarStateProvider.notifier).setFocusedDay(focused);
              },
              onFormatChanged: (format) {
                setState(() => _calendarFormat = format);
              },
              onPageChanged: (focused) {
                ref.read(calendarStateProvider.notifier).setFocusedDay(focused);
              },
              calendarStyle: CalendarStyle(
                markerDecoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                todayDecoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  shape: BoxShape.circle,
                ),
                todayTextStyle: TextStyle(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: true,
                titleCentered: true,
                formatButtonDecoration: BoxDecoration(
                  border: Border.all(color: theme.colorScheme.outline),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              calendarBuilders: CalendarBuilders(
                markerBuilder: (context, date, events) {
                  if (events.isEmpty) return null;
                  return Positioned(
                    bottom: 1,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  );
                },
              ),
            ),
            loading: () => const SizedBox(
              height: 350,
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (error, _) => SizedBox(
              height: 350,
              child: Center(child: Text('Error: $error')),
            ),
          ),

          const Divider(),

          // Selected Day Appointments
          Expanded(
            child: appointmentsAsync.when(
              data: (appointments) {
                final dateKey = DateTime(
                  selectedDay.year,
                  selectedDay.month,
                  selectedDay.day,
                );
                final dayAppointments = appointments[dateKey] ?? [];

                if (dayAppointments.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.event_available,
                          size: 48,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'No sessions on ${DateFormat('MMMM d').format(selectedDay)}',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: dayAppointments.length,
                  itemBuilder: (context, index) {
                    final appointment = dayAppointments[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: UpcomingSessionCard(
                        appointment: appointment,
                        onTap: () => context.push(
                          '/appointments/${appointment.id}',
                        ),
                        onJoin: appointment.canJoin
                            ? () => context.push('/meeting/${appointment.meetingLink}')
                            : null,
                      ),
                    );
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => Center(child: Text('Error: $error')),
            ),
          ),
        ],
      ),
    );
  }
}
```

---

## Push Notifications

### Firebase Initialization

```dart
// lib/core/services/firebase_service.dart
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_service.g.dart';

// Background message handler (must be top-level)
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling background message: ${message.messageId}');
}

@Riverpod(keepAlive: true)
FirebaseService firebaseService(FirebaseServiceRef ref) {
  return FirebaseService();
}

class FirebaseService {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  String? _fcmToken;

  String? get fcmToken => _fcmToken;

  Future<void> initialize() async {
    // Set background handler
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // Request permissions
    await _requestPermissions();

    // Initialize local notifications
    await _initializeLocalNotifications();

    // Get FCM token
    _fcmToken = await _messaging.getToken();
    print('FCM Token: $_fcmToken');

    // Listen for token refresh
    _messaging.onTokenRefresh.listen((token) {
      _fcmToken = token;
      // TODO: Update token on server
    });

    // Handle foreground messages
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

    // Handle notification tap when app is in background
    FirebaseMessaging.onMessageOpenedApp.listen(_handleNotificationTap);

    // Check if app was opened from notification
    final initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      _handleNotificationTap(initialMessage);
    }
  }

  Future<void> _requestPermissions() async {
    final settings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    print('Permission status: ${settings.authorizationStatus}');
  }

  Future<void> _initializeLocalNotifications() async {
    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _localNotifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: _onNotificationTap,
    );

    // Create notification channel (Android)
    const channel = AndroidNotificationChannel(
      'high_importance_channel',
      'High Importance Notifications',
      description: 'Channel for important notifications',
      importance: Importance.high,
    );

    await _localNotifications
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }

  void _handleForegroundMessage(RemoteMessage message) {
    print('Foreground message: ${message.notification?.title}');

    final notification = message.notification;
    final android = message.notification?.android;

    if (notification != null) {
      _localNotifications.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            'high_importance_channel',
            'High Importance Notifications',
            icon: android?.smallIcon ?? '@mipmap/ic_launcher',
            importance: Importance.high,
            priority: Priority.high,
          ),
          iOS: const DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
          ),
        ),
        payload: message.data['actionUrl'],
      );
    }
  }

  void _handleNotificationTap(RemoteMessage message) {
    final actionUrl = message.data['actionUrl'];
    if (actionUrl != null) {
      // Navigate to the action URL
      // This will be handled by the router
      print('Navigate to: $actionUrl');
    }
  }

  void _onNotificationTap(NotificationResponse response) {
    final payload = response.payload;
    if (payload != null) {
      print('Navigate to: $payload');
    }
  }

  Future<void> subscribeToTopic(String topic) async {
    await _messaging.subscribeToTopic(topic);
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    await _messaging.unsubscribeFromTopic(topic);
  }
}
```

### Notifications Provider

```dart
// lib/features/dashboard/providers/notifications_provider.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:familiarise_mobile/domain/entities/app_notification.dart';
import 'package:familiarise_mobile/data/repositories/dashboard_repository_impl.dart';
import 'package:familiarise_mobile/core/services/firebase_service.dart';

part 'notifications_provider.g.dart';

@riverpod
Future<int> notificationCount(NotificationCountRef ref) async {
  final repository = ref.watch(dashboardRepositoryProvider);
  final result = await repository.getDashboardStats();
  return result.fold(
    (failure) => 0,
    (stats) => stats.unreadNotifications,
  );
}

@riverpod
class NotificationsList extends _$NotificationsList {
  int _currentPage = 0;
  bool _hasMore = true;

  @override
  Future<List<AppNotification>> build() async {
    return _fetchNotifications(page: 0);
  }

  Future<List<AppNotification>> _fetchNotifications({required int page}) async {
    final repository = ref.watch(dashboardRepositoryProvider);
    final result = await repository.getNotifications(page: page);
    return result.fold(
      (failure) => throw failure,
      (notifications) {
        _hasMore = notifications.length >= 20;
        return notifications;
      },
    );
  }

  Future<void> loadMore() async {
    if (!_hasMore) return;

    final currentNotifications = state.valueOrNull ?? [];
    _currentPage++;

    try {
      final newNotifications = await _fetchNotifications(page: _currentPage);
      state = AsyncData([...currentNotifications, ...newNotifications]);
    } catch (e) {
      _currentPage--;
      rethrow;
    }
  }

  Future<void> markAsRead(String notificationId) async {
    final repository = ref.watch(dashboardRepositoryProvider);
    await repository.markNotificationRead(notificationId);

    // Update local state
    final notifications = state.valueOrNull ?? [];
    state = AsyncData(
      notifications.map((n) {
        if (n.id == notificationId) {
          return AppNotification(
            id: n.id,
            title: n.title,
            body: n.body,
            type: n.type,
            createdAt: n.createdAt,
            isRead: true,
            actionUrl: n.actionUrl,
            data: n.data,
          );
        }
        return n;
      }).toList(),
    );

    ref.invalidate(notificationCountProvider);
  }

  Future<void> markAllAsRead() async {
    final repository = ref.watch(dashboardRepositoryProvider);
    await repository.markAllNotificationsRead();

    // Update local state
    final notifications = state.valueOrNull ?? [];
    state = AsyncData(
      notifications.map((n) => AppNotification(
        id: n.id,
        title: n.title,
        body: n.body,
        type: n.type,
        createdAt: n.createdAt,
        isRead: true,
        actionUrl: n.actionUrl,
        data: n.data,
      )).toList(),
    );

    ref.invalidate(notificationCountProvider);
  }

  Future<void> refresh() async {
    _currentPage = 0;
    _hasMore = true;
    ref.invalidateSelf();
  }

  bool get hasMore => _hasMore;
}

@riverpod
class FcmTokenManager extends _$FcmTokenManager {
  @override
  FutureOr<void> build() {}

  Future<void> registerToken() async {
    final firebaseService = ref.watch(firebaseServiceProvider);
    final token = firebaseService.fcmToken;

    if (token != null) {
      final repository = ref.watch(dashboardRepositoryProvider);
      await repository.registerFcmToken(token);
    }
  }

  Future<void> unregisterToken() async {
    final firebaseService = ref.watch(firebaseServiceProvider);
    final token = firebaseService.fcmToken;

    if (token != null) {
      final repository = ref.watch(dashboardRepositoryProvider);
      await repository.unregisterFcmToken(token);
    }
  }
}
```

### Notifications Screen

```dart
// lib/features/dashboard/screens/notifications_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:familiarise_mobile/domain/entities/app_notification.dart';
import 'package:familiarise_mobile/features/dashboard/providers/notifications_provider.dart';

class NotificationsScreen extends ConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final notificationsAsync = ref.watch(notificationsListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'mark_all_read') {
                ref.read(notificationsListProvider.notifier).markAllAsRead();
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'mark_all_read',
                child: Text('Mark all as read'),
              ),
            ],
          ),
        ],
      ),
      body: notificationsAsync.when(
        data: (notifications) {
          if (notifications.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_none,
                    size: 64,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'No notifications yet',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'You\'ll see updates about your sessions here',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            );
          }

          return NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              if (scrollInfo.metrics.pixels >=
                  scrollInfo.metrics.maxScrollExtent - 200) {
                ref.read(notificationsListProvider.notifier).loadMore();
              }
              return false;
            },
            child: RefreshIndicator(
              onRefresh: () => ref
                  .read(notificationsListProvider.notifier)
                  .refresh(),
              child: ListView.separated(
                itemCount: notifications.length,
                separatorBuilder: (_, __) => const Divider(height: 1),
                itemBuilder: (context, index) {
                  final notification = notifications[index];
                  return _NotificationTile(
                    notification: notification,
                    onTap: () {
                      ref
                          .read(notificationsListProvider.notifier)
                          .markAsRead(notification.id);

                      if (notification.actionUrl != null) {
                        context.push(notification.actionUrl!);
                      }
                    },
                  );
                },
              ),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Failed to load notifications'),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => ref.invalidate(notificationsListProvider),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NotificationTile extends StatelessWidget {
  final AppNotification notification;
  final VoidCallback onTap;

  const _NotificationTile({
    required this.notification,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      onTap: onTap,
      tileColor: notification.isRead
          ? null
          : theme.colorScheme.primaryContainer.withOpacity(0.3),
      leading: CircleAvatar(
        backgroundColor: _getNotificationColor(notification.type, theme),
        child: Icon(
          _getNotificationIcon(notification.type),
          color: Colors.white,
          size: 20,
        ),
      ),
      title: Text(
        notification.title,
        style: theme.textTheme.bodyLarge?.copyWith(
          fontWeight: notification.isRead ? FontWeight.normal : FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 4),
          Text(
            notification.body,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            timeago.format(notification.createdAt),
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
      trailing: notification.isRead
          ? null
          : Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                shape: BoxShape.circle,
              ),
            ),
    );
  }

  IconData _getNotificationIcon(NotificationType type) {
    switch (type) {
      case NotificationType.sessionReminder:
      case NotificationType.sessionStarting:
        return Icons.videocam;
      case NotificationType.sessionCancelled:
        return Icons.cancel;
      case NotificationType.paymentReceived:
        return Icons.payment;
      case NotificationType.paymentFailed:
      case NotificationType.paymentReminder:
        return Icons.warning;
      case NotificationType.messageReceived:
        return Icons.chat;
      case NotificationType.bookingConfirmed:
        return Icons.check_circle;
      case NotificationType.bookingRejected:
        return Icons.block;
      case NotificationType.systemAnnouncement:
        return Icons.campaign;
    }
  }

  Color _getNotificationColor(NotificationType type, ThemeData theme) {
    switch (type) {
      case NotificationType.sessionReminder:
      case NotificationType.sessionStarting:
      case NotificationType.bookingConfirmed:
        return theme.colorScheme.primary;
      case NotificationType.sessionCancelled:
      case NotificationType.paymentFailed:
      case NotificationType.bookingRejected:
        return theme.colorScheme.error;
      case NotificationType.paymentReceived:
        return Colors.green;
      case NotificationType.paymentReminder:
        return Colors.orange;
      case NotificationType.messageReceived:
        return Colors.blue;
      case NotificationType.systemAnnouncement:
        return Colors.purple;
    }
  }
}
```

---

## Testing

### Dashboard Provider Tests

```dart
// test/features/dashboard/providers/dashboard_provider_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:familiarise_mobile/domain/entities/dashboard_stats.dart';
import 'package:familiarise_mobile/domain/entities/appointment.dart';
import 'package:familiarise_mobile/domain/repositories/dashboard_repository.dart';
import 'package:familiarise_mobile/data/repositories/dashboard_repository_impl.dart';
import 'package:familiarise_mobile/features/dashboard/providers/dashboard_provider.dart';

class MockDashboardRepository extends Mock implements DashboardRepository {}

void main() {
  late MockDashboardRepository mockRepository;
  late ProviderContainer container;

  setUp(() {
    mockRepository = MockDashboardRepository();
    container = ProviderContainer(
      overrides: [
        dashboardRepositoryProvider.overrideWithValue(mockRepository),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  group('dashboardStatsProvider', () {
    test('returns stats on success', () async {
      const testStats = DashboardStats(
        totalSessions: 10,
        completedSessions: 5,
        upcomingSessions: 3,
        cancelledSessions: 2,
        totalSpent: 1000.0,
        activeSubscriptions: 1,
        pendingPayments: 0,
        unreadNotifications: 5,
      );

      when(() => mockRepository.getDashboardStats())
          .thenAnswer((_) async => const Right(testStats));

      final result = await container.read(dashboardStatsProvider.future);

      expect(result, equals(testStats));
      verify(() => mockRepository.getDashboardStats()).called(1);
    });

    test('throws on failure', () async {
      when(() => mockRepository.getDashboardStats())
          .thenAnswer((_) async => const Left(Failure.network()));

      expect(
        () => container.read(dashboardStatsProvider.future),
        throwsA(isA<Failure>()),
      );
    });
  });

  group('upcomingAppointmentsProvider', () {
    test('returns appointments list on success', () async {
      final testAppointments = [
        Appointment(
          id: '1',
          type: AppointmentType.CONSULTATION,
          status: RequestStatus.SCHEDULED,
          scheduledAt: DateTime.now().add(const Duration(days: 1)),
          endsAt: DateTime.now().add(const Duration(days: 1, hours: 1)),
          consultantId: 'c1',
          consultantName: 'Test Consultant',
        ),
      ];

      when(() => mockRepository.getUpcomingAppointments(limit: 5))
          .thenAnswer((_) async => Right(testAppointments));

      final result = await container.read(upcomingAppointmentsProvider.future);

      expect(result, equals(testAppointments));
    });
  });
}
```

### Cancel Appointment Tests

```dart
// test/features/dashboard/providers/cancel_appointment_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:familiarise_mobile/domain/repositories/dashboard_repository.dart';
import 'package:familiarise_mobile/data/repositories/dashboard_repository_impl.dart';
import 'package:familiarise_mobile/features/dashboard/providers/appointments_provider.dart';

class MockDashboardRepository extends Mock implements DashboardRepository {}

void main() {
  late MockDashboardRepository mockRepository;
  late ProviderContainer container;

  setUp(() {
    mockRepository = MockDashboardRepository();
    container = ProviderContainer(
      overrides: [
        dashboardRepositoryProvider.overrideWithValue(mockRepository),
      ],
    );
  });

  group('CancelAppointment', () {
    test('returns true on successful cancellation', () async {
      when(() => mockRepository.cancelAppointment(
            appointmentId: any(named: 'appointmentId'),
            reason: any(named: 'reason'),
          )).thenAnswer((_) async => const Right(null));

      final notifier = container.read(cancelAppointmentProvider.notifier);
      final result = await notifier.cancel(
        appointmentId: '123',
        reason: 'Schedule conflict',
      );

      expect(result, isTrue);
      verify(() => mockRepository.cancelAppointment(
            appointmentId: '123',
            reason: 'Schedule conflict',
          )).called(1);
    });

    test('returns false on failure', () async {
      when(() => mockRepository.cancelAppointment(
            appointmentId: any(named: 'appointmentId'),
            reason: any(named: 'reason'),
          )).thenAnswer((_) async => const Left(
            Failure.server(message: 'Cannot cancel'),
          ));

      final notifier = container.read(cancelAppointmentProvider.notifier);
      final result = await notifier.cancel(
        appointmentId: '123',
        reason: 'Schedule conflict',
      );

      expect(result, isFalse);
    });
  });
}
```

---

## Acceptance Criteria

### Dashboard Screen
- [ ] Displays user greeting with name
- [ ] Shows stats overview (upcoming, completed, active plans, total spent)
- [ ] Lists up to 5 upcoming sessions with consultant info
- [ ] Shows pending payments with action buttons
- [ ] Provides quick action buttons (Explore, Calendar, Messages)
- [ ] Pull-to-refresh updates all data
- [ ] Empty state shown when no upcoming sessions
- [ ] Notification bell shows unread count badge

### Calendar Screen
- [ ] Displays monthly calendar view
- [ ] Shows event markers on days with sessions
- [ ] Selecting a day shows appointments for that day
- [ ] Can navigate between months
- [ ] "Today" button returns to current date
- [ ] Can switch between month/2-week/week views

### Notifications
- [ ] Lists all notifications with icons by type
- [ ] Unread notifications visually distinguished
- [ ] Tapping notification marks as read
- [ ] "Mark all as read" option available
- [ ] Infinite scroll for pagination
- [ ] Pull-to-refresh reloads notifications
- [ ] Empty state shown when no notifications

### Push Notifications
- [ ] FCM token registered on login
- [ ] FCM token unregistered on logout
- [ ] Foreground notifications show as local notification
- [ ] Background notifications received correctly
- [ ] Tapping notification navigates to relevant screen
- [ ] Notification permissions requested appropriately

### Appointments Management
- [ ] View all appointments with filters (status)
- [ ] View individual appointment details
- [ ] Cancel appointment with reason (if allowed)
- [ ] Join meeting button appears at correct time
- [ ] Countdown shown for upcoming sessions
- [ ] Completed sessions show in history

---

## Next Steps

After completing Phase 9, proceed to:
- **Phase 10: Profile & Settings** - User profile management, app settings, preferences
