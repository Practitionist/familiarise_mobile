// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Verification _$VerificationFromJson(Map<String, dynamic> json) {
  return _Verification.fromJson(json);
}

/// @nodoc
mixin _$Verification {
  String get id => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Verification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Verification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationCopyWith<Verification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationCopyWith<$Res> {
  factory $VerificationCopyWith(
          Verification value, $Res Function(Verification) then) =
      _$VerificationCopyWithImpl<$Res, Verification>;
  @useResult
  $Res call(
      {String id,
      String identifier,
      String value,
      DateTime expiresAt,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$VerificationCopyWithImpl<$Res, $Val extends Verification>
    implements $VerificationCopyWith<$Res> {
  _$VerificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Verification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? identifier = null,
    Object? value = null,
    Object? expiresAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$VerificationImplCopyWith<$Res>
    implements $VerificationCopyWith<$Res> {
  factory _$$VerificationImplCopyWith(
          _$VerificationImpl value, $Res Function(_$VerificationImpl) then) =
      __$$VerificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String identifier,
      String value,
      DateTime expiresAt,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$VerificationImplCopyWithImpl<$Res>
    extends _$VerificationCopyWithImpl<$Res, _$VerificationImpl>
    implements _$$VerificationImplCopyWith<$Res> {
  __$$VerificationImplCopyWithImpl(
      _$VerificationImpl _value, $Res Function(_$VerificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Verification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? identifier = null,
    Object? value = null,
    Object? expiresAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$VerificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
class _$VerificationImpl implements _Verification {
  const _$VerificationImpl(
      {required this.id,
      required this.identifier,
      required this.value,
      required this.expiresAt,
      required this.createdAt,
      required this.updatedAt});

  factory _$VerificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationImplFromJson(json);

  @override
  final String id;
  @override
  final String identifier;
  @override
  final String value;
  @override
  final DateTime expiresAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Verification(id: $id, identifier: $identifier, value: $value, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, identifier, value, expiresAt, createdAt, updatedAt);

  /// Create a copy of Verification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationImplCopyWith<_$VerificationImpl> get copyWith =>
      __$$VerificationImplCopyWithImpl<_$VerificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationImplToJson(
      this,
    );
  }
}

abstract class _Verification implements Verification {
  const factory _Verification(
      {required final String id,
      required final String identifier,
      required final String value,
      required final DateTime expiresAt,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$VerificationImpl;

  factory _Verification.fromJson(Map<String, dynamic> json) =
      _$VerificationImpl.fromJson;

  @override
  String get id;
  @override
  String get identifier;
  @override
  String get value;
  @override
  DateTime get expiresAt;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Verification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationImplCopyWith<_$VerificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateVerificationInput _$CreateVerificationInputFromJson(
    Map<String, dynamic> json) {
  return _CreateVerificationInput.fromJson(json);
}

/// @nodoc
mixin _$CreateVerificationInput {
  String get identifier => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;

  /// Serializes this CreateVerificationInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateVerificationInputCopyWith<CreateVerificationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateVerificationInputCopyWith<$Res> {
  factory $CreateVerificationInputCopyWith(CreateVerificationInput value,
          $Res Function(CreateVerificationInput) then) =
      _$CreateVerificationInputCopyWithImpl<$Res, CreateVerificationInput>;
  @useResult
  $Res call({String identifier, String value, DateTime expiresAt});
}

/// @nodoc
class _$CreateVerificationInputCopyWithImpl<$Res,
        $Val extends CreateVerificationInput>
    implements $CreateVerificationInputCopyWith<$Res> {
  _$CreateVerificationInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? value = null,
    Object? expiresAt = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateVerificationInputImplCopyWith<$Res>
    implements $CreateVerificationInputCopyWith<$Res> {
  factory _$$CreateVerificationInputImplCopyWith(
          _$CreateVerificationInputImpl value,
          $Res Function(_$CreateVerificationInputImpl) then) =
      __$$CreateVerificationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String identifier, String value, DateTime expiresAt});
}

/// @nodoc
class __$$CreateVerificationInputImplCopyWithImpl<$Res>
    extends _$CreateVerificationInputCopyWithImpl<$Res,
        _$CreateVerificationInputImpl>
    implements _$$CreateVerificationInputImplCopyWith<$Res> {
  __$$CreateVerificationInputImplCopyWithImpl(
      _$CreateVerificationInputImpl _value,
      $Res Function(_$CreateVerificationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? value = null,
    Object? expiresAt = null,
  }) {
    return _then(_$CreateVerificationInputImpl(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateVerificationInputImpl implements _CreateVerificationInput {
  const _$CreateVerificationInputImpl(
      {required this.identifier, required this.value, required this.expiresAt});

  factory _$CreateVerificationInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateVerificationInputImplFromJson(json);

  @override
  final String identifier;
  @override
  final String value;
  @override
  final DateTime expiresAt;

  @override
  String toString() {
    return 'CreateVerificationInput(identifier: $identifier, value: $value, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateVerificationInputImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, value, expiresAt);

  /// Create a copy of CreateVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateVerificationInputImplCopyWith<_$CreateVerificationInputImpl>
      get copyWith => __$$CreateVerificationInputImplCopyWithImpl<
          _$CreateVerificationInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateVerificationInputImplToJson(
      this,
    );
  }
}

abstract class _CreateVerificationInput implements CreateVerificationInput {
  const factory _CreateVerificationInput(
      {required final String identifier,
      required final String value,
      required final DateTime expiresAt}) = _$CreateVerificationInputImpl;

  factory _CreateVerificationInput.fromJson(Map<String, dynamic> json) =
      _$CreateVerificationInputImpl.fromJson;

  @override
  String get identifier;
  @override
  String get value;
  @override
  DateTime get expiresAt;

  /// Create a copy of CreateVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateVerificationInputImplCopyWith<_$CreateVerificationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateVerificationInput _$UpdateVerificationInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateVerificationInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateVerificationInput {
  String? get identifier => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;

  /// Serializes this UpdateVerificationInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateVerificationInputCopyWith<UpdateVerificationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateVerificationInputCopyWith<$Res> {
  factory $UpdateVerificationInputCopyWith(UpdateVerificationInput value,
          $Res Function(UpdateVerificationInput) then) =
      _$UpdateVerificationInputCopyWithImpl<$Res, UpdateVerificationInput>;
  @useResult
  $Res call({String? identifier, String? value, DateTime? expiresAt});
}

/// @nodoc
class _$UpdateVerificationInputCopyWithImpl<$Res,
        $Val extends UpdateVerificationInput>
    implements $UpdateVerificationInputCopyWith<$Res> {
  _$UpdateVerificationInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? value = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateVerificationInputImplCopyWith<$Res>
    implements $UpdateVerificationInputCopyWith<$Res> {
  factory _$$UpdateVerificationInputImplCopyWith(
          _$UpdateVerificationInputImpl value,
          $Res Function(_$UpdateVerificationInputImpl) then) =
      __$$UpdateVerificationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? identifier, String? value, DateTime? expiresAt});
}

/// @nodoc
class __$$UpdateVerificationInputImplCopyWithImpl<$Res>
    extends _$UpdateVerificationInputCopyWithImpl<$Res,
        _$UpdateVerificationInputImpl>
    implements _$$UpdateVerificationInputImplCopyWith<$Res> {
  __$$UpdateVerificationInputImplCopyWithImpl(
      _$UpdateVerificationInputImpl _value,
      $Res Function(_$UpdateVerificationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? value = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_$UpdateVerificationInputImpl(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateVerificationInputImpl implements _UpdateVerificationInput {
  const _$UpdateVerificationInputImpl(
      {this.identifier, this.value, this.expiresAt});

  factory _$UpdateVerificationInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateVerificationInputImplFromJson(json);

  @override
  final String? identifier;
  @override
  final String? value;
  @override
  final DateTime? expiresAt;

  @override
  String toString() {
    return 'UpdateVerificationInput(identifier: $identifier, value: $value, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateVerificationInputImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, value, expiresAt);

  /// Create a copy of UpdateVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateVerificationInputImplCopyWith<_$UpdateVerificationInputImpl>
      get copyWith => __$$UpdateVerificationInputImplCopyWithImpl<
          _$UpdateVerificationInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateVerificationInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateVerificationInput implements UpdateVerificationInput {
  const factory _UpdateVerificationInput(
      {final String? identifier,
      final String? value,
      final DateTime? expiresAt}) = _$UpdateVerificationInputImpl;

  factory _UpdateVerificationInput.fromJson(Map<String, dynamic> json) =
      _$UpdateVerificationInputImpl.fromJson;

  @override
  String? get identifier;
  @override
  String? get value;
  @override
  DateTime? get expiresAt;

  /// Create a copy of UpdateVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateVerificationInputImplCopyWith<_$UpdateVerificationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerificationWhereUniqueInput _$VerificationWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _VerificationWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$VerificationWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this VerificationWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerificationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationWhereUniqueInputCopyWith<VerificationWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationWhereUniqueInputCopyWith<$Res> {
  factory $VerificationWhereUniqueInputCopyWith(
          VerificationWhereUniqueInput value,
          $Res Function(VerificationWhereUniqueInput) then) =
      _$VerificationWhereUniqueInputCopyWithImpl<$Res,
          VerificationWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$VerificationWhereUniqueInputCopyWithImpl<$Res,
        $Val extends VerificationWhereUniqueInput>
    implements $VerificationWhereUniqueInputCopyWith<$Res> {
  _$VerificationWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationWhereUniqueInput
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
abstract class _$$VerificationWhereUniqueInputImplCopyWith<$Res>
    implements $VerificationWhereUniqueInputCopyWith<$Res> {
  factory _$$VerificationWhereUniqueInputImplCopyWith(
          _$VerificationWhereUniqueInputImpl value,
          $Res Function(_$VerificationWhereUniqueInputImpl) then) =
      __$$VerificationWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$VerificationWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$VerificationWhereUniqueInputCopyWithImpl<$Res,
        _$VerificationWhereUniqueInputImpl>
    implements _$$VerificationWhereUniqueInputImplCopyWith<$Res> {
  __$$VerificationWhereUniqueInputImplCopyWithImpl(
      _$VerificationWhereUniqueInputImpl _value,
      $Res Function(_$VerificationWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$VerificationWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationWhereUniqueInputImpl
    implements _VerificationWhereUniqueInput {
  const _$VerificationWhereUniqueInputImpl({this.id});

  factory _$VerificationWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VerificationWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'VerificationWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of VerificationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationWhereUniqueInputImplCopyWith<
          _$VerificationWhereUniqueInputImpl>
      get copyWith => __$$VerificationWhereUniqueInputImplCopyWithImpl<
          _$VerificationWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _VerificationWhereUniqueInput
    implements VerificationWhereUniqueInput {
  const factory _VerificationWhereUniqueInput({final String? id}) =
      _$VerificationWhereUniqueInputImpl;

  factory _VerificationWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$VerificationWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of VerificationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationWhereUniqueInputImplCopyWith<
          _$VerificationWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerificationWhereInput _$VerificationWhereInputFromJson(
    Map<String, dynamic> json) {
  return _VerificationWhereInput.fromJson(json);
}

/// @nodoc
mixin _$VerificationWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get identifier => throw _privateConstructorUsedError;
  StringFilter? get value => throw _privateConstructorUsedError;
  DateTimeFilter? get expiresAt => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<VerificationWhereInput>? get AND => throw _privateConstructorUsedError;
  List<VerificationWhereInput>? get OR => throw _privateConstructorUsedError;
  VerificationWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this VerificationWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationWhereInputCopyWith<VerificationWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationWhereInputCopyWith<$Res> {
  factory $VerificationWhereInputCopyWith(VerificationWhereInput value,
          $Res Function(VerificationWhereInput) then) =
      _$VerificationWhereInputCopyWithImpl<$Res, VerificationWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? identifier,
      StringFilter? value,
      DateTimeFilter? expiresAt,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<VerificationWhereInput>? AND,
      List<VerificationWhereInput>? OR,
      VerificationWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get identifier;
  $StringFilterCopyWith<$Res>? get value;
  $DateTimeFilterCopyWith<$Res>? get expiresAt;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $VerificationWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$VerificationWhereInputCopyWithImpl<$Res,
        $Val extends VerificationWhereInput>
    implements $VerificationWhereInputCopyWith<$Res> {
  _$VerificationWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? value = freezed,
    Object? expiresAt = freezed,
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
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
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
              as List<VerificationWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<VerificationWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as VerificationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of VerificationWhereInput
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

  /// Create a copy of VerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get identifier {
    if (_value.identifier == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.identifier!, (value) {
      return _then(_value.copyWith(identifier: value) as $Val);
    });
  }

  /// Create a copy of VerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get value {
    if (_value.value == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.value!, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }

  /// Create a copy of VerificationWhereInput
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

  /// Create a copy of VerificationWhereInput
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

  /// Create a copy of VerificationWhereInput
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

  /// Create a copy of VerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerificationWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $VerificationWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerificationWhereInputImplCopyWith<$Res>
    implements $VerificationWhereInputCopyWith<$Res> {
  factory _$$VerificationWhereInputImplCopyWith(
          _$VerificationWhereInputImpl value,
          $Res Function(_$VerificationWhereInputImpl) then) =
      __$$VerificationWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? identifier,
      StringFilter? value,
      DateTimeFilter? expiresAt,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<VerificationWhereInput>? AND,
      List<VerificationWhereInput>? OR,
      VerificationWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get identifier;
  @override
  $StringFilterCopyWith<$Res>? get value;
  @override
  $DateTimeFilterCopyWith<$Res>? get expiresAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $VerificationWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$VerificationWhereInputImplCopyWithImpl<$Res>
    extends _$VerificationWhereInputCopyWithImpl<$Res,
        _$VerificationWhereInputImpl>
    implements _$$VerificationWhereInputImplCopyWith<$Res> {
  __$$VerificationWhereInputImplCopyWithImpl(
      _$VerificationWhereInputImpl _value,
      $Res Function(_$VerificationWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? value = freezed,
    Object? expiresAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$VerificationWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
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
              as List<VerificationWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<VerificationWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as VerificationWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VerificationWhereInputImpl implements _VerificationWhereInput {
  const _$VerificationWhereInputImpl(
      {this.id,
      this.identifier,
      this.value,
      this.expiresAt,
      this.createdAt,
      this.updatedAt,
      final List<VerificationWhereInput>? AND,
      final List<VerificationWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$VerificationWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? identifier;
  @override
  final StringFilter? value;
  @override
  final DateTimeFilter? expiresAt;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<VerificationWhereInput>? _AND;
  @override
  List<VerificationWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VerificationWhereInput>? _OR;
  @override
  List<VerificationWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final VerificationWhereInput? NOT;

  @override
  String toString() {
    return 'VerificationWhereInput(id: $id, identifier: $identifier, value: $value, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
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
      identifier,
      value,
      expiresAt,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of VerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationWhereInputImplCopyWith<_$VerificationWhereInputImpl>
      get copyWith => __$$VerificationWhereInputImplCopyWithImpl<
          _$VerificationWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationWhereInputImplToJson(
      this,
    );
  }
}

abstract class _VerificationWhereInput implements VerificationWhereInput {
  const factory _VerificationWhereInput(
      {final StringFilter? id,
      final StringFilter? identifier,
      final StringFilter? value,
      final DateTimeFilter? expiresAt,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<VerificationWhereInput>? AND,
      final List<VerificationWhereInput>? OR,
      final VerificationWhereInput? NOT}) = _$VerificationWhereInputImpl;

  factory _VerificationWhereInput.fromJson(Map<String, dynamic> json) =
      _$VerificationWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get identifier;
  @override
  StringFilter? get value;
  @override
  DateTimeFilter? get expiresAt;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<VerificationWhereInput>? get AND;
  @override
  List<VerificationWhereInput>? get OR;
  @override
  VerificationWhereInput? get NOT;

  /// Create a copy of VerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationWhereInputImplCopyWith<_$VerificationWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerificationListRelationFilter _$VerificationListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _VerificationListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$VerificationListRelationFilter {
  /// At least one related record matches
  VerificationWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  VerificationWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  VerificationWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this VerificationListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationListRelationFilterCopyWith<VerificationListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationListRelationFilterCopyWith<$Res> {
  factory $VerificationListRelationFilterCopyWith(
          VerificationListRelationFilter value,
          $Res Function(VerificationListRelationFilter) then) =
      _$VerificationListRelationFilterCopyWithImpl<$Res,
          VerificationListRelationFilter>;
  @useResult
  $Res call(
      {VerificationWhereInput? some,
      VerificationWhereInput? every,
      VerificationWhereInput? none});

  $VerificationWhereInputCopyWith<$Res>? get some;
  $VerificationWhereInputCopyWith<$Res>? get every;
  $VerificationWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$VerificationListRelationFilterCopyWithImpl<$Res,
        $Val extends VerificationListRelationFilter>
    implements $VerificationListRelationFilterCopyWith<$Res> {
  _$VerificationListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationListRelationFilter
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
              as VerificationWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as VerificationWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as VerificationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of VerificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerificationWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $VerificationWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of VerificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerificationWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $VerificationWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of VerificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerificationWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $VerificationWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerificationListRelationFilterImplCopyWith<$Res>
    implements $VerificationListRelationFilterCopyWith<$Res> {
  factory _$$VerificationListRelationFilterImplCopyWith(
          _$VerificationListRelationFilterImpl value,
          $Res Function(_$VerificationListRelationFilterImpl) then) =
      __$$VerificationListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VerificationWhereInput? some,
      VerificationWhereInput? every,
      VerificationWhereInput? none});

  @override
  $VerificationWhereInputCopyWith<$Res>? get some;
  @override
  $VerificationWhereInputCopyWith<$Res>? get every;
  @override
  $VerificationWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$VerificationListRelationFilterImplCopyWithImpl<$Res>
    extends _$VerificationListRelationFilterCopyWithImpl<$Res,
        _$VerificationListRelationFilterImpl>
    implements _$$VerificationListRelationFilterImplCopyWith<$Res> {
  __$$VerificationListRelationFilterImplCopyWithImpl(
      _$VerificationListRelationFilterImpl _value,
      $Res Function(_$VerificationListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$VerificationListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as VerificationWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as VerificationWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as VerificationWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationListRelationFilterImpl
    implements _VerificationListRelationFilter {
  const _$VerificationListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$VerificationListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VerificationListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final VerificationWhereInput? some;

  /// All related records match
  @override
  final VerificationWhereInput? every;

  /// No related records match
  @override
  final VerificationWhereInput? none;

  @override
  String toString() {
    return 'VerificationListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of VerificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationListRelationFilterImplCopyWith<
          _$VerificationListRelationFilterImpl>
      get copyWith => __$$VerificationListRelationFilterImplCopyWithImpl<
          _$VerificationListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _VerificationListRelationFilter
    implements VerificationListRelationFilter {
  const factory _VerificationListRelationFilter(
          {final VerificationWhereInput? some,
          final VerificationWhereInput? every,
          final VerificationWhereInput? none}) =
      _$VerificationListRelationFilterImpl;

  factory _VerificationListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$VerificationListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  VerificationWhereInput? get some;

  /// All related records match
  @override
  VerificationWhereInput? get every;

  /// No related records match
  @override
  VerificationWhereInput? get none;

  /// Create a copy of VerificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationListRelationFilterImplCopyWith<
          _$VerificationListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerificationRelationFilter _$VerificationRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _VerificationRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$VerificationRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  VerificationWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  VerificationWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this VerificationRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationRelationFilterCopyWith<VerificationRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationRelationFilterCopyWith<$Res> {
  factory $VerificationRelationFilterCopyWith(VerificationRelationFilter value,
          $Res Function(VerificationRelationFilter) then) =
      _$VerificationRelationFilterCopyWithImpl<$Res,
          VerificationRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') VerificationWhereInput? is_,
      VerificationWhereInput? isNot});

  $VerificationWhereInputCopyWith<$Res>? get is_;
  $VerificationWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$VerificationRelationFilterCopyWithImpl<$Res,
        $Val extends VerificationRelationFilter>
    implements $VerificationRelationFilterCopyWith<$Res> {
  _$VerificationRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationRelationFilter
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
              as VerificationWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as VerificationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of VerificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerificationWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $VerificationWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of VerificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerificationWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $VerificationWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerificationRelationFilterImplCopyWith<$Res>
    implements $VerificationRelationFilterCopyWith<$Res> {
  factory _$$VerificationRelationFilterImplCopyWith(
          _$VerificationRelationFilterImpl value,
          $Res Function(_$VerificationRelationFilterImpl) then) =
      __$$VerificationRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') VerificationWhereInput? is_,
      VerificationWhereInput? isNot});

  @override
  $VerificationWhereInputCopyWith<$Res>? get is_;
  @override
  $VerificationWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$VerificationRelationFilterImplCopyWithImpl<$Res>
    extends _$VerificationRelationFilterCopyWithImpl<$Res,
        _$VerificationRelationFilterImpl>
    implements _$$VerificationRelationFilterImplCopyWith<$Res> {
  __$$VerificationRelationFilterImplCopyWithImpl(
      _$VerificationRelationFilterImpl _value,
      $Res Function(_$VerificationRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$VerificationRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as VerificationWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as VerificationWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationRelationFilterImpl implements _VerificationRelationFilter {
  const _$VerificationRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$VerificationRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VerificationRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final VerificationWhereInput? is_;

  /// Related record does not match
  @override
  final VerificationWhereInput? isNot;

  @override
  String toString() {
    return 'VerificationRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of VerificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationRelationFilterImplCopyWith<_$VerificationRelationFilterImpl>
      get copyWith => __$$VerificationRelationFilterImplCopyWithImpl<
          _$VerificationRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _VerificationRelationFilter
    implements VerificationRelationFilter {
  const factory _VerificationRelationFilter(
      {@JsonKey(name: 'is') final VerificationWhereInput? is_,
      final VerificationWhereInput? isNot}) = _$VerificationRelationFilterImpl;

  factory _VerificationRelationFilter.fromJson(Map<String, dynamic> json) =
      _$VerificationRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  VerificationWhereInput? get is_;

  /// Related record does not match
  @override
  VerificationWhereInput? get isNot;

  /// Create a copy of VerificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationRelationFilterImplCopyWith<_$VerificationRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerificationOrderByInput _$VerificationOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _VerificationOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$VerificationOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get identifier => throw _privateConstructorUsedError;
  SortOrder? get value => throw _privateConstructorUsedError;
  SortOrder? get expiresAt => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this VerificationOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerificationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationOrderByInputCopyWith<VerificationOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationOrderByInputCopyWith<$Res> {
  factory $VerificationOrderByInputCopyWith(VerificationOrderByInput value,
          $Res Function(VerificationOrderByInput) then) =
      _$VerificationOrderByInputCopyWithImpl<$Res, VerificationOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? identifier,
      SortOrder? value,
      SortOrder? expiresAt,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$VerificationOrderByInputCopyWithImpl<$Res,
        $Val extends VerificationOrderByInput>
    implements $VerificationOrderByInputCopyWith<$Res> {
  _$VerificationOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? value = freezed,
    Object? expiresAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$$VerificationOrderByInputImplCopyWith<$Res>
    implements $VerificationOrderByInputCopyWith<$Res> {
  factory _$$VerificationOrderByInputImplCopyWith(
          _$VerificationOrderByInputImpl value,
          $Res Function(_$VerificationOrderByInputImpl) then) =
      __$$VerificationOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? identifier,
      SortOrder? value,
      SortOrder? expiresAt,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$VerificationOrderByInputImplCopyWithImpl<$Res>
    extends _$VerificationOrderByInputCopyWithImpl<$Res,
        _$VerificationOrderByInputImpl>
    implements _$$VerificationOrderByInputImplCopyWith<$Res> {
  __$$VerificationOrderByInputImplCopyWithImpl(
      _$VerificationOrderByInputImpl _value,
      $Res Function(_$VerificationOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? value = freezed,
    Object? expiresAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$VerificationOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
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
class _$VerificationOrderByInputImpl implements _VerificationOrderByInput {
  const _$VerificationOrderByInputImpl(
      {this.id,
      this.identifier,
      this.value,
      this.expiresAt,
      this.createdAt,
      this.updatedAt});

  factory _$VerificationOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? identifier;
  @override
  final SortOrder? value;
  @override
  final SortOrder? expiresAt;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'VerificationOrderByInput(id: $id, identifier: $identifier, value: $value, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, identifier, value, expiresAt, createdAt, updatedAt);

  /// Create a copy of VerificationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationOrderByInputImplCopyWith<_$VerificationOrderByInputImpl>
      get copyWith => __$$VerificationOrderByInputImplCopyWithImpl<
          _$VerificationOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _VerificationOrderByInput implements VerificationOrderByInput {
  const factory _VerificationOrderByInput(
      {final SortOrder? id,
      final SortOrder? identifier,
      final SortOrder? value,
      final SortOrder? expiresAt,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$VerificationOrderByInputImpl;

  factory _VerificationOrderByInput.fromJson(Map<String, dynamic> json) =
      _$VerificationOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get identifier;
  @override
  SortOrder? get value;
  @override
  SortOrder? get expiresAt;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of VerificationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationOrderByInputImplCopyWith<_$VerificationOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
