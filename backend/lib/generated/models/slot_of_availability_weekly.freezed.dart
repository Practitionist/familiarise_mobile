// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slot_of_availability_weekly.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SlotOfAvailabilityWeekly _$SlotOfAvailabilityWeeklyFromJson(
    Map<String, dynamic> json) {
  return _SlotOfAvailabilityWeekly.fromJson(json);
}

/// @nodoc
mixin _$SlotOfAvailabilityWeekly {
  String get id => throw _privateConstructorUsedError;
  DayOfWeek get startDay => throw _privateConstructorUsedError;
  int get startTimeUtc => throw _privateConstructorUsedError;
  DayOfWeek get endDay => throw _privateConstructorUsedError;
  int get endTimeUtc => throw _privateConstructorUsedError;
  int get utcOffsetMinutes => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SlotOfAvailabilityWeekly to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlotOfAvailabilityWeekly
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlotOfAvailabilityWeeklyCopyWith<SlotOfAvailabilityWeekly> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotOfAvailabilityWeeklyCopyWith<$Res> {
  factory $SlotOfAvailabilityWeeklyCopyWith(SlotOfAvailabilityWeekly value,
          $Res Function(SlotOfAvailabilityWeekly) then) =
      _$SlotOfAvailabilityWeeklyCopyWithImpl<$Res, SlotOfAvailabilityWeekly>;
  @useResult
  $Res call(
      {String id,
      DayOfWeek startDay,
      int startTimeUtc,
      DayOfWeek endDay,
      int endTimeUtc,
      int utcOffsetMinutes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String consultantProfileId,
      DateTime createdAt,
      DateTime updatedAt});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class _$SlotOfAvailabilityWeeklyCopyWithImpl<$Res,
        $Val extends SlotOfAvailabilityWeekly>
    implements $SlotOfAvailabilityWeeklyCopyWith<$Res> {
  _$SlotOfAvailabilityWeeklyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlotOfAvailabilityWeekly
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDay = null,
    Object? startTimeUtc = null,
    Object? endDay = null,
    Object? endTimeUtc = null,
    Object? utcOffsetMinutes = null,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startDay: null == startDay
          ? _value.startDay
          : startDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      startTimeUtc: null == startTimeUtc
          ? _value.startTimeUtc
          : startTimeUtc // ignore: cast_nullable_to_non_nullable
              as int,
      endDay: null == endDay
          ? _value.endDay
          : endDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      endTimeUtc: null == endTimeUtc
          ? _value.endTimeUtc
          : endTimeUtc // ignore: cast_nullable_to_non_nullable
              as int,
      utcOffsetMinutes: null == utcOffsetMinutes
          ? _value.utcOffsetMinutes
          : utcOffsetMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of SlotOfAvailabilityWeekly
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileCopyWith<$Res>? get consultantProfile {
    if (_value.consultantProfile == null) {
      return null;
    }

    return $ConsultantProfileCopyWith<$Res>(_value.consultantProfile!, (value) {
      return _then(_value.copyWith(consultantProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SlotOfAvailabilityWeeklyImplCopyWith<$Res>
    implements $SlotOfAvailabilityWeeklyCopyWith<$Res> {
  factory _$$SlotOfAvailabilityWeeklyImplCopyWith(
          _$SlotOfAvailabilityWeeklyImpl value,
          $Res Function(_$SlotOfAvailabilityWeeklyImpl) then) =
      __$$SlotOfAvailabilityWeeklyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DayOfWeek startDay,
      int startTimeUtc,
      DayOfWeek endDay,
      int endTimeUtc,
      int utcOffsetMinutes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String consultantProfileId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class __$$SlotOfAvailabilityWeeklyImplCopyWithImpl<$Res>
    extends _$SlotOfAvailabilityWeeklyCopyWithImpl<$Res,
        _$SlotOfAvailabilityWeeklyImpl>
    implements _$$SlotOfAvailabilityWeeklyImplCopyWith<$Res> {
  __$$SlotOfAvailabilityWeeklyImplCopyWithImpl(
      _$SlotOfAvailabilityWeeklyImpl _value,
      $Res Function(_$SlotOfAvailabilityWeeklyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotOfAvailabilityWeekly
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDay = null,
    Object? startTimeUtc = null,
    Object? endDay = null,
    Object? endTimeUtc = null,
    Object? utcOffsetMinutes = null,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SlotOfAvailabilityWeeklyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startDay: null == startDay
          ? _value.startDay
          : startDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      startTimeUtc: null == startTimeUtc
          ? _value.startTimeUtc
          : startTimeUtc // ignore: cast_nullable_to_non_nullable
              as int,
      endDay: null == endDay
          ? _value.endDay
          : endDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      endTimeUtc: null == endTimeUtc
          ? _value.endTimeUtc
          : endTimeUtc // ignore: cast_nullable_to_non_nullable
              as int,
      utcOffsetMinutes: null == utcOffsetMinutes
          ? _value.utcOffsetMinutes
          : utcOffsetMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SlotOfAvailabilityWeeklyImpl implements _SlotOfAvailabilityWeekly {
  const _$SlotOfAvailabilityWeeklyImpl(
      {required this.id,
      required this.startDay,
      required this.startTimeUtc,
      required this.endDay,
      required this.endTimeUtc,
      this.utcOffsetMinutes = 0,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      required this.consultantProfileId,
      required this.createdAt,
      required this.updatedAt});

  factory _$SlotOfAvailabilityWeeklyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlotOfAvailabilityWeeklyImplFromJson(json);

  @override
  final String id;
  @override
  final DayOfWeek startDay;
  @override
  final int startTimeUtc;
  @override
  final DayOfWeek endDay;
  @override
  final int endTimeUtc;
  @override
  @JsonKey()
  final int utcOffsetMinutes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? consultantProfile;
  @override
  final String consultantProfileId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SlotOfAvailabilityWeekly(id: $id, startDay: $startDay, startTimeUtc: $startTimeUtc, endDay: $endDay, endTimeUtc: $endTimeUtc, utcOffsetMinutes: $utcOffsetMinutes, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotOfAvailabilityWeeklyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDay, startDay) ||
                other.startDay == startDay) &&
            (identical(other.startTimeUtc, startTimeUtc) ||
                other.startTimeUtc == startTimeUtc) &&
            (identical(other.endDay, endDay) || other.endDay == endDay) &&
            (identical(other.endTimeUtc, endTimeUtc) ||
                other.endTimeUtc == endTimeUtc) &&
            (identical(other.utcOffsetMinutes, utcOffsetMinutes) ||
                other.utcOffsetMinutes == utcOffsetMinutes) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      startDay,
      startTimeUtc,
      endDay,
      endTimeUtc,
      utcOffsetMinutes,
      consultantProfile,
      consultantProfileId,
      createdAt,
      updatedAt);

  /// Create a copy of SlotOfAvailabilityWeekly
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotOfAvailabilityWeeklyImplCopyWith<_$SlotOfAvailabilityWeeklyImpl>
      get copyWith => __$$SlotOfAvailabilityWeeklyImplCopyWithImpl<
          _$SlotOfAvailabilityWeeklyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotOfAvailabilityWeeklyImplToJson(
      this,
    );
  }
}

abstract class _SlotOfAvailabilityWeekly implements SlotOfAvailabilityWeekly {
  const factory _SlotOfAvailabilityWeekly(
      {required final String id,
      required final DayOfWeek startDay,
      required final int startTimeUtc,
      required final DayOfWeek endDay,
      required final int endTimeUtc,
      final int utcOffsetMinutes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? consultantProfile,
      required final String consultantProfileId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$SlotOfAvailabilityWeeklyImpl;

  factory _SlotOfAvailabilityWeekly.fromJson(Map<String, dynamic> json) =
      _$SlotOfAvailabilityWeeklyImpl.fromJson;

  @override
  String get id;
  @override
  DayOfWeek get startDay;
  @override
  int get startTimeUtc;
  @override
  DayOfWeek get endDay;
  @override
  int get endTimeUtc;
  @override
  int get utcOffsetMinutes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile;
  @override
  String get consultantProfileId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of SlotOfAvailabilityWeekly
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotOfAvailabilityWeeklyImplCopyWith<_$SlotOfAvailabilityWeeklyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateSlotOfAvailabilityWeeklyInput
    _$CreateSlotOfAvailabilityWeeklyInputFromJson(Map<String, dynamic> json) {
  return _CreateSlotOfAvailabilityWeeklyInput.fromJson(json);
}

/// @nodoc
mixin _$CreateSlotOfAvailabilityWeeklyInput {
  DayOfWeek get startDay => throw _privateConstructorUsedError;
  int get startTimeUtc => throw _privateConstructorUsedError;
  DayOfWeek get endDay => throw _privateConstructorUsedError;
  int get endTimeUtc => throw _privateConstructorUsedError;
  int? get utcOffsetMinutes => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;

  /// Serializes this CreateSlotOfAvailabilityWeeklyInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSlotOfAvailabilityWeeklyInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSlotOfAvailabilityWeeklyInputCopyWith<
          CreateSlotOfAvailabilityWeeklyInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSlotOfAvailabilityWeeklyInputCopyWith<$Res> {
  factory $CreateSlotOfAvailabilityWeeklyInputCopyWith(
          CreateSlotOfAvailabilityWeeklyInput value,
          $Res Function(CreateSlotOfAvailabilityWeeklyInput) then) =
      _$CreateSlotOfAvailabilityWeeklyInputCopyWithImpl<$Res,
          CreateSlotOfAvailabilityWeeklyInput>;
  @useResult
  $Res call(
      {DayOfWeek startDay,
      int startTimeUtc,
      DayOfWeek endDay,
      int endTimeUtc,
      int? utcOffsetMinutes,
      String consultantProfileId});
}

/// @nodoc
class _$CreateSlotOfAvailabilityWeeklyInputCopyWithImpl<$Res,
        $Val extends CreateSlotOfAvailabilityWeeklyInput>
    implements $CreateSlotOfAvailabilityWeeklyInputCopyWith<$Res> {
  _$CreateSlotOfAvailabilityWeeklyInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSlotOfAvailabilityWeeklyInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDay = null,
    Object? startTimeUtc = null,
    Object? endDay = null,
    Object? endTimeUtc = null,
    Object? utcOffsetMinutes = freezed,
    Object? consultantProfileId = null,
  }) {
    return _then(_value.copyWith(
      startDay: null == startDay
          ? _value.startDay
          : startDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      startTimeUtc: null == startTimeUtc
          ? _value.startTimeUtc
          : startTimeUtc // ignore: cast_nullable_to_non_nullable
              as int,
      endDay: null == endDay
          ? _value.endDay
          : endDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      endTimeUtc: null == endTimeUtc
          ? _value.endTimeUtc
          : endTimeUtc // ignore: cast_nullable_to_non_nullable
              as int,
      utcOffsetMinutes: freezed == utcOffsetMinutes
          ? _value.utcOffsetMinutes
          : utcOffsetMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSlotOfAvailabilityWeeklyInputImplCopyWith<$Res>
    implements $CreateSlotOfAvailabilityWeeklyInputCopyWith<$Res> {
  factory _$$CreateSlotOfAvailabilityWeeklyInputImplCopyWith(
          _$CreateSlotOfAvailabilityWeeklyInputImpl value,
          $Res Function(_$CreateSlotOfAvailabilityWeeklyInputImpl) then) =
      __$$CreateSlotOfAvailabilityWeeklyInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DayOfWeek startDay,
      int startTimeUtc,
      DayOfWeek endDay,
      int endTimeUtc,
      int? utcOffsetMinutes,
      String consultantProfileId});
}

/// @nodoc
class __$$CreateSlotOfAvailabilityWeeklyInputImplCopyWithImpl<$Res>
    extends _$CreateSlotOfAvailabilityWeeklyInputCopyWithImpl<$Res,
        _$CreateSlotOfAvailabilityWeeklyInputImpl>
    implements _$$CreateSlotOfAvailabilityWeeklyInputImplCopyWith<$Res> {
  __$$CreateSlotOfAvailabilityWeeklyInputImplCopyWithImpl(
      _$CreateSlotOfAvailabilityWeeklyInputImpl _value,
      $Res Function(_$CreateSlotOfAvailabilityWeeklyInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSlotOfAvailabilityWeeklyInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDay = null,
    Object? startTimeUtc = null,
    Object? endDay = null,
    Object? endTimeUtc = null,
    Object? utcOffsetMinutes = freezed,
    Object? consultantProfileId = null,
  }) {
    return _then(_$CreateSlotOfAvailabilityWeeklyInputImpl(
      startDay: null == startDay
          ? _value.startDay
          : startDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      startTimeUtc: null == startTimeUtc
          ? _value.startTimeUtc
          : startTimeUtc // ignore: cast_nullable_to_non_nullable
              as int,
      endDay: null == endDay
          ? _value.endDay
          : endDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      endTimeUtc: null == endTimeUtc
          ? _value.endTimeUtc
          : endTimeUtc // ignore: cast_nullable_to_non_nullable
              as int,
      utcOffsetMinutes: freezed == utcOffsetMinutes
          ? _value.utcOffsetMinutes
          : utcOffsetMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSlotOfAvailabilityWeeklyInputImpl
    implements _CreateSlotOfAvailabilityWeeklyInput {
  const _$CreateSlotOfAvailabilityWeeklyInputImpl(
      {required this.startDay,
      required this.startTimeUtc,
      required this.endDay,
      required this.endTimeUtc,
      this.utcOffsetMinutes = 0,
      required this.consultantProfileId});

  factory _$CreateSlotOfAvailabilityWeeklyInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateSlotOfAvailabilityWeeklyInputImplFromJson(json);

  @override
  final DayOfWeek startDay;
  @override
  final int startTimeUtc;
  @override
  final DayOfWeek endDay;
  @override
  final int endTimeUtc;
  @override
  @JsonKey()
  final int? utcOffsetMinutes;
  @override
  final String consultantProfileId;

  @override
  String toString() {
    return 'CreateSlotOfAvailabilityWeeklyInput(startDay: $startDay, startTimeUtc: $startTimeUtc, endDay: $endDay, endTimeUtc: $endTimeUtc, utcOffsetMinutes: $utcOffsetMinutes, consultantProfileId: $consultantProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSlotOfAvailabilityWeeklyInputImpl &&
            (identical(other.startDay, startDay) ||
                other.startDay == startDay) &&
            (identical(other.startTimeUtc, startTimeUtc) ||
                other.startTimeUtc == startTimeUtc) &&
            (identical(other.endDay, endDay) || other.endDay == endDay) &&
            (identical(other.endTimeUtc, endTimeUtc) ||
                other.endTimeUtc == endTimeUtc) &&
            (identical(other.utcOffsetMinutes, utcOffsetMinutes) ||
                other.utcOffsetMinutes == utcOffsetMinutes) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startDay, startTimeUtc, endDay,
      endTimeUtc, utcOffsetMinutes, consultantProfileId);

  /// Create a copy of CreateSlotOfAvailabilityWeeklyInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSlotOfAvailabilityWeeklyInputImplCopyWith<
          _$CreateSlotOfAvailabilityWeeklyInputImpl>
      get copyWith => __$$CreateSlotOfAvailabilityWeeklyInputImplCopyWithImpl<
          _$CreateSlotOfAvailabilityWeeklyInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSlotOfAvailabilityWeeklyInputImplToJson(
      this,
    );
  }
}

abstract class _CreateSlotOfAvailabilityWeeklyInput
    implements CreateSlotOfAvailabilityWeeklyInput {
  const factory _CreateSlotOfAvailabilityWeeklyInput(
          {required final DayOfWeek startDay,
          required final int startTimeUtc,
          required final DayOfWeek endDay,
          required final int endTimeUtc,
          final int? utcOffsetMinutes,
          required final String consultantProfileId}) =
      _$CreateSlotOfAvailabilityWeeklyInputImpl;

  factory _CreateSlotOfAvailabilityWeeklyInput.fromJson(
          Map<String, dynamic> json) =
      _$CreateSlotOfAvailabilityWeeklyInputImpl.fromJson;

  @override
  DayOfWeek get startDay;
  @override
  int get startTimeUtc;
  @override
  DayOfWeek get endDay;
  @override
  int get endTimeUtc;
  @override
  int? get utcOffsetMinutes;
  @override
  String get consultantProfileId;

  /// Create a copy of CreateSlotOfAvailabilityWeeklyInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSlotOfAvailabilityWeeklyInputImplCopyWith<
          _$CreateSlotOfAvailabilityWeeklyInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateSlotOfAvailabilityWeeklyInput
    _$UpdateSlotOfAvailabilityWeeklyInputFromJson(Map<String, dynamic> json) {
  return _UpdateSlotOfAvailabilityWeeklyInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateSlotOfAvailabilityWeeklyInput {
  DayOfWeek? get startDay => throw _privateConstructorUsedError;
  int? get startTimeUtc => throw _privateConstructorUsedError;
  DayOfWeek? get endDay => throw _privateConstructorUsedError;
  int? get endTimeUtc => throw _privateConstructorUsedError;
  int? get utcOffsetMinutes => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;

  /// Serializes this UpdateSlotOfAvailabilityWeeklyInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSlotOfAvailabilityWeeklyInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSlotOfAvailabilityWeeklyInputCopyWith<
          UpdateSlotOfAvailabilityWeeklyInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSlotOfAvailabilityWeeklyInputCopyWith<$Res> {
  factory $UpdateSlotOfAvailabilityWeeklyInputCopyWith(
          UpdateSlotOfAvailabilityWeeklyInput value,
          $Res Function(UpdateSlotOfAvailabilityWeeklyInput) then) =
      _$UpdateSlotOfAvailabilityWeeklyInputCopyWithImpl<$Res,
          UpdateSlotOfAvailabilityWeeklyInput>;
  @useResult
  $Res call(
      {DayOfWeek? startDay,
      int? startTimeUtc,
      DayOfWeek? endDay,
      int? endTimeUtc,
      int? utcOffsetMinutes,
      String? consultantProfileId});
}

/// @nodoc
class _$UpdateSlotOfAvailabilityWeeklyInputCopyWithImpl<$Res,
        $Val extends UpdateSlotOfAvailabilityWeeklyInput>
    implements $UpdateSlotOfAvailabilityWeeklyInputCopyWith<$Res> {
  _$UpdateSlotOfAvailabilityWeeklyInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSlotOfAvailabilityWeeklyInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDay = freezed,
    Object? startTimeUtc = freezed,
    Object? endDay = freezed,
    Object? endTimeUtc = freezed,
    Object? utcOffsetMinutes = freezed,
    Object? consultantProfileId = freezed,
  }) {
    return _then(_value.copyWith(
      startDay: freezed == startDay
          ? _value.startDay
          : startDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeek?,
      startTimeUtc: freezed == startTimeUtc
          ? _value.startTimeUtc
          : startTimeUtc // ignore: cast_nullable_to_non_nullable
              as int?,
      endDay: freezed == endDay
          ? _value.endDay
          : endDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeek?,
      endTimeUtc: freezed == endTimeUtc
          ? _value.endTimeUtc
          : endTimeUtc // ignore: cast_nullable_to_non_nullable
              as int?,
      utcOffsetMinutes: freezed == utcOffsetMinutes
          ? _value.utcOffsetMinutes
          : utcOffsetMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSlotOfAvailabilityWeeklyInputImplCopyWith<$Res>
    implements $UpdateSlotOfAvailabilityWeeklyInputCopyWith<$Res> {
  factory _$$UpdateSlotOfAvailabilityWeeklyInputImplCopyWith(
          _$UpdateSlotOfAvailabilityWeeklyInputImpl value,
          $Res Function(_$UpdateSlotOfAvailabilityWeeklyInputImpl) then) =
      __$$UpdateSlotOfAvailabilityWeeklyInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DayOfWeek? startDay,
      int? startTimeUtc,
      DayOfWeek? endDay,
      int? endTimeUtc,
      int? utcOffsetMinutes,
      String? consultantProfileId});
}

/// @nodoc
class __$$UpdateSlotOfAvailabilityWeeklyInputImplCopyWithImpl<$Res>
    extends _$UpdateSlotOfAvailabilityWeeklyInputCopyWithImpl<$Res,
        _$UpdateSlotOfAvailabilityWeeklyInputImpl>
    implements _$$UpdateSlotOfAvailabilityWeeklyInputImplCopyWith<$Res> {
  __$$UpdateSlotOfAvailabilityWeeklyInputImplCopyWithImpl(
      _$UpdateSlotOfAvailabilityWeeklyInputImpl _value,
      $Res Function(_$UpdateSlotOfAvailabilityWeeklyInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSlotOfAvailabilityWeeklyInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDay = freezed,
    Object? startTimeUtc = freezed,
    Object? endDay = freezed,
    Object? endTimeUtc = freezed,
    Object? utcOffsetMinutes = freezed,
    Object? consultantProfileId = freezed,
  }) {
    return _then(_$UpdateSlotOfAvailabilityWeeklyInputImpl(
      startDay: freezed == startDay
          ? _value.startDay
          : startDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeek?,
      startTimeUtc: freezed == startTimeUtc
          ? _value.startTimeUtc
          : startTimeUtc // ignore: cast_nullable_to_non_nullable
              as int?,
      endDay: freezed == endDay
          ? _value.endDay
          : endDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeek?,
      endTimeUtc: freezed == endTimeUtc
          ? _value.endTimeUtc
          : endTimeUtc // ignore: cast_nullable_to_non_nullable
              as int?,
      utcOffsetMinutes: freezed == utcOffsetMinutes
          ? _value.utcOffsetMinutes
          : utcOffsetMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSlotOfAvailabilityWeeklyInputImpl
    implements _UpdateSlotOfAvailabilityWeeklyInput {
  const _$UpdateSlotOfAvailabilityWeeklyInputImpl(
      {this.startDay,
      this.startTimeUtc,
      this.endDay,
      this.endTimeUtc,
      this.utcOffsetMinutes,
      this.consultantProfileId});

  factory _$UpdateSlotOfAvailabilityWeeklyInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateSlotOfAvailabilityWeeklyInputImplFromJson(json);

  @override
  final DayOfWeek? startDay;
  @override
  final int? startTimeUtc;
  @override
  final DayOfWeek? endDay;
  @override
  final int? endTimeUtc;
  @override
  final int? utcOffsetMinutes;
  @override
  final String? consultantProfileId;

  @override
  String toString() {
    return 'UpdateSlotOfAvailabilityWeeklyInput(startDay: $startDay, startTimeUtc: $startTimeUtc, endDay: $endDay, endTimeUtc: $endTimeUtc, utcOffsetMinutes: $utcOffsetMinutes, consultantProfileId: $consultantProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSlotOfAvailabilityWeeklyInputImpl &&
            (identical(other.startDay, startDay) ||
                other.startDay == startDay) &&
            (identical(other.startTimeUtc, startTimeUtc) ||
                other.startTimeUtc == startTimeUtc) &&
            (identical(other.endDay, endDay) || other.endDay == endDay) &&
            (identical(other.endTimeUtc, endTimeUtc) ||
                other.endTimeUtc == endTimeUtc) &&
            (identical(other.utcOffsetMinutes, utcOffsetMinutes) ||
                other.utcOffsetMinutes == utcOffsetMinutes) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startDay, startTimeUtc, endDay,
      endTimeUtc, utcOffsetMinutes, consultantProfileId);

  /// Create a copy of UpdateSlotOfAvailabilityWeeklyInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSlotOfAvailabilityWeeklyInputImplCopyWith<
          _$UpdateSlotOfAvailabilityWeeklyInputImpl>
      get copyWith => __$$UpdateSlotOfAvailabilityWeeklyInputImplCopyWithImpl<
          _$UpdateSlotOfAvailabilityWeeklyInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSlotOfAvailabilityWeeklyInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateSlotOfAvailabilityWeeklyInput
    implements UpdateSlotOfAvailabilityWeeklyInput {
  const factory _UpdateSlotOfAvailabilityWeeklyInput(
          {final DayOfWeek? startDay,
          final int? startTimeUtc,
          final DayOfWeek? endDay,
          final int? endTimeUtc,
          final int? utcOffsetMinutes,
          final String? consultantProfileId}) =
      _$UpdateSlotOfAvailabilityWeeklyInputImpl;

  factory _UpdateSlotOfAvailabilityWeeklyInput.fromJson(
          Map<String, dynamic> json) =
      _$UpdateSlotOfAvailabilityWeeklyInputImpl.fromJson;

  @override
  DayOfWeek? get startDay;
  @override
  int? get startTimeUtc;
  @override
  DayOfWeek? get endDay;
  @override
  int? get endTimeUtc;
  @override
  int? get utcOffsetMinutes;
  @override
  String? get consultantProfileId;

  /// Create a copy of UpdateSlotOfAvailabilityWeeklyInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSlotOfAvailabilityWeeklyInputImplCopyWith<
          _$UpdateSlotOfAvailabilityWeeklyInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SlotOfAvailabilityWeeklyWhereUniqueInput
    _$SlotOfAvailabilityWeeklyWhereUniqueInputFromJson(
        Map<String, dynamic> json) {
  return _SlotOfAvailabilityWeeklyWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$SlotOfAvailabilityWeeklyWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this SlotOfAvailabilityWeeklyWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlotOfAvailabilityWeeklyWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlotOfAvailabilityWeeklyWhereUniqueInputCopyWith<
          SlotOfAvailabilityWeeklyWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotOfAvailabilityWeeklyWhereUniqueInputCopyWith<$Res> {
  factory $SlotOfAvailabilityWeeklyWhereUniqueInputCopyWith(
          SlotOfAvailabilityWeeklyWhereUniqueInput value,
          $Res Function(SlotOfAvailabilityWeeklyWhereUniqueInput) then) =
      _$SlotOfAvailabilityWeeklyWhereUniqueInputCopyWithImpl<$Res,
          SlotOfAvailabilityWeeklyWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$SlotOfAvailabilityWeeklyWhereUniqueInputCopyWithImpl<$Res,
        $Val extends SlotOfAvailabilityWeeklyWhereUniqueInput>
    implements $SlotOfAvailabilityWeeklyWhereUniqueInputCopyWith<$Res> {
  _$SlotOfAvailabilityWeeklyWhereUniqueInputCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlotOfAvailabilityWeeklyWhereUniqueInput
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
abstract class _$$SlotOfAvailabilityWeeklyWhereUniqueInputImplCopyWith<$Res>
    implements $SlotOfAvailabilityWeeklyWhereUniqueInputCopyWith<$Res> {
  factory _$$SlotOfAvailabilityWeeklyWhereUniqueInputImplCopyWith(
          _$SlotOfAvailabilityWeeklyWhereUniqueInputImpl value,
          $Res Function(_$SlotOfAvailabilityWeeklyWhereUniqueInputImpl) then) =
      __$$SlotOfAvailabilityWeeklyWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$SlotOfAvailabilityWeeklyWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$SlotOfAvailabilityWeeklyWhereUniqueInputCopyWithImpl<$Res,
        _$SlotOfAvailabilityWeeklyWhereUniqueInputImpl>
    implements _$$SlotOfAvailabilityWeeklyWhereUniqueInputImplCopyWith<$Res> {
  __$$SlotOfAvailabilityWeeklyWhereUniqueInputImplCopyWithImpl(
      _$SlotOfAvailabilityWeeklyWhereUniqueInputImpl _value,
      $Res Function(_$SlotOfAvailabilityWeeklyWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotOfAvailabilityWeeklyWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$SlotOfAvailabilityWeeklyWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SlotOfAvailabilityWeeklyWhereUniqueInputImpl
    implements _SlotOfAvailabilityWeeklyWhereUniqueInput {
  const _$SlotOfAvailabilityWeeklyWhereUniqueInputImpl({this.id});

  factory _$SlotOfAvailabilityWeeklyWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SlotOfAvailabilityWeeklyWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'SlotOfAvailabilityWeeklyWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotOfAvailabilityWeeklyWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SlotOfAvailabilityWeeklyWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotOfAvailabilityWeeklyWhereUniqueInputImplCopyWith<
          _$SlotOfAvailabilityWeeklyWhereUniqueInputImpl>
      get copyWith =>
          __$$SlotOfAvailabilityWeeklyWhereUniqueInputImplCopyWithImpl<
              _$SlotOfAvailabilityWeeklyWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotOfAvailabilityWeeklyWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _SlotOfAvailabilityWeeklyWhereUniqueInput
    implements SlotOfAvailabilityWeeklyWhereUniqueInput {
  const factory _SlotOfAvailabilityWeeklyWhereUniqueInput({final String? id}) =
      _$SlotOfAvailabilityWeeklyWhereUniqueInputImpl;

  factory _SlotOfAvailabilityWeeklyWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$SlotOfAvailabilityWeeklyWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of SlotOfAvailabilityWeeklyWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotOfAvailabilityWeeklyWhereUniqueInputImplCopyWith<
          _$SlotOfAvailabilityWeeklyWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SlotOfAvailabilityWeeklyWhereInput _$SlotOfAvailabilityWeeklyWhereInputFromJson(
    Map<String, dynamic> json) {
  return _SlotOfAvailabilityWeeklyWhereInput.fromJson(json);
}

/// @nodoc
mixin _$SlotOfAvailabilityWeeklyWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  DayOfWeekFilter? get startDay => throw _privateConstructorUsedError;
  IntFilter? get startTimeUtc => throw _privateConstructorUsedError;
  DayOfWeekFilter? get endDay => throw _privateConstructorUsedError;
  IntFilter? get endTimeUtc => throw _privateConstructorUsedError;
  IntFilter? get utcOffsetMinutes => throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<SlotOfAvailabilityWeeklyWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<SlotOfAvailabilityWeeklyWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  SlotOfAvailabilityWeeklyWhereInput? get NOT =>
      throw _privateConstructorUsedError;

  /// Serializes this SlotOfAvailabilityWeeklyWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<
          SlotOfAvailabilityWeeklyWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res> {
  factory $SlotOfAvailabilityWeeklyWhereInputCopyWith(
          SlotOfAvailabilityWeeklyWhereInput value,
          $Res Function(SlotOfAvailabilityWeeklyWhereInput) then) =
      _$SlotOfAvailabilityWeeklyWhereInputCopyWithImpl<$Res,
          SlotOfAvailabilityWeeklyWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      DayOfWeekFilter? startDay,
      IntFilter? startTimeUtc,
      DayOfWeekFilter? endDay,
      IntFilter? endTimeUtc,
      IntFilter? utcOffsetMinutes,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SlotOfAvailabilityWeeklyWhereInput>? AND,
      List<SlotOfAvailabilityWeeklyWhereInput>? OR,
      SlotOfAvailabilityWeeklyWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $DayOfWeekFilterCopyWith<$Res>? get startDay;
  $IntFilterCopyWith<$Res>? get startTimeUtc;
  $DayOfWeekFilterCopyWith<$Res>? get endDay;
  $IntFilterCopyWith<$Res>? get endTimeUtc;
  $IntFilterCopyWith<$Res>? get utcOffsetMinutes;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$SlotOfAvailabilityWeeklyWhereInputCopyWithImpl<$Res,
        $Val extends SlotOfAvailabilityWeeklyWhereInput>
    implements $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res> {
  _$SlotOfAvailabilityWeeklyWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startDay = freezed,
    Object? startTimeUtc = freezed,
    Object? endDay = freezed,
    Object? endTimeUtc = freezed,
    Object? utcOffsetMinutes = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      startDay: freezed == startDay
          ? _value.startDay
          : startDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeekFilter?,
      startTimeUtc: freezed == startTimeUtc
          ? _value.startTimeUtc
          : startTimeUtc // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      endDay: freezed == endDay
          ? _value.endDay
          : endDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeekFilter?,
      endTimeUtc: freezed == endTimeUtc
          ? _value.endTimeUtc
          : endTimeUtc // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      utcOffsetMinutes: freezed == utcOffsetMinutes
          ? _value.utcOffsetMinutes
          : utcOffsetMinutes // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<SlotOfAvailabilityWeeklyWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SlotOfAvailabilityWeeklyWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SlotOfAvailabilityWeeklyWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
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

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayOfWeekFilterCopyWith<$Res>? get startDay {
    if (_value.startDay == null) {
      return null;
    }

    return $DayOfWeekFilterCopyWith<$Res>(_value.startDay!, (value) {
      return _then(_value.copyWith(startDay: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get startTimeUtc {
    if (_value.startTimeUtc == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.startTimeUtc!, (value) {
      return _then(_value.copyWith(startTimeUtc: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayOfWeekFilterCopyWith<$Res>? get endDay {
    if (_value.endDay == null) {
      return null;
    }

    return $DayOfWeekFilterCopyWith<$Res>(_value.endDay!, (value) {
      return _then(_value.copyWith(endDay: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get endTimeUtc {
    if (_value.endTimeUtc == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.endTimeUtc!, (value) {
      return _then(_value.copyWith(endTimeUtc: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get utcOffsetMinutes {
    if (_value.utcOffsetMinutes == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.utcOffsetMinutes!, (value) {
      return _then(_value.copyWith(utcOffsetMinutes: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile {
    if (_value.consultantProfile == null) {
      return null;
    }

    return $ConsultantProfileRelationFilterCopyWith<$Res>(
        _value.consultantProfile!, (value) {
      return _then(_value.copyWith(consultantProfile: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get consultantProfileId {
    if (_value.consultantProfileId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.consultantProfileId!, (value) {
      return _then(_value.copyWith(consultantProfileId: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get createdAt {
    if (_value.createdAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.createdAt!, (value) {
      return _then(_value.copyWith(createdAt: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get updatedAt {
    if (_value.updatedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.updatedAt!, (value) {
      return _then(_value.copyWith(updatedAt: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>(_value.NOT!,
        (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SlotOfAvailabilityWeeklyWhereInputImplCopyWith<$Res>
    implements $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res> {
  factory _$$SlotOfAvailabilityWeeklyWhereInputImplCopyWith(
          _$SlotOfAvailabilityWeeklyWhereInputImpl value,
          $Res Function(_$SlotOfAvailabilityWeeklyWhereInputImpl) then) =
      __$$SlotOfAvailabilityWeeklyWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      DayOfWeekFilter? startDay,
      IntFilter? startTimeUtc,
      DayOfWeekFilter? endDay,
      IntFilter? endTimeUtc,
      IntFilter? utcOffsetMinutes,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SlotOfAvailabilityWeeklyWhereInput>? AND,
      List<SlotOfAvailabilityWeeklyWhereInput>? OR,
      SlotOfAvailabilityWeeklyWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $DayOfWeekFilterCopyWith<$Res>? get startDay;
  @override
  $IntFilterCopyWith<$Res>? get startTimeUtc;
  @override
  $DayOfWeekFilterCopyWith<$Res>? get endDay;
  @override
  $IntFilterCopyWith<$Res>? get endTimeUtc;
  @override
  $IntFilterCopyWith<$Res>? get utcOffsetMinutes;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$SlotOfAvailabilityWeeklyWhereInputImplCopyWithImpl<$Res>
    extends _$SlotOfAvailabilityWeeklyWhereInputCopyWithImpl<$Res,
        _$SlotOfAvailabilityWeeklyWhereInputImpl>
    implements _$$SlotOfAvailabilityWeeklyWhereInputImplCopyWith<$Res> {
  __$$SlotOfAvailabilityWeeklyWhereInputImplCopyWithImpl(
      _$SlotOfAvailabilityWeeklyWhereInputImpl _value,
      $Res Function(_$SlotOfAvailabilityWeeklyWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startDay = freezed,
    Object? startTimeUtc = freezed,
    Object? endDay = freezed,
    Object? endTimeUtc = freezed,
    Object? utcOffsetMinutes = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$SlotOfAvailabilityWeeklyWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      startDay: freezed == startDay
          ? _value.startDay
          : startDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeekFilter?,
      startTimeUtc: freezed == startTimeUtc
          ? _value.startTimeUtc
          : startTimeUtc // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      endDay: freezed == endDay
          ? _value.endDay
          : endDay // ignore: cast_nullable_to_non_nullable
              as DayOfWeekFilter?,
      endTimeUtc: freezed == endTimeUtc
          ? _value.endTimeUtc
          : endTimeUtc // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      utcOffsetMinutes: freezed == utcOffsetMinutes
          ? _value.utcOffsetMinutes
          : utcOffsetMinutes // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<SlotOfAvailabilityWeeklyWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SlotOfAvailabilityWeeklyWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SlotOfAvailabilityWeeklyWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SlotOfAvailabilityWeeklyWhereInputImpl
    implements _SlotOfAvailabilityWeeklyWhereInput {
  const _$SlotOfAvailabilityWeeklyWhereInputImpl(
      {this.id,
      this.startDay,
      this.startTimeUtc,
      this.endDay,
      this.endTimeUtc,
      this.utcOffsetMinutes,
      this.consultantProfile,
      this.consultantProfileId,
      this.createdAt,
      this.updatedAt,
      final List<SlotOfAvailabilityWeeklyWhereInput>? AND,
      final List<SlotOfAvailabilityWeeklyWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$SlotOfAvailabilityWeeklyWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SlotOfAvailabilityWeeklyWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final DayOfWeekFilter? startDay;
  @override
  final IntFilter? startTimeUtc;
  @override
  final DayOfWeekFilter? endDay;
  @override
  final IntFilter? endTimeUtc;
  @override
  final IntFilter? utcOffsetMinutes;

  /// Filter by consultantProfile relation
  @override
  final ConsultantProfileRelationFilter? consultantProfile;
  @override
  final StringFilter? consultantProfileId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<SlotOfAvailabilityWeeklyWhereInput>? _AND;
  @override
  List<SlotOfAvailabilityWeeklyWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SlotOfAvailabilityWeeklyWhereInput>? _OR;
  @override
  List<SlotOfAvailabilityWeeklyWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SlotOfAvailabilityWeeklyWhereInput? NOT;

  @override
  String toString() {
    return 'SlotOfAvailabilityWeeklyWhereInput(id: $id, startDay: $startDay, startTimeUtc: $startTimeUtc, endDay: $endDay, endTimeUtc: $endTimeUtc, utcOffsetMinutes: $utcOffsetMinutes, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotOfAvailabilityWeeklyWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDay, startDay) ||
                other.startDay == startDay) &&
            (identical(other.startTimeUtc, startTimeUtc) ||
                other.startTimeUtc == startTimeUtc) &&
            (identical(other.endDay, endDay) || other.endDay == endDay) &&
            (identical(other.endTimeUtc, endTimeUtc) ||
                other.endTimeUtc == endTimeUtc) &&
            (identical(other.utcOffsetMinutes, utcOffsetMinutes) ||
                other.utcOffsetMinutes == utcOffsetMinutes) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      startDay,
      startTimeUtc,
      endDay,
      endTimeUtc,
      utcOffsetMinutes,
      consultantProfile,
      consultantProfileId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotOfAvailabilityWeeklyWhereInputImplCopyWith<
          _$SlotOfAvailabilityWeeklyWhereInputImpl>
      get copyWith => __$$SlotOfAvailabilityWeeklyWhereInputImplCopyWithImpl<
          _$SlotOfAvailabilityWeeklyWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotOfAvailabilityWeeklyWhereInputImplToJson(
      this,
    );
  }
}

abstract class _SlotOfAvailabilityWeeklyWhereInput
    implements SlotOfAvailabilityWeeklyWhereInput {
  const factory _SlotOfAvailabilityWeeklyWhereInput(
          {final StringFilter? id,
          final DayOfWeekFilter? startDay,
          final IntFilter? startTimeUtc,
          final DayOfWeekFilter? endDay,
          final IntFilter? endTimeUtc,
          final IntFilter? utcOffsetMinutes,
          final ConsultantProfileRelationFilter? consultantProfile,
          final StringFilter? consultantProfileId,
          final DateTimeFilter? createdAt,
          final DateTimeFilter? updatedAt,
          final List<SlotOfAvailabilityWeeklyWhereInput>? AND,
          final List<SlotOfAvailabilityWeeklyWhereInput>? OR,
          final SlotOfAvailabilityWeeklyWhereInput? NOT}) =
      _$SlotOfAvailabilityWeeklyWhereInputImpl;

  factory _SlotOfAvailabilityWeeklyWhereInput.fromJson(
          Map<String, dynamic> json) =
      _$SlotOfAvailabilityWeeklyWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  DayOfWeekFilter? get startDay;
  @override
  IntFilter? get startTimeUtc;
  @override
  DayOfWeekFilter? get endDay;
  @override
  IntFilter? get endTimeUtc;
  @override
  IntFilter? get utcOffsetMinutes;

  /// Filter by consultantProfile relation
  @override
  ConsultantProfileRelationFilter? get consultantProfile;
  @override
  StringFilter? get consultantProfileId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<SlotOfAvailabilityWeeklyWhereInput>? get AND;
  @override
  List<SlotOfAvailabilityWeeklyWhereInput>? get OR;
  @override
  SlotOfAvailabilityWeeklyWhereInput? get NOT;

  /// Create a copy of SlotOfAvailabilityWeeklyWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotOfAvailabilityWeeklyWhereInputImplCopyWith<
          _$SlotOfAvailabilityWeeklyWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SlotOfAvailabilityWeeklyListRelationFilter
    _$SlotOfAvailabilityWeeklyListRelationFilterFromJson(
        Map<String, dynamic> json) {
  return _SlotOfAvailabilityWeeklyListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SlotOfAvailabilityWeeklyListRelationFilter {
  /// At least one related record matches
  SlotOfAvailabilityWeeklyWhereInput? get some =>
      throw _privateConstructorUsedError;

  /// All related records match
  SlotOfAvailabilityWeeklyWhereInput? get every =>
      throw _privateConstructorUsedError;

  /// No related records match
  SlotOfAvailabilityWeeklyWhereInput? get none =>
      throw _privateConstructorUsedError;

  /// Serializes this SlotOfAvailabilityWeeklyListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlotOfAvailabilityWeeklyListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlotOfAvailabilityWeeklyListRelationFilterCopyWith<
          SlotOfAvailabilityWeeklyListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotOfAvailabilityWeeklyListRelationFilterCopyWith<$Res> {
  factory $SlotOfAvailabilityWeeklyListRelationFilterCopyWith(
          SlotOfAvailabilityWeeklyListRelationFilter value,
          $Res Function(SlotOfAvailabilityWeeklyListRelationFilter) then) =
      _$SlotOfAvailabilityWeeklyListRelationFilterCopyWithImpl<$Res,
          SlotOfAvailabilityWeeklyListRelationFilter>;
  @useResult
  $Res call(
      {SlotOfAvailabilityWeeklyWhereInput? some,
      SlotOfAvailabilityWeeklyWhereInput? every,
      SlotOfAvailabilityWeeklyWhereInput? none});

  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get some;
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get every;
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$SlotOfAvailabilityWeeklyListRelationFilterCopyWithImpl<$Res,
        $Val extends SlotOfAvailabilityWeeklyListRelationFilter>
    implements $SlotOfAvailabilityWeeklyListRelationFilterCopyWith<$Res> {
  _$SlotOfAvailabilityWeeklyListRelationFilterCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlotOfAvailabilityWeeklyListRelationFilter
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
              as SlotOfAvailabilityWeeklyWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SlotOfAvailabilityWeeklyWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SlotOfAvailabilityWeeklyWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SlotOfAvailabilityWeeklyListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>(_value.some!,
        (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAvailabilityWeeklyListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>(_value.every!,
        (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAvailabilityWeeklyListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>(_value.none!,
        (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SlotOfAvailabilityWeeklyListRelationFilterImplCopyWith<$Res>
    implements $SlotOfAvailabilityWeeklyListRelationFilterCopyWith<$Res> {
  factory _$$SlotOfAvailabilityWeeklyListRelationFilterImplCopyWith(
          _$SlotOfAvailabilityWeeklyListRelationFilterImpl value,
          $Res Function(_$SlotOfAvailabilityWeeklyListRelationFilterImpl)
              then) =
      __$$SlotOfAvailabilityWeeklyListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SlotOfAvailabilityWeeklyWhereInput? some,
      SlotOfAvailabilityWeeklyWhereInput? every,
      SlotOfAvailabilityWeeklyWhereInput? none});

  @override
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get some;
  @override
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get every;
  @override
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$SlotOfAvailabilityWeeklyListRelationFilterImplCopyWithImpl<$Res>
    extends _$SlotOfAvailabilityWeeklyListRelationFilterCopyWithImpl<$Res,
        _$SlotOfAvailabilityWeeklyListRelationFilterImpl>
    implements _$$SlotOfAvailabilityWeeklyListRelationFilterImplCopyWith<$Res> {
  __$$SlotOfAvailabilityWeeklyListRelationFilterImplCopyWithImpl(
      _$SlotOfAvailabilityWeeklyListRelationFilterImpl _value,
      $Res Function(_$SlotOfAvailabilityWeeklyListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotOfAvailabilityWeeklyListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$SlotOfAvailabilityWeeklyListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as SlotOfAvailabilityWeeklyWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SlotOfAvailabilityWeeklyWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SlotOfAvailabilityWeeklyWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SlotOfAvailabilityWeeklyListRelationFilterImpl
    implements _SlotOfAvailabilityWeeklyListRelationFilter {
  const _$SlotOfAvailabilityWeeklyListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$SlotOfAvailabilityWeeklyListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SlotOfAvailabilityWeeklyListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final SlotOfAvailabilityWeeklyWhereInput? some;

  /// All related records match
  @override
  final SlotOfAvailabilityWeeklyWhereInput? every;

  /// No related records match
  @override
  final SlotOfAvailabilityWeeklyWhereInput? none;

  @override
  String toString() {
    return 'SlotOfAvailabilityWeeklyListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotOfAvailabilityWeeklyListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of SlotOfAvailabilityWeeklyListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotOfAvailabilityWeeklyListRelationFilterImplCopyWith<
          _$SlotOfAvailabilityWeeklyListRelationFilterImpl>
      get copyWith =>
          __$$SlotOfAvailabilityWeeklyListRelationFilterImplCopyWithImpl<
                  _$SlotOfAvailabilityWeeklyListRelationFilterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotOfAvailabilityWeeklyListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SlotOfAvailabilityWeeklyListRelationFilter
    implements SlotOfAvailabilityWeeklyListRelationFilter {
  const factory _SlotOfAvailabilityWeeklyListRelationFilter(
          {final SlotOfAvailabilityWeeklyWhereInput? some,
          final SlotOfAvailabilityWeeklyWhereInput? every,
          final SlotOfAvailabilityWeeklyWhereInput? none}) =
      _$SlotOfAvailabilityWeeklyListRelationFilterImpl;

  factory _SlotOfAvailabilityWeeklyListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$SlotOfAvailabilityWeeklyListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  SlotOfAvailabilityWeeklyWhereInput? get some;

  /// All related records match
  @override
  SlotOfAvailabilityWeeklyWhereInput? get every;

  /// No related records match
  @override
  SlotOfAvailabilityWeeklyWhereInput? get none;

  /// Create a copy of SlotOfAvailabilityWeeklyListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotOfAvailabilityWeeklyListRelationFilterImplCopyWith<
          _$SlotOfAvailabilityWeeklyListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SlotOfAvailabilityWeeklyRelationFilter
    _$SlotOfAvailabilityWeeklyRelationFilterFromJson(
        Map<String, dynamic> json) {
  return _SlotOfAvailabilityWeeklyRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SlotOfAvailabilityWeeklyRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  SlotOfAvailabilityWeeklyWhereInput? get is_ =>
      throw _privateConstructorUsedError;

  /// Related record does not match
  SlotOfAvailabilityWeeklyWhereInput? get isNot =>
      throw _privateConstructorUsedError;

  /// Serializes this SlotOfAvailabilityWeeklyRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlotOfAvailabilityWeeklyRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlotOfAvailabilityWeeklyRelationFilterCopyWith<
          SlotOfAvailabilityWeeklyRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotOfAvailabilityWeeklyRelationFilterCopyWith<$Res> {
  factory $SlotOfAvailabilityWeeklyRelationFilterCopyWith(
          SlotOfAvailabilityWeeklyRelationFilter value,
          $Res Function(SlotOfAvailabilityWeeklyRelationFilter) then) =
      _$SlotOfAvailabilityWeeklyRelationFilterCopyWithImpl<$Res,
          SlotOfAvailabilityWeeklyRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SlotOfAvailabilityWeeklyWhereInput? is_,
      SlotOfAvailabilityWeeklyWhereInput? isNot});

  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get is_;
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$SlotOfAvailabilityWeeklyRelationFilterCopyWithImpl<$Res,
        $Val extends SlotOfAvailabilityWeeklyRelationFilter>
    implements $SlotOfAvailabilityWeeklyRelationFilterCopyWith<$Res> {
  _$SlotOfAvailabilityWeeklyRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlotOfAvailabilityWeeklyRelationFilter
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
              as SlotOfAvailabilityWeeklyWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SlotOfAvailabilityWeeklyWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SlotOfAvailabilityWeeklyRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>(_value.is_!,
        (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of SlotOfAvailabilityWeeklyRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>(_value.isNot!,
        (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SlotOfAvailabilityWeeklyRelationFilterImplCopyWith<$Res>
    implements $SlotOfAvailabilityWeeklyRelationFilterCopyWith<$Res> {
  factory _$$SlotOfAvailabilityWeeklyRelationFilterImplCopyWith(
          _$SlotOfAvailabilityWeeklyRelationFilterImpl value,
          $Res Function(_$SlotOfAvailabilityWeeklyRelationFilterImpl) then) =
      __$$SlotOfAvailabilityWeeklyRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SlotOfAvailabilityWeeklyWhereInput? is_,
      SlotOfAvailabilityWeeklyWhereInput? isNot});

  @override
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get is_;
  @override
  $SlotOfAvailabilityWeeklyWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$SlotOfAvailabilityWeeklyRelationFilterImplCopyWithImpl<$Res>
    extends _$SlotOfAvailabilityWeeklyRelationFilterCopyWithImpl<$Res,
        _$SlotOfAvailabilityWeeklyRelationFilterImpl>
    implements _$$SlotOfAvailabilityWeeklyRelationFilterImplCopyWith<$Res> {
  __$$SlotOfAvailabilityWeeklyRelationFilterImplCopyWithImpl(
      _$SlotOfAvailabilityWeeklyRelationFilterImpl _value,
      $Res Function(_$SlotOfAvailabilityWeeklyRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotOfAvailabilityWeeklyRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$SlotOfAvailabilityWeeklyRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as SlotOfAvailabilityWeeklyWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SlotOfAvailabilityWeeklyWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SlotOfAvailabilityWeeklyRelationFilterImpl
    implements _SlotOfAvailabilityWeeklyRelationFilter {
  const _$SlotOfAvailabilityWeeklyRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$SlotOfAvailabilityWeeklyRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SlotOfAvailabilityWeeklyRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final SlotOfAvailabilityWeeklyWhereInput? is_;

  /// Related record does not match
  @override
  final SlotOfAvailabilityWeeklyWhereInput? isNot;

  @override
  String toString() {
    return 'SlotOfAvailabilityWeeklyRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotOfAvailabilityWeeklyRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of SlotOfAvailabilityWeeklyRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotOfAvailabilityWeeklyRelationFilterImplCopyWith<
          _$SlotOfAvailabilityWeeklyRelationFilterImpl>
      get copyWith =>
          __$$SlotOfAvailabilityWeeklyRelationFilterImplCopyWithImpl<
              _$SlotOfAvailabilityWeeklyRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotOfAvailabilityWeeklyRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SlotOfAvailabilityWeeklyRelationFilter
    implements SlotOfAvailabilityWeeklyRelationFilter {
  const factory _SlotOfAvailabilityWeeklyRelationFilter(
          {@JsonKey(name: 'is') final SlotOfAvailabilityWeeklyWhereInput? is_,
          final SlotOfAvailabilityWeeklyWhereInput? isNot}) =
      _$SlotOfAvailabilityWeeklyRelationFilterImpl;

  factory _SlotOfAvailabilityWeeklyRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$SlotOfAvailabilityWeeklyRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  SlotOfAvailabilityWeeklyWhereInput? get is_;

  /// Related record does not match
  @override
  SlotOfAvailabilityWeeklyWhereInput? get isNot;

  /// Create a copy of SlotOfAvailabilityWeeklyRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotOfAvailabilityWeeklyRelationFilterImplCopyWith<
          _$SlotOfAvailabilityWeeklyRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SlotOfAvailabilityWeeklyOrderByInput
    _$SlotOfAvailabilityWeeklyOrderByInputFromJson(Map<String, dynamic> json) {
  return _SlotOfAvailabilityWeeklyOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$SlotOfAvailabilityWeeklyOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get startTimeUtc => throw _privateConstructorUsedError;
  SortOrder? get endTimeUtc => throw _privateConstructorUsedError;
  SortOrder? get utcOffsetMinutes => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SlotOfAvailabilityWeeklyOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlotOfAvailabilityWeeklyOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlotOfAvailabilityWeeklyOrderByInputCopyWith<
          SlotOfAvailabilityWeeklyOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotOfAvailabilityWeeklyOrderByInputCopyWith<$Res> {
  factory $SlotOfAvailabilityWeeklyOrderByInputCopyWith(
          SlotOfAvailabilityWeeklyOrderByInput value,
          $Res Function(SlotOfAvailabilityWeeklyOrderByInput) then) =
      _$SlotOfAvailabilityWeeklyOrderByInputCopyWithImpl<$Res,
          SlotOfAvailabilityWeeklyOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? startTimeUtc,
      SortOrder? endTimeUtc,
      SortOrder? utcOffsetMinutes,
      SortOrder? consultantProfileId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$SlotOfAvailabilityWeeklyOrderByInputCopyWithImpl<$Res,
        $Val extends SlotOfAvailabilityWeeklyOrderByInput>
    implements $SlotOfAvailabilityWeeklyOrderByInputCopyWith<$Res> {
  _$SlotOfAvailabilityWeeklyOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlotOfAvailabilityWeeklyOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startTimeUtc = freezed,
    Object? endTimeUtc = freezed,
    Object? utcOffsetMinutes = freezed,
    Object? consultantProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startTimeUtc: freezed == startTimeUtc
          ? _value.startTimeUtc
          : startTimeUtc // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endTimeUtc: freezed == endTimeUtc
          ? _value.endTimeUtc
          : endTimeUtc // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      utcOffsetMinutes: freezed == utcOffsetMinutes
          ? _value.utcOffsetMinutes
          : utcOffsetMinutes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SlotOfAvailabilityWeeklyOrderByInputImplCopyWith<$Res>
    implements $SlotOfAvailabilityWeeklyOrderByInputCopyWith<$Res> {
  factory _$$SlotOfAvailabilityWeeklyOrderByInputImplCopyWith(
          _$SlotOfAvailabilityWeeklyOrderByInputImpl value,
          $Res Function(_$SlotOfAvailabilityWeeklyOrderByInputImpl) then) =
      __$$SlotOfAvailabilityWeeklyOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? startTimeUtc,
      SortOrder? endTimeUtc,
      SortOrder? utcOffsetMinutes,
      SortOrder? consultantProfileId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$SlotOfAvailabilityWeeklyOrderByInputImplCopyWithImpl<$Res>
    extends _$SlotOfAvailabilityWeeklyOrderByInputCopyWithImpl<$Res,
        _$SlotOfAvailabilityWeeklyOrderByInputImpl>
    implements _$$SlotOfAvailabilityWeeklyOrderByInputImplCopyWith<$Res> {
  __$$SlotOfAvailabilityWeeklyOrderByInputImplCopyWithImpl(
      _$SlotOfAvailabilityWeeklyOrderByInputImpl _value,
      $Res Function(_$SlotOfAvailabilityWeeklyOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotOfAvailabilityWeeklyOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startTimeUtc = freezed,
    Object? endTimeUtc = freezed,
    Object? utcOffsetMinutes = freezed,
    Object? consultantProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SlotOfAvailabilityWeeklyOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startTimeUtc: freezed == startTimeUtc
          ? _value.startTimeUtc
          : startTimeUtc // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endTimeUtc: freezed == endTimeUtc
          ? _value.endTimeUtc
          : endTimeUtc // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      utcOffsetMinutes: freezed == utcOffsetMinutes
          ? _value.utcOffsetMinutes
          : utcOffsetMinutes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SlotOfAvailabilityWeeklyOrderByInputImpl
    implements _SlotOfAvailabilityWeeklyOrderByInput {
  const _$SlotOfAvailabilityWeeklyOrderByInputImpl(
      {this.id,
      this.startTimeUtc,
      this.endTimeUtc,
      this.utcOffsetMinutes,
      this.consultantProfileId,
      this.createdAt,
      this.updatedAt});

  factory _$SlotOfAvailabilityWeeklyOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SlotOfAvailabilityWeeklyOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? startTimeUtc;
  @override
  final SortOrder? endTimeUtc;
  @override
  final SortOrder? utcOffsetMinutes;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'SlotOfAvailabilityWeeklyOrderByInput(id: $id, startTimeUtc: $startTimeUtc, endTimeUtc: $endTimeUtc, utcOffsetMinutes: $utcOffsetMinutes, consultantProfileId: $consultantProfileId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotOfAvailabilityWeeklyOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startTimeUtc, startTimeUtc) ||
                other.startTimeUtc == startTimeUtc) &&
            (identical(other.endTimeUtc, endTimeUtc) ||
                other.endTimeUtc == endTimeUtc) &&
            (identical(other.utcOffsetMinutes, utcOffsetMinutes) ||
                other.utcOffsetMinutes == utcOffsetMinutes) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, startTimeUtc, endTimeUtc,
      utcOffsetMinutes, consultantProfileId, createdAt, updatedAt);

  /// Create a copy of SlotOfAvailabilityWeeklyOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotOfAvailabilityWeeklyOrderByInputImplCopyWith<
          _$SlotOfAvailabilityWeeklyOrderByInputImpl>
      get copyWith => __$$SlotOfAvailabilityWeeklyOrderByInputImplCopyWithImpl<
          _$SlotOfAvailabilityWeeklyOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotOfAvailabilityWeeklyOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _SlotOfAvailabilityWeeklyOrderByInput
    implements SlotOfAvailabilityWeeklyOrderByInput {
  const factory _SlotOfAvailabilityWeeklyOrderByInput(
      {final SortOrder? id,
      final SortOrder? startTimeUtc,
      final SortOrder? endTimeUtc,
      final SortOrder? utcOffsetMinutes,
      final SortOrder? consultantProfileId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$SlotOfAvailabilityWeeklyOrderByInputImpl;

  factory _SlotOfAvailabilityWeeklyOrderByInput.fromJson(
          Map<String, dynamic> json) =
      _$SlotOfAvailabilityWeeklyOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get startTimeUtc;
  @override
  SortOrder? get endTimeUtc;
  @override
  SortOrder? get utcOffsetMinutes;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of SlotOfAvailabilityWeeklyOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotOfAvailabilityWeeklyOrderByInputImplCopyWith<
          _$SlotOfAvailabilityWeeklyOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
