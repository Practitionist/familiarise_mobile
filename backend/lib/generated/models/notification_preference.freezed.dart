// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_preference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationPreference _$NotificationPreferenceFromJson(
    Map<String, dynamic> json) {
  return _NotificationPreference.fromJson(json);
}

/// @nodoc
mixin _$NotificationPreference {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  bool get allNotifications => throw _privateConstructorUsedError;
  bool get inAppEnabled => throw _privateConstructorUsedError;
  bool get emailEnabled => throw _privateConstructorUsedError;
  bool get pushEnabled => throw _privateConstructorUsedError;
  bool get mentions => throw _privateConstructorUsedError;
  bool get directMessages => throw _privateConstructorUsedError;
  bool get updates => throw _privateConstructorUsedError;
  bool get appointmentReminders => throw _privateConstructorUsedError;
  bool get paymentNotifications => throw _privateConstructorUsedError;
  bool get supportUpdates => throw _privateConstructorUsedError;
  bool get feedbackAlerts => throw _privateConstructorUsedError;
  bool get trialNotifications => throw _privateConstructorUsedError;
  bool get subscriptionAlerts => throw _privateConstructorUsedError;
  bool get marketingEmails => throw _privateConstructorUsedError;
  bool get quietHoursEnabled => throw _privateConstructorUsedError;
  String? get quietHoursStart => throw _privateConstructorUsedError;
  String? get quietHoursEnd => throw _privateConstructorUsedError;
  String? get quietHoursTimezone => throw _privateConstructorUsedError;

  /// Serializes this NotificationPreference to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationPreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationPreferenceCopyWith<NotificationPreference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPreferenceCopyWith<$Res> {
  factory $NotificationPreferenceCopyWith(NotificationPreference value,
          $Res Function(NotificationPreference) then) =
      _$NotificationPreferenceCopyWithImpl<$Res, NotificationPreference>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      bool allNotifications,
      bool inAppEnabled,
      bool emailEnabled,
      bool pushEnabled,
      bool mentions,
      bool directMessages,
      bool updates,
      bool appointmentReminders,
      bool paymentNotifications,
      bool supportUpdates,
      bool feedbackAlerts,
      bool trialNotifications,
      bool subscriptionAlerts,
      bool marketingEmails,
      bool quietHoursEnabled,
      String? quietHoursStart,
      String? quietHoursEnd,
      String? quietHoursTimezone});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$NotificationPreferenceCopyWithImpl<$Res,
        $Val extends NotificationPreference>
    implements $NotificationPreferenceCopyWith<$Res> {
  _$NotificationPreferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? userId = null,
    Object? allNotifications = null,
    Object? inAppEnabled = null,
    Object? emailEnabled = null,
    Object? pushEnabled = null,
    Object? mentions = null,
    Object? directMessages = null,
    Object? updates = null,
    Object? appointmentReminders = null,
    Object? paymentNotifications = null,
    Object? supportUpdates = null,
    Object? feedbackAlerts = null,
    Object? trialNotifications = null,
    Object? subscriptionAlerts = null,
    Object? marketingEmails = null,
    Object? quietHoursEnabled = null,
    Object? quietHoursStart = freezed,
    Object? quietHoursEnd = freezed,
    Object? quietHoursTimezone = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      allNotifications: null == allNotifications
          ? _value.allNotifications
          : allNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      inAppEnabled: null == inAppEnabled
          ? _value.inAppEnabled
          : inAppEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      emailEnabled: null == emailEnabled
          ? _value.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      pushEnabled: null == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      mentions: null == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as bool,
      directMessages: null == directMessages
          ? _value.directMessages
          : directMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      updates: null == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as bool,
      appointmentReminders: null == appointmentReminders
          ? _value.appointmentReminders
          : appointmentReminders // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentNotifications: null == paymentNotifications
          ? _value.paymentNotifications
          : paymentNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      supportUpdates: null == supportUpdates
          ? _value.supportUpdates
          : supportUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      feedbackAlerts: null == feedbackAlerts
          ? _value.feedbackAlerts
          : feedbackAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      trialNotifications: null == trialNotifications
          ? _value.trialNotifications
          : trialNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriptionAlerts: null == subscriptionAlerts
          ? _value.subscriptionAlerts
          : subscriptionAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      marketingEmails: null == marketingEmails
          ? _value.marketingEmails
          : marketingEmails // ignore: cast_nullable_to_non_nullable
              as bool,
      quietHoursEnabled: null == quietHoursEnabled
          ? _value.quietHoursEnabled
          : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      quietHoursStart: freezed == quietHoursStart
          ? _value.quietHoursStart
          : quietHoursStart // ignore: cast_nullable_to_non_nullable
              as String?,
      quietHoursEnd: freezed == quietHoursEnd
          ? _value.quietHoursEnd
          : quietHoursEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      quietHoursTimezone: freezed == quietHoursTimezone
          ? _value.quietHoursTimezone
          : quietHoursTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of NotificationPreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationPreferenceImplCopyWith<$Res>
    implements $NotificationPreferenceCopyWith<$Res> {
  factory _$$NotificationPreferenceImplCopyWith(
          _$NotificationPreferenceImpl value,
          $Res Function(_$NotificationPreferenceImpl) then) =
      __$$NotificationPreferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      bool allNotifications,
      bool inAppEnabled,
      bool emailEnabled,
      bool pushEnabled,
      bool mentions,
      bool directMessages,
      bool updates,
      bool appointmentReminders,
      bool paymentNotifications,
      bool supportUpdates,
      bool feedbackAlerts,
      bool trialNotifications,
      bool subscriptionAlerts,
      bool marketingEmails,
      bool quietHoursEnabled,
      String? quietHoursStart,
      String? quietHoursEnd,
      String? quietHoursTimezone});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$NotificationPreferenceImplCopyWithImpl<$Res>
    extends _$NotificationPreferenceCopyWithImpl<$Res,
        _$NotificationPreferenceImpl>
    implements _$$NotificationPreferenceImplCopyWith<$Res> {
  __$$NotificationPreferenceImplCopyWithImpl(
      _$NotificationPreferenceImpl _value,
      $Res Function(_$NotificationPreferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? userId = null,
    Object? allNotifications = null,
    Object? inAppEnabled = null,
    Object? emailEnabled = null,
    Object? pushEnabled = null,
    Object? mentions = null,
    Object? directMessages = null,
    Object? updates = null,
    Object? appointmentReminders = null,
    Object? paymentNotifications = null,
    Object? supportUpdates = null,
    Object? feedbackAlerts = null,
    Object? trialNotifications = null,
    Object? subscriptionAlerts = null,
    Object? marketingEmails = null,
    Object? quietHoursEnabled = null,
    Object? quietHoursStart = freezed,
    Object? quietHoursEnd = freezed,
    Object? quietHoursTimezone = freezed,
  }) {
    return _then(_$NotificationPreferenceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      allNotifications: null == allNotifications
          ? _value.allNotifications
          : allNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      inAppEnabled: null == inAppEnabled
          ? _value.inAppEnabled
          : inAppEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      emailEnabled: null == emailEnabled
          ? _value.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      pushEnabled: null == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      mentions: null == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as bool,
      directMessages: null == directMessages
          ? _value.directMessages
          : directMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      updates: null == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as bool,
      appointmentReminders: null == appointmentReminders
          ? _value.appointmentReminders
          : appointmentReminders // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentNotifications: null == paymentNotifications
          ? _value.paymentNotifications
          : paymentNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      supportUpdates: null == supportUpdates
          ? _value.supportUpdates
          : supportUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      feedbackAlerts: null == feedbackAlerts
          ? _value.feedbackAlerts
          : feedbackAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      trialNotifications: null == trialNotifications
          ? _value.trialNotifications
          : trialNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriptionAlerts: null == subscriptionAlerts
          ? _value.subscriptionAlerts
          : subscriptionAlerts // ignore: cast_nullable_to_non_nullable
              as bool,
      marketingEmails: null == marketingEmails
          ? _value.marketingEmails
          : marketingEmails // ignore: cast_nullable_to_non_nullable
              as bool,
      quietHoursEnabled: null == quietHoursEnabled
          ? _value.quietHoursEnabled
          : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      quietHoursStart: freezed == quietHoursStart
          ? _value.quietHoursStart
          : quietHoursStart // ignore: cast_nullable_to_non_nullable
              as String?,
      quietHoursEnd: freezed == quietHoursEnd
          ? _value.quietHoursEnd
          : quietHoursEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      quietHoursTimezone: freezed == quietHoursTimezone
          ? _value.quietHoursTimezone
          : quietHoursTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationPreferenceImpl implements _NotificationPreference {
  const _$NotificationPreferenceImpl(
      {required this.id,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required this.userId,
      this.allNotifications = true,
      this.inAppEnabled = true,
      this.emailEnabled = true,
      this.pushEnabled = false,
      this.mentions = false,
      this.directMessages = false,
      this.updates = false,
      this.appointmentReminders = true,
      this.paymentNotifications = true,
      this.supportUpdates = true,
      this.feedbackAlerts = true,
      this.trialNotifications = true,
      this.subscriptionAlerts = true,
      this.marketingEmails = false,
      this.quietHoursEnabled = false,
      this.quietHoursStart,
      this.quietHoursEnd,
      this.quietHoursTimezone});

  factory _$NotificationPreferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationPreferenceImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  @override
  final String userId;
  @override
  @JsonKey()
  final bool allNotifications;
  @override
  @JsonKey()
  final bool inAppEnabled;
  @override
  @JsonKey()
  final bool emailEnabled;
  @override
  @JsonKey()
  final bool pushEnabled;
  @override
  @JsonKey()
  final bool mentions;
  @override
  @JsonKey()
  final bool directMessages;
  @override
  @JsonKey()
  final bool updates;
  @override
  @JsonKey()
  final bool appointmentReminders;
  @override
  @JsonKey()
  final bool paymentNotifications;
  @override
  @JsonKey()
  final bool supportUpdates;
  @override
  @JsonKey()
  final bool feedbackAlerts;
  @override
  @JsonKey()
  final bool trialNotifications;
  @override
  @JsonKey()
  final bool subscriptionAlerts;
  @override
  @JsonKey()
  final bool marketingEmails;
  @override
  @JsonKey()
  final bool quietHoursEnabled;
  @override
  final String? quietHoursStart;
  @override
  final String? quietHoursEnd;
  @override
  final String? quietHoursTimezone;

  @override
  String toString() {
    return 'NotificationPreference(id: $id, user: $user, userId: $userId, allNotifications: $allNotifications, inAppEnabled: $inAppEnabled, emailEnabled: $emailEnabled, pushEnabled: $pushEnabled, mentions: $mentions, directMessages: $directMessages, updates: $updates, appointmentReminders: $appointmentReminders, paymentNotifications: $paymentNotifications, supportUpdates: $supportUpdates, feedbackAlerts: $feedbackAlerts, trialNotifications: $trialNotifications, subscriptionAlerts: $subscriptionAlerts, marketingEmails: $marketingEmails, quietHoursEnabled: $quietHoursEnabled, quietHoursStart: $quietHoursStart, quietHoursEnd: $quietHoursEnd, quietHoursTimezone: $quietHoursTimezone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPreferenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.allNotifications, allNotifications) ||
                other.allNotifications == allNotifications) &&
            (identical(other.inAppEnabled, inAppEnabled) ||
                other.inAppEnabled == inAppEnabled) &&
            (identical(other.emailEnabled, emailEnabled) ||
                other.emailEnabled == emailEnabled) &&
            (identical(other.pushEnabled, pushEnabled) ||
                other.pushEnabled == pushEnabled) &&
            (identical(other.mentions, mentions) ||
                other.mentions == mentions) &&
            (identical(other.directMessages, directMessages) ||
                other.directMessages == directMessages) &&
            (identical(other.updates, updates) || other.updates == updates) &&
            (identical(other.appointmentReminders, appointmentReminders) ||
                other.appointmentReminders == appointmentReminders) &&
            (identical(other.paymentNotifications, paymentNotifications) ||
                other.paymentNotifications == paymentNotifications) &&
            (identical(other.supportUpdates, supportUpdates) ||
                other.supportUpdates == supportUpdates) &&
            (identical(other.feedbackAlerts, feedbackAlerts) ||
                other.feedbackAlerts == feedbackAlerts) &&
            (identical(other.trialNotifications, trialNotifications) ||
                other.trialNotifications == trialNotifications) &&
            (identical(other.subscriptionAlerts, subscriptionAlerts) ||
                other.subscriptionAlerts == subscriptionAlerts) &&
            (identical(other.marketingEmails, marketingEmails) ||
                other.marketingEmails == marketingEmails) &&
            (identical(other.quietHoursEnabled, quietHoursEnabled) ||
                other.quietHoursEnabled == quietHoursEnabled) &&
            (identical(other.quietHoursStart, quietHoursStart) ||
                other.quietHoursStart == quietHoursStart) &&
            (identical(other.quietHoursEnd, quietHoursEnd) ||
                other.quietHoursEnd == quietHoursEnd) &&
            (identical(other.quietHoursTimezone, quietHoursTimezone) ||
                other.quietHoursTimezone == quietHoursTimezone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        user,
        userId,
        allNotifications,
        inAppEnabled,
        emailEnabled,
        pushEnabled,
        mentions,
        directMessages,
        updates,
        appointmentReminders,
        paymentNotifications,
        supportUpdates,
        feedbackAlerts,
        trialNotifications,
        subscriptionAlerts,
        marketingEmails,
        quietHoursEnabled,
        quietHoursStart,
        quietHoursEnd,
        quietHoursTimezone
      ]);

  /// Create a copy of NotificationPreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPreferenceImplCopyWith<_$NotificationPreferenceImpl>
      get copyWith => __$$NotificationPreferenceImplCopyWithImpl<
          _$NotificationPreferenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPreferenceImplToJson(
      this,
    );
  }
}

abstract class _NotificationPreference implements NotificationPreference {
  const factory _NotificationPreference(
      {required final String id,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final String userId,
      final bool allNotifications,
      final bool inAppEnabled,
      final bool emailEnabled,
      final bool pushEnabled,
      final bool mentions,
      final bool directMessages,
      final bool updates,
      final bool appointmentReminders,
      final bool paymentNotifications,
      final bool supportUpdates,
      final bool feedbackAlerts,
      final bool trialNotifications,
      final bool subscriptionAlerts,
      final bool marketingEmails,
      final bool quietHoursEnabled,
      final String? quietHoursStart,
      final String? quietHoursEnd,
      final String? quietHoursTimezone}) = _$NotificationPreferenceImpl;

  factory _NotificationPreference.fromJson(Map<String, dynamic> json) =
      _$NotificationPreferenceImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  String get userId;
  @override
  bool get allNotifications;
  @override
  bool get inAppEnabled;
  @override
  bool get emailEnabled;
  @override
  bool get pushEnabled;
  @override
  bool get mentions;
  @override
  bool get directMessages;
  @override
  bool get updates;
  @override
  bool get appointmentReminders;
  @override
  bool get paymentNotifications;
  @override
  bool get supportUpdates;
  @override
  bool get feedbackAlerts;
  @override
  bool get trialNotifications;
  @override
  bool get subscriptionAlerts;
  @override
  bool get marketingEmails;
  @override
  bool get quietHoursEnabled;
  @override
  String? get quietHoursStart;
  @override
  String? get quietHoursEnd;
  @override
  String? get quietHoursTimezone;

  /// Create a copy of NotificationPreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPreferenceImplCopyWith<_$NotificationPreferenceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateNotificationPreferenceInput _$CreateNotificationPreferenceInputFromJson(
    Map<String, dynamic> json) {
  return _CreateNotificationPreferenceInput.fromJson(json);
}

/// @nodoc
mixin _$CreateNotificationPreferenceInput {
  String get userId => throw _privateConstructorUsedError;
  bool? get allNotifications => throw _privateConstructorUsedError;
  bool? get inAppEnabled => throw _privateConstructorUsedError;
  bool? get emailEnabled => throw _privateConstructorUsedError;
  bool? get pushEnabled => throw _privateConstructorUsedError;
  bool? get mentions => throw _privateConstructorUsedError;
  bool? get directMessages => throw _privateConstructorUsedError;
  bool? get updates => throw _privateConstructorUsedError;
  bool? get appointmentReminders => throw _privateConstructorUsedError;
  bool? get paymentNotifications => throw _privateConstructorUsedError;
  bool? get supportUpdates => throw _privateConstructorUsedError;
  bool? get feedbackAlerts => throw _privateConstructorUsedError;
  bool? get trialNotifications => throw _privateConstructorUsedError;
  bool? get subscriptionAlerts => throw _privateConstructorUsedError;
  bool? get marketingEmails => throw _privateConstructorUsedError;
  bool? get quietHoursEnabled => throw _privateConstructorUsedError;
  String? get quietHoursStart => throw _privateConstructorUsedError;
  String? get quietHoursEnd => throw _privateConstructorUsedError;
  String? get quietHoursTimezone => throw _privateConstructorUsedError;

  /// Serializes this CreateNotificationPreferenceInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateNotificationPreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateNotificationPreferenceInputCopyWith<CreateNotificationPreferenceInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNotificationPreferenceInputCopyWith<$Res> {
  factory $CreateNotificationPreferenceInputCopyWith(
          CreateNotificationPreferenceInput value,
          $Res Function(CreateNotificationPreferenceInput) then) =
      _$CreateNotificationPreferenceInputCopyWithImpl<$Res,
          CreateNotificationPreferenceInput>;
  @useResult
  $Res call(
      {String userId,
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
      String? quietHoursTimezone});
}

/// @nodoc
class _$CreateNotificationPreferenceInputCopyWithImpl<$Res,
        $Val extends CreateNotificationPreferenceInput>
    implements $CreateNotificationPreferenceInputCopyWith<$Res> {
  _$CreateNotificationPreferenceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateNotificationPreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? allNotifications = freezed,
    Object? inAppEnabled = freezed,
    Object? emailEnabled = freezed,
    Object? pushEnabled = freezed,
    Object? mentions = freezed,
    Object? directMessages = freezed,
    Object? updates = freezed,
    Object? appointmentReminders = freezed,
    Object? paymentNotifications = freezed,
    Object? supportUpdates = freezed,
    Object? feedbackAlerts = freezed,
    Object? trialNotifications = freezed,
    Object? subscriptionAlerts = freezed,
    Object? marketingEmails = freezed,
    Object? quietHoursEnabled = freezed,
    Object? quietHoursStart = freezed,
    Object? quietHoursEnd = freezed,
    Object? quietHoursTimezone = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      allNotifications: freezed == allNotifications
          ? _value.allNotifications
          : allNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      inAppEnabled: freezed == inAppEnabled
          ? _value.inAppEnabled
          : inAppEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailEnabled: freezed == emailEnabled
          ? _value.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      pushEnabled: freezed == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      mentions: freezed == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as bool?,
      directMessages: freezed == directMessages
          ? _value.directMessages
          : directMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as bool?,
      appointmentReminders: freezed == appointmentReminders
          ? _value.appointmentReminders
          : appointmentReminders // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentNotifications: freezed == paymentNotifications
          ? _value.paymentNotifications
          : paymentNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportUpdates: freezed == supportUpdates
          ? _value.supportUpdates
          : supportUpdates // ignore: cast_nullable_to_non_nullable
              as bool?,
      feedbackAlerts: freezed == feedbackAlerts
          ? _value.feedbackAlerts
          : feedbackAlerts // ignore: cast_nullable_to_non_nullable
              as bool?,
      trialNotifications: freezed == trialNotifications
          ? _value.trialNotifications
          : trialNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      subscriptionAlerts: freezed == subscriptionAlerts
          ? _value.subscriptionAlerts
          : subscriptionAlerts // ignore: cast_nullable_to_non_nullable
              as bool?,
      marketingEmails: freezed == marketingEmails
          ? _value.marketingEmails
          : marketingEmails // ignore: cast_nullable_to_non_nullable
              as bool?,
      quietHoursEnabled: freezed == quietHoursEnabled
          ? _value.quietHoursEnabled
          : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      quietHoursStart: freezed == quietHoursStart
          ? _value.quietHoursStart
          : quietHoursStart // ignore: cast_nullable_to_non_nullable
              as String?,
      quietHoursEnd: freezed == quietHoursEnd
          ? _value.quietHoursEnd
          : quietHoursEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      quietHoursTimezone: freezed == quietHoursTimezone
          ? _value.quietHoursTimezone
          : quietHoursTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateNotificationPreferenceInputImplCopyWith<$Res>
    implements $CreateNotificationPreferenceInputCopyWith<$Res> {
  factory _$$CreateNotificationPreferenceInputImplCopyWith(
          _$CreateNotificationPreferenceInputImpl value,
          $Res Function(_$CreateNotificationPreferenceInputImpl) then) =
      __$$CreateNotificationPreferenceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
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
      String? quietHoursTimezone});
}

