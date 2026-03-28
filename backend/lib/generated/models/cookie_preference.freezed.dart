// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cookie_preference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CookiePreference _$CookiePreferenceFromJson(Map<String, dynamic> json) {
  return _CookiePreference.fromJson(json);
}

/// @nodoc
mixin _$CookiePreference {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get sessionId => throw _privateConstructorUsedError;
  bool get essential => throw _privateConstructorUsedError;
  bool get analytics => throw _privateConstructorUsedError;
  bool get marketing => throw _privateConstructorUsedError;
  bool get functional => throw _privateConstructorUsedError;
  DateTime get consentGivenAt => throw _privateConstructorUsedError;
  DateTime get consentUpdatedAt => throw _privateConstructorUsedError;

  /// Serializes this CookiePreference to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CookiePreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CookiePreferenceCopyWith<CookiePreference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CookiePreferenceCopyWith<$Res> {
  factory $CookiePreferenceCopyWith(
          CookiePreference value, $Res Function(CookiePreference) then) =
      _$CookiePreferenceCopyWithImpl<$Res, CookiePreference>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String? userId,
      String? sessionId,
      bool essential,
      bool analytics,
      bool marketing,
      bool functional,
      DateTime consentGivenAt,
      DateTime consentUpdatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$CookiePreferenceCopyWithImpl<$Res, $Val extends CookiePreference>
    implements $CookiePreferenceCopyWith<$Res> {
  _$CookiePreferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CookiePreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? userId = freezed,
    Object? sessionId = freezed,
    Object? essential = null,
    Object? analytics = null,
    Object? marketing = null,
    Object? functional = null,
    Object? consentGivenAt = null,
    Object? consentUpdatedAt = null,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      essential: null == essential
          ? _value.essential
          : essential // ignore: cast_nullable_to_non_nullable
              as bool,
      analytics: null == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as bool,
      marketing: null == marketing
          ? _value.marketing
          : marketing // ignore: cast_nullable_to_non_nullable
              as bool,
      functional: null == functional
          ? _value.functional
          : functional // ignore: cast_nullable_to_non_nullable
              as bool,
      consentGivenAt: null == consentGivenAt
          ? _value.consentGivenAt
          : consentGivenAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      consentUpdatedAt: null == consentUpdatedAt
          ? _value.consentUpdatedAt
          : consentUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of CookiePreference
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
abstract class _$$CookiePreferenceImplCopyWith<$Res>
    implements $CookiePreferenceCopyWith<$Res> {
  factory _$$CookiePreferenceImplCopyWith(_$CookiePreferenceImpl value,
          $Res Function(_$CookiePreferenceImpl) then) =
      __$$CookiePreferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String? userId,
      String? sessionId,
      bool essential,
      bool analytics,
      bool marketing,
      bool functional,
      DateTime consentGivenAt,
      DateTime consentUpdatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$CookiePreferenceImplCopyWithImpl<$Res>
    extends _$CookiePreferenceCopyWithImpl<$Res, _$CookiePreferenceImpl>
    implements _$$CookiePreferenceImplCopyWith<$Res> {
  __$$CookiePreferenceImplCopyWithImpl(_$CookiePreferenceImpl _value,
      $Res Function(_$CookiePreferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of CookiePreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = freezed,
    Object? userId = freezed,
    Object? sessionId = freezed,
    Object? essential = null,
    Object? analytics = null,
    Object? marketing = null,
    Object? functional = null,
    Object? consentGivenAt = null,
    Object? consentUpdatedAt = null,
  }) {
    return _then(_$CookiePreferenceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      essential: null == essential
          ? _value.essential
          : essential // ignore: cast_nullable_to_non_nullable
              as bool,
      analytics: null == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as bool,
      marketing: null == marketing
          ? _value.marketing
          : marketing // ignore: cast_nullable_to_non_nullable
              as bool,
      functional: null == functional
          ? _value.functional
          : functional // ignore: cast_nullable_to_non_nullable
              as bool,
      consentGivenAt: null == consentGivenAt
          ? _value.consentGivenAt
          : consentGivenAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      consentUpdatedAt: null == consentUpdatedAt
          ? _value.consentUpdatedAt
          : consentUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CookiePreferenceImpl implements _CookiePreference {
  const _$CookiePreferenceImpl(
      {required this.id,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      this.userId,
      this.sessionId,
      this.essential = true,
      this.analytics = false,
      this.marketing = false,
      this.functional = false,
      required this.consentGivenAt,
      required this.consentUpdatedAt});

  factory _$CookiePreferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CookiePreferenceImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  @override
  final String? userId;
  @override
  final String? sessionId;
  @override
  @JsonKey()
  final bool essential;
  @override
  @JsonKey()
  final bool analytics;
  @override
  @JsonKey()
  final bool marketing;
  @override
  @JsonKey()
  final bool functional;
  @override
  final DateTime consentGivenAt;
  @override
  final DateTime consentUpdatedAt;

  @override
  String toString() {
    return 'CookiePreference(id: $id, user: $user, userId: $userId, sessionId: $sessionId, essential: $essential, analytics: $analytics, marketing: $marketing, functional: $functional, consentGivenAt: $consentGivenAt, consentUpdatedAt: $consentUpdatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CookiePreferenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.essential, essential) ||
                other.essential == essential) &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.marketing, marketing) ||
                other.marketing == marketing) &&
            (identical(other.functional, functional) ||
                other.functional == functional) &&
            (identical(other.consentGivenAt, consentGivenAt) ||
                other.consentGivenAt == consentGivenAt) &&
            (identical(other.consentUpdatedAt, consentUpdatedAt) ||
                other.consentUpdatedAt == consentUpdatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      userId,
      sessionId,
      essential,
      analytics,
      marketing,
      functional,
      consentGivenAt,
      consentUpdatedAt);

  /// Create a copy of CookiePreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CookiePreferenceImplCopyWith<_$CookiePreferenceImpl> get copyWith =>
      __$$CookiePreferenceImplCopyWithImpl<_$CookiePreferenceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CookiePreferenceImplToJson(
      this,
    );
  }
}

abstract class _CookiePreference implements CookiePreference {
  const factory _CookiePreference(
      {required final String id,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      final String? userId,
      final String? sessionId,
      final bool essential,
      final bool analytics,
      final bool marketing,
      final bool functional,
      required final DateTime consentGivenAt,
      required final DateTime consentUpdatedAt}) = _$CookiePreferenceImpl;

  factory _CookiePreference.fromJson(Map<String, dynamic> json) =
      _$CookiePreferenceImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  String? get userId;
  @override
  String? get sessionId;
  @override
  bool get essential;
  @override
  bool get analytics;
  @override
  bool get marketing;
  @override
  bool get functional;
  @override
  DateTime get consentGivenAt;
  @override
  DateTime get consentUpdatedAt;

  /// Create a copy of CookiePreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CookiePreferenceImplCopyWith<_$CookiePreferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateCookiePreferenceInput _$CreateCookiePreferenceInputFromJson(
    Map<String, dynamic> json) {
  return _CreateCookiePreferenceInput.fromJson(json);
}

/// @nodoc
mixin _$CreateCookiePreferenceInput {
  String? get userId => throw _privateConstructorUsedError;
  String? get sessionId => throw _privateConstructorUsedError;
  bool? get essential => throw _privateConstructorUsedError;
  bool? get analytics => throw _privateConstructorUsedError;
  bool? get marketing => throw _privateConstructorUsedError;
  bool? get functional => throw _privateConstructorUsedError;

  /// Serializes this CreateCookiePreferenceInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateCookiePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCookiePreferenceInputCopyWith<CreateCookiePreferenceInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCookiePreferenceInputCopyWith<$Res> {
  factory $CreateCookiePreferenceInputCopyWith(
          CreateCookiePreferenceInput value,
          $Res Function(CreateCookiePreferenceInput) then) =
      _$CreateCookiePreferenceInputCopyWithImpl<$Res,
          CreateCookiePreferenceInput>;
  @useResult
  $Res call(
      {String? userId,
      String? sessionId,
      bool? essential,
      bool? analytics,
      bool? marketing,
      bool? functional});
}

/// @nodoc
class _$CreateCookiePreferenceInputCopyWithImpl<$Res,
        $Val extends CreateCookiePreferenceInput>
    implements $CreateCookiePreferenceInputCopyWith<$Res> {
  _$CreateCookiePreferenceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCookiePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? sessionId = freezed,
    Object? essential = freezed,
    Object? analytics = freezed,
    Object? marketing = freezed,
    Object? functional = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      essential: freezed == essential
          ? _value.essential
          : essential // ignore: cast_nullable_to_non_nullable
              as bool?,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as bool?,
      marketing: freezed == marketing
          ? _value.marketing
          : marketing // ignore: cast_nullable_to_non_nullable
              as bool?,
      functional: freezed == functional
          ? _value.functional
          : functional // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCookiePreferenceInputImplCopyWith<$Res>
    implements $CreateCookiePreferenceInputCopyWith<$Res> {
  factory _$$CreateCookiePreferenceInputImplCopyWith(
          _$CreateCookiePreferenceInputImpl value,
          $Res Function(_$CreateCookiePreferenceInputImpl) then) =
      __$$CreateCookiePreferenceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? sessionId,
      bool? essential,
      bool? analytics,
      bool? marketing,
      bool? functional});
}

/// @nodoc
class __$$CreateCookiePreferenceInputImplCopyWithImpl<$Res>
    extends _$CreateCookiePreferenceInputCopyWithImpl<$Res,
        _$CreateCookiePreferenceInputImpl>
    implements _$$CreateCookiePreferenceInputImplCopyWith<$Res> {
  __$$CreateCookiePreferenceInputImplCopyWithImpl(
      _$CreateCookiePreferenceInputImpl _value,
      $Res Function(_$CreateCookiePreferenceInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCookiePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? sessionId = freezed,
    Object? essential = freezed,
    Object? analytics = freezed,
    Object? marketing = freezed,
    Object? functional = freezed,
  }) {
    return _then(_$CreateCookiePreferenceInputImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      essential: freezed == essential
          ? _value.essential
          : essential // ignore: cast_nullable_to_non_nullable
              as bool?,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as bool?,
      marketing: freezed == marketing
          ? _value.marketing
          : marketing // ignore: cast_nullable_to_non_nullable
              as bool?,
      functional: freezed == functional
          ? _value.functional
          : functional // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCookiePreferenceInputImpl
    implements _CreateCookiePreferenceInput {
  const _$CreateCookiePreferenceInputImpl(
      {this.userId,
      this.sessionId,
      this.essential = true,
      this.analytics = false,
      this.marketing = false,
      this.functional = false});

  factory _$CreateCookiePreferenceInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateCookiePreferenceInputImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? sessionId;
  @override
  @JsonKey()
  final bool? essential;
  @override
  @JsonKey()
  final bool? analytics;
  @override
  @JsonKey()
  final bool? marketing;
  @override
  @JsonKey()
  final bool? functional;

  @override
  String toString() {
    return 'CreateCookiePreferenceInput(userId: $userId, sessionId: $sessionId, essential: $essential, analytics: $analytics, marketing: $marketing, functional: $functional)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCookiePreferenceInputImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.essential, essential) ||
                other.essential == essential) &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.marketing, marketing) ||
                other.marketing == marketing) &&
            (identical(other.functional, functional) ||
                other.functional == functional));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, sessionId, essential,
      analytics, marketing, functional);

  /// Create a copy of CreateCookiePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCookiePreferenceInputImplCopyWith<_$CreateCookiePreferenceInputImpl>
      get copyWith => __$$CreateCookiePreferenceInputImplCopyWithImpl<
          _$CreateCookiePreferenceInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCookiePreferenceInputImplToJson(
      this,
    );
  }
}

