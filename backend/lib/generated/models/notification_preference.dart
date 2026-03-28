import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'user.dart';

part 'notification_preference.freezed.dart';
part 'notification_preference.g.dart';

@freezed
class NotificationPreference with _$NotificationPreference {
  const factory NotificationPreference({
    required String id,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required String userId,
    @Default(true)
    bool allNotifications,
    @Default(true)
    bool inAppEnabled,
    @Default(true)
    bool emailEnabled,
    @Default(false)
    bool pushEnabled,
    @Default(false)
    bool mentions,
    @Default(false)
    bool directMessages,
    @Default(false)
    bool updates,
    @Default(true)
    bool appointmentReminders,
    @Default(true)
    bool paymentNotifications,
    @Default(true)
    bool supportUpdates,
    @Default(true)
    bool feedbackAlerts,
    @Default(true)
    bool trialNotifications,
    @Default(true)
    bool subscriptionAlerts,
    @Default(false)
    bool marketingEmails,
    @Default(false)
    bool quietHoursEnabled,
    String? quietHoursStart,
    String? quietHoursEnd,
    String? quietHoursTimezone,
  }) = _NotificationPreference;

  factory NotificationPreference.fromJson(Map<String, dynamic> json) =>
      _$NotificationPreferenceFromJson(json);
}

/// Input for creating a new NotificationPreference
@freezed
class CreateNotificationPreferenceInput with _$CreateNotificationPreferenceInput {
  const factory CreateNotificationPreferenceInput({
    required String userId,
    @Default(true)
    bool? allNotifications,
    @Default(true)
    bool? inAppEnabled,
    @Default(true)
    bool? emailEnabled,
    @Default(false)
    bool? pushEnabled,
    @Default(false)
    bool? mentions,
    @Default(false)
    bool? directMessages,
    @Default(false)
    bool? updates,
    @Default(true)
    bool? appointmentReminders,
    @Default(true)
    bool? paymentNotifications,
    @Default(true)
    bool? supportUpdates,
    @Default(true)
    bool? feedbackAlerts,
    @Default(true)
    bool? trialNotifications,
    @Default(true)
    bool? subscriptionAlerts,
    @Default(false)
    bool? marketingEmails,
    @Default(false)
    bool? quietHoursEnabled,
    String? quietHoursStart,
    String? quietHoursEnd,
    String? quietHoursTimezone,
  }) = _CreateNotificationPreferenceInput;

  factory CreateNotificationPreferenceInput.fromJson(Map<String, dynamic> json) =>
      _$CreateNotificationPreferenceInputFromJson(json);
}

/// Input for updating an existing NotificationPreference
@freezed
class UpdateNotificationPreferenceInput with _$UpdateNotificationPreferenceInput {
  const factory UpdateNotificationPreferenceInput({
    String? userId,
    bool? allNotifications,
    bool? inAppEnabled,
    bool? emailEnabled,
    bool? pushEnabled,
    bool? mentions,
    bool? directMessages,
    bool? updates,
    bool? appointmentReminders,
    bool? paymentNotifications,
    bool? supportUpdates,
    bool? feedbackAlerts,
    bool? trialNotifications,
    bool? subscriptionAlerts,
    bool? marketingEmails,
    bool? quietHoursEnabled,
    String? quietHoursStart,
    String? quietHoursEnd,
    String? quietHoursTimezone,
  }) = _UpdateNotificationPreferenceInput;

  factory UpdateNotificationPreferenceInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateNotificationPreferenceInputFromJson(json);
}

/// Unique where input for NotificationPreference
/// At least one field must be provided
@freezed
class NotificationPreferenceWhereUniqueInput with _$NotificationPreferenceWhereUniqueInput {
  const factory NotificationPreferenceWhereUniqueInput({
    String? id,
    String? userId,
  }) = _NotificationPreferenceWhereUniqueInput;

  factory NotificationPreferenceWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$NotificationPreferenceWhereUniqueInputFromJson(json);
}

/// Where input for filtering NotificationPreference records
@freezed
class NotificationPreferenceWhereInput with _$NotificationPreferenceWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory NotificationPreferenceWhereInput({
    StringFilter? id,
    /// Filter by user relation
    UserRelationFilter? user,
    StringFilter? userId,
    BooleanFilter? allNotifications,
    BooleanFilter? inAppEnabled,
    BooleanFilter? emailEnabled,
    BooleanFilter? pushEnabled,
    BooleanFilter? mentions,
    BooleanFilter? directMessages,
    BooleanFilter? updates,
    BooleanFilter? appointmentReminders,
    BooleanFilter? paymentNotifications,
    BooleanFilter? supportUpdates,
    BooleanFilter? feedbackAlerts,
    BooleanFilter? trialNotifications,
    BooleanFilter? subscriptionAlerts,
    BooleanFilter? marketingEmails,
    BooleanFilter? quietHoursEnabled,
    StringFilter? quietHoursStart,
    StringFilter? quietHoursEnd,
    StringFilter? quietHoursTimezone,
    List<NotificationPreferenceWhereInput>? AND,
    List<NotificationPreferenceWhereInput>? OR,
    NotificationPreferenceWhereInput? NOT,
  }) = _NotificationPreferenceWhereInput;

  factory NotificationPreferenceWhereInput.fromJson(Map<String, dynamic> json) =>
      _$NotificationPreferenceWhereInputFromJson(json);
}

/// Filter for NotificationPreference list relations (one-to-many, many-to-many)
@freezed
class NotificationPreferenceListRelationFilter with _$NotificationPreferenceListRelationFilter {
  const factory NotificationPreferenceListRelationFilter({
    /// At least one related record matches
    NotificationPreferenceWhereInput? some,
    /// All related records match
    NotificationPreferenceWhereInput? every,
    /// No related records match
    NotificationPreferenceWhereInput? none,
  }) = _NotificationPreferenceListRelationFilter;

  factory NotificationPreferenceListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$NotificationPreferenceListRelationFilterFromJson(json);
}

/// Filter for NotificationPreference single relations (one-to-one, many-to-one)
@freezed
class NotificationPreferenceRelationFilter with _$NotificationPreferenceRelationFilter {
  const factory NotificationPreferenceRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') NotificationPreferenceWhereInput? is_,
    /// Related record does not match
    NotificationPreferenceWhereInput? isNot,
  }) = _NotificationPreferenceRelationFilter;

  factory NotificationPreferenceRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$NotificationPreferenceRelationFilterFromJson(json);
}

/// Order by input for sorting NotificationPreference records
@freezed
class NotificationPreferenceOrderByInput with _$NotificationPreferenceOrderByInput {
  const factory NotificationPreferenceOrderByInput({
    SortOrder? id,
    SortOrder? userId,
    SortOrder? allNotifications,
    SortOrder? inAppEnabled,
    SortOrder? emailEnabled,
    SortOrder? pushEnabled,
    SortOrder? mentions,
    SortOrder? directMessages,
    SortOrder? updates,
    SortOrder? appointmentReminders,
    SortOrder? paymentNotifications,
    SortOrder? supportUpdates,
    SortOrder? feedbackAlerts,
    SortOrder? trialNotifications,
    SortOrder? subscriptionAlerts,
    SortOrder? marketingEmails,
    SortOrder? quietHoursEnabled,
    SortOrder? quietHoursStart,
    SortOrder? quietHoursEnd,
    SortOrder? quietHoursTimezone,
  }) = _NotificationPreferenceOrderByInput;

  factory NotificationPreferenceOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$NotificationPreferenceOrderByInputFromJson(json);
}