/// @nodoc
class __$$CreateNotificationPreferenceInputImplCopyWithImpl<$Res>
    extends _$CreateNotificationPreferenceInputCopyWithImpl<$Res,
        _$CreateNotificationPreferenceInputImpl>
    implements _$$CreateNotificationPreferenceInputImplCopyWith<$Res> {
  __$$CreateNotificationPreferenceInputImplCopyWithImpl(
      _$CreateNotificationPreferenceInputImpl _value,
      $Res Function(_$CreateNotificationPreferenceInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateNotificationPreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? allNotifications = freezed,
    Object? inAppEnabled = freezed,
    Object? emailEnabled = freezed,
    Object? pushEnabled = freezed,
    Object? mentions = freezed,
    Object? directMessages = freezed,
    Object? updates = freezed,
    Object? appointmentReminders = freezed,
    Object? paymentNotifications = freezed,
    Object? supportUpdates = freezed,
    Object? feedbackAlerts = freezed,
    Object? trialNotifications = freezed,
    Object? subscriptionAlerts = freezed,
    Object? marketingEmails = freezed,
    Object? quietHoursEnabled = freezed,
    Object? quietHoursStart = freezed,
    Object? quietHoursEnd = freezed,
    Object? quietHoursTimezone = freezed,
  }) {
    return _then(_$CreateNotificationPreferenceInputImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      allNotifications: freezed == allNotifications
          ? _value.allNotifications
          : allNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      inAppEnabled: freezed == inAppEnabled
          ? _value.inAppEnabled
          : inAppEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailEnabled: freezed == emailEnabled
          ? _value.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      pushEnabled: freezed == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      mentions: freezed == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as bool?,
      directMessages: freezed == directMessages
          ? _value.directMessages
          : directMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as bool?,
      appointmentReminders: freezed == appointmentReminders
          ? _value.appointmentReminders
          : appointmentReminders // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentNotifications: freezed == paymentNotifications
          ? _value.paymentNotifications
          : paymentNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportUpdates: freezed == supportUpdates
          ? _value.supportUpdates
          : supportUpdates // ignore: cast_nullable_to_non_nullable
              as bool?,
      feedbackAlerts: freezed == feedbackAlerts
          ? _value.feedbackAlerts
          : feedbackAlerts // ignore: cast_nullable_to_non_nullable
              as bool?,
      trialNotifications: freezed == trialNotifications
          ? _value.trialNotifications
          : trialNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      subscriptionAlerts: freezed == subscriptionAlerts
          ? _value.subscriptionAlerts
          : subscriptionAlerts // ignore: cast_nullable_to_non_nullable
              as bool?,
      marketingEmails: freezed == marketingEmails
          ? _value.marketingEmails
          : marketingEmails // ignore: cast_nullable_to_non_nullable
              as bool?,
      quietHoursEnabled: freezed == quietHoursEnabled
          ? _value.quietHoursEnabled
          : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      quietHoursStart: freezed == quietHoursStart
          ? _value.quietHoursStart
          : quietHoursStart // ignore: cast_nullable_to_non_nullable
              as String?,
      quietHoursEnd: freezed == quietHoursEnd
          ? _value.quietHoursEnd
          : quietHoursEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      quietHoursTimezone: freezed == quietHoursTimezone
          ? _value.quietHoursTimezone
          : quietHoursTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateNotificationPreferenceInputImpl
    implements _CreateNotificationPreferenceInput {
  const _$CreateNotificationPreferenceInputImpl(
      {required this.userId,
      this.allNotifications = true,
      this.inAppEnabled = true,
      this.emailEnabled = true,
      this.pushEnabled = false,
      this.mentions = false,
      this.directMessages = false,
      this.updates = false,
      this.appointmentReminders = true,
      this.paymentNotifications = true,
      this.supportUpdates = true,
      this.feedbackAlerts = true,
      this.trialNotifications = true,
      this.subscriptionAlerts = true,
      this.marketingEmails = false,
      this.quietHoursEnabled = false,
      this.quietHoursStart,
      this.quietHoursEnd,
      this.quietHoursTimezone});

  factory _$CreateNotificationPreferenceInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateNotificationPreferenceInputImplFromJson(json);

  @override
  final String userId;
  @override
  @JsonKey()
  final bool? allNotifications;
  @override
  @JsonKey()
  final bool? inAppEnabled;
  @override
  @JsonKey()
  final bool? emailEnabled;
  @override
  @JsonKey()
  final bool? pushEnabled;
  @override
  @JsonKey()
  final bool? mentions;
  @override
  @JsonKey()
  final bool? directMessages;
  @override
  @JsonKey()
  final bool? updates;
  @override
  @JsonKey()
  final bool? appointmentReminders;
  @override
  @JsonKey()
  final bool? paymentNotifications;
  @override
  @JsonKey()
  final bool? supportUpdates;
  @override
  @JsonKey()
  final bool? feedbackAlerts;
  @override
  @JsonKey()
  final bool? trialNotifications;
  @override
  @JsonKey()
  final bool? subscriptionAlerts;
  @override
  @JsonKey()
  final bool? marketingEmails;
  @override
  @JsonKey()
  final bool? quietHoursEnabled;
  @override
  final String? quietHoursStart;
  @override
  final String? quietHoursEnd;
  @override
  final String? quietHoursTimezone;

  @override
  String toString() {
    return 'CreateNotificationPreferenceInput(userId: $userId, allNotifications: $allNotifications, inAppEnabled: $inAppEnabled, emailEnabled: $emailEnabled, pushEnabled: $pushEnabled, mentions: $mentions, directMessages: $directMessages, updates: $updates, appointmentReminders: $appointmentReminders, paymentNotifications: $paymentNotifications, supportUpdates: $supportUpdates, feedbackAlerts: $feedbackAlerts, trialNotifications: $trialNotifications, subscriptionAlerts: $subscriptionAlerts, marketingEmails: $marketingEmails, quietHoursEnabled: $quietHoursEnabled, quietHoursStart: $quietHoursStart, quietHoursEnd: $quietHoursEnd, quietHoursTimezone: $quietHoursTimezone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNotificationPreferenceInputImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.allNotifications, allNotifications) ||
                other.allNotifications == allNotifications) &&
            (identical(other.inAppEnabled, inAppEnabled) ||
                other.inAppEnabled == inAppEnabled) &&
            (identical(other.emailEnabled, emailEnabled) ||
                other.emailEnabled == emailEnabled) &&
            (identical(other.pushEnabled, pushEnabled) ||
                other.pushEnabled == pushEnabled) &&
            (identical(other.mentions, mentions) ||
                other.mentions == mentions) &&
            (identical(other.directMessages, directMessages) ||
                other.directMessages == directMessages) &&
            (identical(other.updates, updates) || other.updates == updates) &&
            (identical(other.appointmentReminders, appointmentReminders) ||
                other.appointmentReminders == appointmentReminders) &&
            (identical(other.paymentNotifications, paymentNotifications) ||
                other.paymentNotifications == paymentNotifications) &&
            (identical(other.supportUpdates, supportUpdates) ||
                other.supportUpdates == supportUpdates) &&
            (identical(other.feedbackAlerts, feedbackAlerts) ||
                other.feedbackAlerts == feedbackAlerts) &&
            (identical(other.trialNotifications, trialNotifications) ||
                other.trialNotifications == trialNotifications) &&
            (identical(other.subscriptionAlerts, subscriptionAlerts) ||
                other.subscriptionAlerts == subscriptionAlerts) &&
            (identical(other.marketingEmails, marketingEmails) ||
                other.marketingEmails == marketingEmails) &&
            (identical(other.quietHoursEnabled, quietHoursEnabled) ||
                other.quietHoursEnabled == quietHoursEnabled) &&
            (identical(other.quietHoursStart, quietHoursStart) ||
                other.quietHoursStart == quietHoursStart) &&
            (identical(other.quietHoursEnd, quietHoursEnd) ||
                other.quietHoursEnd == quietHoursEnd) &&
            (identical(other.quietHoursTimezone, quietHoursTimezone) ||
                other.quietHoursTimezone == quietHoursTimezone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        userId,
        allNotifications,
        inAppEnabled,
        emailEnabled,
        pushEnabled,
        mentions,
        directMessages,
        updates,
        appointmentReminders,
        paymentNotifications,
        supportUpdates,
        feedbackAlerts,
        trialNotifications,
        subscriptionAlerts,
        marketingEmails,
        quietHoursEnabled,
        quietHoursStart,
        quietHoursEnd,
        quietHoursTimezone
      ]);

  /// Create a copy of CreateNotificationPreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNotificationPreferenceInputImplCopyWith<
          _$CreateNotificationPreferenceInputImpl>
      get copyWith => __$$CreateNotificationPreferenceInputImplCopyWithImpl<
          _$CreateNotificationPreferenceInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateNotificationPreferenceInputImplToJson(
      this,
    );
  }
}

abstract class _CreateNotificationPreferenceInput
    implements CreateNotificationPreferenceInput {
  const factory _CreateNotificationPreferenceInput(
          {required final String userId,
          final bool? allNotifications,
          final bool? inAppEnabled,
          final bool? emailEnabled,
          final bool? pushEnabled,
          final bool? mentions,
          final bool? directMessages,
          final bool? updates,
          final bool? appointmentReminders,
          final bool? paymentNotifications,
          final bool? supportUpdates,
          final bool? feedbackAlerts,
          final bool? trialNotifications,
          final bool? subscriptionAlerts,
          final bool? marketingEmails,
          final bool? quietHoursEnabled,
          final String? quietHoursStart,
          final String? quietHoursEnd,
          final String? quietHoursTimezone}) =
      _$CreateNotificationPreferenceInputImpl;

  factory _CreateNotificationPreferenceInput.fromJson(
          Map<String, dynamic> json) =
      _$CreateNotificationPreferenceInputImpl.fromJson;

  @override
  String get userId;
  @override
  bool? get allNotifications;
  @override
  bool? get inAppEnabled;
  @override
  bool? get emailEnabled;
  @override
  bool? get pushEnabled;
  @override
  bool? get mentions;
  @override
  bool? get directMessages;
  @override
  bool? get updates;
  @override
  bool? get appointmentReminders;
  @override
  bool? get paymentNotifications;
  @override
  bool? get supportUpdates;
  @override
  bool? get feedbackAlerts;
  @override
  bool? get trialNotifications;
  @override
  bool? get subscriptionAlerts;
  @override
  bool? get marketingEmails;
  @override
  bool? get quietHoursEnabled;
  @override
  String? get quietHoursStart;
  @override
  String? get quietHoursEnd;
  @override
  String? get quietHoursTimezone;

  /// Create a copy of CreateNotificationPreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateNotificationPreferenceInputImplCopyWith<
          _$CreateNotificationPreferenceInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateNotificationPreferenceInput _$UpdateNotificationPreferenceInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateNotificationPreferenceInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateNotificationPreferenceInput {
  String? get userId => throw _privateConstructorUsedError;
  bool? get allNotifications => throw _privateConstructorUsedError;
  bool? get inAppEnabled => throw _privateConstructorUsedError;
  bool? get emailEnabled => throw _privateConstructorUsedError;
  bool? get pushEnabled => throw _privateConstructorUsedError;
  bool? get mentions => throw _privateConstructorUsedError;
  bool? get directMessages => throw _privateConstructorUsedError;
  bool? get updates => throw _privateConstructorUsedError;
  bool? get appointmentReminders => throw _privateConstructorUsedError;
  bool? get paymentNotifications => throw _privateConstructorUsedError;
  bool? get supportUpdates => throw _privateConstructorUsedError;
  bool? get feedbackAlerts => throw _privateConstructorUsedError;
  bool? get trialNotifications => throw _privateConstructorUsedError;
  bool? get subscriptionAlerts => throw _privateConstructorUsedError;
  bool? get marketingEmails => throw _privateConstructorUsedError;
  bool? get quietHoursEnabled => throw _privateConstructorUsedError;
  String? get quietHoursStart => throw _privateConstructorUsedError;
  String? get quietHoursEnd => throw _privateConstructorUsedError;
  String? get quietHoursTimezone => throw _privateConstructorUsedError;

  /// Serializes this UpdateNotificationPreferenceInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateNotificationPreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateNotificationPreferenceInputCopyWith<UpdateNotificationPreferenceInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateNotificationPreferenceInputCopyWith<$Res> {
  factory $UpdateNotificationPreferenceInputCopyWith(
          UpdateNotificationPreferenceInput value,
          $Res Function(UpdateNotificationPreferenceInput) then) =
      _$UpdateNotificationPreferenceInputCopyWithImpl<$Res,
          UpdateNotificationPreferenceInput>;
  @useResult
  $Res call(
      {String? userId,
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
      String? quietHoursTimezone});
}

/// @nodoc
class _$UpdateNotificationPreferenceInputCopyWithImpl<$Res,
        $Val extends UpdateNotificationPreferenceInput>
    implements $UpdateNotificationPreferenceInputCopyWith<$Res> {
  _$UpdateNotificationPreferenceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateNotificationPreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? allNotifications = freezed,
    Object? inAppEnabled = freezed,
    Object? emailEnabled = freezed,
    Object? pushEnabled = freezed,
    Object? mentions = freezed,
    Object? directMessages = freezed,
    Object? updates = freezed,
    Object? appointmentReminders = freezed,
    Object? paymentNotifications = freezed,
    Object? supportUpdates = freezed,
    Object? feedbackAlerts = freezed,
    Object? trialNotifications = freezed,
    Object? subscriptionAlerts = freezed,
    Object? marketingEmails = freezed,
    Object? quietHoursEnabled = freezed,
    Object? quietHoursStart = freezed,
    Object? quietHoursEnd = freezed,
    Object? quietHoursTimezone = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      allNotifications: freezed == allNotifications
          ? _value.allNotifications
          : allNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      inAppEnabled: freezed == inAppEnabled
          ? _value.inAppEnabled
          : inAppEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailEnabled: freezed == emailEnabled
          ? _value.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      pushEnabled: freezed == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      mentions: freezed == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as bool?,
      directMessages: freezed == directMessages
          ? _value.directMessages
          : directMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as bool?,
      appointmentReminders: freezed == appointmentReminders
          ? _value.appointmentReminders
          : appointmentReminders // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentNotifications: freezed == paymentNotifications
          ? _value.paymentNotifications
          : paymentNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportUpdates: freezed == supportUpdates
          ? _value.supportUpdates
          : supportUpdates // ignore: cast_nullable_to_non_nullable
              as bool?,
      feedbackAlerts: freezed == feedbackAlerts
          ? _value.feedbackAlerts
          : feedbackAlerts // ignore: cast_nullable_to_non_nullable
              as bool?,
      trialNotifications: freezed == trialNotifications
          ? _value.trialNotifications
          : trialNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      subscriptionAlerts: freezed == subscriptionAlerts
          ? _value.subscriptionAlerts
          : subscriptionAlerts // ignore: cast_nullable_to_non_nullable
              as bool?,
      marketingEmails: freezed == marketingEmails
          ? _value.marketingEmails
          : marketingEmails // ignore: cast_nullable_to_non_nullable
              as bool?,
      quietHoursEnabled: freezed == quietHoursEnabled
          ? _value.quietHoursEnabled
          : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      quietHoursStart: freezed == quietHoursStart
          ? _value.quietHoursStart
          : quietHoursStart // ignore: cast_nullable_to_non_nullable
              as String?,
      quietHoursEnd: freezed == quietHoursEnd
          ? _value.quietHoursEnd
          : quietHoursEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      quietHoursTimezone: freezed == quietHoursTimezone
          ? _value.quietHoursTimezone
          : quietHoursTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateNotificationPreferenceInputImplCopyWith<$Res>
    implements $UpdateNotificationPreferenceInputCopyWith<$Res> {
  factory _$$UpdateNotificationPreferenceInputImplCopyWith(
          _$UpdateNotificationPreferenceInputImpl value,
          $Res Function(_$UpdateNotificationPreferenceInputImpl) then) =
      __$$UpdateNotificationPreferenceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
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
      String? quietHoursTimezone});
}

/// @nodoc
class __$$UpdateNotificationPreferenceInputImplCopyWithImpl<$Res>
    extends _$UpdateNotificationPreferenceInputCopyWithImpl<$Res,
        _$UpdateNotificationPreferenceInputImpl>
    implements _$$UpdateNotificationPreferenceInputImplCopyWith<$Res> {
  __$$UpdateNotificationPreferenceInputImplCopyWithImpl(
      _$UpdateNotificationPreferenceInputImpl _value,
      $Res Function(_$UpdateNotificationPreferenceInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateNotificationPreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? allNotifications = freezed,
    Object? inAppEnabled = freezed,
    Object? emailEnabled = freezed,
    Object? pushEnabled = freezed,
    Object? mentions = freezed,
    Object? directMessages = freezed,
    Object? updates = freezed,
    Object? appointmentReminders = freezed,
    Object? paymentNotifications = freezed,
    Object? supportUpdates = freezed,
    Object? feedbackAlerts = freezed,
    Object? trialNotifications = freezed,
    Object? subscriptionAlerts = freezed,
    Object? marketingEmails = freezed,
    Object? quietHoursEnabled = freezed,
    Object? quietHoursStart = freezed,
    Object? quietHoursEnd = freezed,
    Object? quietHoursTimezone = freezed,
  }) {
    return _then(_$UpdateNotificationPreferenceInputImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      allNotifications: freezed == allNotifications
          ? _value.allNotifications
          : allNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      inAppEnabled: freezed == inAppEnabled
          ? _value.inAppEnabled
          : inAppEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailEnabled: freezed == emailEnabled
          ? _value.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      pushEnabled: freezed == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      mentions: freezed == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as bool?,
      directMessages: freezed == directMessages
          ? _value.directMessages
          : directMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as bool?,
      appointmentReminders: freezed == appointmentReminders
          ? _value.appointmentReminders
          : appointmentReminders // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentNotifications: freezed == paymentNotifications
          ? _value.paymentNotifications
          : paymentNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportUpdates: freezed == supportUpdates
          ? _value.supportUpdates
          : supportUpdates // ignore: cast_nullable_to_non_nullable
              as bool?,
      feedbackAlerts: freezed == feedbackAlerts
          ? _value.feedbackAlerts
          : feedbackAlerts // ignore: cast_nullable_to_non_nullable
              as bool?,
      trialNotifications: freezed == trialNotifications
          ? _value.trialNotifications
          : trialNotifications // ignore: cast_nullable_to_non_nullable
              as bool?,
      subscriptionAlerts: freezed == subscriptionAlerts
          ? _value.subscriptionAlerts
          : subscriptionAlerts // ignore: cast_nullable_to_non_nullable
              as bool?,
      marketingEmails: freezed == marketingEmails
          ? _value.marketingEmails
          : marketingEmails // ignore: cast_nullable_to_non_nullable
              as bool?,
      quietHoursEnabled: freezed == quietHoursEnabled
          ? _value.quietHoursEnabled
          : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      quietHoursStart: freezed == quietHoursStart
          ? _value.quietHoursStart
          : quietHoursStart // ignore: cast_nullable_to_non_nullable
              as String?,
      quietHoursEnd: freezed == quietHoursEnd
          ? _value.quietHoursEnd
          : quietHoursEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      quietHoursTimezone: freezed == quietHoursTimezone
          ? _value.quietHoursTimezone
          : quietHoursTimezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateNotificationPreferenceInputImpl
    implements _UpdateNotificationPreferenceInput {
  const _$UpdateNotificationPreferenceInputImpl(
      {this.userId,
      this.allNotifications,
      this.inAppEnabled,
      this.emailEnabled,
      this.pushEnabled,
      this.mentions,
      this.directMessages,
      this.updates,
      this.appointmentReminders,
      this.paymentNotifications,
      this.supportUpdates,
      this.feedbackAlerts,
      this.trialNotifications,
      this.subscriptionAlerts,
      this.marketingEmails,
      this.quietHoursEnabled,
      this.quietHoursStart,
      this.quietHoursEnd,
      this.quietHoursTimezone});

  factory _$UpdateNotificationPreferenceInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateNotificationPreferenceInputImplFromJson(json);

  @override
  final String? userId;
  @override
  final bool? allNotifications;
  @override
  final bool? inAppEnabled;
  @override
  final bool? emailEnabled;
  @override
  final bool? pushEnabled;
  @override
  final bool? mentions;
  @override
  final bool? directMessages;
  @override
  final bool? updates;
  @override
  final bool? appointmentReminders;
  @override
  final bool? paymentNotifications;
  @override
  final bool? supportUpdates;
  @override
  final bool? feedbackAlerts;
  @override
  final bool? trialNotifications;
  @override
  final bool? subscriptionAlerts;
  @override
  final bool? marketingEmails;
  @override
  final bool? quietHoursEnabled;
  @override
  final String? quietHoursStart;
  @override
  final String? quietHoursEnd;
  @override
  final String? quietHoursTimezone;

  @override
  String toString() {
    return 'UpdateNotificationPreferenceInput(userId: $userId, allNotifications: $allNotifications, inAppEnabled: $inAppEnabled, emailEnabled: $emailEnabled, pushEnabled: $pushEnabled, mentions: $mentions, directMessages: $directMessages, updates: $updates, appointmentReminders: $appointmentReminders, paymentNotifications: $paymentNotifications, supportUpdates: $supportUpdates, feedbackAlerts: $feedbackAlerts, trialNotifications: $trialNotifications, subscriptionAlerts: $subscriptionAlerts, marketingEmails: $marketingEmails, quietHoursEnabled: $quietHoursEnabled, quietHoursStart: $quietHoursStart, quietHoursEnd: $quietHoursEnd, quietHoursTimezone: $quietHoursTimezone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNotificationPreferenceInputImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.allNotifications, allNotifications) ||
                other.allNotifications == allNotifications) &&
            (identical(other.inAppEnabled, inAppEnabled) ||
                other.inAppEnabled == inAppEnabled) &&
            (identical(other.emailEnabled, emailEnabled) ||
                other.emailEnabled == emailEnabled) &&
            (identical(other.pushEnabled, pushEnabled) ||
                other.pushEnabled == pushEnabled) &&
            (identical(other.mentions, mentions) ||
                other.mentions == mentions) &&
            (identical(other.directMessages, directMessages) ||
                other.directMessages == directMessages) &&
            (identical(other.updates, updates) || other.updates == updates) &&
            (identical(other.appointmentReminders, appointmentReminders) ||
                other.appointmentReminders == appointmentReminders) &&
            (identical(other.paymentNotifications, paymentNotifications) ||
                other.paymentNotifications == paymentNotifications) &&
            (identical(other.supportUpdates, supportUpdates) ||
                other.supportUpdates == supportUpdates) &&
            (identical(other.feedbackAlerts, feedbackAlerts) ||
                other.feedbackAlerts == feedbackAlerts) &&
            (identical(other.trialNotifications, trialNotifications) ||
                other.trialNotifications == trialNotifications) &&
            (identical(other.subscriptionAlerts, subscriptionAlerts) ||
                other.subscriptionAlerts == subscriptionAlerts) &&
            (identical(other.marketingEmails, marketingEmails) ||
                other.marketingEmails == marketingEmails) &&
            (identical(other.quietHoursEnabled, quietHoursEnabled) ||
                other.quietHoursEnabled == quietHoursEnabled) &&
            (identical(other.quietHoursStart, quietHoursStart) ||
                other.quietHoursStart == quietHoursStart) &&
            (identical(other.quietHoursEnd, quietHoursEnd) ||
                other.quietHoursEnd == quietHoursEnd) &&
            (identical(other.quietHoursTimezone, quietHoursTimezone) ||
                other.quietHoursTimezone == quietHoursTimezone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        userId,
        allNotifications,
        inAppEnabled,
        emailEnabled,
        pushEnabled,
        mentions,
        directMessages,
        updates,
        appointmentReminders,
        paymentNotifications,
        supportUpdates,
        feedbackAlerts,
        trialNotifications,
        subscriptionAlerts,
        marketingEmails,
        quietHoursEnabled,
        quietHoursStart,
        quietHoursEnd,
        quietHoursTimezone
      ]);

  /// Create a copy of UpdateNotificationPreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNotificationPreferenceInputImplCopyWith<
          _$UpdateNotificationPreferenceInputImpl>
      get copyWith => __$$UpdateNotificationPreferenceInputImplCopyWithImpl<
          _$UpdateNotificationPreferenceInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateNotificationPreferenceInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateNotificationPreferenceInput
    implements UpdateNotificationPreferenceInput {
  const factory _UpdateNotificationPreferenceInput(
          {final String? userId,
          final bool? allNotifications,
          final bool? inAppEnabled,
          final bool? emailEnabled,
          final bool? pushEnabled,
          final bool? mentions,
          final bool? directMessages,
          final bool? updates,
          final bool? appointmentReminders,
          final bool? paymentNotifications,
          final bool? supportUpdates,
          final bool? feedbackAlerts,
          final bool? trialNotifications,
          final bool? subscriptionAlerts,
          final bool? marketingEmails,
          final bool? quietHoursEnabled,
          final String? quietHoursStart,
          final String? quietHoursEnd,
          final String? quietHoursTimezone}) =
      _$UpdateNotificationPreferenceInputImpl;

  factory _UpdateNotificationPreferenceInput.fromJson(
          Map<String, dynamic> json) =
      _$UpdateNotificationPreferenceInputImpl.fromJson;

  @override
  String? get userId;
  @override
  bool? get allNotifications;
  @override
  bool? get inAppEnabled;
  @override
  bool? get emailEnabled;
  @override
  bool? get pushEnabled;
  @override
  bool? get mentions;
  @override
  bool? get directMessages;
  @override
  bool? get updates;
  @override
  bool? get appointmentReminders;
  @override
  bool? get paymentNotifications;
  @override
  bool? get supportUpdates;
  @override
  bool? get feedbackAlerts;
  @override
  bool? get trialNotifications;
  @override
  bool? get subscriptionAlerts;
  @override
  bool? get marketingEmails;
  @override
  bool? get quietHoursEnabled;
  @override
  String? get quietHoursStart;
  @override
  String? get quietHoursEnd;
  @override
  String? get quietHoursTimezone;

  /// Create a copy of UpdateNotificationPreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNotificationPreferenceInputImplCopyWith<
          _$UpdateNotificationPreferenceInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationPreferenceWhereUniqueInput
    _$NotificationPreferenceWhereUniqueInputFromJson(
        Map<String, dynamic> json) {
  return _NotificationPreferenceWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$NotificationPreferenceWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this NotificationPreferenceWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationPreferenceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationPreferenceWhereUniqueInputCopyWith<
          NotificationPreferenceWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPreferenceWhereUniqueInputCopyWith<$Res> {
  factory $NotificationPreferenceWhereUniqueInputCopyWith(
          NotificationPreferenceWhereUniqueInput value,
          $Res Function(NotificationPreferenceWhereUniqueInput) then) =
      _$NotificationPreferenceWhereUniqueInputCopyWithImpl<$Res,
          NotificationPreferenceWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? userId});
}

/// @nodoc
class _$NotificationPreferenceWhereUniqueInputCopyWithImpl<$Res,
        $Val extends NotificationPreferenceWhereUniqueInput>
    implements $NotificationPreferenceWhereUniqueInputCopyWith<$Res> {
  _$NotificationPreferenceWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPreferenceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationPreferenceWhereUniqueInputImplCopyWith<$Res>
    implements $NotificationPreferenceWhereUniqueInputCopyWith<$Res> {
  factory _$$NotificationPreferenceWhereUniqueInputImplCopyWith(
          _$NotificationPreferenceWhereUniqueInputImpl value,
          $Res Function(_$NotificationPreferenceWhereUniqueInputImpl) then) =
      __$$NotificationPreferenceWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? userId});
}

/// @nodoc
class __$$NotificationPreferenceWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$NotificationPreferenceWhereUniqueInputCopyWithImpl<$Res,
        _$NotificationPreferenceWhereUniqueInputImpl>
    implements _$$NotificationPreferenceWhereUniqueInputImplCopyWith<$Res> {
  __$$NotificationPreferenceWhereUniqueInputImplCopyWithImpl(
      _$NotificationPreferenceWhereUniqueInputImpl _value,
      $Res Function(_$NotificationPreferenceWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPreferenceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$NotificationPreferenceWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationPreferenceWhereUniqueInputImpl
    implements _NotificationPreferenceWhereUniqueInput {
  const _$NotificationPreferenceWhereUniqueInputImpl({this.id, this.userId});

  factory _$NotificationPreferenceWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationPreferenceWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;

  @override
  String toString() {
    return 'NotificationPreferenceWhereUniqueInput(id: $id, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPreferenceWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId);

  /// Create a copy of NotificationPreferenceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPreferenceWhereUniqueInputImplCopyWith<
          _$NotificationPreferenceWhereUniqueInputImpl>
      get copyWith =>
          __$$NotificationPreferenceWhereUniqueInputImplCopyWithImpl<
              _$NotificationPreferenceWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPreferenceWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _NotificationPreferenceWhereUniqueInput
    implements NotificationPreferenceWhereUniqueInput {
  const factory _NotificationPreferenceWhereUniqueInput(
      {final String? id,
      final String? userId}) = _$NotificationPreferenceWhereUniqueInputImpl;

  factory _NotificationPreferenceWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$NotificationPreferenceWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get userId;

  /// Create a copy of NotificationPreferenceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPreferenceWhereUniqueInputImplCopyWith<
          _$NotificationPreferenceWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationPreferenceWhereInput _$NotificationPreferenceWhereInputFromJson(
    Map<String, dynamic> json) {
  return _NotificationPreferenceWhereInput.fromJson(json);
}

/// @nodoc
mixin _$NotificationPreferenceWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  BooleanFilter? get allNotifications => throw _privateConstructorUsedError;
  BooleanFilter? get inAppEnabled => throw _privateConstructorUsedError;
  BooleanFilter? get emailEnabled => throw _privateConstructorUsedError;
  BooleanFilter? get pushEnabled => throw _privateConstructorUsedError;
  BooleanFilter? get mentions => throw _privateConstructorUsedError;
  BooleanFilter? get directMessages => throw _privateConstructorUsedError;
  BooleanFilter? get updates => throw _privateConstructorUsedError;
  BooleanFilter? get appointmentReminders => throw _privateConstructorUsedError;
  BooleanFilter? get paymentNotifications => throw _privateConstructorUsedError;
  BooleanFilter? get supportUpdates => throw _privateConstructorUsedError;
  BooleanFilter? get feedbackAlerts => throw _privateConstructorUsedError;
  BooleanFilter? get trialNotifications => throw _privateConstructorUsedError;
  BooleanFilter? get subscriptionAlerts => throw _privateConstructorUsedError;
  BooleanFilter? get marketingEmails => throw _privateConstructorUsedError;
  BooleanFilter? get quietHoursEnabled => throw _privateConstructorUsedError;
  StringFilter? get quietHoursStart => throw _privateConstructorUsedError;
  StringFilter? get quietHoursEnd => throw _privateConstructorUsedError;
  StringFilter? get quietHoursTimezone => throw _privateConstructorUsedError;
  List<NotificationPreferenceWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<NotificationPreferenceWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  NotificationPreferenceWhereInput? get NOT =>
      throw _privateConstructorUsedError;

  /// Serializes this NotificationPreferenceWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationPreferenceWhereInputCopyWith<NotificationPreferenceWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPreferenceWhereInputCopyWith<$Res> {
  factory $NotificationPreferenceWhereInputCopyWith(
          NotificationPreferenceWhereInput value,
          $Res Function(NotificationPreferenceWhereInput) then) =
      _$NotificationPreferenceWhereInputCopyWithImpl<$Res,
          NotificationPreferenceWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
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
      NotificationPreferenceWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $UserRelationFilterCopyWith<$Res>? get user;
  $StringFilterCopyWith<$Res>? get userId;
  $BooleanFilterCopyWith<$Res>? get allNotifications;
  $BooleanFilterCopyWith<$Res>? get inAppEnabled;
  $BooleanFilterCopyWith<$Res>? get emailEnabled;
  $BooleanFilterCopyWith<$Res>? get pushEnabled;
  $BooleanFilterCopyWith<$Res>? get mentions;
  $BooleanFilterCopyWith<$Res>? get directMessages;
  $BooleanFilterCopyWith<$Res>? get updates;
  $BooleanFilterCopyWith<$Res>? get appointmentReminders;
  $BooleanFilterCopyWith<$Res>? get paymentNotifications;
  $BooleanFilterCopyWith<$Res>? get supportUpdates;
  $BooleanFilterCopyWith<$Res>? get feedbackAlerts;
  $BooleanFilterCopyWith<$Res>? get trialNotifications;
  $BooleanFilterCopyWith<$Res>? get subscriptionAlerts;
  $BooleanFilterCopyWith<$Res>? get marketingEmails;
  $BooleanFilterCopyWith<$Res>? get quietHoursEnabled;
  $StringFilterCopyWith<$Res>? get quietHoursStart;
  $StringFilterCopyWith<$Res>? get quietHoursEnd;
  $StringFilterCopyWith<$Res>? get quietHoursTimezone;
  $NotificationPreferenceWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$NotificationPreferenceWhereInputCopyWithImpl<$Res,
        $Val extends NotificationPreferenceWhereInput>
    implements $NotificationPreferenceWhereInputCopyWith<$Res> {
  _$NotificationPreferenceWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? allNotifications = freezed,
    Object? inAppEnabled = freezed,
    Object? emailEnabled = freezed,
    Object? pushEnabled = freezed,
    Object? mentions = freezed,
    Object? directMessages = freezed,
    Object? updates = freezed,
    Object? appointmentReminders = freezed,
    Object? paymentNotifications = freezed,
    Object? supportUpdates = freezed,
    Object? feedbackAlerts = freezed,
    Object? trialNotifications = freezed,
    Object? subscriptionAlerts = freezed,
    Object? marketingEmails = freezed,
    Object? quietHoursEnabled = freezed,
    Object? quietHoursStart = freezed,
    Object? quietHoursEnd = freezed,
    Object? quietHoursTimezone = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      allNotifications: freezed == allNotifications
          ? _value.allNotifications
          : allNotifications // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      inAppEnabled: freezed == inAppEnabled
          ? _value.inAppEnabled
          : inAppEnabled // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      emailEnabled: freezed == emailEnabled
          ? _value.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      pushEnabled: freezed == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      mentions: freezed == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      directMessages: freezed == directMessages
          ? _value.directMessages
          : directMessages // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      appointmentReminders: freezed == appointmentReminders
          ? _value.appointmentReminders
          : appointmentReminders // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      paymentNotifications: freezed == paymentNotifications
          ? _value.paymentNotifications
          : paymentNotifications // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      supportUpdates: freezed == supportUpdates
          ? _value.supportUpdates
          : supportUpdates // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      feedbackAlerts: freezed == feedbackAlerts
          ? _value.feedbackAlerts
          : feedbackAlerts // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      trialNotifications: freezed == trialNotifications
          ? _value.trialNotifications
          : trialNotifications // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      subscriptionAlerts: freezed == subscriptionAlerts
          ? _value.subscriptionAlerts
          : subscriptionAlerts // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      marketingEmails: freezed == marketingEmails
          ? _value.marketingEmails
          : marketingEmails // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      quietHoursEnabled: freezed == quietHoursEnabled
          ? _value.quietHoursEnabled
          : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      quietHoursStart: freezed == quietHoursStart
          ? _value.quietHoursStart
          : quietHoursStart // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      quietHoursEnd: freezed == quietHoursEnd
          ? _value.quietHoursEnd
          : quietHoursEnd // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      quietHoursTimezone: freezed == quietHoursTimezone
          ? _value.quietHoursTimezone
          : quietHoursTimezone // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<NotificationPreferenceWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<NotificationPreferenceWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as NotificationPreferenceWhereInput?,
    ) as $Val);
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get id {
    if (_value.id == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.id!, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRelationFilterCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserRelationFilterCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get userId {
    if (_value.userId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.userId!, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get allNotifications {
    if (_value.allNotifications == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.allNotifications!, (value) {
      return _then(_value.copyWith(allNotifications: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get inAppEnabled {
    if (_value.inAppEnabled == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.inAppEnabled!, (value) {
      return _then(_value.copyWith(inAppEnabled: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get emailEnabled {
    if (_value.emailEnabled == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.emailEnabled!, (value) {
      return _then(_value.copyWith(emailEnabled: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get pushEnabled {
    if (_value.pushEnabled == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.pushEnabled!, (value) {
      return _then(_value.copyWith(pushEnabled: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get mentions {
    if (_value.mentions == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.mentions!, (value) {
      return _then(_value.copyWith(mentions: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get directMessages {
    if (_value.directMessages == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.directMessages!, (value) {
      return _then(_value.copyWith(directMessages: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get updates {
    if (_value.updates == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.updates!, (value) {
      return _then(_value.copyWith(updates: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get appointmentReminders {
    if (_value.appointmentReminders == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.appointmentReminders!, (value) {
      return _then(_value.copyWith(appointmentReminders: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get paymentNotifications {
    if (_value.paymentNotifications == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.paymentNotifications!, (value) {
      return _then(_value.copyWith(paymentNotifications: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get supportUpdates {
    if (_value.supportUpdates == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.supportUpdates!, (value) {
      return _then(_value.copyWith(supportUpdates: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get feedbackAlerts {
    if (_value.feedbackAlerts == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.feedbackAlerts!, (value) {
      return _then(_value.copyWith(feedbackAlerts: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get trialNotifications {
    if (_value.trialNotifications == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.trialNotifications!, (value) {
      return _then(_value.copyWith(trialNotifications: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get subscriptionAlerts {
    if (_value.subscriptionAlerts == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.subscriptionAlerts!, (value) {
      return _then(_value.copyWith(subscriptionAlerts: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get marketingEmails {
    if (_value.marketingEmails == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.marketingEmails!, (value) {
      return _then(_value.copyWith(marketingEmails: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get quietHoursEnabled {
    if (_value.quietHoursEnabled == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.quietHoursEnabled!, (value) {
      return _then(_value.copyWith(quietHoursEnabled: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get quietHoursStart {
    if (_value.quietHoursStart == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.quietHoursStart!, (value) {
      return _then(_value.copyWith(quietHoursStart: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get quietHoursEnd {
    if (_value.quietHoursEnd == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.quietHoursEnd!, (value) {
      return _then(_value.copyWith(quietHoursEnd: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get quietHoursTimezone {
    if (_value.quietHoursTimezone == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.quietHoursTimezone!, (value) {
      return _then(_value.copyWith(quietHoursTimezone: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationPreferenceWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $NotificationPreferenceWhereInputCopyWith<$Res>(_value.NOT!,
        (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationPreferenceWhereInputImplCopyWith<$Res>
    implements $NotificationPreferenceWhereInputCopyWith<$Res> {
  factory _$$NotificationPreferenceWhereInputImplCopyWith(
          _$NotificationPreferenceWhereInputImpl value,
          $Res Function(_$NotificationPreferenceWhereInputImpl) then) =
      __$$NotificationPreferenceWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
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
      NotificationPreferenceWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $BooleanFilterCopyWith<$Res>? get allNotifications;
  @override
  $BooleanFilterCopyWith<$Res>? get inAppEnabled;
  @override
  $BooleanFilterCopyWith<$Res>? get emailEnabled;
  @override
  $BooleanFilterCopyWith<$Res>? get pushEnabled;
  @override
  $BooleanFilterCopyWith<$Res>? get mentions;
  @override
  $BooleanFilterCopyWith<$Res>? get directMessages;
  @override
  $BooleanFilterCopyWith<$Res>? get updates;
  @override
  $BooleanFilterCopyWith<$Res>? get appointmentReminders;
  @override
  $BooleanFilterCopyWith<$Res>? get paymentNotifications;
  @override
  $BooleanFilterCopyWith<$Res>? get supportUpdates;
  @override
  $BooleanFilterCopyWith<$Res>? get feedbackAlerts;
  @override
  $BooleanFilterCopyWith<$Res>? get trialNotifications;
  @override
  $BooleanFilterCopyWith<$Res>? get subscriptionAlerts;
  @override
  $BooleanFilterCopyWith<$Res>? get marketingEmails;
  @override
  $BooleanFilterCopyWith<$Res>? get quietHoursEnabled;
  @override
  $StringFilterCopyWith<$Res>? get quietHoursStart;
  @override
  $StringFilterCopyWith<$Res>? get quietHoursEnd;
  @override
  $StringFilterCopyWith<$Res>? get quietHoursTimezone;
  @override
  $NotificationPreferenceWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$NotificationPreferenceWhereInputImplCopyWithImpl<$Res>
    extends _$NotificationPreferenceWhereInputCopyWithImpl<$Res,
        _$NotificationPreferenceWhereInputImpl>
    implements _$$NotificationPreferenceWhereInputImplCopyWith<$Res> {
  __$$NotificationPreferenceWhereInputImplCopyWithImpl(
      _$NotificationPreferenceWhereInputImpl _value,
      $Res Function(_$NotificationPreferenceWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? allNotifications = freezed,
    Object? inAppEnabled = freezed,
    Object? emailEnabled = freezed,
    Object? pushEnabled = freezed,
    Object? mentions = freezed,
    Object? directMessages = freezed,
    Object? updates = freezed,
    Object? appointmentReminders = freezed,
    Object? paymentNotifications = freezed,
    Object? supportUpdates = freezed,
    Object? feedbackAlerts = freezed,
    Object? trialNotifications = freezed,
    Object? subscriptionAlerts = freezed,
    Object? marketingEmails = freezed,
    Object? quietHoursEnabled = freezed,
    Object? quietHoursStart = freezed,
    Object? quietHoursEnd = freezed,
    Object? quietHoursTimezone = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$NotificationPreferenceWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      allNotifications: freezed == allNotifications
          ? _value.allNotifications
          : allNotifications // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      inAppEnabled: freezed == inAppEnabled
          ? _value.inAppEnabled
          : inAppEnabled // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      emailEnabled: freezed == emailEnabled
          ? _value.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      pushEnabled: freezed == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      mentions: freezed == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      directMessages: freezed == directMessages
          ? _value.directMessages
          : directMessages // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      appointmentReminders: freezed == appointmentReminders
          ? _value.appointmentReminders
          : appointmentReminders // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      paymentNotifications: freezed == paymentNotifications
          ? _value.paymentNotifications
          : paymentNotifications // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      supportUpdates: freezed == supportUpdates
          ? _value.supportUpdates
          : supportUpdates // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      feedbackAlerts: freezed == feedbackAlerts
          ? _value.feedbackAlerts
          : feedbackAlerts // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      trialNotifications: freezed == trialNotifications
          ? _value.trialNotifications
          : trialNotifications // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      subscriptionAlerts: freezed == subscriptionAlerts
          ? _value.subscriptionAlerts
          : subscriptionAlerts // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      marketingEmails: freezed == marketingEmails
          ? _value.marketingEmails
          : marketingEmails // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      quietHoursEnabled: freezed == quietHoursEnabled
          ? _value.quietHoursEnabled
          : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      quietHoursStart: freezed == quietHoursStart
          ? _value.quietHoursStart
          : quietHoursStart // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      quietHoursEnd: freezed == quietHoursEnd
          ? _value.quietHoursEnd
          : quietHoursEnd // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      quietHoursTimezone: freezed == quietHoursTimezone
          ? _value.quietHoursTimezone
          : quietHoursTimezone // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<NotificationPreferenceWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<NotificationPreferenceWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as NotificationPreferenceWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$NotificationPreferenceWhereInputImpl
    implements _NotificationPreferenceWhereInput {
  const _$NotificationPreferenceWhereInputImpl(
      {this.id,
      this.user,
      this.userId,
      this.allNotifications,
      this.inAppEnabled,
      this.emailEnabled,
      this.pushEnabled,
      this.mentions,
      this.directMessages,
      this.updates,
      this.appointmentReminders,
      this.paymentNotifications,
      this.supportUpdates,
      this.feedbackAlerts,
      this.trialNotifications,
      this.subscriptionAlerts,
      this.marketingEmails,
      this.quietHoursEnabled,
      this.quietHoursStart,
      this.quietHoursEnd,
      this.quietHoursTimezone,
      final List<NotificationPreferenceWhereInput>? AND,
      final List<NotificationPreferenceWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$NotificationPreferenceWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationPreferenceWhereInputImplFromJson(json);

  @override
  final StringFilter? id;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final StringFilter? userId;
  @override
  final BooleanFilter? allNotifications;
  @override
  final BooleanFilter? inAppEnabled;
  @override
  final BooleanFilter? emailEnabled;
  @override
  final BooleanFilter? pushEnabled;
  @override
  final BooleanFilter? mentions;
  @override
  final BooleanFilter? directMessages;
  @override
  final BooleanFilter? updates;
  @override
  final BooleanFilter? appointmentReminders;
  @override
  final BooleanFilter? paymentNotifications;
  @override
  final BooleanFilter? supportUpdates;
  @override
  final BooleanFilter? feedbackAlerts;
  @override
  final BooleanFilter? trialNotifications;
  @override
  final BooleanFilter? subscriptionAlerts;
  @override
  final BooleanFilter? marketingEmails;
  @override
  final BooleanFilter? quietHoursEnabled;
  @override
  final StringFilter? quietHoursStart;
  @override
  final StringFilter? quietHoursEnd;
  @override
  final StringFilter? quietHoursTimezone;
  final List<NotificationPreferenceWhereInput>? _AND;
  @override
  List<NotificationPreferenceWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NotificationPreferenceWhereInput>? _OR;
  @override
  List<NotificationPreferenceWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final NotificationPreferenceWhereInput? NOT;

  @override
  String toString() {
    return 'NotificationPreferenceWhereInput(id: $id, user: $user, userId: $userId, allNotifications: $allNotifications, inAppEnabled: $inAppEnabled, emailEnabled: $emailEnabled, pushEnabled: $pushEnabled, mentions: $mentions, directMessages: $directMessages, updates: $updates, appointmentReminders: $appointmentReminders, paymentNotifications: $paymentNotifications, supportUpdates: $supportUpdates, feedbackAlerts: $feedbackAlerts, trialNotifications: $trialNotifications, subscriptionAlerts: $subscriptionAlerts, marketingEmails: $marketingEmails, quietHoursEnabled: $quietHoursEnabled, quietHoursStart: $quietHoursStart, quietHoursEnd: $quietHoursEnd, quietHoursTimezone: $quietHoursTimezone, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPreferenceWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.allNotifications, allNotifications) ||
                other.allNotifications == allNotifications) &&
            (identical(other.inAppEnabled, inAppEnabled) ||
                other.inAppEnabled == inAppEnabled) &&
            (identical(other.emailEnabled, emailEnabled) ||
                other.emailEnabled == emailEnabled) &&
            (identical(other.pushEnabled, pushEnabled) ||
                other.pushEnabled == pushEnabled) &&
            (identical(other.mentions, mentions) ||
                other.mentions == mentions) &&
            (identical(other.directMessages, directMessages) ||
                other.directMessages == directMessages) &&
            (identical(other.updates, updates) || other.updates == updates) &&
            (identical(other.appointmentReminders, appointmentReminders) ||
                other.appointmentReminders == appointmentReminders) &&
            (identical(other.paymentNotifications, paymentNotifications) ||
                other.paymentNotifications == paymentNotifications) &&
            (identical(other.supportUpdates, supportUpdates) ||
                other.supportUpdates == supportUpdates) &&
            (identical(other.feedbackAlerts, feedbackAlerts) ||
                other.feedbackAlerts == feedbackAlerts) &&
            (identical(other.trialNotifications, trialNotifications) ||
                other.trialNotifications == trialNotifications) &&
            (identical(other.subscriptionAlerts, subscriptionAlerts) ||
                other.subscriptionAlerts == subscriptionAlerts) &&
            (identical(other.marketingEmails, marketingEmails) ||
                other.marketingEmails == marketingEmails) &&
            (identical(other.quietHoursEnabled, quietHoursEnabled) ||
                other.quietHoursEnabled == quietHoursEnabled) &&
            (identical(other.quietHoursStart, quietHoursStart) ||
                other.quietHoursStart == quietHoursStart) &&
            (identical(other.quietHoursEnd, quietHoursEnd) ||
                other.quietHoursEnd == quietHoursEnd) &&
            (identical(other.quietHoursTimezone, quietHoursTimezone) ||
                other.quietHoursTimezone == quietHoursTimezone) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        user,
        userId,
        allNotifications,
        inAppEnabled,
        emailEnabled,
        pushEnabled,
        mentions,
        directMessages,
        updates,
        appointmentReminders,
        paymentNotifications,
        supportUpdates,
        feedbackAlerts,
        trialNotifications,
        subscriptionAlerts,
        marketingEmails,
        quietHoursEnabled,
        quietHoursStart,
        quietHoursEnd,
        quietHoursTimezone,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPreferenceWhereInputImplCopyWith<
          _$NotificationPreferenceWhereInputImpl>
      get copyWith => __$$NotificationPreferenceWhereInputImplCopyWithImpl<
          _$NotificationPreferenceWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPreferenceWhereInputImplToJson(
      this,
    );
  }
}

abstract class _NotificationPreferenceWhereInput
    implements NotificationPreferenceWhereInput {
  const factory _NotificationPreferenceWhereInput(
          {final StringFilter? id,
          final UserRelationFilter? user,
          final StringFilter? userId,
          final BooleanFilter? allNotifications,
          final BooleanFilter? inAppEnabled,
          final BooleanFilter? emailEnabled,
          final BooleanFilter? pushEnabled,
          final BooleanFilter? mentions,
          final BooleanFilter? directMessages,
          final BooleanFilter? updates,
          final BooleanFilter? appointmentReminders,
          final BooleanFilter? paymentNotifications,
          final BooleanFilter? supportUpdates,
          final BooleanFilter? feedbackAlerts,
          final BooleanFilter? trialNotifications,
          final BooleanFilter? subscriptionAlerts,
          final BooleanFilter? marketingEmails,
          final BooleanFilter? quietHoursEnabled,
          final StringFilter? quietHoursStart,
          final StringFilter? quietHoursEnd,
          final StringFilter? quietHoursTimezone,
          final List<NotificationPreferenceWhereInput>? AND,
          final List<NotificationPreferenceWhereInput>? OR,
          final NotificationPreferenceWhereInput? NOT}) =
      _$NotificationPreferenceWhereInputImpl;

  factory _NotificationPreferenceWhereInput.fromJson(
          Map<String, dynamic> json) =
      _$NotificationPreferenceWhereInputImpl.fromJson;

  @override
  StringFilter? get id;

  /// Filter by user relation
  @override
  UserRelationFilter? get user;
  @override
  StringFilter? get userId;
  @override
  BooleanFilter? get allNotifications;
  @override
  BooleanFilter? get inAppEnabled;
  @override
  BooleanFilter? get emailEnabled;
  @override
  BooleanFilter? get pushEnabled;
  @override
  BooleanFilter? get mentions;
  @override
  BooleanFilter? get directMessages;
  @override
  BooleanFilter? get updates;
  @override
  BooleanFilter? get appointmentReminders;
  @override
  BooleanFilter? get paymentNotifications;
  @override
  BooleanFilter? get supportUpdates;
  @override
  BooleanFilter? get feedbackAlerts;
  @override
  BooleanFilter? get trialNotifications;
  @override
  BooleanFilter? get subscriptionAlerts;
  @override
  BooleanFilter? get marketingEmails;
  @override
  BooleanFilter? get quietHoursEnabled;
  @override
  StringFilter? get quietHoursStart;
  @override
  StringFilter? get quietHoursEnd;
  @override
  StringFilter? get quietHoursTimezone;
  @override
  List<NotificationPreferenceWhereInput>? get AND;
  @override
  List<NotificationPreferenceWhereInput>? get OR;
  @override
  NotificationPreferenceWhereInput? get NOT;

  /// Create a copy of NotificationPreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPreferenceWhereInputImplCopyWith<
          _$NotificationPreferenceWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationPreferenceListRelationFilter
    _$NotificationPreferenceListRelationFilterFromJson(
        Map<String, dynamic> json) {
  return _NotificationPreferenceListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$NotificationPreferenceListRelationFilter {
  /// At least one related record matches
  NotificationPreferenceWhereInput? get some =>
      throw _privateConstructorUsedError;

  /// All related records match
  NotificationPreferenceWhereInput? get every =>
      throw _privateConstructorUsedError;

  /// No related records match
  NotificationPreferenceWhereInput? get none =>
      throw _privateConstructorUsedError;

  /// Serializes this NotificationPreferenceListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationPreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationPreferenceListRelationFilterCopyWith<
          NotificationPreferenceListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPreferenceListRelationFilterCopyWith<$Res> {
  factory $NotificationPreferenceListRelationFilterCopyWith(
          NotificationPreferenceListRelationFilter value,
          $Res Function(NotificationPreferenceListRelationFilter) then) =
      _$NotificationPreferenceListRelationFilterCopyWithImpl<$Res,
          NotificationPreferenceListRelationFilter>;
  @useResult
  $Res call(
      {NotificationPreferenceWhereInput? some,
      NotificationPreferenceWhereInput? every,
      NotificationPreferenceWhereInput? none});

  $NotificationPreferenceWhereInputCopyWith<$Res>? get some;
  $NotificationPreferenceWhereInputCopyWith<$Res>? get every;
  $NotificationPreferenceWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$NotificationPreferenceListRelationFilterCopyWithImpl<$Res,
        $Val extends NotificationPreferenceListRelationFilter>
    implements $NotificationPreferenceListRelationFilterCopyWith<$Res> {
  _$NotificationPreferenceListRelationFilterCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_value.copyWith(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as NotificationPreferenceWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as NotificationPreferenceWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as NotificationPreferenceWhereInput?,
    ) as $Val);
  }

  /// Create a copy of NotificationPreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationPreferenceWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $NotificationPreferenceWhereInputCopyWith<$Res>(_value.some!,
        (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationPreferenceWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $NotificationPreferenceWhereInputCopyWith<$Res>(_value.every!,
        (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationPreferenceWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $NotificationPreferenceWhereInputCopyWith<$Res>(_value.none!,
        (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationPreferenceListRelationFilterImplCopyWith<$Res>
    implements $NotificationPreferenceListRelationFilterCopyWith<$Res> {
  factory _$$NotificationPreferenceListRelationFilterImplCopyWith(
          _$NotificationPreferenceListRelationFilterImpl value,
          $Res Function(_$NotificationPreferenceListRelationFilterImpl) then) =
      __$$NotificationPreferenceListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NotificationPreferenceWhereInput? some,
      NotificationPreferenceWhereInput? every,
      NotificationPreferenceWhereInput? none});

  @override
  $NotificationPreferenceWhereInputCopyWith<$Res>? get some;
  @override
  $NotificationPreferenceWhereInputCopyWith<$Res>? get every;
  @override
  $NotificationPreferenceWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$NotificationPreferenceListRelationFilterImplCopyWithImpl<$Res>
    extends _$NotificationPreferenceListRelationFilterCopyWithImpl<$Res,
        _$NotificationPreferenceListRelationFilterImpl>
    implements _$$NotificationPreferenceListRelationFilterImplCopyWith<$Res> {
  __$$NotificationPreferenceListRelationFilterImplCopyWithImpl(
      _$NotificationPreferenceListRelationFilterImpl _value,
      $Res Function(_$NotificationPreferenceListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$NotificationPreferenceListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as NotificationPreferenceWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as NotificationPreferenceWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as NotificationPreferenceWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationPreferenceListRelationFilterImpl
    implements _NotificationPreferenceListRelationFilter {
  const _$NotificationPreferenceListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$NotificationPreferenceListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationPreferenceListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final NotificationPreferenceWhereInput? some;

  /// All related records match
  @override
  final NotificationPreferenceWhereInput? every;

  /// No related records match
  @override
  final NotificationPreferenceWhereInput? none;

  @override
  String toString() {
    return 'NotificationPreferenceListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPreferenceListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of NotificationPreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPreferenceListRelationFilterImplCopyWith<
          _$NotificationPreferenceListRelationFilterImpl>
      get copyWith =>
          __$$NotificationPreferenceListRelationFilterImplCopyWithImpl<
              _$NotificationPreferenceListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPreferenceListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _NotificationPreferenceListRelationFilter
    implements NotificationPreferenceListRelationFilter {
  const factory _NotificationPreferenceListRelationFilter(
          {final NotificationPreferenceWhereInput? some,
          final NotificationPreferenceWhereInput? every,
          final NotificationPreferenceWhereInput? none}) =
      _$NotificationPreferenceListRelationFilterImpl;

  factory _NotificationPreferenceListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$NotificationPreferenceListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  NotificationPreferenceWhereInput? get some;

  /// All related records match
  @override
  NotificationPreferenceWhereInput? get every;

  /// No related records match
  @override
  NotificationPreferenceWhereInput? get none;

  /// Create a copy of NotificationPreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPreferenceListRelationFilterImplCopyWith<
          _$NotificationPreferenceListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationPreferenceRelationFilter
    _$NotificationPreferenceRelationFilterFromJson(Map<String, dynamic> json) {
  return _NotificationPreferenceRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$NotificationPreferenceRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  NotificationPreferenceWhereInput? get is_ =>
      throw _privateConstructorUsedError;

  /// Related record does not match
  NotificationPreferenceWhereInput? get isNot =>
      throw _privateConstructorUsedError;

  /// Serializes this NotificationPreferenceRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationPreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationPreferenceRelationFilterCopyWith<
          NotificationPreferenceRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPreferenceRelationFilterCopyWith<$Res> {
  factory $NotificationPreferenceRelationFilterCopyWith(
          NotificationPreferenceRelationFilter value,
          $Res Function(NotificationPreferenceRelationFilter) then) =
      _$NotificationPreferenceRelationFilterCopyWithImpl<$Res,
          NotificationPreferenceRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') NotificationPreferenceWhereInput? is_,
      NotificationPreferenceWhereInput? isNot});

  $NotificationPreferenceWhereInputCopyWith<$Res>? get is_;
  $NotificationPreferenceWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$NotificationPreferenceRelationFilterCopyWithImpl<$Res,
        $Val extends NotificationPreferenceRelationFilter>
    implements $NotificationPreferenceRelationFilterCopyWith<$Res> {
  _$NotificationPreferenceRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_value.copyWith(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as NotificationPreferenceWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as NotificationPreferenceWhereInput?,
    ) as $Val);
  }

  /// Create a copy of NotificationPreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationPreferenceWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $NotificationPreferenceWhereInputCopyWith<$Res>(_value.is_!,
        (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationPreferenceWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $NotificationPreferenceWhereInputCopyWith<$Res>(_value.isNot!,
        (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationPreferenceRelationFilterImplCopyWith<$Res>
    implements $NotificationPreferenceRelationFilterCopyWith<$Res> {
  factory _$$NotificationPreferenceRelationFilterImplCopyWith(
          _$NotificationPreferenceRelationFilterImpl value,
          $Res Function(_$NotificationPreferenceRelationFilterImpl) then) =
      __$$NotificationPreferenceRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') NotificationPreferenceWhereInput? is_,
      NotificationPreferenceWhereInput? isNot});

  @override
  $NotificationPreferenceWhereInputCopyWith<$Res>? get is_;
  @override
  $NotificationPreferenceWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$NotificationPreferenceRelationFilterImplCopyWithImpl<$Res>
    extends _$NotificationPreferenceRelationFilterCopyWithImpl<$Res,
        _$NotificationPreferenceRelationFilterImpl>
    implements _$$NotificationPreferenceRelationFilterImplCopyWith<$Res> {
  __$$NotificationPreferenceRelationFilterImplCopyWithImpl(
      _$NotificationPreferenceRelationFilterImpl _value,
      $Res Function(_$NotificationPreferenceRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$NotificationPreferenceRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as NotificationPreferenceWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as NotificationPreferenceWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationPreferenceRelationFilterImpl
    implements _NotificationPreferenceRelationFilter {
  const _$NotificationPreferenceRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$NotificationPreferenceRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationPreferenceRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final NotificationPreferenceWhereInput? is_;

  /// Related record does not match
  @override
  final NotificationPreferenceWhereInput? isNot;

  @override
  String toString() {
    return 'NotificationPreferenceRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPreferenceRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of NotificationPreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPreferenceRelationFilterImplCopyWith<
          _$NotificationPreferenceRelationFilterImpl>
      get copyWith => __$$NotificationPreferenceRelationFilterImplCopyWithImpl<
          _$NotificationPreferenceRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPreferenceRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _NotificationPreferenceRelationFilter
    implements NotificationPreferenceRelationFilter {
  const factory _NotificationPreferenceRelationFilter(
          {@JsonKey(name: 'is') final NotificationPreferenceWhereInput? is_,
          final NotificationPreferenceWhereInput? isNot}) =
      _$NotificationPreferenceRelationFilterImpl;

  factory _NotificationPreferenceRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$NotificationPreferenceRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  NotificationPreferenceWhereInput? get is_;

  /// Related record does not match
  @override
  NotificationPreferenceWhereInput? get isNot;

  /// Create a copy of NotificationPreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPreferenceRelationFilterImplCopyWith<
          _$NotificationPreferenceRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationPreferenceOrderByInput _$NotificationPreferenceOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _NotificationPreferenceOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$NotificationPreferenceOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get allNotifications => throw _privateConstructorUsedError;
  SortOrder? get inAppEnabled => throw _privateConstructorUsedError;
  SortOrder? get emailEnabled => throw _privateConstructorUsedError;
  SortOrder? get pushEnabled => throw _privateConstructorUsedError;
  SortOrder? get mentions => throw _privateConstructorUsedError;
  SortOrder? get directMessages => throw _privateConstructorUsedError;
  SortOrder? get updates => throw _privateConstructorUsedError;
  SortOrder? get appointmentReminders => throw _privateConstructorUsedError;
  SortOrder? get paymentNotifications => throw _privateConstructorUsedError;
  SortOrder? get supportUpdates => throw _privateConstructorUsedError;
  SortOrder? get feedbackAlerts => throw _privateConstructorUsedError;
  SortOrder? get trialNotifications => throw _privateConstructorUsedError;
  SortOrder? get subscriptionAlerts => throw _privateConstructorUsedError;
  SortOrder? get marketingEmails => throw _privateConstructorUsedError;
  SortOrder? get quietHoursEnabled => throw _privateConstructorUsedError;
  SortOrder? get quietHoursStart => throw _privateConstructorUsedError;
  SortOrder? get quietHoursEnd => throw _privateConstructorUsedError;
  SortOrder? get quietHoursTimezone => throw _privateConstructorUsedError;

  /// Serializes this NotificationPreferenceOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationPreferenceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationPreferenceOrderByInputCopyWith<
          NotificationPreferenceOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPreferenceOrderByInputCopyWith<$Res> {
  factory $NotificationPreferenceOrderByInputCopyWith(
          NotificationPreferenceOrderByInput value,
          $Res Function(NotificationPreferenceOrderByInput) then) =
      _$NotificationPreferenceOrderByInputCopyWithImpl<$Res,
          NotificationPreferenceOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
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
      SortOrder? quietHoursTimezone});
}

/// @nodoc
class _$NotificationPreferenceOrderByInputCopyWithImpl<$Res,
        $Val extends NotificationPreferenceOrderByInput>
    implements $NotificationPreferenceOrderByInputCopyWith<$Res> {
  _$NotificationPreferenceOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPreferenceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? allNotifications = freezed,
    Object? inAppEnabled = freezed,
    Object? emailEnabled = freezed,
    Object? pushEnabled = freezed,
    Object? mentions = freezed,
    Object? directMessages = freezed,
    Object? updates = freezed,
    Object? appointmentReminders = freezed,
    Object? paymentNotifications = freezed,
    Object? supportUpdates = freezed,
    Object? feedbackAlerts = freezed,
    Object? trialNotifications = freezed,
    Object? subscriptionAlerts = freezed,
    Object? marketingEmails = freezed,
    Object? quietHoursEnabled = freezed,
    Object? quietHoursStart = freezed,
    Object? quietHoursEnd = freezed,
    Object? quietHoursTimezone = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      allNotifications: freezed == allNotifications
          ? _value.allNotifications
          : allNotifications // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      inAppEnabled: freezed == inAppEnabled
          ? _value.inAppEnabled
          : inAppEnabled // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      emailEnabled: freezed == emailEnabled
          ? _value.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      pushEnabled: freezed == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      mentions: freezed == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      directMessages: freezed == directMessages
          ? _value.directMessages
          : directMessages // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      appointmentReminders: freezed == appointmentReminders
          ? _value.appointmentReminders
          : appointmentReminders // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentNotifications: freezed == paymentNotifications
          ? _value.paymentNotifications
          : paymentNotifications // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      supportUpdates: freezed == supportUpdates
          ? _value.supportUpdates
          : supportUpdates // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      feedbackAlerts: freezed == feedbackAlerts
          ? _value.feedbackAlerts
          : feedbackAlerts // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      trialNotifications: freezed == trialNotifications
          ? _value.trialNotifications
          : trialNotifications // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      subscriptionAlerts: freezed == subscriptionAlerts
          ? _value.subscriptionAlerts
          : subscriptionAlerts // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      marketingEmails: freezed == marketingEmails
          ? _value.marketingEmails
          : marketingEmails // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      quietHoursEnabled: freezed == quietHoursEnabled
          ? _value.quietHoursEnabled
          : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      quietHoursStart: freezed == quietHoursStart
          ? _value.quietHoursStart
          : quietHoursStart // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      quietHoursEnd: freezed == quietHoursEnd
          ? _value.quietHoursEnd
          : quietHoursEnd // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      quietHoursTimezone: freezed == quietHoursTimezone
          ? _value.quietHoursTimezone
          : quietHoursTimezone // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationPreferenceOrderByInputImplCopyWith<$Res>
    implements $NotificationPreferenceOrderByInputCopyWith<$Res> {
  factory _$$NotificationPreferenceOrderByInputImplCopyWith(
          _$NotificationPreferenceOrderByInputImpl value,
          $Res Function(_$NotificationPreferenceOrderByInputImpl) then) =
      __$$NotificationPreferenceOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
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
      SortOrder? quietHoursTimezone});
}

/// @nodoc
class __$$NotificationPreferenceOrderByInputImplCopyWithImpl<$Res>
    extends _$NotificationPreferenceOrderByInputCopyWithImpl<$Res,
        _$NotificationPreferenceOrderByInputImpl>
    implements _$$NotificationPreferenceOrderByInputImplCopyWith<$Res> {
  __$$NotificationPreferenceOrderByInputImplCopyWithImpl(
      _$NotificationPreferenceOrderByInputImpl _value,
      $Res Function(_$NotificationPreferenceOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPreferenceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? allNotifications = freezed,
    Object? inAppEnabled = freezed,
    Object? emailEnabled = freezed,
    Object? pushEnabled = freezed,
    Object? mentions = freezed,
    Object? directMessages = freezed,
    Object? updates = freezed,
    Object? appointmentReminders = freezed,
    Object? paymentNotifications = freezed,
    Object? supportUpdates = freezed,
    Object? feedbackAlerts = freezed,
    Object? trialNotifications = freezed,
    Object? subscriptionAlerts = freezed,
    Object? marketingEmails = freezed,
    Object? quietHoursEnabled = freezed,
    Object? quietHoursStart = freezed,
    Object? quietHoursEnd = freezed,
    Object? quietHoursTimezone = freezed,
  }) {
    return _then(_$NotificationPreferenceOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      allNotifications: freezed == allNotifications
          ? _value.allNotifications
          : allNotifications // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      inAppEnabled: freezed == inAppEnabled
          ? _value.inAppEnabled
          : inAppEnabled // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      emailEnabled: freezed == emailEnabled
          ? _value.emailEnabled
          : emailEnabled // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      pushEnabled: freezed == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      mentions: freezed == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      directMessages: freezed == directMessages
          ? _value.directMessages
          : directMessages // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      updates: freezed == updates
          ? _value.updates
          : updates // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      appointmentReminders: freezed == appointmentReminders
          ? _value.appointmentReminders
          : appointmentReminders // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentNotifications: freezed == paymentNotifications
          ? _value.paymentNotifications
          : paymentNotifications // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      supportUpdates: freezed == supportUpdates
          ? _value.supportUpdates
          : supportUpdates // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      feedbackAlerts: freezed == feedbackAlerts
          ? _value.feedbackAlerts
          : feedbackAlerts // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      trialNotifications: freezed == trialNotifications
          ? _value.trialNotifications
          : trialNotifications // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      subscriptionAlerts: freezed == subscriptionAlerts
          ? _value.subscriptionAlerts
          : subscriptionAlerts // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      marketingEmails: freezed == marketingEmails
          ? _value.marketingEmails
          : marketingEmails // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      quietHoursEnabled: freezed == quietHoursEnabled
          ? _value.quietHoursEnabled
          : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      quietHoursStart: freezed == quietHoursStart
          ? _value.quietHoursStart
          : quietHoursStart // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      quietHoursEnd: freezed == quietHoursEnd
          ? _value.quietHoursEnd
          : quietHoursEnd // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      quietHoursTimezone: freezed == quietHoursTimezone
          ? _value.quietHoursTimezone
          : quietHoursTimezone // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationPreferenceOrderByInputImpl
    implements _NotificationPreferenceOrderByInput {
  const _$NotificationPreferenceOrderByInputImpl(
      {this.id,
      this.userId,
      this.allNotifications,
      this.inAppEnabled,
      this.emailEnabled,
      this.pushEnabled,
      this.mentions,
      this.directMessages,
      this.updates,
      this.appointmentReminders,
      this.paymentNotifications,
      this.supportUpdates,
      this.feedbackAlerts,
      this.trialNotifications,
      this.subscriptionAlerts,
      this.marketingEmails,
      this.quietHoursEnabled,
      this.quietHoursStart,
      this.quietHoursEnd,
      this.quietHoursTimezone});

  factory _$NotificationPreferenceOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationPreferenceOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? allNotifications;
  @override
  final SortOrder? inAppEnabled;
  @override
  final SortOrder? emailEnabled;
  @override
  final SortOrder? pushEnabled;
  @override
  final SortOrder? mentions;
  @override
  final SortOrder? directMessages;
  @override
  final SortOrder? updates;
  @override
  final SortOrder? appointmentReminders;
  @override
  final SortOrder? paymentNotifications;
  @override
  final SortOrder? supportUpdates;
  @override
  final SortOrder? feedbackAlerts;
  @override
  final SortOrder? trialNotifications;
  @override
  final SortOrder? subscriptionAlerts;
  @override
  final SortOrder? marketingEmails;
  @override
  final SortOrder? quietHoursEnabled;
  @override
  final SortOrder? quietHoursStart;
  @override
  final SortOrder? quietHoursEnd;
  @override
  final SortOrder? quietHoursTimezone;

  @override
  String toString() {
    return 'NotificationPreferenceOrderByInput(id: $id, userId: $userId, allNotifications: $allNotifications, inAppEnabled: $inAppEnabled, emailEnabled: $emailEnabled, pushEnabled: $pushEnabled, mentions: $mentions, directMessages: $directMessages, updates: $updates, appointmentReminders: $appointmentReminders, paymentNotifications: $paymentNotifications, supportUpdates: $supportUpdates, feedbackAlerts: $feedbackAlerts, trialNotifications: $trialNotifications, subscriptionAlerts: $subscriptionAlerts, marketingEmails: $marketingEmails, quietHoursEnabled: $quietHoursEnabled, quietHoursStart: $quietHoursStart, quietHoursEnd: $quietHoursEnd, quietHoursTimezone: $quietHoursTimezone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPreferenceOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.allNotifications, allNotifications) ||
                other.allNotifications == allNotifications) &&
            (identical(other.inAppEnabled, inAppEnabled) ||
                other.inAppEnabled == inAppEnabled) &&
            (identical(other.emailEnabled, emailEnabled) ||
                other.emailEnabled == emailEnabled) &&
            (identical(other.pushEnabled, pushEnabled) ||
                other.pushEnabled == pushEnabled) &&
            (identical(other.mentions, mentions) ||
                other.mentions == mentions) &&
            (identical(other.directMessages, directMessages) ||
                other.directMessages == directMessages) &&
            (identical(other.updates, updates) || other.updates == updates) &&
            (identical(other.appointmentReminders, appointmentReminders) ||
                other.appointmentReminders == appointmentReminders) &&
            (identical(other.paymentNotifications, paymentNotifications) ||
                other.paymentNotifications == paymentNotifications) &&
            (identical(other.supportUpdates, supportUpdates) ||
                other.supportUpdates == supportUpdates) &&
            (identical(other.feedbackAlerts, feedbackAlerts) ||
                other.feedbackAlerts == feedbackAlerts) &&
            (identical(other.trialNotifications, trialNotifications) ||
                other.trialNotifications == trialNotifications) &&
            (identical(other.subscriptionAlerts, subscriptionAlerts) ||
                other.subscriptionAlerts == subscriptionAlerts) &&
            (identical(other.marketingEmails, marketingEmails) ||
                other.marketingEmails == marketingEmails) &&
            (identical(other.quietHoursEnabled, quietHoursEnabled) ||
                other.quietHoursEnabled == quietHoursEnabled) &&
            (identical(other.quietHoursStart, quietHoursStart) ||
                other.quietHoursStart == quietHoursStart) &&
            (identical(other.quietHoursEnd, quietHoursEnd) ||
                other.quietHoursEnd == quietHoursEnd) &&
            (identical(other.quietHoursTimezone, quietHoursTimezone) ||
                other.quietHoursTimezone == quietHoursTimezone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        allNotifications,
        inAppEnabled,
        emailEnabled,
        pushEnabled,
        mentions,
        directMessages,
        updates,
        appointmentReminders,
        paymentNotifications,
        supportUpdates,
        feedbackAlerts,
        trialNotifications,
        subscriptionAlerts,
        marketingEmails,
        quietHoursEnabled,
        quietHoursStart,
        quietHoursEnd,
        quietHoursTimezone
      ]);

  /// Create a copy of NotificationPreferenceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPreferenceOrderByInputImplCopyWith<
          _$NotificationPreferenceOrderByInputImpl>
      get copyWith => __$$NotificationPreferenceOrderByInputImplCopyWithImpl<
          _$NotificationPreferenceOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPreferenceOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _NotificationPreferenceOrderByInput
    implements NotificationPreferenceOrderByInput {
  const factory _NotificationPreferenceOrderByInput(
          {final SortOrder? id,
          final SortOrder? userId,
          final SortOrder? allNotifications,
          final SortOrder? inAppEnabled,
          final SortOrder? emailEnabled,
          final SortOrder? pushEnabled,
          final SortOrder? mentions,
          final SortOrder? directMessages,
          final SortOrder? updates,
          final SortOrder? appointmentReminders,
          final SortOrder? paymentNotifications,
          final SortOrder? supportUpdates,
          final SortOrder? feedbackAlerts,
          final SortOrder? trialNotifications,
          final SortOrder? subscriptionAlerts,
          final SortOrder? marketingEmails,
          final SortOrder? quietHoursEnabled,
          final SortOrder? quietHoursStart,
          final SortOrder? quietHoursEnd,
          final SortOrder? quietHoursTimezone}) =
      _$NotificationPreferenceOrderByInputImpl;

  factory _NotificationPreferenceOrderByInput.fromJson(
          Map<String, dynamic> json) =
      _$NotificationPreferenceOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get allNotifications;
  @override
  SortOrder? get inAppEnabled;
  @override
  SortOrder? get emailEnabled;
  @override
  SortOrder? get pushEnabled;
  @override
  SortOrder? get mentions;
  @override
  SortOrder? get directMessages;
  @override
  SortOrder? get updates;
  @override
  SortOrder? get appointmentReminders;
  @override
  SortOrder? get paymentNotifications;
  @override
  SortOrder? get supportUpdates;
  @override
  SortOrder? get feedbackAlerts;
  @override
  SortOrder? get trialNotifications;
  @override
  SortOrder? get subscriptionAlerts;
  @override
  SortOrder? get marketingEmails;
  @override
  SortOrder? get quietHoursEnabled;
  @override
  SortOrder? get quietHoursStart;
  @override
  SortOrder? get quietHoursEnd;
  @override
  SortOrder? get quietHoursTimezone;

  /// Create a copy of NotificationPreferenceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPreferenceOrderByInputImplCopyWith<
          _$NotificationPreferenceOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