abstract class _CreateCookiePreferenceInput
    implements CreateCookiePreferenceInput {
  const factory _CreateCookiePreferenceInput(
      {final String? userId,
      final String? sessionId,
      final bool? essential,
      final bool? analytics,
      final bool? marketing,
      final bool? functional}) = _$CreateCookiePreferenceInputImpl;

  factory _CreateCookiePreferenceInput.fromJson(Map<String, dynamic> json) =
      _$CreateCookiePreferenceInputImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get sessionId;
  @override
  bool? get essential;
  @override
  bool? get analytics;
  @override
  bool? get marketing;
  @override
  bool? get functional;

  /// Create a copy of CreateCookiePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCookiePreferenceInputImplCopyWith<_$CreateCookiePreferenceInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateCookiePreferenceInput _$UpdateCookiePreferenceInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateCookiePreferenceInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateCookiePreferenceInput {
  String? get userId => throw _privateConstructorUsedError;
  String? get sessionId => throw _privateConstructorUsedError;
  bool? get essential => throw _privateConstructorUsedError;
  bool? get analytics => throw _privateConstructorUsedError;
  bool? get marketing => throw _privateConstructorUsedError;
  bool? get functional => throw _privateConstructorUsedError;

  /// Serializes this UpdateCookiePreferenceInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateCookiePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateCookiePreferenceInputCopyWith<UpdateCookiePreferenceInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCookiePreferenceInputCopyWith<$Res> {
  factory $UpdateCookiePreferenceInputCopyWith(
          UpdateCookiePreferenceInput value,
          $Res Function(UpdateCookiePreferenceInput) then) =
      _$UpdateCookiePreferenceInputCopyWithImpl<$Res,
          UpdateCookiePreferenceInput>;
  @useResult
  $Res call(
      {String? userId,
      String? sessionId,
      bool? essential,
      bool? analytics,
      bool? marketing,
      bool? functional});
}

