// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiscountCode _$DiscountCodeFromJson(Map<String, dynamic> json) {
  return _DiscountCode.fromJson(json);
}

/// @nodoc
mixin _$DiscountCode {
  String get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DiscountType get discountType => throw _privateConstructorUsedError;
  int get discountValue => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  int? get maxUses => throw _privateConstructorUsedError;
  int get currentUses => throw _privateConstructorUsedError;
  int? get maxDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'Payment')
  List<Payment> get payment => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this DiscountCode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountCodeCopyWith<DiscountCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCodeCopyWith<$Res> {
  factory $DiscountCodeCopyWith(
          DiscountCode value, $Res Function(DiscountCode) then) =
      _$DiscountCodeCopyWithImpl<$Res, DiscountCode>;
  @useResult
  $Res call(
      {String id,
      String code,
      String description,
      DiscountType discountType,
      int discountValue,
      String currency,
      bool isActive,
      DateTime? expiresAt,
      int? maxUses,
      int currentUses,
      int? maxDiscount,
      @JsonKey(name: 'Payment') List<Payment> payment,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$DiscountCodeCopyWithImpl<$Res, $Val extends DiscountCode>
    implements $DiscountCodeCopyWith<$Res> {
  _$DiscountCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? description = null,
    Object? discountType = null,
    Object? discountValue = null,
    Object? currency = null,
    Object? isActive = null,
    Object? expiresAt = freezed,
    Object? maxUses = freezed,
    Object? currentUses = null,
    Object? maxDiscount = freezed,
    Object? payment = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as DiscountType,
      discountValue: null == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxUses: freezed == maxUses
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as int?,
      currentUses: null == currentUses
          ? _value.currentUses
          : currentUses // ignore: cast_nullable_to_non_nullable
              as int,
      maxDiscount: freezed == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
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
abstract class _$$DiscountCodeImplCopyWith<$Res>
    implements $DiscountCodeCopyWith<$Res> {
  factory _$$DiscountCodeImplCopyWith(
          _$DiscountCodeImpl value, $Res Function(_$DiscountCodeImpl) then) =
      __$$DiscountCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String code,
      String description,
      DiscountType discountType,
      int discountValue,
      String currency,
      bool isActive,
      DateTime? expiresAt,
      int? maxUses,
      int currentUses,
      int? maxDiscount,
      @JsonKey(name: 'Payment') List<Payment> payment,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$DiscountCodeImplCopyWithImpl<$Res>
    extends _$DiscountCodeCopyWithImpl<$Res, _$DiscountCodeImpl>
    implements _$$DiscountCodeImplCopyWith<$Res> {
  __$$DiscountCodeImplCopyWithImpl(
      _$DiscountCodeImpl _value, $Res Function(_$DiscountCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? description = null,
    Object? discountType = null,
    Object? discountValue = null,
    Object? currency = null,
    Object? isActive = null,
    Object? expiresAt = freezed,
    Object? maxUses = freezed,
    Object? currentUses = null,
    Object? maxDiscount = freezed,
    Object? payment = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$DiscountCodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as DiscountType,
      discountValue: null == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxUses: freezed == maxUses
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as int?,
      currentUses: null == currentUses
          ? _value.currentUses
          : currentUses // ignore: cast_nullable_to_non_nullable
              as int,
      maxDiscount: freezed == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      payment: null == payment
          ? _value._payment
          : payment // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
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
class _$DiscountCodeImpl implements _DiscountCode {
  const _$DiscountCodeImpl(
      {required this.id,
      required this.code,
      required this.description,
      required this.discountType,
      required this.discountValue,
      this.currency = "INR",
      this.isActive = true,
      this.expiresAt,
      this.maxUses,
      this.currentUses = 0,
      this.maxDiscount,
      @JsonKey(name: 'Payment') required final List<Payment> payment,
      required this.createdAt,
      required this.updatedAt})
      : _payment = payment;

  factory _$DiscountCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountCodeImplFromJson(json);

  @override
  final String id;
  @override
  final String code;
  @override
  final String description;
  @override
  final DiscountType discountType;
  @override
  final int discountValue;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final DateTime? expiresAt;
  @override
  final int? maxUses;
  @override
  @JsonKey()
  final int currentUses;
  @override
  final int? maxDiscount;
  final List<Payment> _payment;
  @override
  @JsonKey(name: 'Payment')
  List<Payment> get payment {
    if (_payment is EqualUnmodifiableListView) return _payment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payment);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'DiscountCode(id: $id, code: $code, description: $description, discountType: $discountType, discountValue: $discountValue, currency: $currency, isActive: $isActive, expiresAt: $expiresAt, maxUses: $maxUses, currentUses: $currentUses, maxDiscount: $maxDiscount, payment: $payment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountCodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.maxUses, maxUses) || other.maxUses == maxUses) &&
            (identical(other.currentUses, currentUses) ||
                other.currentUses == currentUses) &&
            (identical(other.maxDiscount, maxDiscount) ||
                other.maxDiscount == maxDiscount) &&
            const DeepCollectionEquality().equals(other._payment, _payment) &&
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
      code,
      description,
      discountType,
      discountValue,
      currency,
      isActive,
      expiresAt,
      maxUses,
      currentUses,
      maxDiscount,
      const DeepCollectionEquality().hash(_payment),
      createdAt,
      updatedAt);

  /// Create a copy of DiscountCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountCodeImplCopyWith<_$DiscountCodeImpl> get copyWith =>
      __$$DiscountCodeImplCopyWithImpl<_$DiscountCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountCodeImplToJson(
      this,
    );
  }
}

abstract class _DiscountCode implements DiscountCode {
  const factory _DiscountCode(
      {required final String id,
      required final String code,
      required final String description,
      required final DiscountType discountType,
      required final int discountValue,
      final String currency,
      final bool isActive,
      final DateTime? expiresAt,
      final int? maxUses,
      final int currentUses,
      final int? maxDiscount,
      @JsonKey(name: 'Payment') required final List<Payment> payment,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$DiscountCodeImpl;

  factory _DiscountCode.fromJson(Map<String, dynamic> json) =
      _$DiscountCodeImpl.fromJson;

  @override
  String get id;
  @override
  String get code;
  @override
  String get description;
  @override
  DiscountType get discountType;
  @override
  int get discountValue;
  @override
  String get currency;
  @override
  bool get isActive;
  @override
  DateTime? get expiresAt;
  @override
  int? get maxUses;
  @override
  int get currentUses;
  @override
  int? get maxDiscount;
  @override
  @JsonKey(name: 'Payment')
  List<Payment> get payment;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of DiscountCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountCodeImplCopyWith<_$DiscountCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateDiscountCodeInput _$CreateDiscountCodeInputFromJson(
    Map<String, dynamic> json) {
  return _CreateDiscountCodeInput.fromJson(json);
}

/// @nodoc
mixin _$CreateDiscountCodeInput {
  String get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DiscountType get discountType => throw _privateConstructorUsedError;
  int get discountValue => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  int? get maxUses => throw _privateConstructorUsedError;
  int? get currentUses => throw _privateConstructorUsedError;
  int? get maxDiscount => throw _privateConstructorUsedError;

  /// Serializes this CreateDiscountCodeInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateDiscountCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateDiscountCodeInputCopyWith<CreateDiscountCodeInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDiscountCodeInputCopyWith<$Res> {
  factory $CreateDiscountCodeInputCopyWith(CreateDiscountCodeInput value,
          $Res Function(CreateDiscountCodeInput) then) =
      _$CreateDiscountCodeInputCopyWithImpl<$Res, CreateDiscountCodeInput>;
  @useResult
  $Res call(
      {String code,
      String description,
      DiscountType discountType,
      int discountValue,
      String? currency,
      bool? isActive,
      DateTime? expiresAt,
      int? maxUses,
      int? currentUses,
      int? maxDiscount});
}

/// @nodoc
class _$CreateDiscountCodeInputCopyWithImpl<$Res,
        $Val extends CreateDiscountCodeInput>
    implements $CreateDiscountCodeInputCopyWith<$Res> {
  _$CreateDiscountCodeInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateDiscountCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
    Object? discountType = null,
    Object? discountValue = null,
    Object? currency = freezed,
    Object? isActive = freezed,
    Object? expiresAt = freezed,
    Object? maxUses = freezed,
    Object? currentUses = freezed,
    Object? maxDiscount = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as DiscountType,
      discountValue: null == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as int,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxUses: freezed == maxUses
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as int?,
      currentUses: freezed == currentUses
          ? _value.currentUses
          : currentUses // ignore: cast_nullable_to_non_nullable
              as int?,
      maxDiscount: freezed == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateDiscountCodeInputImplCopyWith<$Res>
    implements $CreateDiscountCodeInputCopyWith<$Res> {
  factory _$$CreateDiscountCodeInputImplCopyWith(
          _$CreateDiscountCodeInputImpl value,
          $Res Function(_$CreateDiscountCodeInputImpl) then) =
      __$$CreateDiscountCodeInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String description,
      DiscountType discountType,
      int discountValue,
      String? currency,
      bool? isActive,
      DateTime? expiresAt,
      int? maxUses,
      int? currentUses,
      int? maxDiscount});
}

/// @nodoc
class __$$CreateDiscountCodeInputImplCopyWithImpl<$Res>
    extends _$CreateDiscountCodeInputCopyWithImpl<$Res,
        _$CreateDiscountCodeInputImpl>
    implements _$$CreateDiscountCodeInputImplCopyWith<$Res> {
  __$$CreateDiscountCodeInputImplCopyWithImpl(
      _$CreateDiscountCodeInputImpl _value,
      $Res Function(_$CreateDiscountCodeInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateDiscountCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
    Object? discountType = null,
    Object? discountValue = null,
    Object? currency = freezed,
    Object? isActive = freezed,
    Object? expiresAt = freezed,
    Object? maxUses = freezed,
    Object? currentUses = freezed,
    Object? maxDiscount = freezed,
  }) {
    return _then(_$CreateDiscountCodeInputImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as DiscountType,
      discountValue: null == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as int,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxUses: freezed == maxUses
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as int?,
      currentUses: freezed == currentUses
          ? _value.currentUses
          : currentUses // ignore: cast_nullable_to_non_nullable
              as int?,
      maxDiscount: freezed == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateDiscountCodeInputImpl implements _CreateDiscountCodeInput {
  const _$CreateDiscountCodeInputImpl(
      {required this.code,
      required this.description,
      required this.discountType,
      required this.discountValue,
      this.currency = "INR",
      this.isActive = true,
      this.expiresAt,
      this.maxUses,
      this.currentUses = 0,
      this.maxDiscount});

  factory _$CreateDiscountCodeInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateDiscountCodeInputImplFromJson(json);

  @override
  final String code;
  @override
  final String description;
  @override
  final DiscountType discountType;
  @override
  final int discountValue;
  @override
  @JsonKey()
  final String? currency;
  @override
  @JsonKey()
  final bool? isActive;
  @override
  final DateTime? expiresAt;
  @override
  final int? maxUses;
  @override
  @JsonKey()
  final int? currentUses;
  @override
  final int? maxDiscount;

  @override
  String toString() {
    return 'CreateDiscountCodeInput(code: $code, description: $description, discountType: $discountType, discountValue: $discountValue, currency: $currency, isActive: $isActive, expiresAt: $expiresAt, maxUses: $maxUses, currentUses: $currentUses, maxDiscount: $maxDiscount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDiscountCodeInputImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.maxUses, maxUses) || other.maxUses == maxUses) &&
            (identical(other.currentUses, currentUses) ||
                other.currentUses == currentUses) &&
            (identical(other.maxDiscount, maxDiscount) ||
                other.maxDiscount == maxDiscount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      description,
      discountType,
      discountValue,
      currency,
      isActive,
      expiresAt,
      maxUses,
      currentUses,
      maxDiscount);

  /// Create a copy of CreateDiscountCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDiscountCodeInputImplCopyWith<_$CreateDiscountCodeInputImpl>
      get copyWith => __$$CreateDiscountCodeInputImplCopyWithImpl<
          _$CreateDiscountCodeInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateDiscountCodeInputImplToJson(
      this,
    );
  }
}

abstract class _CreateDiscountCodeInput implements CreateDiscountCodeInput {
  const factory _CreateDiscountCodeInput(
      {required final String code,
      required final String description,
      required final DiscountType discountType,
      required final int discountValue,
      final String? currency,
      final bool? isActive,
      final DateTime? expiresAt,
      final int? maxUses,
      final int? currentUses,
      final int? maxDiscount}) = _$CreateDiscountCodeInputImpl;

  factory _CreateDiscountCodeInput.fromJson(Map<String, dynamic> json) =
      _$CreateDiscountCodeInputImpl.fromJson;

  @override
  String get code;
  @override
  String get description;
  @override
  DiscountType get discountType;
  @override
  int get discountValue;
  @override
  String? get currency;
  @override
  bool? get isActive;
  @override
  DateTime? get expiresAt;
  @override
  int? get maxUses;
  @override
  int? get currentUses;
  @override
  int? get maxDiscount;

  /// Create a copy of CreateDiscountCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateDiscountCodeInputImplCopyWith<_$CreateDiscountCodeInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateDiscountCodeInput _$UpdateDiscountCodeInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateDiscountCodeInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateDiscountCodeInput {
  String? get code => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DiscountType? get discountType => throw _privateConstructorUsedError;
  int? get discountValue => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  int? get maxUses => throw _privateConstructorUsedError;
  int? get currentUses => throw _privateConstructorUsedError;
  int? get maxDiscount => throw _privateConstructorUsedError;

  /// Serializes this UpdateDiscountCodeInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateDiscountCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateDiscountCodeInputCopyWith<UpdateDiscountCodeInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDiscountCodeInputCopyWith<$Res> {
  factory $UpdateDiscountCodeInputCopyWith(UpdateDiscountCodeInput value,
          $Res Function(UpdateDiscountCodeInput) then) =
      _$UpdateDiscountCodeInputCopyWithImpl<$Res, UpdateDiscountCodeInput>;
  @useResult
  $Res call(
      {String? code,
      String? description,
      DiscountType? discountType,
      int? discountValue,
      String? currency,
      bool? isActive,
      DateTime? expiresAt,
      int? maxUses,
      int? currentUses,
      int? maxDiscount});
}

/// @nodoc
class _$UpdateDiscountCodeInputCopyWithImpl<$Res,
        $Val extends UpdateDiscountCodeInput>
    implements $UpdateDiscountCodeInputCopyWith<$Res> {
  _$UpdateDiscountCodeInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateDiscountCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
    Object? discountType = freezed,
    Object? discountValue = freezed,
    Object? currency = freezed,
    Object? isActive = freezed,
    Object? expiresAt = freezed,
    Object? maxUses = freezed,
    Object? currentUses = freezed,
    Object? maxDiscount = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as DiscountType?,
      discountValue: freezed == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxUses: freezed == maxUses
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as int?,
      currentUses: freezed == currentUses
          ? _value.currentUses
          : currentUses // ignore: cast_nullable_to_non_nullable
              as int?,
      maxDiscount: freezed == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateDiscountCodeInputImplCopyWith<$Res>
    implements $UpdateDiscountCodeInputCopyWith<$Res> {
  factory _$$UpdateDiscountCodeInputImplCopyWith(
          _$UpdateDiscountCodeInputImpl value,
          $Res Function(_$UpdateDiscountCodeInputImpl) then) =
      __$$UpdateDiscountCodeInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? code,
      String? description,
      DiscountType? discountType,
      int? discountValue,
      String? currency,
      bool? isActive,
      DateTime? expiresAt,
      int? maxUses,
      int? currentUses,
      int? maxDiscount});
}

/// @nodoc
class __$$UpdateDiscountCodeInputImplCopyWithImpl<$Res>
    extends _$UpdateDiscountCodeInputCopyWithImpl<$Res,
        _$UpdateDiscountCodeInputImpl>
    implements _$$UpdateDiscountCodeInputImplCopyWith<$Res> {
  __$$UpdateDiscountCodeInputImplCopyWithImpl(
      _$UpdateDiscountCodeInputImpl _value,
      $Res Function(_$UpdateDiscountCodeInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateDiscountCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
    Object? discountType = freezed,
    Object? discountValue = freezed,
    Object? currency = freezed,
    Object? isActive = freezed,
    Object? expiresAt = freezed,
    Object? maxUses = freezed,
    Object? currentUses = freezed,
    Object? maxDiscount = freezed,
  }) {
    return _then(_$UpdateDiscountCodeInputImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as DiscountType?,
      discountValue: freezed == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxUses: freezed == maxUses
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as int?,
      currentUses: freezed == currentUses
          ? _value.currentUses
          : currentUses // ignore: cast_nullable_to_non_nullable
              as int?,
      maxDiscount: freezed == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateDiscountCodeInputImpl implements _UpdateDiscountCodeInput {
  const _$UpdateDiscountCodeInputImpl(
      {this.code,
      this.description,
      this.discountType,
      this.discountValue,
      this.currency,
      this.isActive,
      this.expiresAt,
      this.maxUses,
      this.currentUses,
      this.maxDiscount});

  factory _$UpdateDiscountCodeInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateDiscountCodeInputImplFromJson(json);

  @override
  final String? code;
  @override
  final String? description;
  @override
  final DiscountType? discountType;
  @override
  final int? discountValue;
  @override
  final String? currency;
  @override
  final bool? isActive;
  @override
  final DateTime? expiresAt;
  @override
  final int? maxUses;
  @override
  final int? currentUses;
  @override
  final int? maxDiscount;

  @override
  String toString() {
    return 'UpdateDiscountCodeInput(code: $code, description: $description, discountType: $discountType, discountValue: $discountValue, currency: $currency, isActive: $isActive, expiresAt: $expiresAt, maxUses: $maxUses, currentUses: $currentUses, maxDiscount: $maxDiscount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDiscountCodeInputImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.maxUses, maxUses) || other.maxUses == maxUses) &&
            (identical(other.currentUses, currentUses) ||
                other.currentUses == currentUses) &&
            (identical(other.maxDiscount, maxDiscount) ||
                other.maxDiscount == maxDiscount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      description,
      discountType,
      discountValue,
      currency,
      isActive,
      expiresAt,
      maxUses,
      currentUses,
      maxDiscount);

  /// Create a copy of UpdateDiscountCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDiscountCodeInputImplCopyWith<_$UpdateDiscountCodeInputImpl>
      get copyWith => __$$UpdateDiscountCodeInputImplCopyWithImpl<
          _$UpdateDiscountCodeInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateDiscountCodeInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateDiscountCodeInput implements UpdateDiscountCodeInput {
  const factory _UpdateDiscountCodeInput(
      {final String? code,
      final String? description,
      final DiscountType? discountType,
      final int? discountValue,
      final String? currency,
      final bool? isActive,
      final DateTime? expiresAt,
      final int? maxUses,
      final int? currentUses,
      final int? maxDiscount}) = _$UpdateDiscountCodeInputImpl;

  factory _UpdateDiscountCodeInput.fromJson(Map<String, dynamic> json) =
      _$UpdateDiscountCodeInputImpl.fromJson;

  @override
  String? get code;
  @override
  String? get description;
  @override
  DiscountType? get discountType;
  @override
  int? get discountValue;
  @override
  String? get currency;
  @override
  bool? get isActive;
  @override
  DateTime? get expiresAt;
  @override
  int? get maxUses;
  @override
  int? get currentUses;
  @override
  int? get maxDiscount;

  /// Create a copy of UpdateDiscountCodeInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDiscountCodeInputImplCopyWith<_$UpdateDiscountCodeInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DiscountCodeWhereUniqueInput _$DiscountCodeWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _DiscountCodeWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$DiscountCodeWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  /// Serializes this DiscountCodeWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountCodeWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountCodeWhereUniqueInputCopyWith<DiscountCodeWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCodeWhereUniqueInputCopyWith<$Res> {
  factory $DiscountCodeWhereUniqueInputCopyWith(
          DiscountCodeWhereUniqueInput value,
          $Res Function(DiscountCodeWhereUniqueInput) then) =
      _$DiscountCodeWhereUniqueInputCopyWithImpl<$Res,
          DiscountCodeWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? code});
}

/// @nodoc
class _$DiscountCodeWhereUniqueInputCopyWithImpl<$Res,
        $Val extends DiscountCodeWhereUniqueInput>
    implements $DiscountCodeWhereUniqueInputCopyWith<$Res> {
  _$DiscountCodeWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountCodeWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountCodeWhereUniqueInputImplCopyWith<$Res>
    implements $DiscountCodeWhereUniqueInputCopyWith<$Res> {
  factory _$$DiscountCodeWhereUniqueInputImplCopyWith(
          _$DiscountCodeWhereUniqueInputImpl value,
          $Res Function(_$DiscountCodeWhereUniqueInputImpl) then) =
      __$$DiscountCodeWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? code});
}

/// @nodoc
class __$$DiscountCodeWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$DiscountCodeWhereUniqueInputCopyWithImpl<$Res,
        _$DiscountCodeWhereUniqueInputImpl>
    implements _$$DiscountCodeWhereUniqueInputImplCopyWith<$Res> {
  __$$DiscountCodeWhereUniqueInputImplCopyWithImpl(
      _$DiscountCodeWhereUniqueInputImpl _value,
      $Res Function(_$DiscountCodeWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountCodeWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
  }) {
    return _then(_$DiscountCodeWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountCodeWhereUniqueInputImpl
    implements _DiscountCodeWhereUniqueInput {
  const _$DiscountCodeWhereUniqueInputImpl({this.id, this.code});

  factory _$DiscountCodeWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DiscountCodeWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? code;

  @override
  String toString() {
    return 'DiscountCodeWhereUniqueInput(id: $id, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountCodeWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code);

  /// Create a copy of DiscountCodeWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountCodeWhereUniqueInputImplCopyWith<
          _$DiscountCodeWhereUniqueInputImpl>
      get copyWith => __$$DiscountCodeWhereUniqueInputImplCopyWithImpl<
          _$DiscountCodeWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountCodeWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _DiscountCodeWhereUniqueInput
    implements DiscountCodeWhereUniqueInput {
  const factory _DiscountCodeWhereUniqueInput(
      {final String? id,
      final String? code}) = _$DiscountCodeWhereUniqueInputImpl;

  factory _DiscountCodeWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$DiscountCodeWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get code;

  /// Create a copy of DiscountCodeWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountCodeWhereUniqueInputImplCopyWith<
          _$DiscountCodeWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DiscountCodeWhereInput _$DiscountCodeWhereInputFromJson(
    Map<String, dynamic> json) {
  return _DiscountCodeWhereInput.fromJson(json);
}

/// @nodoc
mixin _$DiscountCodeWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get code => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  DiscountTypeFilter? get discountType => throw _privateConstructorUsedError;
  IntFilter? get discountValue => throw _privateConstructorUsedError;
  StringFilter? get currency => throw _privateConstructorUsedError;
  BooleanFilter? get isActive => throw _privateConstructorUsedError;
  DateTimeFilter? get expiresAt => throw _privateConstructorUsedError;
  IntFilter? get maxUses => throw _privateConstructorUsedError;
  IntFilter? get currentUses => throw _privateConstructorUsedError;
  IntFilter? get maxDiscount => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<DiscountCodeWhereInput>? get AND => throw _privateConstructorUsedError;
  List<DiscountCodeWhereInput>? get OR => throw _privateConstructorUsedError;
  DiscountCodeWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this DiscountCodeWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountCodeWhereInputCopyWith<DiscountCodeWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCodeWhereInputCopyWith<$Res> {
  factory $DiscountCodeWhereInputCopyWith(DiscountCodeWhereInput value,
          $Res Function(DiscountCodeWhereInput) then) =
      _$DiscountCodeWhereInputCopyWithImpl<$Res, DiscountCodeWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? code,
      StringFilter? description,
      DiscountTypeFilter? discountType,
      IntFilter? discountValue,
      StringFilter? currency,
      BooleanFilter? isActive,
      DateTimeFilter? expiresAt,
      IntFilter? maxUses,
      IntFilter? currentUses,
      IntFilter? maxDiscount,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<DiscountCodeWhereInput>? AND,
      List<DiscountCodeWhereInput>? OR,
      DiscountCodeWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get code;
  $StringFilterCopyWith<$Res>? get description;
  $DiscountTypeFilterCopyWith<$Res>? get discountType;
  $IntFilterCopyWith<$Res>? get discountValue;
  $StringFilterCopyWith<$Res>? get currency;
  $BooleanFilterCopyWith<$Res>? get isActive;
  $DateTimeFilterCopyWith<$Res>? get expiresAt;
  $IntFilterCopyWith<$Res>? get maxUses;
  $IntFilterCopyWith<$Res>? get currentUses;
  $IntFilterCopyWith<$Res>? get maxDiscount;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $DiscountCodeWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$DiscountCodeWhereInputCopyWithImpl<$Res,
        $Val extends DiscountCodeWhereInput>
    implements $DiscountCodeWhereInputCopyWith<$Res> {
  _$DiscountCodeWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? discountType = freezed,
    Object? discountValue = freezed,
    Object? currency = freezed,
    Object? isActive = freezed,
    Object? expiresAt = freezed,
    Object? maxUses = freezed,
    Object? currentUses = freezed,
    Object? maxDiscount = freezed,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as DiscountTypeFilter?,
      discountValue: freezed == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      maxUses: freezed == maxUses
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      currentUses: freezed == currentUses
          ? _value.currentUses
          : currentUses // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      maxDiscount: freezed == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
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
              as List<DiscountCodeWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<DiscountCodeWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as DiscountCodeWhereInput?,
    ) as $Val);
  }

  /// Create a copy of DiscountCodeWhereInput
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

  /// Create a copy of DiscountCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get code {
    if (_value.code == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.code!, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }

  /// Create a copy of DiscountCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }

  /// Create a copy of DiscountCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountTypeFilterCopyWith<$Res>? get discountType {
    if (_value.discountType == null) {
      return null;
    }

    return $DiscountTypeFilterCopyWith<$Res>(_value.discountType!, (value) {
      return _then(_value.copyWith(discountType: value) as $Val);
    });
  }

  /// Create a copy of DiscountCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get discountValue {
    if (_value.discountValue == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.discountValue!, (value) {
      return _then(_value.copyWith(discountValue: value) as $Val);
    });
  }

  /// Create a copy of DiscountCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get currency {
    if (_value.currency == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.currency!, (value) {
      return _then(_value.copyWith(currency: value) as $Val);
    });
  }

  /// Create a copy of DiscountCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isActive {
    if (_value.isActive == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isActive!, (value) {
      return _then(_value.copyWith(isActive: value) as $Val);
    });
  }

  /// Create a copy of DiscountCodeWhereInput
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

  /// Create a copy of DiscountCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get maxUses {
    if (_value.maxUses == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.maxUses!, (value) {
      return _then(_value.copyWith(maxUses: value) as $Val);
    });
  }

  /// Create a copy of DiscountCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get currentUses {
    if (_value.currentUses == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.currentUses!, (value) {
      return _then(_value.copyWith(currentUses: value) as $Val);
    });
  }

  /// Create a copy of DiscountCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get maxDiscount {
    if (_value.maxDiscount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.maxDiscount!, (value) {
      return _then(_value.copyWith(maxDiscount: value) as $Val);
    });
  }

  /// Create a copy of DiscountCodeWhereInput
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

  /// Create a copy of DiscountCodeWhereInput
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

  /// Create a copy of DiscountCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountCodeWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $DiscountCodeWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DiscountCodeWhereInputImplCopyWith<$Res>
    implements $DiscountCodeWhereInputCopyWith<$Res> {
  factory _$$DiscountCodeWhereInputImplCopyWith(
          _$DiscountCodeWhereInputImpl value,
          $Res Function(_$DiscountCodeWhereInputImpl) then) =
      __$$DiscountCodeWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? code,
      StringFilter? description,
      DiscountTypeFilter? discountType,
      IntFilter? discountValue,
      StringFilter? currency,
      BooleanFilter? isActive,
      DateTimeFilter? expiresAt,
      IntFilter? maxUses,
      IntFilter? currentUses,
      IntFilter? maxDiscount,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<DiscountCodeWhereInput>? AND,
      List<DiscountCodeWhereInput>? OR,
      DiscountCodeWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get code;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $DiscountTypeFilterCopyWith<$Res>? get discountType;
  @override
  $IntFilterCopyWith<$Res>? get discountValue;
  @override
  $StringFilterCopyWith<$Res>? get currency;
  @override
  $BooleanFilterCopyWith<$Res>? get isActive;
  @override
  $DateTimeFilterCopyWith<$Res>? get expiresAt;
  @override
  $IntFilterCopyWith<$Res>? get maxUses;
  @override
  $IntFilterCopyWith<$Res>? get currentUses;
  @override
  $IntFilterCopyWith<$Res>? get maxDiscount;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $DiscountCodeWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$DiscountCodeWhereInputImplCopyWithImpl<$Res>
    extends _$DiscountCodeWhereInputCopyWithImpl<$Res,
        _$DiscountCodeWhereInputImpl>
    implements _$$DiscountCodeWhereInputImplCopyWith<$Res> {
  __$$DiscountCodeWhereInputImplCopyWithImpl(
      _$DiscountCodeWhereInputImpl _value,
      $Res Function(_$DiscountCodeWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? discountType = freezed,
    Object? discountValue = freezed,
    Object? currency = freezed,
    Object? isActive = freezed,
    Object? expiresAt = freezed,
    Object? maxUses = freezed,
    Object? currentUses = freezed,
    Object? maxDiscount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$DiscountCodeWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as DiscountTypeFilter?,
      discountValue: freezed == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      maxUses: freezed == maxUses
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      currentUses: freezed == currentUses
          ? _value.currentUses
          : currentUses // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      maxDiscount: freezed == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
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
              as List<DiscountCodeWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<DiscountCodeWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as DiscountCodeWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DiscountCodeWhereInputImpl implements _DiscountCodeWhereInput {
  const _$DiscountCodeWhereInputImpl(
      {this.id,
      this.code,
      this.description,
      this.discountType,
      this.discountValue,
      this.currency,
      this.isActive,
      this.expiresAt,
      this.maxUses,
      this.currentUses,
      this.maxDiscount,
      this.createdAt,
      this.updatedAt,
      final List<DiscountCodeWhereInput>? AND,
      final List<DiscountCodeWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$DiscountCodeWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountCodeWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? code;
  @override
  final StringFilter? description;
  @override
  final DiscountTypeFilter? discountType;
  @override
  final IntFilter? discountValue;
  @override
  final StringFilter? currency;
  @override
  final BooleanFilter? isActive;
  @override
  final DateTimeFilter? expiresAt;
  @override
  final IntFilter? maxUses;
  @override
  final IntFilter? currentUses;
  @override
  final IntFilter? maxDiscount;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<DiscountCodeWhereInput>? _AND;
  @override
  List<DiscountCodeWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DiscountCodeWhereInput>? _OR;
  @override
  List<DiscountCodeWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DiscountCodeWhereInput? NOT;

  @override
  String toString() {
    return 'DiscountCodeWhereInput(id: $id, code: $code, description: $description, discountType: $discountType, discountValue: $discountValue, currency: $currency, isActive: $isActive, expiresAt: $expiresAt, maxUses: $maxUses, currentUses: $currentUses, maxDiscount: $maxDiscount, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountCodeWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.maxUses, maxUses) || other.maxUses == maxUses) &&
            (identical(other.currentUses, currentUses) ||
                other.currentUses == currentUses) &&
            (identical(other.maxDiscount, maxDiscount) ||
                other.maxDiscount == maxDiscount) &&
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
      code,
      description,
      discountType,
      discountValue,
      currency,
      isActive,
      expiresAt,
      maxUses,
      currentUses,
      maxDiscount,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of DiscountCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountCodeWhereInputImplCopyWith<_$DiscountCodeWhereInputImpl>
      get copyWith => __$$DiscountCodeWhereInputImplCopyWithImpl<
          _$DiscountCodeWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountCodeWhereInputImplToJson(
      this,
    );
  }
}

abstract class _DiscountCodeWhereInput implements DiscountCodeWhereInput {
  const factory _DiscountCodeWhereInput(
      {final StringFilter? id,
      final StringFilter? code,
      final StringFilter? description,
      final DiscountTypeFilter? discountType,
      final IntFilter? discountValue,
      final StringFilter? currency,
      final BooleanFilter? isActive,
      final DateTimeFilter? expiresAt,
      final IntFilter? maxUses,
      final IntFilter? currentUses,
      final IntFilter? maxDiscount,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<DiscountCodeWhereInput>? AND,
      final List<DiscountCodeWhereInput>? OR,
      final DiscountCodeWhereInput? NOT}) = _$DiscountCodeWhereInputImpl;

  factory _DiscountCodeWhereInput.fromJson(Map<String, dynamic> json) =
      _$DiscountCodeWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get code;
  @override
  StringFilter? get description;
  @override
  DiscountTypeFilter? get discountType;
  @override
  IntFilter? get discountValue;
  @override
  StringFilter? get currency;
  @override
  BooleanFilter? get isActive;
  @override
  DateTimeFilter? get expiresAt;
  @override
  IntFilter? get maxUses;
  @override
  IntFilter? get currentUses;
  @override
  IntFilter? get maxDiscount;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<DiscountCodeWhereInput>? get AND;
  @override
  List<DiscountCodeWhereInput>? get OR;
  @override
  DiscountCodeWhereInput? get NOT;

  /// Create a copy of DiscountCodeWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountCodeWhereInputImplCopyWith<_$DiscountCodeWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DiscountCodeListRelationFilter _$DiscountCodeListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _DiscountCodeListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$DiscountCodeListRelationFilter {
  /// At least one related record matches
  DiscountCodeWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  DiscountCodeWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  DiscountCodeWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this DiscountCodeListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountCodeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountCodeListRelationFilterCopyWith<DiscountCodeListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCodeListRelationFilterCopyWith<$Res> {
  factory $DiscountCodeListRelationFilterCopyWith(
          DiscountCodeListRelationFilter value,
          $Res Function(DiscountCodeListRelationFilter) then) =
      _$DiscountCodeListRelationFilterCopyWithImpl<$Res,
          DiscountCodeListRelationFilter>;
  @useResult
  $Res call(
      {DiscountCodeWhereInput? some,
      DiscountCodeWhereInput? every,
      DiscountCodeWhereInput? none});

  $DiscountCodeWhereInputCopyWith<$Res>? get some;
  $DiscountCodeWhereInputCopyWith<$Res>? get every;
  $DiscountCodeWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$DiscountCodeListRelationFilterCopyWithImpl<$Res,
        $Val extends DiscountCodeListRelationFilter>
    implements $DiscountCodeListRelationFilterCopyWith<$Res> {
  _$DiscountCodeListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountCodeListRelationFilter
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
              as DiscountCodeWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as DiscountCodeWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as DiscountCodeWhereInput?,
    ) as $Val);
  }

  /// Create a copy of DiscountCodeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountCodeWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $DiscountCodeWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of DiscountCodeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountCodeWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $DiscountCodeWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of DiscountCodeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountCodeWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $DiscountCodeWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DiscountCodeListRelationFilterImplCopyWith<$Res>
    implements $DiscountCodeListRelationFilterCopyWith<$Res> {
  factory _$$DiscountCodeListRelationFilterImplCopyWith(
          _$DiscountCodeListRelationFilterImpl value,
          $Res Function(_$DiscountCodeListRelationFilterImpl) then) =
      __$$DiscountCodeListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DiscountCodeWhereInput? some,
      DiscountCodeWhereInput? every,
      DiscountCodeWhereInput? none});

  @override
  $DiscountCodeWhereInputCopyWith<$Res>? get some;
  @override
  $DiscountCodeWhereInputCopyWith<$Res>? get every;
  @override
  $DiscountCodeWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$DiscountCodeListRelationFilterImplCopyWithImpl<$Res>
    extends _$DiscountCodeListRelationFilterCopyWithImpl<$Res,
        _$DiscountCodeListRelationFilterImpl>
    implements _$$DiscountCodeListRelationFilterImplCopyWith<$Res> {
  __$$DiscountCodeListRelationFilterImplCopyWithImpl(
      _$DiscountCodeListRelationFilterImpl _value,
      $Res Function(_$DiscountCodeListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountCodeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$DiscountCodeListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as DiscountCodeWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as DiscountCodeWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as DiscountCodeWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountCodeListRelationFilterImpl
    implements _DiscountCodeListRelationFilter {
  const _$DiscountCodeListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$DiscountCodeListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DiscountCodeListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final DiscountCodeWhereInput? some;

  /// All related records match
  @override
  final DiscountCodeWhereInput? every;

  /// No related records match
  @override
  final DiscountCodeWhereInput? none;

  @override
  String toString() {
    return 'DiscountCodeListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountCodeListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of DiscountCodeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountCodeListRelationFilterImplCopyWith<
          _$DiscountCodeListRelationFilterImpl>
      get copyWith => __$$DiscountCodeListRelationFilterImplCopyWithImpl<
          _$DiscountCodeListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountCodeListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _DiscountCodeListRelationFilter
    implements DiscountCodeListRelationFilter {
  const factory _DiscountCodeListRelationFilter(
          {final DiscountCodeWhereInput? some,
          final DiscountCodeWhereInput? every,
          final DiscountCodeWhereInput? none}) =
      _$DiscountCodeListRelationFilterImpl;

  factory _DiscountCodeListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$DiscountCodeListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  DiscountCodeWhereInput? get some;

  /// All related records match
  @override
  DiscountCodeWhereInput? get every;

  /// No related records match
  @override
  DiscountCodeWhereInput? get none;

  /// Create a copy of DiscountCodeListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountCodeListRelationFilterImplCopyWith<
          _$DiscountCodeListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DiscountCodeRelationFilter _$DiscountCodeRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _DiscountCodeRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$DiscountCodeRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  DiscountCodeWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  DiscountCodeWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this DiscountCodeRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountCodeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountCodeRelationFilterCopyWith<DiscountCodeRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCodeRelationFilterCopyWith<$Res> {
  factory $DiscountCodeRelationFilterCopyWith(DiscountCodeRelationFilter value,
          $Res Function(DiscountCodeRelationFilter) then) =
      _$DiscountCodeRelationFilterCopyWithImpl<$Res,
          DiscountCodeRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') DiscountCodeWhereInput? is_,
      DiscountCodeWhereInput? isNot});

  $DiscountCodeWhereInputCopyWith<$Res>? get is_;
  $DiscountCodeWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$DiscountCodeRelationFilterCopyWithImpl<$Res,
        $Val extends DiscountCodeRelationFilter>
    implements $DiscountCodeRelationFilterCopyWith<$Res> {
  _$DiscountCodeRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountCodeRelationFilter
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
              as DiscountCodeWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as DiscountCodeWhereInput?,
    ) as $Val);
  }

  /// Create a copy of DiscountCodeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountCodeWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $DiscountCodeWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of DiscountCodeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountCodeWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $DiscountCodeWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DiscountCodeRelationFilterImplCopyWith<$Res>
    implements $DiscountCodeRelationFilterCopyWith<$Res> {
  factory _$$DiscountCodeRelationFilterImplCopyWith(
          _$DiscountCodeRelationFilterImpl value,
          $Res Function(_$DiscountCodeRelationFilterImpl) then) =
      __$$DiscountCodeRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') DiscountCodeWhereInput? is_,
      DiscountCodeWhereInput? isNot});

  @override
  $DiscountCodeWhereInputCopyWith<$Res>? get is_;
  @override
  $DiscountCodeWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$DiscountCodeRelationFilterImplCopyWithImpl<$Res>
    extends _$DiscountCodeRelationFilterCopyWithImpl<$Res,
        _$DiscountCodeRelationFilterImpl>
    implements _$$DiscountCodeRelationFilterImplCopyWith<$Res> {
  __$$DiscountCodeRelationFilterImplCopyWithImpl(
      _$DiscountCodeRelationFilterImpl _value,
      $Res Function(_$DiscountCodeRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountCodeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$DiscountCodeRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as DiscountCodeWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as DiscountCodeWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountCodeRelationFilterImpl implements _DiscountCodeRelationFilter {
  const _$DiscountCodeRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$DiscountCodeRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DiscountCodeRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final DiscountCodeWhereInput? is_;

  /// Related record does not match
  @override
  final DiscountCodeWhereInput? isNot;

  @override
  String toString() {
    return 'DiscountCodeRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountCodeRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of DiscountCodeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountCodeRelationFilterImplCopyWith<_$DiscountCodeRelationFilterImpl>
      get copyWith => __$$DiscountCodeRelationFilterImplCopyWithImpl<
          _$DiscountCodeRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountCodeRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _DiscountCodeRelationFilter
    implements DiscountCodeRelationFilter {
  const factory _DiscountCodeRelationFilter(
      {@JsonKey(name: 'is') final DiscountCodeWhereInput? is_,
      final DiscountCodeWhereInput? isNot}) = _$DiscountCodeRelationFilterImpl;

  factory _DiscountCodeRelationFilter.fromJson(Map<String, dynamic> json) =
      _$DiscountCodeRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  DiscountCodeWhereInput? get is_;

  /// Related record does not match
  @override
  DiscountCodeWhereInput? get isNot;

  /// Create a copy of DiscountCodeRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountCodeRelationFilterImplCopyWith<_$DiscountCodeRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DiscountCodeOrderByInput _$DiscountCodeOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _DiscountCodeOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$DiscountCodeOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get code => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get discountValue => throw _privateConstructorUsedError;
  SortOrder? get currency => throw _privateConstructorUsedError;
  SortOrder? get isActive => throw _privateConstructorUsedError;
  SortOrder? get expiresAt => throw _privateConstructorUsedError;
  SortOrder? get maxUses => throw _privateConstructorUsedError;
  SortOrder? get currentUses => throw _privateConstructorUsedError;
  SortOrder? get maxDiscount => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this DiscountCodeOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountCodeOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountCodeOrderByInputCopyWith<DiscountCodeOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCodeOrderByInputCopyWith<$Res> {
  factory $DiscountCodeOrderByInputCopyWith(DiscountCodeOrderByInput value,
          $Res Function(DiscountCodeOrderByInput) then) =
      _$DiscountCodeOrderByInputCopyWithImpl<$Res, DiscountCodeOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? code,
      SortOrder? description,
      SortOrder? discountValue,
      SortOrder? currency,
      SortOrder? isActive,
      SortOrder? expiresAt,
      SortOrder? maxUses,
      SortOrder? currentUses,
      SortOrder? maxDiscount,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$DiscountCodeOrderByInputCopyWithImpl<$Res,
        $Val extends DiscountCodeOrderByInput>
    implements $DiscountCodeOrderByInputCopyWith<$Res> {
  _$DiscountCodeOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountCodeOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? discountValue = freezed,
    Object? currency = freezed,
    Object? isActive = freezed,
    Object? expiresAt = freezed,
    Object? maxUses = freezed,
    Object? currentUses = freezed,
    Object? maxDiscount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      discountValue: freezed == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      maxUses: freezed == maxUses
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currentUses: freezed == currentUses
          ? _value.currentUses
          : currentUses // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      maxDiscount: freezed == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DiscountCodeOrderByInputImplCopyWith<$Res>
    implements $DiscountCodeOrderByInputCopyWith<$Res> {
  factory _$$DiscountCodeOrderByInputImplCopyWith(
          _$DiscountCodeOrderByInputImpl value,
          $Res Function(_$DiscountCodeOrderByInputImpl) then) =
      __$$DiscountCodeOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? code,
      SortOrder? description,
      SortOrder? discountValue,
      SortOrder? currency,
      SortOrder? isActive,
      SortOrder? expiresAt,
      SortOrder? maxUses,
      SortOrder? currentUses,
      SortOrder? maxDiscount,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$DiscountCodeOrderByInputImplCopyWithImpl<$Res>
    extends _$DiscountCodeOrderByInputCopyWithImpl<$Res,
        _$DiscountCodeOrderByInputImpl>
    implements _$$DiscountCodeOrderByInputImplCopyWith<$Res> {
  __$$DiscountCodeOrderByInputImplCopyWithImpl(
      _$DiscountCodeOrderByInputImpl _value,
      $Res Function(_$DiscountCodeOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountCodeOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? discountValue = freezed,
    Object? currency = freezed,
    Object? isActive = freezed,
    Object? expiresAt = freezed,
    Object? maxUses = freezed,
    Object? currentUses = freezed,
    Object? maxDiscount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DiscountCodeOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      discountValue: freezed == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      maxUses: freezed == maxUses
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      currentUses: freezed == currentUses
          ? _value.currentUses
          : currentUses // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      maxDiscount: freezed == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
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
class _$DiscountCodeOrderByInputImpl implements _DiscountCodeOrderByInput {
  const _$DiscountCodeOrderByInputImpl(
      {this.id,
      this.code,
      this.description,
      this.discountValue,
      this.currency,
      this.isActive,
      this.expiresAt,
      this.maxUses,
      this.currentUses,
      this.maxDiscount,
      this.createdAt,
      this.updatedAt});

  factory _$DiscountCodeOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountCodeOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? code;
  @override
  final SortOrder? description;
  @override
  final SortOrder? discountValue;
  @override
  final SortOrder? currency;
  @override
  final SortOrder? isActive;
  @override
  final SortOrder? expiresAt;
  @override
  final SortOrder? maxUses;
  @override
  final SortOrder? currentUses;
  @override
  final SortOrder? maxDiscount;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'DiscountCodeOrderByInput(id: $id, code: $code, description: $description, discountValue: $discountValue, currency: $currency, isActive: $isActive, expiresAt: $expiresAt, maxUses: $maxUses, currentUses: $currentUses, maxDiscount: $maxDiscount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountCodeOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.maxUses, maxUses) || other.maxUses == maxUses) &&
            (identical(other.currentUses, currentUses) ||
                other.currentUses == currentUses) &&
            (identical(other.maxDiscount, maxDiscount) ||
                other.maxDiscount == maxDiscount) &&
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
      code,
      description,
      discountValue,
      currency,
      isActive,
      expiresAt,
      maxUses,
      currentUses,
      maxDiscount,
      createdAt,
      updatedAt);

  /// Create a copy of DiscountCodeOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountCodeOrderByInputImplCopyWith<_$DiscountCodeOrderByInputImpl>
      get copyWith => __$$DiscountCodeOrderByInputImplCopyWithImpl<
          _$DiscountCodeOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountCodeOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _DiscountCodeOrderByInput implements DiscountCodeOrderByInput {
  const factory _DiscountCodeOrderByInput(
      {final SortOrder? id,
      final SortOrder? code,
      final SortOrder? description,
      final SortOrder? discountValue,
      final SortOrder? currency,
      final SortOrder? isActive,
      final SortOrder? expiresAt,
      final SortOrder? maxUses,
      final SortOrder? currentUses,
      final SortOrder? maxDiscount,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$DiscountCodeOrderByInputImpl;

  factory _DiscountCodeOrderByInput.fromJson(Map<String, dynamic> json) =
      _$DiscountCodeOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get code;
  @override
  SortOrder? get description;
  @override
  SortOrder? get discountValue;
  @override
  SortOrder? get currency;
  @override
  SortOrder? get isActive;
  @override
  SortOrder? get expiresAt;
  @override
  SortOrder? get maxUses;
  @override
  SortOrder? get currentUses;
  @override
  SortOrder? get maxDiscount;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of DiscountCodeOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountCodeOrderByInputImplCopyWith<_$DiscountCodeOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
