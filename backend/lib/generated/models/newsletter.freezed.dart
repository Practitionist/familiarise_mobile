// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'newsletter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Newsletter _$NewsletterFromJson(Map<String, dynamic> json) {
  return _Newsletter.fromJson(json);
}

/// @nodoc
mixin _$Newsletter {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get unsubscribed => throw _privateConstructorUsedError;
  DateTime? get unsubscribedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Newsletter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Newsletter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsletterCopyWith<Newsletter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsletterCopyWith<$Res> {
  factory $NewsletterCopyWith(
          Newsletter value, $Res Function(Newsletter) then) =
      _$NewsletterCopyWithImpl<$Res, Newsletter>;
  @useResult
  $Res call(
      {String id,
      String email,
      bool unsubscribed,
      DateTime? unsubscribedAt,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$NewsletterCopyWithImpl<$Res, $Val extends Newsletter>
    implements $NewsletterCopyWith<$Res> {
  _$NewsletterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Newsletter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? unsubscribed = null,
    Object? unsubscribedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      unsubscribed: null == unsubscribed
          ? _value.unsubscribed
          : unsubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      unsubscribedAt: freezed == unsubscribedAt
          ? _value.unsubscribedAt
          : unsubscribedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
}

/// @nodoc
abstract class _$$NewsletterImplCopyWith<$Res>
    implements $NewsletterCopyWith<$Res> {
  factory _$$NewsletterImplCopyWith(
          _$NewsletterImpl value, $Res Function(_$NewsletterImpl) then) =
      __$$NewsletterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      bool unsubscribed,
      DateTime? unsubscribedAt,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$NewsletterImplCopyWithImpl<$Res>
    extends _$NewsletterCopyWithImpl<$Res, _$NewsletterImpl>
    implements _$$NewsletterImplCopyWith<$Res> {
  __$$NewsletterImplCopyWithImpl(
      _$NewsletterImpl _value, $Res Function(_$NewsletterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Newsletter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? unsubscribed = null,
    Object? unsubscribedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$NewsletterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      unsubscribed: null == unsubscribed
          ? _value.unsubscribed
          : unsubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      unsubscribedAt: freezed == unsubscribedAt
          ? _value.unsubscribedAt
          : unsubscribedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$NewsletterImpl implements _Newsletter {
  const _$NewsletterImpl(
      {required this.id,
      required this.email,
      this.unsubscribed = false,
      this.unsubscribedAt,
      required this.createdAt,
      required this.updatedAt});

  factory _$NewsletterImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsletterImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  @JsonKey()
  final bool unsubscribed;
  @override
  final DateTime? unsubscribedAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Newsletter(id: $id, email: $email, unsubscribed: $unsubscribed, unsubscribedAt: $unsubscribedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsletterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.unsubscribed, unsubscribed) ||
                other.unsubscribed == unsubscribed) &&
            (identical(other.unsubscribedAt, unsubscribedAt) ||
                other.unsubscribedAt == unsubscribedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, unsubscribed,
      unsubscribedAt, createdAt, updatedAt);

  /// Create a copy of Newsletter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsletterImplCopyWith<_$NewsletterImpl> get copyWith =>
      __$$NewsletterImplCopyWithImpl<_$NewsletterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsletterImplToJson(
      this,
    );
  }
}

abstract class _Newsletter implements Newsletter {
  const factory _Newsletter(
      {required final String id,
      required final String email,
      final bool unsubscribed,
      final DateTime? unsubscribedAt,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$NewsletterImpl;

  factory _Newsletter.fromJson(Map<String, dynamic> json) =
      _$NewsletterImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  bool get unsubscribed;
  @override
  DateTime? get unsubscribedAt;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Newsletter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsletterImplCopyWith<_$NewsletterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateNewsletterInput _$CreateNewsletterInputFromJson(
    Map<String, dynamic> json) {
  return _CreateNewsletterInput.fromJson(json);
}

/// @nodoc
mixin _$CreateNewsletterInput {
  String get email => throw _privateConstructorUsedError;
  bool? get unsubscribed => throw _privateConstructorUsedError;
  DateTime? get unsubscribedAt => throw _privateConstructorUsedError;

  /// Serializes this CreateNewsletterInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateNewsletterInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateNewsletterInputCopyWith<CreateNewsletterInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNewsletterInputCopyWith<$Res> {
  factory $CreateNewsletterInputCopyWith(CreateNewsletterInput value,
          $Res Function(CreateNewsletterInput) then) =
      _$CreateNewsletterInputCopyWithImpl<$Res, CreateNewsletterInput>;
  @useResult
  $Res call({String email, bool? unsubscribed, DateTime? unsubscribedAt});
}

/// @nodoc
class _$CreateNewsletterInputCopyWithImpl<$Res,
        $Val extends CreateNewsletterInput>
    implements $CreateNewsletterInputCopyWith<$Res> {
  _$CreateNewsletterInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateNewsletterInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? unsubscribed = freezed,
    Object? unsubscribedAt = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      unsubscribed: freezed == unsubscribed
          ? _value.unsubscribed
          : unsubscribed // ignore: cast_nullable_to_non_nullable
              as bool?,
      unsubscribedAt: freezed == unsubscribedAt
          ? _value.unsubscribedAt
          : unsubscribedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateNewsletterInputImplCopyWith<$Res>
    implements $CreateNewsletterInputCopyWith<$Res> {
  factory _$$CreateNewsletterInputImplCopyWith(
          _$CreateNewsletterInputImpl value,
          $Res Function(_$CreateNewsletterInputImpl) then) =
      __$$CreateNewsletterInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, bool? unsubscribed, DateTime? unsubscribedAt});
}

/// @nodoc
class __$$CreateNewsletterInputImplCopyWithImpl<$Res>
    extends _$CreateNewsletterInputCopyWithImpl<$Res,
        _$CreateNewsletterInputImpl>
    implements _$$CreateNewsletterInputImplCopyWith<$Res> {
  __$$CreateNewsletterInputImplCopyWithImpl(_$CreateNewsletterInputImpl _value,
      $Res Function(_$CreateNewsletterInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateNewsletterInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? unsubscribed = freezed,
    Object? unsubscribedAt = freezed,
  }) {
    return _then(_$CreateNewsletterInputImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      unsubscribed: freezed == unsubscribed
          ? _value.unsubscribed
          : unsubscribed // ignore: cast_nullable_to_non_nullable
              as bool?,
      unsubscribedAt: freezed == unsubscribedAt
          ? _value.unsubscribedAt
          : unsubscribedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateNewsletterInputImpl implements _CreateNewsletterInput {
  const _$CreateNewsletterInputImpl(
      {required this.email, this.unsubscribed = false, this.unsubscribedAt});

  factory _$CreateNewsletterInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateNewsletterInputImplFromJson(json);

  @override
  final String email;
  @override
  @JsonKey()
  final bool? unsubscribed;
  @override
  final DateTime? unsubscribedAt;

  @override
  String toString() {
    return 'CreateNewsletterInput(email: $email, unsubscribed: $unsubscribed, unsubscribedAt: $unsubscribedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNewsletterInputImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.unsubscribed, unsubscribed) ||
                other.unsubscribed == unsubscribed) &&
            (identical(other.unsubscribedAt, unsubscribedAt) ||
                other.unsubscribedAt == unsubscribedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, unsubscribed, unsubscribedAt);

  /// Create a copy of CreateNewsletterInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNewsletterInputImplCopyWith<_$CreateNewsletterInputImpl>
      get copyWith => __$$CreateNewsletterInputImplCopyWithImpl<
          _$CreateNewsletterInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateNewsletterInputImplToJson(
      this,
    );
  }
}

abstract class _CreateNewsletterInput implements CreateNewsletterInput {
  const factory _CreateNewsletterInput(
      {required final String email,
      final bool? unsubscribed,
      final DateTime? unsubscribedAt}) = _$CreateNewsletterInputImpl;

  factory _CreateNewsletterInput.fromJson(Map<String, dynamic> json) =
      _$CreateNewsletterInputImpl.fromJson;

  @override
  String get email;
  @override
  bool? get unsubscribed;
  @override
  DateTime? get unsubscribedAt;

  /// Create a copy of CreateNewsletterInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateNewsletterInputImplCopyWith<_$CreateNewsletterInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateNewsletterInput _$UpdateNewsletterInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateNewsletterInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateNewsletterInput {
  String? get email => throw _privateConstructorUsedError;
  bool? get unsubscribed => throw _privateConstructorUsedError;
  DateTime? get unsubscribedAt => throw _privateConstructorUsedError;

  /// Serializes this UpdateNewsletterInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateNewsletterInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateNewsletterInputCopyWith<UpdateNewsletterInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateNewsletterInputCopyWith<$Res> {
  factory $UpdateNewsletterInputCopyWith(UpdateNewsletterInput value,
          $Res Function(UpdateNewsletterInput) then) =
      _$UpdateNewsletterInputCopyWithImpl<$Res, UpdateNewsletterInput>;
  @useResult
  $Res call({String? email, bool? unsubscribed, DateTime? unsubscribedAt});
}

/// @nodoc
class _$UpdateNewsletterInputCopyWithImpl<$Res,
        $Val extends UpdateNewsletterInput>
    implements $UpdateNewsletterInputCopyWith<$Res> {
  _$UpdateNewsletterInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateNewsletterInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? unsubscribed = freezed,
    Object? unsubscribedAt = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      unsubscribed: freezed == unsubscribed
          ? _value.unsubscribed
          : unsubscribed // ignore: cast_nullable_to_non_nullable
              as bool?,
      unsubscribedAt: freezed == unsubscribedAt
          ? _value.unsubscribedAt
          : unsubscribedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateNewsletterInputImplCopyWith<$Res>
    implements $UpdateNewsletterInputCopyWith<$Res> {
  factory _$$UpdateNewsletterInputImplCopyWith(
          _$UpdateNewsletterInputImpl value,
          $Res Function(_$UpdateNewsletterInputImpl) then) =
      __$$UpdateNewsletterInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, bool? unsubscribed, DateTime? unsubscribedAt});
}

/// @nodoc
class __$$UpdateNewsletterInputImplCopyWithImpl<$Res>
    extends _$UpdateNewsletterInputCopyWithImpl<$Res,
        _$UpdateNewsletterInputImpl>
    implements _$$UpdateNewsletterInputImplCopyWith<$Res> {
  __$$UpdateNewsletterInputImplCopyWithImpl(_$UpdateNewsletterInputImpl _value,
      $Res Function(_$UpdateNewsletterInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateNewsletterInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? unsubscribed = freezed,
    Object? unsubscribedAt = freezed,
  }) {
    return _then(_$UpdateNewsletterInputImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      unsubscribed: freezed == unsubscribed
          ? _value.unsubscribed
          : unsubscribed // ignore: cast_nullable_to_non_nullable
              as bool?,
      unsubscribedAt: freezed == unsubscribedAt
          ? _value.unsubscribedAt
          : unsubscribedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateNewsletterInputImpl implements _UpdateNewsletterInput {
  const _$UpdateNewsletterInputImpl(
      {this.email, this.unsubscribed, this.unsubscribedAt});

  factory _$UpdateNewsletterInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateNewsletterInputImplFromJson(json);

  @override
  final String? email;
  @override
  final bool? unsubscribed;
  @override
  final DateTime? unsubscribedAt;

  @override
  String toString() {
    return 'UpdateNewsletterInput(email: $email, unsubscribed: $unsubscribed, unsubscribedAt: $unsubscribedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNewsletterInputImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.unsubscribed, unsubscribed) ||
                other.unsubscribed == unsubscribed) &&
            (identical(other.unsubscribedAt, unsubscribedAt) ||
                other.unsubscribedAt == unsubscribedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, unsubscribed, unsubscribedAt);

  /// Create a copy of UpdateNewsletterInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNewsletterInputImplCopyWith<_$UpdateNewsletterInputImpl>
      get copyWith => __$$UpdateNewsletterInputImplCopyWithImpl<
          _$UpdateNewsletterInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateNewsletterInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateNewsletterInput implements UpdateNewsletterInput {
  const factory _UpdateNewsletterInput(
      {final String? email,
      final bool? unsubscribed,
      final DateTime? unsubscribedAt}) = _$UpdateNewsletterInputImpl;

  factory _UpdateNewsletterInput.fromJson(Map<String, dynamic> json) =
      _$UpdateNewsletterInputImpl.fromJson;

  @override
  String? get email;
  @override
  bool? get unsubscribed;
  @override
  DateTime? get unsubscribedAt;

  /// Create a copy of UpdateNewsletterInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNewsletterInputImplCopyWith<_$UpdateNewsletterInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NewsletterWhereUniqueInput _$NewsletterWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _NewsletterWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$NewsletterWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this NewsletterWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsletterWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsletterWhereUniqueInputCopyWith<NewsletterWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsletterWhereUniqueInputCopyWith<$Res> {
  factory $NewsletterWhereUniqueInputCopyWith(NewsletterWhereUniqueInput value,
          $Res Function(NewsletterWhereUniqueInput) then) =
      _$NewsletterWhereUniqueInputCopyWithImpl<$Res,
          NewsletterWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? email});
}

/// @nodoc
class _$NewsletterWhereUniqueInputCopyWithImpl<$Res,
        $Val extends NewsletterWhereUniqueInput>
    implements $NewsletterWhereUniqueInputCopyWith<$Res> {
  _$NewsletterWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsletterWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsletterWhereUniqueInputImplCopyWith<$Res>
    implements $NewsletterWhereUniqueInputCopyWith<$Res> {
  factory _$$NewsletterWhereUniqueInputImplCopyWith(
          _$NewsletterWhereUniqueInputImpl value,
          $Res Function(_$NewsletterWhereUniqueInputImpl) then) =
      __$$NewsletterWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? email});
}

/// @nodoc
class __$$NewsletterWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$NewsletterWhereUniqueInputCopyWithImpl<$Res,
        _$NewsletterWhereUniqueInputImpl>
    implements _$$NewsletterWhereUniqueInputImplCopyWith<$Res> {
  __$$NewsletterWhereUniqueInputImplCopyWithImpl(
      _$NewsletterWhereUniqueInputImpl _value,
      $Res Function(_$NewsletterWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsletterWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_$NewsletterWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsletterWhereUniqueInputImpl implements _NewsletterWhereUniqueInput {
  const _$NewsletterWhereUniqueInputImpl({this.id, this.email});

  factory _$NewsletterWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NewsletterWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? email;

  @override
  String toString() {
    return 'NewsletterWhereUniqueInput(id: $id, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsletterWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email);

  /// Create a copy of NewsletterWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsletterWhereUniqueInputImplCopyWith<_$NewsletterWhereUniqueInputImpl>
      get copyWith => __$$NewsletterWhereUniqueInputImplCopyWithImpl<
          _$NewsletterWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsletterWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _NewsletterWhereUniqueInput
    implements NewsletterWhereUniqueInput {
  const factory _NewsletterWhereUniqueInput(
      {final String? id,
      final String? email}) = _$NewsletterWhereUniqueInputImpl;

  factory _NewsletterWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$NewsletterWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get email;

  /// Create a copy of NewsletterWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsletterWhereUniqueInputImplCopyWith<_$NewsletterWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NewsletterWhereInput _$NewsletterWhereInputFromJson(Map<String, dynamic> json) {
  return _NewsletterWhereInput.fromJson(json);
}

/// @nodoc
mixin _$NewsletterWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get email => throw _privateConstructorUsedError;
  BooleanFilter? get unsubscribed => throw _privateConstructorUsedError;
  DateTimeFilter? get unsubscribedAt => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<NewsletterWhereInput>? get AND => throw _privateConstructorUsedError;
  List<NewsletterWhereInput>? get OR => throw _privateConstructorUsedError;
  NewsletterWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this NewsletterWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsletterWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsletterWhereInputCopyWith<NewsletterWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsletterWhereInputCopyWith<$Res> {
  factory $NewsletterWhereInputCopyWith(NewsletterWhereInput value,
          $Res Function(NewsletterWhereInput) then) =
      _$NewsletterWhereInputCopyWithImpl<$Res, NewsletterWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? email,
      BooleanFilter? unsubscribed,
      DateTimeFilter? unsubscribedAt,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<NewsletterWhereInput>? AND,
      List<NewsletterWhereInput>? OR,
      NewsletterWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get email;
  $BooleanFilterCopyWith<$Res>? get unsubscribed;
  $DateTimeFilterCopyWith<$Res>? get unsubscribedAt;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $NewsletterWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$NewsletterWhereInputCopyWithImpl<$Res,
        $Val extends NewsletterWhereInput>
    implements $NewsletterWhereInputCopyWith<$Res> {
  _$NewsletterWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsletterWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? unsubscribed = freezed,
    Object? unsubscribedAt = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      unsubscribed: freezed == unsubscribed
          ? _value.unsubscribed
          : unsubscribed // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      unsubscribedAt: freezed == unsubscribedAt
          ? _value.unsubscribedAt
          : unsubscribedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
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
              as List<NewsletterWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<NewsletterWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as NewsletterWhereInput?,
    ) as $Val);
  }

  /// Create a copy of NewsletterWhereInput
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

  /// Create a copy of NewsletterWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get email {
    if (_value.email == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.email!, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  /// Create a copy of NewsletterWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get unsubscribed {
    if (_value.unsubscribed == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.unsubscribed!, (value) {
      return _then(_value.copyWith(unsubscribed: value) as $Val);
    });
  }

  /// Create a copy of NewsletterWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get unsubscribedAt {
    if (_value.unsubscribedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.unsubscribedAt!, (value) {
      return _then(_value.copyWith(unsubscribedAt: value) as $Val);
    });
  }

  /// Create a copy of NewsletterWhereInput
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

  /// Create a copy of NewsletterWhereInput
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

  /// Create a copy of NewsletterWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewsletterWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $NewsletterWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsletterWhereInputImplCopyWith<$Res>
    implements $NewsletterWhereInputCopyWith<$Res> {
  factory _$$NewsletterWhereInputImplCopyWith(_$NewsletterWhereInputImpl value,
          $Res Function(_$NewsletterWhereInputImpl) then) =
      __$$NewsletterWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? email,
      BooleanFilter? unsubscribed,
      DateTimeFilter? unsubscribedAt,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<NewsletterWhereInput>? AND,
      List<NewsletterWhereInput>? OR,
      NewsletterWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get email;
  @override
  $BooleanFilterCopyWith<$Res>? get unsubscribed;
  @override
  $DateTimeFilterCopyWith<$Res>? get unsubscribedAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $NewsletterWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$NewsletterWhereInputImplCopyWithImpl<$Res>
    extends _$NewsletterWhereInputCopyWithImpl<$Res, _$NewsletterWhereInputImpl>
    implements _$$NewsletterWhereInputImplCopyWith<$Res> {
  __$$NewsletterWhereInputImplCopyWithImpl(_$NewsletterWhereInputImpl _value,
      $Res Function(_$NewsletterWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsletterWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? unsubscribed = freezed,
    Object? unsubscribedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$NewsletterWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      unsubscribed: freezed == unsubscribed
          ? _value.unsubscribed
          : unsubscribed // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      unsubscribedAt: freezed == unsubscribedAt
          ? _value.unsubscribedAt
          : unsubscribedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
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
              as List<NewsletterWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<NewsletterWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as NewsletterWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$NewsletterWhereInputImpl implements _NewsletterWhereInput {
  const _$NewsletterWhereInputImpl(
      {this.id,
      this.email,
      this.unsubscribed,
      this.unsubscribedAt,
      this.createdAt,
      this.updatedAt,
      final List<NewsletterWhereInput>? AND,
      final List<NewsletterWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$NewsletterWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsletterWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? email;
  @override
  final BooleanFilter? unsubscribed;
  @override
  final DateTimeFilter? unsubscribedAt;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<NewsletterWhereInput>? _AND;
  @override
  List<NewsletterWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NewsletterWhereInput>? _OR;
  @override
  List<NewsletterWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final NewsletterWhereInput? NOT;

  @override
  String toString() {
    return 'NewsletterWhereInput(id: $id, email: $email, unsubscribed: $unsubscribed, unsubscribedAt: $unsubscribedAt, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsletterWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.unsubscribed, unsubscribed) ||
                other.unsubscribed == unsubscribed) &&
            (identical(other.unsubscribedAt, unsubscribedAt) ||
                other.unsubscribedAt == unsubscribedAt) &&
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
      email,
      unsubscribed,
      unsubscribedAt,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of NewsletterWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsletterWhereInputImplCopyWith<_$NewsletterWhereInputImpl>
      get copyWith =>
          __$$NewsletterWhereInputImplCopyWithImpl<_$NewsletterWhereInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsletterWhereInputImplToJson(
      this,
    );
  }
}

abstract class _NewsletterWhereInput implements NewsletterWhereInput {
  const factory _NewsletterWhereInput(
      {final StringFilter? id,
      final StringFilter? email,
      final BooleanFilter? unsubscribed,
      final DateTimeFilter? unsubscribedAt,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<NewsletterWhereInput>? AND,
      final List<NewsletterWhereInput>? OR,
      final NewsletterWhereInput? NOT}) = _$NewsletterWhereInputImpl;

  factory _NewsletterWhereInput.fromJson(Map<String, dynamic> json) =
      _$NewsletterWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get email;
  @override
  BooleanFilter? get unsubscribed;
  @override
  DateTimeFilter? get unsubscribedAt;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<NewsletterWhereInput>? get AND;
  @override
  List<NewsletterWhereInput>? get OR;
  @override
  NewsletterWhereInput? get NOT;

  /// Create a copy of NewsletterWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsletterWhereInputImplCopyWith<_$NewsletterWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NewsletterListRelationFilter _$NewsletterListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _NewsletterListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$NewsletterListRelationFilter {
  /// At least one related record matches
  NewsletterWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  NewsletterWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  NewsletterWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this NewsletterListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsletterListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsletterListRelationFilterCopyWith<NewsletterListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsletterListRelationFilterCopyWith<$Res> {
  factory $NewsletterListRelationFilterCopyWith(
          NewsletterListRelationFilter value,
          $Res Function(NewsletterListRelationFilter) then) =
      _$NewsletterListRelationFilterCopyWithImpl<$Res,
          NewsletterListRelationFilter>;
  @useResult
  $Res call(
      {NewsletterWhereInput? some,
      NewsletterWhereInput? every,
      NewsletterWhereInput? none});

  $NewsletterWhereInputCopyWith<$Res>? get some;
  $NewsletterWhereInputCopyWith<$Res>? get every;
  $NewsletterWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$NewsletterListRelationFilterCopyWithImpl<$Res,
        $Val extends NewsletterListRelationFilter>
    implements $NewsletterListRelationFilterCopyWith<$Res> {
  _$NewsletterListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsletterListRelationFilter
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
              as NewsletterWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as NewsletterWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as NewsletterWhereInput?,
    ) as $Val);
  }

  /// Create a copy of NewsletterListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewsletterWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $NewsletterWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of NewsletterListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewsletterWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $NewsletterWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of NewsletterListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewsletterWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $NewsletterWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsletterListRelationFilterImplCopyWith<$Res>
    implements $NewsletterListRelationFilterCopyWith<$Res> {
  factory _$$NewsletterListRelationFilterImplCopyWith(
          _$NewsletterListRelationFilterImpl value,
          $Res Function(_$NewsletterListRelationFilterImpl) then) =
      __$$NewsletterListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NewsletterWhereInput? some,
      NewsletterWhereInput? every,
      NewsletterWhereInput? none});

  @override
  $NewsletterWhereInputCopyWith<$Res>? get some;
  @override
  $NewsletterWhereInputCopyWith<$Res>? get every;
  @override
  $NewsletterWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$NewsletterListRelationFilterImplCopyWithImpl<$Res>
    extends _$NewsletterListRelationFilterCopyWithImpl<$Res,
        _$NewsletterListRelationFilterImpl>
    implements _$$NewsletterListRelationFilterImplCopyWith<$Res> {
  __$$NewsletterListRelationFilterImplCopyWithImpl(
      _$NewsletterListRelationFilterImpl _value,
      $Res Function(_$NewsletterListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsletterListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$NewsletterListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as NewsletterWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as NewsletterWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as NewsletterWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsletterListRelationFilterImpl
    implements _NewsletterListRelationFilter {
  const _$NewsletterListRelationFilterImpl({this.some, this.every, this.none});

  factory _$NewsletterListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NewsletterListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final NewsletterWhereInput? some;

  /// All related records match
  @override
  final NewsletterWhereInput? every;

  /// No related records match
  @override
  final NewsletterWhereInput? none;

  @override
  String toString() {
    return 'NewsletterListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsletterListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of NewsletterListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsletterListRelationFilterImplCopyWith<
          _$NewsletterListRelationFilterImpl>
      get copyWith => __$$NewsletterListRelationFilterImplCopyWithImpl<
          _$NewsletterListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsletterListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _NewsletterListRelationFilter
    implements NewsletterListRelationFilter {
  const factory _NewsletterListRelationFilter(
      {final NewsletterWhereInput? some,
      final NewsletterWhereInput? every,
      final NewsletterWhereInput? none}) = _$NewsletterListRelationFilterImpl;

  factory _NewsletterListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$NewsletterListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  NewsletterWhereInput? get some;

  /// All related records match
  @override
  NewsletterWhereInput? get every;

  /// No related records match
  @override
  NewsletterWhereInput? get none;

  /// Create a copy of NewsletterListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsletterListRelationFilterImplCopyWith<
          _$NewsletterListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NewsletterRelationFilter _$NewsletterRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _NewsletterRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$NewsletterRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  NewsletterWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  NewsletterWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this NewsletterRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsletterRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsletterRelationFilterCopyWith<NewsletterRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsletterRelationFilterCopyWith<$Res> {
  factory $NewsletterRelationFilterCopyWith(NewsletterRelationFilter value,
          $Res Function(NewsletterRelationFilter) then) =
      _$NewsletterRelationFilterCopyWithImpl<$Res, NewsletterRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') NewsletterWhereInput? is_,
      NewsletterWhereInput? isNot});

  $NewsletterWhereInputCopyWith<$Res>? get is_;
  $NewsletterWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$NewsletterRelationFilterCopyWithImpl<$Res,
        $Val extends NewsletterRelationFilter>
    implements $NewsletterRelationFilterCopyWith<$Res> {
  _$NewsletterRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsletterRelationFilter
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
              as NewsletterWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as NewsletterWhereInput?,
    ) as $Val);
  }

  /// Create a copy of NewsletterRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewsletterWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $NewsletterWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of NewsletterRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewsletterWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $NewsletterWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsletterRelationFilterImplCopyWith<$Res>
    implements $NewsletterRelationFilterCopyWith<$Res> {
  factory _$$NewsletterRelationFilterImplCopyWith(
          _$NewsletterRelationFilterImpl value,
          $Res Function(_$NewsletterRelationFilterImpl) then) =
      __$$NewsletterRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') NewsletterWhereInput? is_,
      NewsletterWhereInput? isNot});

  @override
  $NewsletterWhereInputCopyWith<$Res>? get is_;
  @override
  $NewsletterWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$NewsletterRelationFilterImplCopyWithImpl<$Res>
    extends _$NewsletterRelationFilterCopyWithImpl<$Res,
        _$NewsletterRelationFilterImpl>
    implements _$$NewsletterRelationFilterImplCopyWith<$Res> {
  __$$NewsletterRelationFilterImplCopyWithImpl(
      _$NewsletterRelationFilterImpl _value,
      $Res Function(_$NewsletterRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsletterRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$NewsletterRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as NewsletterWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as NewsletterWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsletterRelationFilterImpl implements _NewsletterRelationFilter {
  const _$NewsletterRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$NewsletterRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsletterRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final NewsletterWhereInput? is_;

  /// Related record does not match
  @override
  final NewsletterWhereInput? isNot;

  @override
  String toString() {
    return 'NewsletterRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsletterRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of NewsletterRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsletterRelationFilterImplCopyWith<_$NewsletterRelationFilterImpl>
      get copyWith => __$$NewsletterRelationFilterImplCopyWithImpl<
          _$NewsletterRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsletterRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _NewsletterRelationFilter implements NewsletterRelationFilter {
  const factory _NewsletterRelationFilter(
      {@JsonKey(name: 'is') final NewsletterWhereInput? is_,
      final NewsletterWhereInput? isNot}) = _$NewsletterRelationFilterImpl;

  factory _NewsletterRelationFilter.fromJson(Map<String, dynamic> json) =
      _$NewsletterRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  NewsletterWhereInput? get is_;

  /// Related record does not match
  @override
  NewsletterWhereInput? get isNot;

  /// Create a copy of NewsletterRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsletterRelationFilterImplCopyWith<_$NewsletterRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NewsletterOrderByInput _$NewsletterOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _NewsletterOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$NewsletterOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get email => throw _privateConstructorUsedError;
  SortOrder? get unsubscribed => throw _privateConstructorUsedError;
  SortOrder? get unsubscribedAt => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this NewsletterOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsletterOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsletterOrderByInputCopyWith<NewsletterOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsletterOrderByInputCopyWith<$Res> {
  factory $NewsletterOrderByInputCopyWith(NewsletterOrderByInput value,
          $Res Function(NewsletterOrderByInput) then) =
      _$NewsletterOrderByInputCopyWithImpl<$Res, NewsletterOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? email,
      SortOrder? unsubscribed,
      SortOrder? unsubscribedAt,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$NewsletterOrderByInputCopyWithImpl<$Res,
        $Val extends NewsletterOrderByInput>
    implements $NewsletterOrderByInputCopyWith<$Res> {
  _$NewsletterOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsletterOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? unsubscribed = freezed,
    Object? unsubscribedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      unsubscribed: freezed == unsubscribed
          ? _value.unsubscribed
          : unsubscribed // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      unsubscribedAt: freezed == unsubscribedAt
          ? _value.unsubscribedAt
          : unsubscribedAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$$NewsletterOrderByInputImplCopyWith<$Res>
    implements $NewsletterOrderByInputCopyWith<$Res> {
  factory _$$NewsletterOrderByInputImplCopyWith(
          _$NewsletterOrderByInputImpl value,
          $Res Function(_$NewsletterOrderByInputImpl) then) =
      __$$NewsletterOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? email,
      SortOrder? unsubscribed,
      SortOrder? unsubscribedAt,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$NewsletterOrderByInputImplCopyWithImpl<$Res>
    extends _$NewsletterOrderByInputCopyWithImpl<$Res,
        _$NewsletterOrderByInputImpl>
    implements _$$NewsletterOrderByInputImplCopyWith<$Res> {
  __$$NewsletterOrderByInputImplCopyWithImpl(
      _$NewsletterOrderByInputImpl _value,
      $Res Function(_$NewsletterOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsletterOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? unsubscribed = freezed,
    Object? unsubscribedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$NewsletterOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      unsubscribed: freezed == unsubscribed
          ? _value.unsubscribed
          : unsubscribed // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      unsubscribedAt: freezed == unsubscribedAt
          ? _value.unsubscribedAt
          : unsubscribedAt // ignore: cast_nullable_to_non_nullable
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
class _$NewsletterOrderByInputImpl implements _NewsletterOrderByInput {
  const _$NewsletterOrderByInputImpl(
      {this.id,
      this.email,
      this.unsubscribed,
      this.unsubscribedAt,
      this.createdAt,
      this.updatedAt});

  factory _$NewsletterOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsletterOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? email;
  @override
  final SortOrder? unsubscribed;
  @override
  final SortOrder? unsubscribedAt;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'NewsletterOrderByInput(id: $id, email: $email, unsubscribed: $unsubscribed, unsubscribedAt: $unsubscribedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsletterOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.unsubscribed, unsubscribed) ||
                other.unsubscribed == unsubscribed) &&
            (identical(other.unsubscribedAt, unsubscribedAt) ||
                other.unsubscribedAt == unsubscribedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, unsubscribed,
      unsubscribedAt, createdAt, updatedAt);

  /// Create a copy of NewsletterOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsletterOrderByInputImplCopyWith<_$NewsletterOrderByInputImpl>
      get copyWith => __$$NewsletterOrderByInputImplCopyWithImpl<
          _$NewsletterOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsletterOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _NewsletterOrderByInput implements NewsletterOrderByInput {
  const factory _NewsletterOrderByInput(
      {final SortOrder? id,
      final SortOrder? email,
      final SortOrder? unsubscribed,
      final SortOrder? unsubscribedAt,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$NewsletterOrderByInputImpl;

  factory _NewsletterOrderByInput.fromJson(Map<String, dynamic> json) =
      _$NewsletterOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get email;
  @override
  SortOrder? get unsubscribed;
  @override
  SortOrder? get unsubscribedAt;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of NewsletterOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsletterOrderByInputImplCopyWith<_$NewsletterOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