/// @nodoc
class _$UpdateCookiePreferenceInputCopyWithImpl<$Res,
        $Val extends UpdateCookiePreferenceInput>
    implements $UpdateCookiePreferenceInputCopyWith<$Res> {
  _$UpdateCookiePreferenceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateCookiePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? sessionId = freezed,
    Object? essential = freezed,
    Object? analytics = freezed,
    Object? marketing = freezed,
    Object? functional = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      essential: freezed == essential
          ? _value.essential
          : essential // ignore: cast_nullable_to_non_nullable
              as bool?,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as bool?,
      marketing: freezed == marketing
          ? _value.marketing
          : marketing // ignore: cast_nullable_to_non_nullable
              as bool?,
      functional: freezed == functional
          ? _value.functional
          : functional // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateCookiePreferenceInputImplCopyWith<$Res>
    implements $UpdateCookiePreferenceInputCopyWith<$Res> {
  factory _$$UpdateCookiePreferenceInputImplCopyWith(
          _$UpdateCookiePreferenceInputImpl value,
          $Res Function(_$UpdateCookiePreferenceInputImpl) then) =
      __$$UpdateCookiePreferenceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? sessionId,
      bool? essential,
      bool? analytics,
      bool? marketing,
      bool? functional});
}

/// @nodoc
class __$$UpdateCookiePreferenceInputImplCopyWithImpl<$Res>
    extends _$UpdateCookiePreferenceInputCopyWithImpl<$Res,
        _$UpdateCookiePreferenceInputImpl>
    implements _$$UpdateCookiePreferenceInputImplCopyWith<$Res> {
  __$$UpdateCookiePreferenceInputImplCopyWithImpl(
      _$UpdateCookiePreferenceInputImpl _value,
      $Res Function(_$UpdateCookiePreferenceInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateCookiePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? sessionId = freezed,
    Object? essential = freezed,
    Object? analytics = freezed,
    Object? marketing = freezed,
    Object? functional = freezed,
  }) {
    return _then(_$UpdateCookiePreferenceInputImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      essential: freezed == essential
          ? _value.essential
          : essential // ignore: cast_nullable_to_non_nullable
              as bool?,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as bool?,
      marketing: freezed == marketing
          ? _value.marketing
          : marketing // ignore: cast_nullable_to_non_nullable
              as bool?,
      functional: freezed == functional
          ? _value.functional
          : functional // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateCookiePreferenceInputImpl
    implements _UpdateCookiePreferenceInput {
  const _$UpdateCookiePreferenceInputImpl(
      {this.userId,
      this.sessionId,
      this.essential,
      this.analytics,
      this.marketing,
      this.functional});

  factory _$UpdateCookiePreferenceInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateCookiePreferenceInputImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? sessionId;
  @override
  final bool? essential;
  @override
  final bool? analytics;
  @override
  final bool? marketing;
  @override
  final bool? functional;

  @override
  String toString() {
    return 'UpdateCookiePreferenceInput(userId: $userId, sessionId: $sessionId, essential: $essential, analytics: $analytics, marketing: $marketing, functional: $functional)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCookiePreferenceInputImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.essential, essential) ||
                other.essential == essential) &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.marketing, marketing) ||
                other.marketing == marketing) &&
            (identical(other.functional, functional) ||
                other.functional == functional));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, sessionId, essential,
      analytics, marketing, functional);

  /// Create a copy of UpdateCookiePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCookiePreferenceInputImplCopyWith<_$UpdateCookiePreferenceInputImpl>
      get copyWith => __$$UpdateCookiePreferenceInputImplCopyWithImpl<
          _$UpdateCookiePreferenceInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateCookiePreferenceInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateCookiePreferenceInput
    implements UpdateCookiePreferenceInput {
  const factory _UpdateCookiePreferenceInput(
      {final String? userId,
      final String? sessionId,
      final bool? essential,
      final bool? analytics,
      final bool? marketing,
      final bool? functional}) = _$UpdateCookiePreferenceInputImpl;

  factory _UpdateCookiePreferenceInput.fromJson(Map<String, dynamic> json) =
      _$UpdateCookiePreferenceInputImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get sessionId;
  @override
  bool? get essential;
  @override
  bool? get analytics;
  @override
  bool? get marketing;
  @override
  bool? get functional;

  /// Create a copy of UpdateCookiePreferenceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCookiePreferenceInputImplCopyWith<_$UpdateCookiePreferenceInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CookiePreferenceWhereUniqueInput _$CookiePreferenceWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _CookiePreferenceWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$CookiePreferenceWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get sessionId => throw _privateConstructorUsedError;

  /// Serializes this CookiePreferenceWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CookiePreferenceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CookiePreferenceWhereUniqueInputCopyWith<CookiePreferenceWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CookiePreferenceWhereUniqueInputCopyWith<$Res> {
  factory $CookiePreferenceWhereUniqueInputCopyWith(
          CookiePreferenceWhereUniqueInput value,
          $Res Function(CookiePreferenceWhereUniqueInput) then) =
      _$CookiePreferenceWhereUniqueInputCopyWithImpl<$Res,
          CookiePreferenceWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? userId, String? sessionId});
}

