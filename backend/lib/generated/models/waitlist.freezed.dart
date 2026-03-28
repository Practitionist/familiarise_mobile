// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waitlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Waitlist _$WaitlistFromJson(Map<String, dynamic> json) {
  return _Waitlist.fromJson(json);
}

/// @nodoc
mixin _$Waitlist {
  String get id => throw _privateConstructorUsedError;
  DateTime get joinedAt => throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;
  WaitlistStatus get status => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  DateTime? get notifiedAt => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  DateTime? get reminderSentAt => throw _privateConstructorUsedError;
  DateTime? get bookedAt => throw _privateConstructorUsedError;
  DateTime? get respondedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get preferences => throw _privateConstructorUsedError;

  /// Serializes this Waitlist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Waitlist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaitlistCopyWith<Waitlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaitlistCopyWith<$Res> {
  factory $WaitlistCopyWith(Waitlist value, $Res Function(Waitlist) then) =
      _$WaitlistCopyWithImpl<$Res, Waitlist>;
  @useResult
  $Res call(
      {String id,
      DateTime joinedAt,
      int? position,
      WaitlistStatus status,
      int priority,
      DateTime? notifiedAt,
      DateTime? expiresAt,
      DateTime? reminderSentAt,
      DateTime? bookedAt,
      DateTime? respondedAt,
      Map<String, dynamic>? preferences});
}

/// @nodoc
class _$WaitlistCopyWithImpl<$Res, $Val extends Waitlist>
    implements $WaitlistCopyWith<$Res> {
  _$WaitlistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Waitlist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? joinedAt = null,
    Object? position = freezed,
    Object? status = null,
    Object? priority = null,
    Object? notifiedAt = freezed,
    Object? expiresAt = freezed,
    Object? reminderSentAt = freezed,
    Object? bookedAt = freezed,
    Object? respondedAt = freezed,
    Object? preferences = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      joinedAt: null == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WaitlistStatus,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      notifiedAt: freezed == notifiedAt
          ? _value.notifiedAt
          : notifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reminderSentAt: freezed == reminderSentAt
          ? _value.reminderSentAt
          : reminderSentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bookedAt: freezed == bookedAt
          ? _value.bookedAt
          : bookedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      preferences: freezed == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaitlistImplCopyWith<$Res>
    implements $WaitlistCopyWith<$Res> {
  factory _$$WaitlistImplCopyWith(
          _$WaitlistImpl value, $Res Function(_$WaitlistImpl) then) =
      __$$WaitlistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime joinedAt,
      int? position,
      WaitlistStatus status,
      int priority,
      DateTime? notifiedAt,
      DateTime? expiresAt,
      DateTime? reminderSentAt,
      DateTime? bookedAt,
      DateTime? respondedAt,
      Map<String, dynamic>? preferences});
}

/// @nodoc
class __$$WaitlistImplCopyWithImpl<$Res>
    extends _$WaitlistCopyWithImpl<$Res, _$WaitlistImpl>
    implements _$$WaitlistImplCopyWith<$Res> {
  __$$WaitlistImplCopyWithImpl(
      _$WaitlistImpl _value, $Res Function(_$WaitlistImpl) _then)
      : super(_value, _then);

  /// Create a copy of Waitlist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? joinedAt = null,
    Object? position = freezed,
    Object? status = null,
    Object? priority = null,
    Object? notifiedAt = freezed,
    Object? expiresAt = freezed,
    Object? reminderSentAt = freezed,
    Object? bookedAt = freezed,
    Object? respondedAt = freezed,
    Object? preferences = freezed,
  }) {
    return _then(_$WaitlistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      joinedAt: null == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WaitlistStatus,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      notifiedAt: freezed == notifiedAt
          ? _value.notifiedAt
          : notifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reminderSentAt: freezed == reminderSentAt
          ? _value.reminderSentAt
          : reminderSentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bookedAt: freezed == bookedAt
          ? _value.bookedAt
          : bookedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      preferences: freezed == preferences
          ? _value._preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaitlistImpl implements _Waitlist {
  const _$WaitlistImpl(
      {required this.id,
      required this.joinedAt,
      this.position,
      this.status = WaitlistStatus.waiting,
      this.priority = 0,
      this.notifiedAt,
      this.expiresAt,
      this.reminderSentAt,
      this.bookedAt,
      this.respondedAt,
      final Map<String, dynamic>? preferences})
      : _preferences = preferences;

  factory _$WaitlistImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaitlistImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime joinedAt;
  @override
  final int? position;
  @override
  @JsonKey()
  final WaitlistStatus status;
  @override
  @JsonKey()
  final int priority;
  @override
  final DateTime? notifiedAt;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? reminderSentAt;
  @override
  final DateTime? bookedAt;
  @override
  final DateTime? respondedAt;
  final Map<String, dynamic>? _preferences;
  @override
  Map<String, dynamic>? get preferences {
    final value = _preferences;
    if (value == null) return null;
    if (_preferences is EqualUnmodifiableMapView) return _preferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Waitlist(id: $id, joinedAt: $joinedAt, position: $position, status: $status, priority: $priority, notifiedAt: $notifiedAt, expiresAt: $expiresAt, reminderSentAt: $reminderSentAt, bookedAt: $bookedAt, respondedAt: $respondedAt, preferences: $preferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitlistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.notifiedAt, notifiedAt) ||
                other.notifiedAt == notifiedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.reminderSentAt, reminderSentAt) ||
                other.reminderSentAt == reminderSentAt) &&
            (identical(other.bookedAt, bookedAt) ||
                other.bookedAt == bookedAt) &&
            (identical(other.respondedAt, respondedAt) ||
                other.respondedAt == respondedAt) &&
            const DeepCollectionEquality()
                .equals(other._preferences, _preferences));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      joinedAt,
      position,
      status,
      priority,
      notifiedAt,
      expiresAt,
      reminderSentAt,
      bookedAt,
      respondedAt,
      const DeepCollectionEquality().hash(_preferences));

  /// Create a copy of Waitlist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitlistImplCopyWith<_$WaitlistImpl> get copyWith =>
      __$$WaitlistImplCopyWithImpl<_$WaitlistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaitlistImplToJson(
      this,
    );
  }
}

abstract class _Waitlist implements Waitlist {
  const factory _Waitlist(
      {required final String id,
      required final DateTime joinedAt,
      final int? position,
      final WaitlistStatus status,
      final int priority,
      final DateTime? notifiedAt,
      final DateTime? expiresAt,
      final DateTime? reminderSentAt,
      final DateTime? bookedAt,
      final DateTime? respondedAt,
      final Map<String, dynamic>? preferences}) = _$WaitlistImpl;

  factory _Waitlist.fromJson(Map<String, dynamic> json) =
      _$WaitlistImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get joinedAt;
  @override
  int? get position;
  @override
  WaitlistStatus get status;
  @override
  int get priority;
  @override
  DateTime? get notifiedAt;
  @override
  DateTime? get expiresAt;
  @override
  DateTime? get reminderSentAt;
  @override
  DateTime? get bookedAt;
  @override
  DateTime? get respondedAt;
  @override
  Map<String, dynamic>? get preferences;

  /// Create a copy of Waitlist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaitlistImplCopyWith<_$WaitlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateWaitlistInput _$CreateWaitlistInputFromJson(Map<String, dynamic> json) {
  return _CreateWaitlistInput.fromJson(json);
}

/// @nodoc
mixin _$CreateWaitlistInput {
  int? get position => throw _privateConstructorUsedError;
  WaitlistStatus get status => throw _privateConstructorUsedError;
  int? get priority => throw _privateConstructorUsedError;
  DateTime? get notifiedAt => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  DateTime? get reminderSentAt => throw _privateConstructorUsedError;
  DateTime? get bookedAt => throw _privateConstructorUsedError;
  DateTime? get respondedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get preferences => throw _privateConstructorUsedError;

  /// Serializes this CreateWaitlistInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateWaitlistInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateWaitlistInputCopyWith<CreateWaitlistInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWaitlistInputCopyWith<$Res> {
  factory $CreateWaitlistInputCopyWith(
          CreateWaitlistInput value, $Res Function(CreateWaitlistInput) then) =
      _$CreateWaitlistInputCopyWithImpl<$Res, CreateWaitlistInput>;
  @useResult
  $Res call(
      {int? position,
      WaitlistStatus status,
      int? priority,
      DateTime? notifiedAt,
      DateTime? expiresAt,
      DateTime? reminderSentAt,
      DateTime? bookedAt,
      DateTime? respondedAt,
      Map<String, dynamic>? preferences});
}