/// @nodoc
class _$CookiePreferenceWhereUniqueInputCopyWithImpl<$Res,
        $Val extends CookiePreferenceWhereUniqueInput>
    implements $CookiePreferenceWhereUniqueInputCopyWith<$Res> {
  _$CookiePreferenceWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CookiePreferenceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? sessionId = freezed,
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
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CookiePreferenceWhereUniqueInputImplCopyWith<$Res>
    implements $CookiePreferenceWhereUniqueInputCopyWith<$Res> {
  factory _$$CookiePreferenceWhereUniqueInputImplCopyWith(
          _$CookiePreferenceWhereUniqueInputImpl value,
          $Res Function(_$CookiePreferenceWhereUniqueInputImpl) then) =
      __$$CookiePreferenceWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? userId, String? sessionId});
}

/// @nodoc
class __$$CookiePreferenceWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$CookiePreferenceWhereUniqueInputCopyWithImpl<$Res,
        _$CookiePreferenceWhereUniqueInputImpl>
    implements _$$CookiePreferenceWhereUniqueInputImplCopyWith<$Res> {
  __$$CookiePreferenceWhereUniqueInputImplCopyWithImpl(
      _$CookiePreferenceWhereUniqueInputImpl _value,
      $Res Function(_$CookiePreferenceWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CookiePreferenceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? sessionId = freezed,
  }) {
    return _then(_$CookiePreferenceWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CookiePreferenceWhereUniqueInputImpl
    implements _CookiePreferenceWhereUniqueInput {
  const _$CookiePreferenceWhereUniqueInputImpl(
      {this.id, this.userId, this.sessionId});

  factory _$CookiePreferenceWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CookiePreferenceWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? sessionId;

  @override
  String toString() {
    return 'CookiePreferenceWhereUniqueInput(id: $id, userId: $userId, sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CookiePreferenceWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, sessionId);

  /// Create a copy of CookiePreferenceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CookiePreferenceWhereUniqueInputImplCopyWith<
          _$CookiePreferenceWhereUniqueInputImpl>
      get copyWith => __$$CookiePreferenceWhereUniqueInputImplCopyWithImpl<
          _$CookiePreferenceWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CookiePreferenceWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _CookiePreferenceWhereUniqueInput
    implements CookiePreferenceWhereUniqueInput {
  const factory _CookiePreferenceWhereUniqueInput(
      {final String? id,
      final String? userId,
      final String? sessionId}) = _$CookiePreferenceWhereUniqueInputImpl;

  factory _CookiePreferenceWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$CookiePreferenceWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get sessionId;

  /// Create a copy of CookiePreferenceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CookiePreferenceWhereUniqueInputImplCopyWith<
          _$CookiePreferenceWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CookiePreferenceWhereInput _$CookiePreferenceWhereInputFromJson(
    Map<String, dynamic> json) {
  return _CookiePreferenceWhereInput.fromJson(json);
}

/// @nodoc
mixin _$CookiePreferenceWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  StringFilter? get sessionId => throw _privateConstructorUsedError;
  BooleanFilter? get essential => throw _privateConstructorUsedError;
  BooleanFilter? get analytics => throw _privateConstructorUsedError;
  BooleanFilter? get marketing => throw _privateConstructorUsedError;
  BooleanFilter? get functional => throw _privateConstructorUsedError;
  DateTimeFilter? get consentGivenAt => throw _privateConstructorUsedError;
  DateTimeFilter? get consentUpdatedAt => throw _privateConstructorUsedError;
  List<CookiePreferenceWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<CookiePreferenceWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  CookiePreferenceWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this CookiePreferenceWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CookiePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CookiePreferenceWhereInputCopyWith<CookiePreferenceWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CookiePreferenceWhereInputCopyWith<$Res> {
  factory $CookiePreferenceWhereInputCopyWith(CookiePreferenceWhereInput value,
          $Res Function(CookiePreferenceWhereInput) then) =
      _$CookiePreferenceWhereInputCopyWithImpl<$Res,
          CookiePreferenceWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      UserRelationFilter? user,
      StringFilter? userId,
      StringFilter? sessionId,
      BooleanFilter? essential,
      BooleanFilter? analytics,
      BooleanFilter? marketing,
      BooleanFilter? functional,
      DateTimeFilter? consentGivenAt,
      DateTimeFilter? consentUpdatedAt,
      List<CookiePreferenceWhereInput>? AND,
      List<CookiePreferenceWhereInput>? OR,
      CookiePreferenceWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $UserRelationFilterCopyWith<$Res>? get user;
  $StringFilterCopyWith<$Res>? get userId;
  $StringFilterCopyWith<$Res>? get sessionId;
  $BooleanFilterCopyWith<$Res>? get essential;
  $BooleanFilterCopyWith<$Res>? get analytics;
  $BooleanFilterCopyWith<$Res>? get marketing;
  $BooleanFilterCopyWith<$Res>? get functional;
  $DateTimeFilterCopyWith<$Res>? get consentGivenAt;
  $DateTimeFilterCopyWith<$Res>? get consentUpdatedAt;
  $CookiePreferenceWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$CookiePreferenceWhereInputCopyWithImpl<$Res,
        $Val extends CookiePreferenceWhereInput>
    implements $CookiePreferenceWhereInputCopyWith<$Res> {
  _$CookiePreferenceWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CookiePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? sessionId = freezed,
    Object? essential = freezed,
    Object? analytics = freezed,
    Object? marketing = freezed,
    Object? functional = freezed,
    Object? consentGivenAt = freezed,
    Object? consentUpdatedAt = freezed,
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
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      essential: freezed == essential
          ? _value.essential
          : essential // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      marketing: freezed == marketing
          ? _value.marketing
          : marketing // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      functional: freezed == functional
          ? _value.functional
          : functional // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      consentGivenAt: freezed == consentGivenAt
          ? _value.consentGivenAt
          : consentGivenAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      consentUpdatedAt: freezed == consentUpdatedAt
          ? _value.consentUpdatedAt
          : consentUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<CookiePreferenceWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<CookiePreferenceWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as CookiePreferenceWhereInput?,
    ) as $Val);
  }

  /// Create a copy of CookiePreferenceWhereInput
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

  /// Create a copy of CookiePreferenceWhereInput
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

  /// Create a copy of CookiePreferenceWhereInput
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

  /// Create a copy of CookiePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get sessionId {
    if (_value.sessionId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.sessionId!, (value) {
      return _then(_value.copyWith(sessionId: value) as $Val);
    });
  }

  /// Create a copy of CookiePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get essential {
    if (_value.essential == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.essential!, (value) {
      return _then(_value.copyWith(essential: value) as $Val);
    });
  }

  /// Create a copy of CookiePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get analytics {
    if (_value.analytics == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.analytics!, (value) {
      return _then(_value.copyWith(analytics: value) as $Val);
    });
  }

  /// Create a copy of CookiePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get marketing {
    if (_value.marketing == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.marketing!, (value) {
      return _then(_value.copyWith(marketing: value) as $Val);
    });
  }

  /// Create a copy of CookiePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get functional {
    if (_value.functional == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.functional!, (value) {
      return _then(_value.copyWith(functional: value) as $Val);
    });
  }

  /// Create a copy of CookiePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get consentGivenAt {
    if (_value.consentGivenAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.consentGivenAt!, (value) {
      return _then(_value.copyWith(consentGivenAt: value) as $Val);
    });
  }

  /// Create a copy of CookiePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get consentUpdatedAt {
    if (_value.consentUpdatedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.consentUpdatedAt!, (value) {
      return _then(_value.copyWith(consentUpdatedAt: value) as $Val);
    });
  }

  /// Create a copy of CookiePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CookiePreferenceWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $CookiePreferenceWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CookiePreferenceWhereInputImplCopyWith<$Res>
    implements $CookiePreferenceWhereInputCopyWith<$Res> {
  factory _$$CookiePreferenceWhereInputImplCopyWith(
          _$CookiePreferenceWhereInputImpl value,
          $Res Function(_$CookiePreferenceWhereInputImpl) then) =
      __$$CookiePreferenceWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      UserRelationFilter? user,
      StringFilter? userId,
      StringFilter? sessionId,
      BooleanFilter? essential,
      BooleanFilter? analytics,
      BooleanFilter? marketing,
      BooleanFilter? functional,
      DateTimeFilter? consentGivenAt,
      DateTimeFilter? consentUpdatedAt,
      List<CookiePreferenceWhereInput>? AND,
      List<CookiePreferenceWhereInput>? OR,
      CookiePreferenceWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $StringFilterCopyWith<$Res>? get sessionId;
  @override
  $BooleanFilterCopyWith<$Res>? get essential;
  @override
  $BooleanFilterCopyWith<$Res>? get analytics;
  @override
  $BooleanFilterCopyWith<$Res>? get marketing;
  @override
  $BooleanFilterCopyWith<$Res>? get functional;
  @override
  $DateTimeFilterCopyWith<$Res>? get consentGivenAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get consentUpdatedAt;
  @override
  $CookiePreferenceWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$CookiePreferenceWhereInputImplCopyWithImpl<$Res>
    extends _$CookiePreferenceWhereInputCopyWithImpl<$Res,
        _$CookiePreferenceWhereInputImpl>
    implements _$$CookiePreferenceWhereInputImplCopyWith<$Res> {
  __$$CookiePreferenceWhereInputImplCopyWithImpl(
      _$CookiePreferenceWhereInputImpl _value,
      $Res Function(_$CookiePreferenceWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CookiePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? sessionId = freezed,
    Object? essential = freezed,
    Object? analytics = freezed,
    Object? marketing = freezed,
    Object? functional = freezed,
    Object? consentGivenAt = freezed,
    Object? consentUpdatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$CookiePreferenceWhereInputImpl(
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
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      essential: freezed == essential
          ? _value.essential
          : essential // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      marketing: freezed == marketing
          ? _value.marketing
          : marketing // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      functional: freezed == functional
          ? _value.functional
          : functional // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      consentGivenAt: freezed == consentGivenAt
          ? _value.consentGivenAt
          : consentGivenAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      consentUpdatedAt: freezed == consentUpdatedAt
          ? _value.consentUpdatedAt
          : consentUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<CookiePreferenceWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<CookiePreferenceWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as CookiePreferenceWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CookiePreferenceWhereInputImpl implements _CookiePreferenceWhereInput {
  const _$CookiePreferenceWhereInputImpl(
      {this.id,
      this.user,
      this.userId,
      this.sessionId,
      this.essential,
      this.analytics,
      this.marketing,
      this.functional,
      this.consentGivenAt,
      this.consentUpdatedAt,
      final List<CookiePreferenceWhereInput>? AND,
      final List<CookiePreferenceWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$CookiePreferenceWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CookiePreferenceWhereInputImplFromJson(json);

  @override
  final StringFilter? id;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final StringFilter? userId;
  @override
  final StringFilter? sessionId;
  @override
  final BooleanFilter? essential;
  @override
  final BooleanFilter? analytics;
  @override
  final BooleanFilter? marketing;
  @override
  final BooleanFilter? functional;
  @override
  final DateTimeFilter? consentGivenAt;
  @override
  final DateTimeFilter? consentUpdatedAt;
  final List<CookiePreferenceWhereInput>? _AND;
  @override
  List<CookiePreferenceWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CookiePreferenceWhereInput>? _OR;
  @override
  List<CookiePreferenceWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CookiePreferenceWhereInput? NOT;

  @override
  String toString() {
    return 'CookiePreferenceWhereInput(id: $id, user: $user, userId: $userId, sessionId: $sessionId, essential: $essential, analytics: $analytics, marketing: $marketing, functional: $functional, consentGivenAt: $consentGivenAt, consentUpdatedAt: $consentUpdatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CookiePreferenceWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.essential, essential) ||
                other.essential == essential) &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.marketing, marketing) ||
                other.marketing == marketing) &&
            (identical(other.functional, functional) ||
                other.functional == functional) &&
            (identical(other.consentGivenAt, consentGivenAt) ||
                other.consentGivenAt == consentGivenAt) &&
            (identical(other.consentUpdatedAt, consentUpdatedAt) ||
                other.consentUpdatedAt == consentUpdatedAt) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      userId,
      sessionId,
      essential,
      analytics,
      marketing,
      functional,
      consentGivenAt,
      consentUpdatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of CookiePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CookiePreferenceWhereInputImplCopyWith<_$CookiePreferenceWhereInputImpl>
      get copyWith => __$$CookiePreferenceWhereInputImplCopyWithImpl<
          _$CookiePreferenceWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CookiePreferenceWhereInputImplToJson(
      this,
    );
  }
}

abstract class _CookiePreferenceWhereInput
    implements CookiePreferenceWhereInput {
  const factory _CookiePreferenceWhereInput(
          {final StringFilter? id,
          final UserRelationFilter? user,
          final StringFilter? userId,
          final StringFilter? sessionId,
          final BooleanFilter? essential,
          final BooleanFilter? analytics,
          final BooleanFilter? marketing,
          final BooleanFilter? functional,
          final DateTimeFilter? consentGivenAt,
          final DateTimeFilter? consentUpdatedAt,
          final List<CookiePreferenceWhereInput>? AND,
          final List<CookiePreferenceWhereInput>? OR,
          final CookiePreferenceWhereInput? NOT}) =
      _$CookiePreferenceWhereInputImpl;

  factory _CookiePreferenceWhereInput.fromJson(Map<String, dynamic> json) =
      _$CookiePreferenceWhereInputImpl.fromJson;

  @override
  StringFilter? get id;

  /// Filter by user relation
  @override
  UserRelationFilter? get user;
  @override
  StringFilter? get userId;
  @override
  StringFilter? get sessionId;
  @override
  BooleanFilter? get essential;
  @override
  BooleanFilter? get analytics;
  @override
  BooleanFilter? get marketing;
  @override
  BooleanFilter? get functional;
  @override
  DateTimeFilter? get consentGivenAt;
  @override
  DateTimeFilter? get consentUpdatedAt;
  @override
  List<CookiePreferenceWhereInput>? get AND;
  @override
  List<CookiePreferenceWhereInput>? get OR;
  @override
  CookiePreferenceWhereInput? get NOT;

  /// Create a copy of CookiePreferenceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CookiePreferenceWhereInputImplCopyWith<_$CookiePreferenceWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CookiePreferenceListRelationFilter _$CookiePreferenceListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _CookiePreferenceListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$CookiePreferenceListRelationFilter {
  /// At least one related record matches
  CookiePreferenceWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  CookiePreferenceWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  CookiePreferenceWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this CookiePreferenceListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CookiePreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CookiePreferenceListRelationFilterCopyWith<
          CookiePreferenceListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CookiePreferenceListRelationFilterCopyWith<$Res> {
  factory $CookiePreferenceListRelationFilterCopyWith(
          CookiePreferenceListRelationFilter value,
          $Res Function(CookiePreferenceListRelationFilter) then) =
      _$CookiePreferenceListRelationFilterCopyWithImpl<$Res,
          CookiePreferenceListRelationFilter>;
  @useResult
  $Res call(
      {CookiePreferenceWhereInput? some,
      CookiePreferenceWhereInput? every,
      CookiePreferenceWhereInput? none});

  $CookiePreferenceWhereInputCopyWith<$Res>? get some;
  $CookiePreferenceWhereInputCopyWith<$Res>? get every;
  $CookiePreferenceWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$CookiePreferenceListRelationFilterCopyWithImpl<$Res,
        $Val extends CookiePreferenceListRelationFilter>
    implements $CookiePreferenceListRelationFilterCopyWith<$Res> {
  _$CookiePreferenceListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CookiePreferenceListRelationFilter
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
              as CookiePreferenceWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as CookiePreferenceWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as CookiePreferenceWhereInput?,
    ) as $Val);
  }

  /// Create a copy of CookiePreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CookiePreferenceWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $CookiePreferenceWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of CookiePreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CookiePreferenceWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $CookiePreferenceWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of CookiePreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CookiePreferenceWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $CookiePreferenceWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CookiePreferenceListRelationFilterImplCopyWith<$Res>
    implements $CookiePreferenceListRelationFilterCopyWith<$Res> {
  factory _$$CookiePreferenceListRelationFilterImplCopyWith(
          _$CookiePreferenceListRelationFilterImpl value,
          $Res Function(_$CookiePreferenceListRelationFilterImpl) then) =
      __$$CookiePreferenceListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CookiePreferenceWhereInput? some,
      CookiePreferenceWhereInput? every,
      CookiePreferenceWhereInput? none});

  @override
  $CookiePreferenceWhereInputCopyWith<$Res>? get some;
  @override
  $CookiePreferenceWhereInputCopyWith<$Res>? get every;
  @override
  $CookiePreferenceWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$CookiePreferenceListRelationFilterImplCopyWithImpl<$Res>
    extends _$CookiePreferenceListRelationFilterCopyWithImpl<$Res,
        _$CookiePreferenceListRelationFilterImpl>
    implements _$$CookiePreferenceListRelationFilterImplCopyWith<$Res> {
  __$$CookiePreferenceListRelationFilterImplCopyWithImpl(
      _$CookiePreferenceListRelationFilterImpl _value,
      $Res Function(_$CookiePreferenceListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CookiePreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$CookiePreferenceListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as CookiePreferenceWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as CookiePreferenceWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as CookiePreferenceWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CookiePreferenceListRelationFilterImpl
    implements _CookiePreferenceListRelationFilter {
  const _$CookiePreferenceListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$CookiePreferenceListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CookiePreferenceListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final CookiePreferenceWhereInput? some;

  /// All related records match
  @override
  final CookiePreferenceWhereInput? every;

  /// No related records match
  @override
  final CookiePreferenceWhereInput? none;

  @override
  String toString() {
    return 'CookiePreferenceListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CookiePreferenceListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of CookiePreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CookiePreferenceListRelationFilterImplCopyWith<
          _$CookiePreferenceListRelationFilterImpl>
      get copyWith => __$$CookiePreferenceListRelationFilterImplCopyWithImpl<
          _$CookiePreferenceListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CookiePreferenceListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _CookiePreferenceListRelationFilter
    implements CookiePreferenceListRelationFilter {
  const factory _CookiePreferenceListRelationFilter(
          {final CookiePreferenceWhereInput? some,
          final CookiePreferenceWhereInput? every,
          final CookiePreferenceWhereInput? none}) =
      _$CookiePreferenceListRelationFilterImpl;

  factory _CookiePreferenceListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$CookiePreferenceListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  CookiePreferenceWhereInput? get some;

  /// All related records match
  @override
  CookiePreferenceWhereInput? get every;

  /// No related records match
  @override
  CookiePreferenceWhereInput? get none;

  /// Create a copy of CookiePreferenceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CookiePreferenceListRelationFilterImplCopyWith<
          _$CookiePreferenceListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CookiePreferenceRelationFilter _$CookiePreferenceRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _CookiePreferenceRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$CookiePreferenceRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  CookiePreferenceWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  CookiePreferenceWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this CookiePreferenceRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CookiePreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CookiePreferenceRelationFilterCopyWith<CookiePreferenceRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CookiePreferenceRelationFilterCopyWith<$Res> {
  factory $CookiePreferenceRelationFilterCopyWith(
          CookiePreferenceRelationFilter value,
          $Res Function(CookiePreferenceRelationFilter) then) =
      _$CookiePreferenceRelationFilterCopyWithImpl<$Res,
          CookiePreferenceRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') CookiePreferenceWhereInput? is_,
      CookiePreferenceWhereInput? isNot});

  $CookiePreferenceWhereInputCopyWith<$Res>? get is_;
  $CookiePreferenceWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$CookiePreferenceRelationFilterCopyWithImpl<$Res,
        $Val extends CookiePreferenceRelationFilter>
    implements $CookiePreferenceRelationFilterCopyWith<$Res> {
  _$CookiePreferenceRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CookiePreferenceRelationFilter
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
              as CookiePreferenceWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as CookiePreferenceWhereInput?,
    ) as $Val);
  }

  /// Create a copy of CookiePreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CookiePreferenceWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $CookiePreferenceWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of CookiePreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CookiePreferenceWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $CookiePreferenceWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CookiePreferenceRelationFilterImplCopyWith<$Res>
    implements $CookiePreferenceRelationFilterCopyWith<$Res> {
  factory _$$CookiePreferenceRelationFilterImplCopyWith(
          _$CookiePreferenceRelationFilterImpl value,
          $Res Function(_$CookiePreferenceRelationFilterImpl) then) =
      __$$CookiePreferenceRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') CookiePreferenceWhereInput? is_,
      CookiePreferenceWhereInput? isNot});

  @override
  $CookiePreferenceWhereInputCopyWith<$Res>? get is_;
  @override
  $CookiePreferenceWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$CookiePreferenceRelationFilterImplCopyWithImpl<$Res>
    extends _$CookiePreferenceRelationFilterCopyWithImpl<$Res,
        _$CookiePreferenceRelationFilterImpl>
    implements _$$CookiePreferenceRelationFilterImplCopyWith<$Res> {
  __$$CookiePreferenceRelationFilterImplCopyWithImpl(
      _$CookiePreferenceRelationFilterImpl _value,
      $Res Function(_$CookiePreferenceRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CookiePreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$CookiePreferenceRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as CookiePreferenceWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as CookiePreferenceWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CookiePreferenceRelationFilterImpl
    implements _CookiePreferenceRelationFilter {
  const _$CookiePreferenceRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$CookiePreferenceRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CookiePreferenceRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final CookiePreferenceWhereInput? is_;

  /// Related record does not match
  @override
  final CookiePreferenceWhereInput? isNot;

  @override
  String toString() {
    return 'CookiePreferenceRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CookiePreferenceRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of CookiePreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CookiePreferenceRelationFilterImplCopyWith<
          _$CookiePreferenceRelationFilterImpl>
      get copyWith => __$$CookiePreferenceRelationFilterImplCopyWithImpl<
          _$CookiePreferenceRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CookiePreferenceRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _CookiePreferenceRelationFilter
    implements CookiePreferenceRelationFilter {
  const factory _CookiePreferenceRelationFilter(
          {@JsonKey(name: 'is') final CookiePreferenceWhereInput? is_,
          final CookiePreferenceWhereInput? isNot}) =
      _$CookiePreferenceRelationFilterImpl;

  factory _CookiePreferenceRelationFilter.fromJson(Map<String, dynamic> json) =
      _$CookiePreferenceRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  CookiePreferenceWhereInput? get is_;

  /// Related record does not match
  @override
  CookiePreferenceWhereInput? get isNot;

  /// Create a copy of CookiePreferenceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CookiePreferenceRelationFilterImplCopyWith<
          _$CookiePreferenceRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CookiePreferenceOrderByInput _$CookiePreferenceOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _CookiePreferenceOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$CookiePreferenceOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get sessionId => throw _privateConstructorUsedError;
  SortOrder? get essential => throw _privateConstructorUsedError;
  SortOrder? get analytics => throw _privateConstructorUsedError;
  SortOrder? get marketing => throw _privateConstructorUsedError;
  SortOrder? get functional => throw _privateConstructorUsedError;
  SortOrder? get consentGivenAt => throw _privateConstructorUsedError;
  SortOrder? get consentUpdatedAt => throw _privateConstructorUsedError;

  /// Serializes this CookiePreferenceOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CookiePreferenceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CookiePreferenceOrderByInputCopyWith<CookiePreferenceOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CookiePreferenceOrderByInputCopyWith<$Res> {
  factory $CookiePreferenceOrderByInputCopyWith(
          CookiePreferenceOrderByInput value,
          $Res Function(CookiePreferenceOrderByInput) then) =
      _$CookiePreferenceOrderByInputCopyWithImpl<$Res,
          CookiePreferenceOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? userId,
      SortOrder? sessionId,
      SortOrder? essential,
      SortOrder? analytics,
      SortOrder? marketing,
      SortOrder? functional,
      SortOrder? consentGivenAt,
      SortOrder? consentUpdatedAt});
}

/// @nodoc
class _$CookiePreferenceOrderByInputCopyWithImpl<$Res,
        $Val extends CookiePreferenceOrderByInput>
    implements $CookiePreferenceOrderByInputCopyWith<$Res> {
  _$CookiePreferenceOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CookiePreferenceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? sessionId = freezed,
    Object? essential = freezed,
    Object? analytics = freezed,
    Object? marketing = freezed,
    Object? functional = freezed,
    Object? consentGivenAt = freezed,
    Object? consentUpdatedAt = freezed,
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
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      essential: freezed == essential
          ? _value.essential
          : essential // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      marketing: freezed == marketing
          ? _value.marketing
          : marketing // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      functional: freezed == functional
          ? _value.functional
          : functional // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consentGivenAt: freezed == consentGivenAt
          ? _value.consentGivenAt
          : consentGivenAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consentUpdatedAt: freezed == consentUpdatedAt
          ? _value.consentUpdatedAt
          : consentUpdatedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CookiePreferenceOrderByInputImplCopyWith<$Res>
    implements $CookiePreferenceOrderByInputCopyWith<$Res> {
  factory _$$CookiePreferenceOrderByInputImplCopyWith(
          _$CookiePreferenceOrderByInputImpl value,
          $Res Function(_$CookiePreferenceOrderByInputImpl) then) =
      __$$CookiePreferenceOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? userId,
      SortOrder? sessionId,
      SortOrder? essential,
      SortOrder? analytics,
      SortOrder? marketing,
      SortOrder? functional,
      SortOrder? consentGivenAt,
      SortOrder? consentUpdatedAt});
}

/// @nodoc
class __$$CookiePreferenceOrderByInputImplCopyWithImpl<$Res>
    extends _$CookiePreferenceOrderByInputCopyWithImpl<$Res,
        _$CookiePreferenceOrderByInputImpl>
    implements _$$CookiePreferenceOrderByInputImplCopyWith<$Res> {
  __$$CookiePreferenceOrderByInputImplCopyWithImpl(
      _$CookiePreferenceOrderByInputImpl _value,
      $Res Function(_$CookiePreferenceOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CookiePreferenceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? sessionId = freezed,
    Object? essential = freezed,
    Object? analytics = freezed,
    Object? marketing = freezed,
    Object? functional = freezed,
    Object? consentGivenAt = freezed,
    Object? consentUpdatedAt = freezed,
  }) {
    return _then(_$CookiePreferenceOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      essential: freezed == essential
          ? _value.essential
          : essential // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      marketing: freezed == marketing
          ? _value.marketing
          : marketing // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      functional: freezed == functional
          ? _value.functional
          : functional // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consentGivenAt: freezed == consentGivenAt
          ? _value.consentGivenAt
          : consentGivenAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consentUpdatedAt: freezed == consentUpdatedAt
          ? _value.consentUpdatedAt
          : consentUpdatedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CookiePreferenceOrderByInputImpl
    implements _CookiePreferenceOrderByInput {
  const _$CookiePreferenceOrderByInputImpl(
      {this.id,
      this.userId,
      this.sessionId,
      this.essential,
      this.analytics,
      this.marketing,
      this.functional,
      this.consentGivenAt,
      this.consentUpdatedAt});

  factory _$CookiePreferenceOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CookiePreferenceOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? sessionId;
  @override
  final SortOrder? essential;
  @override
  final SortOrder? analytics;
  @override
  final SortOrder? marketing;
  @override
  final SortOrder? functional;
  @override
  final SortOrder? consentGivenAt;
  @override
  final SortOrder? consentUpdatedAt;

  @override
  String toString() {
    return 'CookiePreferenceOrderByInput(id: $id, userId: $userId, sessionId: $sessionId, essential: $essential, analytics: $analytics, marketing: $marketing, functional: $functional, consentGivenAt: $consentGivenAt, consentUpdatedAt: $consentUpdatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CookiePreferenceOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.essential, essential) ||
                other.essential == essential) &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.marketing, marketing) ||
                other.marketing == marketing) &&
            (identical(other.functional, functional) ||
                other.functional == functional) &&
            (identical(other.consentGivenAt, consentGivenAt) ||
                other.consentGivenAt == consentGivenAt) &&
            (identical(other.consentUpdatedAt, consentUpdatedAt) ||
                other.consentUpdatedAt == consentUpdatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, sessionId, essential,
      analytics, marketing, functional, consentGivenAt, consentUpdatedAt);

  /// Create a copy of CookiePreferenceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CookiePreferenceOrderByInputImplCopyWith<
          _$CookiePreferenceOrderByInputImpl>
      get copyWith => __$$CookiePreferenceOrderByInputImplCopyWithImpl<
          _$CookiePreferenceOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CookiePreferenceOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _CookiePreferenceOrderByInput
    implements CookiePreferenceOrderByInput {
  const factory _CookiePreferenceOrderByInput(
      {final SortOrder? id,
      final SortOrder? userId,
      final SortOrder? sessionId,
      final SortOrder? essential,
      final SortOrder? analytics,
      final SortOrder? marketing,
      final SortOrder? functional,
      final SortOrder? consentGivenAt,
      final SortOrder? consentUpdatedAt}) = _$CookiePreferenceOrderByInputImpl;

  factory _CookiePreferenceOrderByInput.fromJson(Map<String, dynamic> json) =
      _$CookiePreferenceOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get sessionId;
  @override
  SortOrder? get essential;
  @override
  SortOrder? get analytics;
  @override
  SortOrder? get marketing;
  @override
  SortOrder? get functional;
  @override
  SortOrder? get consentGivenAt;
  @override
  SortOrder? get consentUpdatedAt;

  /// Create a copy of CookiePreferenceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CookiePreferenceOrderByInputImplCopyWith<
          _$CookiePreferenceOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