/// @nodoc
class _$CreateWaitlistInputCopyWithImpl<$Res, $Val extends CreateWaitlistInput>
    implements $CreateWaitlistInputCopyWith<$Res> {
  _$CreateWaitlistInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateWaitlistInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? status = null,
    Object? priority = freezed,
    Object? notifiedAt = freezed,
    Object? expiresAt = freezed,
    Object? reminderSentAt = freezed,
    Object? bookedAt = freezed,
    Object? respondedAt = freezed,
    Object? preferences = freezed,
  }) {
    return _then(_value.copyWith(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WaitlistStatus,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      notifiedAt: freezed == notifiedAt
          ? _value.notifiedAt
          : notifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reminderSentAt: freezed == reminderSentAt
          ? _value.reminderSentAt
          : reminderSentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bookedAt: freezed == bookedAt
          ? _value.bookedAt
          : bookedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      preferences: freezed == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateWaitlistInputImplCopyWith<$Res>
    implements $CreateWaitlistInputCopyWith<$Res> {
  factory _$$CreateWaitlistInputImplCopyWith(_$CreateWaitlistInputImpl value,
          $Res Function(_$CreateWaitlistInputImpl) then) =
      __$$CreateWaitlistInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? position,
      WaitlistStatus status,
      int? priority,
      DateTime? notifiedAt,
      DateTime? expiresAt,
      DateTime? reminderSentAt,
      DateTime? bookedAt,
      DateTime? respondedAt,
      Map<String, dynamic>? preferences});
}

/// @nodoc
class __$$CreateWaitlistInputImplCopyWithImpl<$Res>
    extends _$CreateWaitlistInputCopyWithImpl<$Res, _$CreateWaitlistInputImpl>
    implements _$$CreateWaitlistInputImplCopyWith<$Res> {
  __$$CreateWaitlistInputImplCopyWithImpl(_$CreateWaitlistInputImpl _value,
      $Res Function(_$CreateWaitlistInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateWaitlistInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? status = null,
    Object? priority = freezed,
    Object? notifiedAt = freezed,
    Object? expiresAt = freezed,
    Object? reminderSentAt = freezed,
    Object? bookedAt = freezed,
    Object? respondedAt = freezed,
    Object? preferences = freezed,
  }) {
    return _then(_$CreateWaitlistInputImpl(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WaitlistStatus,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      notifiedAt: freezed == notifiedAt
          ? _value.notifiedAt
          : notifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reminderSentAt: freezed == reminderSentAt
          ? _value.reminderSentAt
          : reminderSentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bookedAt: freezed == bookedAt
          ? _value.bookedAt
          : bookedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      preferences: freezed == preferences
          ? _value._preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateWaitlistInputImpl implements _CreateWaitlistInput {
  const _$CreateWaitlistInputImpl(
      {this.position,
      this.status = WaitlistStatus.waiting,
      this.priority = 0,
      this.notifiedAt,
      this.expiresAt,
      this.reminderSentAt,
      this.bookedAt,
      this.respondedAt,
      final Map<String, dynamic>? preferences})
      : _preferences = preferences;

  factory _$CreateWaitlistInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateWaitlistInputImplFromJson(json);

  @override
  final int? position;
  @override
  @JsonKey()
  final WaitlistStatus status;
  @override
  @JsonKey()
  final int? priority;
  @override
  final DateTime? notifiedAt;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? reminderSentAt;
  @override
  final DateTime? bookedAt;
  @override
  final DateTime? respondedAt;
  final Map<String, dynamic>? _preferences;
  @override
  Map<String, dynamic>? get preferences {
    final value = _preferences;
    if (value == null) return null;
    if (_preferences is EqualUnmodifiableMapView) return _preferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CreateWaitlistInput(position: $position, status: $status, priority: $priority, notifiedAt: $notifiedAt, expiresAt: $expiresAt, reminderSentAt: $reminderSentAt, bookedAt: $bookedAt, respondedAt: $respondedAt, preferences: $preferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWaitlistInputImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.notifiedAt, notifiedAt) ||
                other.notifiedAt == notifiedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.reminderSentAt, reminderSentAt) ||
                other.reminderSentAt == reminderSentAt) &&
            (identical(other.bookedAt, bookedAt) ||
                other.bookedAt == bookedAt) &&
            (identical(other.respondedAt, respondedAt) ||
                other.respondedAt == respondedAt) &&
            const DeepCollectionEquality()
                .equals(other._preferences, _preferences));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      position,
      status,
      priority,
      notifiedAt,
      expiresAt,
      reminderSentAt,
      bookedAt,
      respondedAt,
      const DeepCollectionEquality().hash(_preferences));

  /// Create a copy of CreateWaitlistInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWaitlistInputImplCopyWith<_$CreateWaitlistInputImpl> get copyWith =>
      __$$CreateWaitlistInputImplCopyWithImpl<_$CreateWaitlistInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateWaitlistInputImplToJson(
      this,
    );
  }
}

abstract class _CreateWaitlistInput implements CreateWaitlistInput {
  const factory _CreateWaitlistInput(
      {final int? position,
      final WaitlistStatus status,
      final int? priority,
      final DateTime? notifiedAt,
      final DateTime? expiresAt,
      final DateTime? reminderSentAt,
      final DateTime? bookedAt,
      final DateTime? respondedAt,
      final Map<String, dynamic>? preferences}) = _$CreateWaitlistInputImpl;

  factory _CreateWaitlistInput.fromJson(Map<String, dynamic> json) =
      _$CreateWaitlistInputImpl.fromJson;

  @override
  int? get position;
  @override
  WaitlistStatus get status;
  @override
  int? get priority;
  @override
  DateTime? get notifiedAt;
  @override
  DateTime? get expiresAt;
  @override
  DateTime? get reminderSentAt;
  @override
  DateTime? get bookedAt;
  @override
  DateTime? get respondedAt;
  @override
  Map<String, dynamic>? get preferences;

  /// Create a copy of CreateWaitlistInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateWaitlistInputImplCopyWith<_$CreateWaitlistInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateWaitlistInput _$UpdateWaitlistInputFromJson(Map<String, dynamic> json) {
  return _UpdateWaitlistInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateWaitlistInput {
  int? get position => throw _privateConstructorUsedError;
  WaitlistStatus? get status => throw _privateConstructorUsedError;
  int? get priority => throw _privateConstructorUsedError;
  DateTime? get notifiedAt => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  DateTime? get reminderSentAt => throw _privateConstructorUsedError;
  DateTime? get bookedAt => throw _privateConstructorUsedError;
  DateTime? get respondedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get preferences => throw _privateConstructorUsedError;

  /// Serializes this UpdateWaitlistInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateWaitlistInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateWaitlistInputCopyWith<UpdateWaitlistInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateWaitlistInputCopyWith<$Res> {
  factory $UpdateWaitlistInputCopyWith(
          UpdateWaitlistInput value, $Res Function(UpdateWaitlistInput) then) =
      _$UpdateWaitlistInputCopyWithImpl<$Res, UpdateWaitlistInput>;
  @useResult
  $Res call(
      {int? position,
      WaitlistStatus? status,
      int? priority,
      DateTime? notifiedAt,
      DateTime? expiresAt,
      DateTime? reminderSentAt,
      DateTime? bookedAt,
      DateTime? respondedAt,
      Map<String, dynamic>? preferences});
}

/// @nodoc
class _$UpdateWaitlistInputCopyWithImpl<$Res, $Val extends UpdateWaitlistInput>
    implements $UpdateWaitlistInputCopyWith<$Res> {
  _$UpdateWaitlistInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateWaitlistInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? notifiedAt = freezed,
    Object? expiresAt = freezed,
    Object? reminderSentAt = freezed,
    Object? bookedAt = freezed,
    Object? respondedAt = freezed,
    Object? preferences = freezed,
  }) {
    return _then(_value.copyWith(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WaitlistStatus?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      notifiedAt: freezed == notifiedAt
          ? _value.notifiedAt
          : notifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reminderSentAt: freezed == reminderSentAt
          ? _value.reminderSentAt
          : reminderSentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bookedAt: freezed == bookedAt
          ? _value.bookedAt
          : bookedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      preferences: freezed == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateWaitlistInputImplCopyWith<$Res>
    implements $UpdateWaitlistInputCopyWith<$Res> {
  factory _$$UpdateWaitlistInputImplCopyWith(_$UpdateWaitlistInputImpl value,
          $Res Function(_$UpdateWaitlistInputImpl) then) =
      __$$UpdateWaitlistInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? position,
      WaitlistStatus? status,
      int? priority,
      DateTime? notifiedAt,
      DateTime? expiresAt,
      DateTime? reminderSentAt,
      DateTime? bookedAt,
      DateTime? respondedAt,
      Map<String, dynamic>? preferences});
}

/// @nodoc
class __$$UpdateWaitlistInputImplCopyWithImpl<$Res>
    extends _$UpdateWaitlistInputCopyWithImpl<$Res, _$UpdateWaitlistInputImpl>
    implements _$$UpdateWaitlistInputImplCopyWith<$Res> {
  __$$UpdateWaitlistInputImplCopyWithImpl(_$UpdateWaitlistInputImpl _value,
      $Res Function(_$UpdateWaitlistInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateWaitlistInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? notifiedAt = freezed,
    Object? expiresAt = freezed,
    Object? reminderSentAt = freezed,
    Object? bookedAt = freezed,
    Object? respondedAt = freezed,
    Object? preferences = freezed,
  }) {
    return _then(_$UpdateWaitlistInputImpl(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WaitlistStatus?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      notifiedAt: freezed == notifiedAt
          ? _value.notifiedAt
          : notifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reminderSentAt: freezed == reminderSentAt
          ? _value.reminderSentAt
          : reminderSentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bookedAt: freezed == bookedAt
          ? _value.bookedAt
          : bookedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      preferences: freezed == preferences
          ? _value._preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateWaitlistInputImpl implements _UpdateWaitlistInput {
  const _$UpdateWaitlistInputImpl(
      {this.position,
      this.status,
      this.priority,
      this.notifiedAt,
      this.expiresAt,
      this.reminderSentAt,
      this.bookedAt,
      this.respondedAt,
      final Map<String, dynamic>? preferences})
      : _preferences = preferences;

  factory _$UpdateWaitlistInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateWaitlistInputImplFromJson(json);

  @override
  final int? position;
  @override
  final WaitlistStatus? status;
  @override
  final int? priority;
  @override
  final DateTime? notifiedAt;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? reminderSentAt;
  @override
  final DateTime? bookedAt;
  @override
  final DateTime? respondedAt;
  final Map<String, dynamic>? _preferences;
  @override
  Map<String, dynamic>? get preferences {
    final value = _preferences;
    if (value == null) return null;
    if (_preferences is EqualUnmodifiableMapView) return _preferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UpdateWaitlistInput(position: $position, status: $status, priority: $priority, notifiedAt: $notifiedAt, expiresAt: $expiresAt, reminderSentAt: $reminderSentAt, bookedAt: $bookedAt, respondedAt: $respondedAt, preferences: $preferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWaitlistInputImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.notifiedAt, notifiedAt) ||
                other.notifiedAt == notifiedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.reminderSentAt, reminderSentAt) ||
                other.reminderSentAt == reminderSentAt) &&
            (identical(other.bookedAt, bookedAt) ||
                other.bookedAt == bookedAt) &&
            (identical(other.respondedAt, respondedAt) ||
                other.respondedAt == respondedAt) &&
            const DeepCollectionEquality()
                .equals(other._preferences, _preferences));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      position,
      status,
      priority,
      notifiedAt,
      expiresAt,
      reminderSentAt,
      bookedAt,
      respondedAt,
      const DeepCollectionEquality().hash(_preferences));

  /// Create a copy of UpdateWaitlistInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWaitlistInputImplCopyWith<_$UpdateWaitlistInputImpl> get copyWith =>
      __$$UpdateWaitlistInputImplCopyWithImpl<_$UpdateWaitlistInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateWaitlistInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateWaitlistInput implements UpdateWaitlistInput {
  const factory _UpdateWaitlistInput(
      {final int? position,
      final WaitlistStatus? status,
      final int? priority,
      final DateTime? notifiedAt,
      final DateTime? expiresAt,
      final DateTime? reminderSentAt,
      final DateTime? bookedAt,
      final DateTime? respondedAt,
      final Map<String, dynamic>? preferences}) = _$UpdateWaitlistInputImpl;

  factory _UpdateWaitlistInput.fromJson(Map<String, dynamic> json) =
      _$UpdateWaitlistInputImpl.fromJson;

  @override
  int? get position;
  @override
  WaitlistStatus? get status;
  @override
  int? get priority;
  @override
  DateTime? get notifiedAt;
  @override
  DateTime? get expiresAt;
  @override
  DateTime? get reminderSentAt;
  @override
  DateTime? get bookedAt;
  @override
  DateTime? get respondedAt;
  @override
  Map<String, dynamic>? get preferences;

  /// Create a copy of UpdateWaitlistInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateWaitlistInputImplCopyWith<_$UpdateWaitlistInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WaitlistWhereUniqueInput _$WaitlistWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _WaitlistWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$WaitlistWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this WaitlistWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WaitlistWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaitlistWhereUniqueInputCopyWith<WaitlistWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaitlistWhereUniqueInputCopyWith<$Res> {
  factory $WaitlistWhereUniqueInputCopyWith(WaitlistWhereUniqueInput value,
          $Res Function(WaitlistWhereUniqueInput) then) =
      _$WaitlistWhereUniqueInputCopyWithImpl<$Res, WaitlistWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$WaitlistWhereUniqueInputCopyWithImpl<$Res,
        $Val extends WaitlistWhereUniqueInput>
    implements $WaitlistWhereUniqueInputCopyWith<$Res> {
  _$WaitlistWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WaitlistWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaitlistWhereUniqueInputImplCopyWith<$Res>
    implements $WaitlistWhereUniqueInputCopyWith<$Res> {
  factory _$$WaitlistWhereUniqueInputImplCopyWith(
          _$WaitlistWhereUniqueInputImpl value,
          $Res Function(_$WaitlistWhereUniqueInputImpl) then) =
      __$$WaitlistWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$WaitlistWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$WaitlistWhereUniqueInputCopyWithImpl<$Res,
        _$WaitlistWhereUniqueInputImpl>
    implements _$$WaitlistWhereUniqueInputImplCopyWith<$Res> {
  __$$WaitlistWhereUniqueInputImplCopyWithImpl(
      _$WaitlistWhereUniqueInputImpl _value,
      $Res Function(_$WaitlistWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WaitlistWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$WaitlistWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaitlistWhereUniqueInputImpl implements _WaitlistWhereUniqueInput {
  const _$WaitlistWhereUniqueInputImpl({this.id});

  factory _$WaitlistWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaitlistWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'WaitlistWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitlistWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of WaitlistWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitlistWhereUniqueInputImplCopyWith<_$WaitlistWhereUniqueInputImpl>
      get copyWith => __$$WaitlistWhereUniqueInputImplCopyWithImpl<
          _$WaitlistWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaitlistWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _WaitlistWhereUniqueInput implements WaitlistWhereUniqueInput {
  const factory _WaitlistWhereUniqueInput({final String? id}) =
      _$WaitlistWhereUniqueInputImpl;

  factory _WaitlistWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$WaitlistWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of WaitlistWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaitlistWhereUniqueInputImplCopyWith<_$WaitlistWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WaitlistWhereInput _$WaitlistWhereInputFromJson(Map<String, dynamic> json) {
  return _WaitlistWhereInput.fromJson(json);
}

/// @nodoc
mixin _$WaitlistWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  DateTimeFilter? get joinedAt => throw _privateConstructorUsedError;
  IntFilter? get position => throw _privateConstructorUsedError;
  WaitlistStatusFilter? get status => throw _privateConstructorUsedError;
  IntFilter? get priority => throw _privateConstructorUsedError;
  DateTimeFilter? get notifiedAt => throw _privateConstructorUsedError;
  DateTimeFilter? get expiresAt => throw _privateConstructorUsedError;
  DateTimeFilter? get reminderSentAt => throw _privateConstructorUsedError;
  DateTimeFilter? get bookedAt => throw _privateConstructorUsedError;
  DateTimeFilter? get respondedAt => throw _privateConstructorUsedError;
  List<WaitlistWhereInput>? get AND => throw _privateConstructorUsedError;
  List<WaitlistWhereInput>? get OR => throw _privateConstructorUsedError;
  WaitlistWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this WaitlistWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WaitlistWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaitlistWhereInputCopyWith<WaitlistWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaitlistWhereInputCopyWith<$Res> {
  factory $WaitlistWhereInputCopyWith(
          WaitlistWhereInput value, $Res Function(WaitlistWhereInput) then) =
      _$WaitlistWhereInputCopyWithImpl<$Res, WaitlistWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      DateTimeFilter? joinedAt,
      IntFilter? position,
      WaitlistStatusFilter? status,
      IntFilter? priority,
      DateTimeFilter? notifiedAt,
      DateTimeFilter? expiresAt,
      DateTimeFilter? reminderSentAt,
      DateTimeFilter? bookedAt,
      DateTimeFilter? respondedAt,
      List<WaitlistWhereInput>? AND,
      List<WaitlistWhereInput>? OR,
      WaitlistWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $DateTimeFilterCopyWith<$Res>? get joinedAt;
  $IntFilterCopyWith<$Res>? get position;
  $WaitlistStatusFilterCopyWith<$Res>? get status;
  $IntFilterCopyWith<$Res>? get priority;
  $DateTimeFilterCopyWith<$Res>? get notifiedAt;
  $DateTimeFilterCopyWith<$Res>? get expiresAt;
  $DateTimeFilterCopyWith<$Res>? get reminderSentAt;
  $DateTimeFilterCopyWith<$Res>? get bookedAt;
  $DateTimeFilterCopyWith<$Res>? get respondedAt;
  $WaitlistWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$WaitlistWhereInputCopyWithImpl<$Res, $Val extends WaitlistWhereInput>
    implements $WaitlistWhereInputCopyWith<$Res> {
  _$WaitlistWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WaitlistWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? joinedAt = freezed,
    Object? position = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? notifiedAt = freezed,
    Object? expiresAt = freezed,
    Object? reminderSentAt = freezed,
    Object? bookedAt = freezed,
    Object? respondedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WaitlistStatusFilter?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      notifiedAt: freezed == notifiedAt
          ? _value.notifiedAt
          : notifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      reminderSentAt: freezed == reminderSentAt
          ? _value.reminderSentAt
          : reminderSentAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      bookedAt: freezed == bookedAt
          ? _value.bookedAt
          : bookedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<WaitlistWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<WaitlistWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as WaitlistWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WaitlistWhereInput
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

  /// Create a copy of WaitlistWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get joinedAt {
    if (_value.joinedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.joinedAt!, (value) {
      return _then(_value.copyWith(joinedAt: value) as $Val);
    });
  }

  /// Create a copy of WaitlistWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get position {
    if (_value.position == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.position!, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }

  /// Create a copy of WaitlistWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WaitlistStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $WaitlistStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of WaitlistWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get priority {
    if (_value.priority == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.priority!, (value) {
      return _then(_value.copyWith(priority: value) as $Val);
    });
  }

  /// Create a copy of WaitlistWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get notifiedAt {
    if (_value.notifiedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.notifiedAt!, (value) {
      return _then(_value.copyWith(notifiedAt: value) as $Val);
    });
  }

  /// Create a copy of WaitlistWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get expiresAt {
    if (_value.expiresAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.expiresAt!, (value) {
      return _then(_value.copyWith(expiresAt: value) as $Val);
    });
  }

  /// Create a copy of WaitlistWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get reminderSentAt {
    if (_value.reminderSentAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.reminderSentAt!, (value) {
      return _then(_value.copyWith(reminderSentAt: value) as $Val);
    });
  }

  /// Create a copy of WaitlistWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get bookedAt {
    if (_value.bookedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.bookedAt!, (value) {
      return _then(_value.copyWith(bookedAt: value) as $Val);
    });
  }

  /// Create a copy of WaitlistWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get respondedAt {
    if (_value.respondedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.respondedAt!, (value) {
      return _then(_value.copyWith(respondedAt: value) as $Val);
    });
  }

  /// Create a copy of WaitlistWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WaitlistWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $WaitlistWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WaitlistWhereInputImplCopyWith<$Res>
    implements $WaitlistWhereInputCopyWith<$Res> {
  factory _$$WaitlistWhereInputImplCopyWith(_$WaitlistWhereInputImpl value,
          $Res Function(_$WaitlistWhereInputImpl) then) =
      __$$WaitlistWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      DateTimeFilter? joinedAt,
      IntFilter? position,
      WaitlistStatusFilter? status,
      IntFilter? priority,
      DateTimeFilter? notifiedAt,
      DateTimeFilter? expiresAt,
      DateTimeFilter? reminderSentAt,
      DateTimeFilter? bookedAt,
      DateTimeFilter? respondedAt,
      List<WaitlistWhereInput>? AND,
      List<WaitlistWhereInput>? OR,
      WaitlistWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $DateTimeFilterCopyWith<$Res>? get joinedAt;
  @override
  $IntFilterCopyWith<$Res>? get position;
  @override
  $WaitlistStatusFilterCopyWith<$Res>? get status;
  @override
  $IntFilterCopyWith<$Res>? get priority;
  @override
  $DateTimeFilterCopyWith<$Res>? get notifiedAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get expiresAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get reminderSentAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get bookedAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get respondedAt;
  @override
  $WaitlistWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$WaitlistWhereInputImplCopyWithImpl<$Res>
    extends _$WaitlistWhereInputCopyWithImpl<$Res, _$WaitlistWhereInputImpl>
    implements _$$WaitlistWhereInputImplCopyWith<$Res> {
  __$$WaitlistWhereInputImplCopyWithImpl(_$WaitlistWhereInputImpl _value,
      $Res Function(_$WaitlistWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WaitlistWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? joinedAt = freezed,
    Object? position = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? notifiedAt = freezed,
    Object? expiresAt = freezed,
    Object? reminderSentAt = freezed,
    Object? bookedAt = freezed,
    Object? respondedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$WaitlistWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WaitlistStatusFilter?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      notifiedAt: freezed == notifiedAt
          ? _value.notifiedAt
          : notifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      reminderSentAt: freezed == reminderSentAt
          ? _value.reminderSentAt
          : reminderSentAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      bookedAt: freezed == bookedAt
          ? _value.bookedAt
          : bookedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<WaitlistWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<WaitlistWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as WaitlistWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WaitlistWhereInputImpl implements _WaitlistWhereInput {
  const _$WaitlistWhereInputImpl(
      {this.id,
      this.joinedAt,
      this.position,
      this.status,
      this.priority,
      this.notifiedAt,
      this.expiresAt,
      this.reminderSentAt,
      this.bookedAt,
      this.respondedAt,
      final List<WaitlistWhereInput>? AND,
      final List<WaitlistWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$WaitlistWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaitlistWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final DateTimeFilter? joinedAt;
  @override
  final IntFilter? position;
  @override
  final WaitlistStatusFilter? status;
  @override
  final IntFilter? priority;
  @override
  final DateTimeFilter? notifiedAt;
  @override
  final DateTimeFilter? expiresAt;
  @override
  final DateTimeFilter? reminderSentAt;
  @override
  final DateTimeFilter? bookedAt;
  @override
  final DateTimeFilter? respondedAt;
  final List<WaitlistWhereInput>? _AND;
  @override
  List<WaitlistWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WaitlistWhereInput>? _OR;
  @override
  List<WaitlistWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final WaitlistWhereInput? NOT;

  @override
  String toString() {
    return 'WaitlistWhereInput(id: $id, joinedAt: $joinedAt, position: $position, status: $status, priority: $priority, notifiedAt: $notifiedAt, expiresAt: $expiresAt, reminderSentAt: $reminderSentAt, bookedAt: $bookedAt, respondedAt: $respondedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitlistWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.notifiedAt, notifiedAt) ||
                other.notifiedAt == notifiedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.reminderSentAt, reminderSentAt) ||
                other.reminderSentAt == reminderSentAt) &&
            (identical(other.bookedAt, bookedAt) ||
                other.bookedAt == bookedAt) &&
            (identical(other.respondedAt, respondedAt) ||
                other.respondedAt == respondedAt) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      joinedAt,
      position,
      status,
      priority,
      notifiedAt,
      expiresAt,
      reminderSentAt,
      bookedAt,
      respondedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of WaitlistWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitlistWhereInputImplCopyWith<_$WaitlistWhereInputImpl> get copyWith =>
      __$$WaitlistWhereInputImplCopyWithImpl<_$WaitlistWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaitlistWhereInputImplToJson(
      this,
    );
  }
}

abstract class _WaitlistWhereInput implements WaitlistWhereInput {
  const factory _WaitlistWhereInput(
      {final StringFilter? id,
      final DateTimeFilter? joinedAt,
      final IntFilter? position,
      final WaitlistStatusFilter? status,
      final IntFilter? priority,
      final DateTimeFilter? notifiedAt,
      final DateTimeFilter? expiresAt,
      final DateTimeFilter? reminderSentAt,
      final DateTimeFilter? bookedAt,
      final DateTimeFilter? respondedAt,
      final List<WaitlistWhereInput>? AND,
      final List<WaitlistWhereInput>? OR,
      final WaitlistWhereInput? NOT}) = _$WaitlistWhereInputImpl;

  factory _WaitlistWhereInput.fromJson(Map<String, dynamic> json) =
      _$WaitlistWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  DateTimeFilter? get joinedAt;
  @override
  IntFilter? get position;
  @override
  WaitlistStatusFilter? get status;
  @override
  IntFilter? get priority;
  @override
  DateTimeFilter? get notifiedAt;
  @override
  DateTimeFilter? get expiresAt;
  @override
  DateTimeFilter? get reminderSentAt;
  @override
  DateTimeFilter? get bookedAt;
  @override
  DateTimeFilter? get respondedAt;
  @override
  List<WaitlistWhereInput>? get AND;
  @override
  List<WaitlistWhereInput>? get OR;
  @override
  WaitlistWhereInput? get NOT;

  /// Create a copy of WaitlistWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaitlistWhereInputImplCopyWith<_$WaitlistWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WaitlistListRelationFilter _$WaitlistListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _WaitlistListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$WaitlistListRelationFilter {
  /// At least one related record matches
  WaitlistWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  WaitlistWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  WaitlistWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this WaitlistListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WaitlistListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaitlistListRelationFilterCopyWith<WaitlistListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaitlistListRelationFilterCopyWith<$Res> {
  factory $WaitlistListRelationFilterCopyWith(WaitlistListRelationFilter value,
          $Res Function(WaitlistListRelationFilter) then) =
      _$WaitlistListRelationFilterCopyWithImpl<$Res,
          WaitlistListRelationFilter>;
  @useResult
  $Res call(
      {WaitlistWhereInput? some,
      WaitlistWhereInput? every,
      WaitlistWhereInput? none});

  $WaitlistWhereInputCopyWith<$Res>? get some;
  $WaitlistWhereInputCopyWith<$Res>? get every;
  $WaitlistWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$WaitlistListRelationFilterCopyWithImpl<$Res,
        $Val extends WaitlistListRelationFilter>
    implements $WaitlistListRelationFilterCopyWith<$Res> {
  _$WaitlistListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WaitlistListRelationFilter
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
              as WaitlistWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as WaitlistWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as WaitlistWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WaitlistListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WaitlistWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $WaitlistWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of WaitlistListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WaitlistWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $WaitlistWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of WaitlistListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WaitlistWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $WaitlistWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WaitlistListRelationFilterImplCopyWith<$Res>
    implements $WaitlistListRelationFilterCopyWith<$Res> {
  factory _$$WaitlistListRelationFilterImplCopyWith(
          _$WaitlistListRelationFilterImpl value,
          $Res Function(_$WaitlistListRelationFilterImpl) then) =
      __$$WaitlistListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WaitlistWhereInput? some,
      WaitlistWhereInput? every,
      WaitlistWhereInput? none});

  @override
  $WaitlistWhereInputCopyWith<$Res>? get some;
  @override
  $WaitlistWhereInputCopyWith<$Res>? get every;
  @override
  $WaitlistWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$WaitlistListRelationFilterImplCopyWithImpl<$Res>
    extends _$WaitlistListRelationFilterCopyWithImpl<$Res,
        _$WaitlistListRelationFilterImpl>
    implements _$$WaitlistListRelationFilterImplCopyWith<$Res> {
  __$$WaitlistListRelationFilterImplCopyWithImpl(
      _$WaitlistListRelationFilterImpl _value,
      $Res Function(_$WaitlistListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of WaitlistListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$WaitlistListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as WaitlistWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as WaitlistWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as WaitlistWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaitlistListRelationFilterImpl implements _WaitlistListRelationFilter {
  const _$WaitlistListRelationFilterImpl({this.some, this.every, this.none});

  factory _$WaitlistListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WaitlistListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final WaitlistWhereInput? some;

  /// All related records match
  @override
  final WaitlistWhereInput? every;

  /// No related records match
  @override
  final WaitlistWhereInput? none;

  @override
  String toString() {
    return 'WaitlistListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitlistListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of WaitlistListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitlistListRelationFilterImplCopyWith<_$WaitlistListRelationFilterImpl>
      get copyWith => __$$WaitlistListRelationFilterImplCopyWithImpl<
          _$WaitlistListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaitlistListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _WaitlistListRelationFilter
    implements WaitlistListRelationFilter {
  const factory _WaitlistListRelationFilter(
      {final WaitlistWhereInput? some,
      final WaitlistWhereInput? every,
      final WaitlistWhereInput? none}) = _$WaitlistListRelationFilterImpl;

  factory _WaitlistListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$WaitlistListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  WaitlistWhereInput? get some;

  /// All related records match
  @override
  WaitlistWhereInput? get every;

  /// No related records match
  @override
  WaitlistWhereInput? get none;

  /// Create a copy of WaitlistListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaitlistListRelationFilterImplCopyWith<_$WaitlistListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WaitlistRelationFilter _$WaitlistRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _WaitlistRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$WaitlistRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  WaitlistWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  WaitlistWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this WaitlistRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WaitlistRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaitlistRelationFilterCopyWith<WaitlistRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaitlistRelationFilterCopyWith<$Res> {
  factory $WaitlistRelationFilterCopyWith(WaitlistRelationFilter value,
          $Res Function(WaitlistRelationFilter) then) =
      _$WaitlistRelationFilterCopyWithImpl<$Res, WaitlistRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') WaitlistWhereInput? is_,
      WaitlistWhereInput? isNot});

  $WaitlistWhereInputCopyWith<$Res>? get is_;
  $WaitlistWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$WaitlistRelationFilterCopyWithImpl<$Res,
        $Val extends WaitlistRelationFilter>
    implements $WaitlistRelationFilterCopyWith<$Res> {
  _$WaitlistRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WaitlistRelationFilter
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
              as WaitlistWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as WaitlistWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WaitlistRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WaitlistWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $WaitlistWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of WaitlistRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WaitlistWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $WaitlistWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WaitlistRelationFilterImplCopyWith<$Res>
    implements $WaitlistRelationFilterCopyWith<$Res> {
  factory _$$WaitlistRelationFilterImplCopyWith(
          _$WaitlistRelationFilterImpl value,
          $Res Function(_$WaitlistRelationFilterImpl) then) =
      __$$WaitlistRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') WaitlistWhereInput? is_,
      WaitlistWhereInput? isNot});

  @override
  $WaitlistWhereInputCopyWith<$Res>? get is_;
  @override
  $WaitlistWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$WaitlistRelationFilterImplCopyWithImpl<$Res>
    extends _$WaitlistRelationFilterCopyWithImpl<$Res,
        _$WaitlistRelationFilterImpl>
    implements _$$WaitlistRelationFilterImplCopyWith<$Res> {
  __$$WaitlistRelationFilterImplCopyWithImpl(
      _$WaitlistRelationFilterImpl _value,
      $Res Function(_$WaitlistRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of WaitlistRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$WaitlistRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as WaitlistWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as WaitlistWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaitlistRelationFilterImpl implements _WaitlistRelationFilter {
  const _$WaitlistRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$WaitlistRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaitlistRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final WaitlistWhereInput? is_;

  /// Related record does not match
  @override
  final WaitlistWhereInput? isNot;

  @override
  String toString() {
    return 'WaitlistRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitlistRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of WaitlistRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitlistRelationFilterImplCopyWith<_$WaitlistRelationFilterImpl>
      get copyWith => __$$WaitlistRelationFilterImplCopyWithImpl<
          _$WaitlistRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaitlistRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _WaitlistRelationFilter implements WaitlistRelationFilter {
  const factory _WaitlistRelationFilter(
      {@JsonKey(name: 'is') final WaitlistWhereInput? is_,
      final WaitlistWhereInput? isNot}) = _$WaitlistRelationFilterImpl;

  factory _WaitlistRelationFilter.fromJson(Map<String, dynamic> json) =
      _$WaitlistRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  WaitlistWhereInput? get is_;

  /// Related record does not match
  @override
  WaitlistWhereInput? get isNot;

  /// Create a copy of WaitlistRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaitlistRelationFilterImplCopyWith<_$WaitlistRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WaitlistOrderByInput _$WaitlistOrderByInputFromJson(Map<String, dynamic> json) {
  return _WaitlistOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$WaitlistOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get joinedAt => throw _privateConstructorUsedError;
  SortOrder? get position => throw _privateConstructorUsedError;
  SortOrder? get priority => throw _privateConstructorUsedError;
  SortOrder? get notifiedAt => throw _privateConstructorUsedError;
  SortOrder? get expiresAt => throw _privateConstructorUsedError;
  SortOrder? get reminderSentAt => throw _privateConstructorUsedError;
  SortOrder? get bookedAt => throw _privateConstructorUsedError;
  SortOrder? get respondedAt => throw _privateConstructorUsedError;

  /// Serializes this WaitlistOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WaitlistOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaitlistOrderByInputCopyWith<WaitlistOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaitlistOrderByInputCopyWith<$Res> {
  factory $WaitlistOrderByInputCopyWith(WaitlistOrderByInput value,
          $Res Function(WaitlistOrderByInput) then) =
      _$WaitlistOrderByInputCopyWithImpl<$Res, WaitlistOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? joinedAt,
      SortOrder? position,
      SortOrder? priority,
      SortOrder? notifiedAt,
      SortOrder? expiresAt,
      SortOrder? reminderSentAt,
      SortOrder? bookedAt,
      SortOrder? respondedAt});
}

/// @nodoc
class _$WaitlistOrderByInputCopyWithImpl<$Res,
        $Val extends WaitlistOrderByInput>
    implements $WaitlistOrderByInputCopyWith<$Res> {
  _$WaitlistOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WaitlistOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? joinedAt = freezed,
    Object? position = freezed,
    Object? priority = freezed,
    Object? notifiedAt = freezed,
    Object? expiresAt = freezed,
    Object? reminderSentAt = freezed,
    Object? bookedAt = freezed,
    Object? respondedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      notifiedAt: freezed == notifiedAt
          ? _value.notifiedAt
          : notifiedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reminderSentAt: freezed == reminderSentAt
          ? _value.reminderSentAt
          : reminderSentAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      bookedAt: freezed == bookedAt
          ? _value.bookedAt
          : bookedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaitlistOrderByInputImplCopyWith<$Res>
    implements $WaitlistOrderByInputCopyWith<$Res> {
  factory _$$WaitlistOrderByInputImplCopyWith(_$WaitlistOrderByInputImpl value,
          $Res Function(_$WaitlistOrderByInputImpl) then) =
      __$$WaitlistOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? joinedAt,
      SortOrder? position,
      SortOrder? priority,
      SortOrder? notifiedAt,
      SortOrder? expiresAt,
      SortOrder? reminderSentAt,
      SortOrder? bookedAt,
      SortOrder? respondedAt});
}

/// @nodoc
class __$$WaitlistOrderByInputImplCopyWithImpl<$Res>
    extends _$WaitlistOrderByInputCopyWithImpl<$Res, _$WaitlistOrderByInputImpl>
    implements _$$WaitlistOrderByInputImplCopyWith<$Res> {
  __$$WaitlistOrderByInputImplCopyWithImpl(_$WaitlistOrderByInputImpl _value,
      $Res Function(_$WaitlistOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WaitlistOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? joinedAt = freezed,
    Object? position = freezed,
    Object? priority = freezed,
    Object? notifiedAt = freezed,
    Object? expiresAt = freezed,
    Object? reminderSentAt = freezed,
    Object? bookedAt = freezed,
    Object? respondedAt = freezed,
  }) {
    return _then(_$WaitlistOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      notifiedAt: freezed == notifiedAt
          ? _value.notifiedAt
          : notifiedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reminderSentAt: freezed == reminderSentAt
          ? _value.reminderSentAt
          : reminderSentAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      bookedAt: freezed == bookedAt
          ? _value.bookedAt
          : bookedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      respondedAt: freezed == respondedAt
          ? _value.respondedAt
          : respondedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaitlistOrderByInputImpl implements _WaitlistOrderByInput {
  const _$WaitlistOrderByInputImpl(
      {this.id,
      this.joinedAt,
      this.position,
      this.priority,
      this.notifiedAt,
      this.expiresAt,
      this.reminderSentAt,
      this.bookedAt,
      this.respondedAt});

  factory _$WaitlistOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaitlistOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? joinedAt;
  @override
  final SortOrder? position;
  @override
  final SortOrder? priority;
  @override
  final SortOrder? notifiedAt;
  @override
  final SortOrder? expiresAt;
  @override
  final SortOrder? reminderSentAt;
  @override
  final SortOrder? bookedAt;
  @override
  final SortOrder? respondedAt;

  @override
  String toString() {
    return 'WaitlistOrderByInput(id: $id, joinedAt: $joinedAt, position: $position, priority: $priority, notifiedAt: $notifiedAt, expiresAt: $expiresAt, reminderSentAt: $reminderSentAt, bookedAt: $bookedAt, respondedAt: $respondedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitlistOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.notifiedAt, notifiedAt) ||
                other.notifiedAt == notifiedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.reminderSentAt, reminderSentAt) ||
                other.reminderSentAt == reminderSentAt) &&
            (identical(other.bookedAt, bookedAt) ||
                other.bookedAt == bookedAt) &&
            (identical(other.respondedAt, respondedAt) ||
                other.respondedAt == respondedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, joinedAt, position, priority,
      notifiedAt, expiresAt, reminderSentAt, bookedAt, respondedAt);

  /// Create a copy of WaitlistOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitlistOrderByInputImplCopyWith<_$WaitlistOrderByInputImpl>
      get copyWith =>
          __$$WaitlistOrderByInputImplCopyWithImpl<_$WaitlistOrderByInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaitlistOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _WaitlistOrderByInput implements WaitlistOrderByInput {
  const factory _WaitlistOrderByInput(
      {final SortOrder? id,
      final SortOrder? joinedAt,
      final SortOrder? position,
      final SortOrder? priority,
      final SortOrder? notifiedAt,
      final SortOrder? expiresAt,
      final SortOrder? reminderSentAt,
      final SortOrder? bookedAt,
      final SortOrder? respondedAt}) = _$WaitlistOrderByInputImpl;

  factory _WaitlistOrderByInput.fromJson(Map<String, dynamic> json) =
      _$WaitlistOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get joinedAt;
  @override
  SortOrder? get position;
  @override
  SortOrder? get priority;
  @override
  SortOrder? get notifiedAt;
  @override
  SortOrder? get expiresAt;
  @override
  SortOrder? get reminderSentAt;
  @override
  SortOrder? get bookedAt;
  @override
  SortOrder? get respondedAt;

  /// Create a copy of WaitlistOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaitlistOrderByInputImplCopyWith<_$WaitlistOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
