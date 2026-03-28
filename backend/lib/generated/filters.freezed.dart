// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) {
  return _StringFilter.fromJson(json);
}

/// @nodoc
mixin _$StringFilter {
  /// Exact match
  String? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  String? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<String>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<String>? get notIn => throw _privateConstructorUsedError;

  /// Contains substring (case-sensitive)
  String? get contains => throw _privateConstructorUsedError;

  /// Starts with prefix (case-sensitive)
  String? get startsWith => throw _privateConstructorUsedError;

  /// Ends with suffix (case-sensitive)
  String? get endsWith => throw _privateConstructorUsedError;

  /// Less than
  String? get lt => throw _privateConstructorUsedError;

  /// Less than or equal
  String? get lte => throw _privateConstructorUsedError;

  /// Greater than
  String? get gt => throw _privateConstructorUsedError;

  /// Greater than or equal
  String? get gte => throw _privateConstructorUsedError;

  /// Serializes this StringFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StringFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StringFilterCopyWith<StringFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringFilterCopyWith<$Res> {
  factory $StringFilterCopyWith(
          StringFilter value, $Res Function(StringFilter) then) =
      _$StringFilterCopyWithImpl<$Res, StringFilter>;
  @useResult
  $Res call(
      {String? equals,
      String? not,
      @JsonKey(name: 'in') List<String>? in_,
      List<String>? notIn,
      String? contains,
      String? startsWith,
      String? endsWith,
      String? lt,
      String? lte,
      String? gt,
      String? gte});
}

/// @nodoc
class _$StringFilterCopyWithImpl<$Res, $Val extends StringFilter>
    implements $StringFilterCopyWith<$Res> {
  _$StringFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StringFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
    Object? contains = freezed,
    Object? startsWith = freezed,
    Object? endsWith = freezed,
    Object? lt = freezed,
    Object? lte = freezed,
    Object? gt = freezed,
    Object? gte = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as String?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as String?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contains: freezed == contains
          ? _value.contains
          : contains // ignore: cast_nullable_to_non_nullable
              as String?,
      startsWith: freezed == startsWith
          ? _value.startsWith
          : startsWith // ignore: cast_nullable_to_non_nullable
              as String?,
      endsWith: freezed == endsWith
          ? _value.endsWith
          : endsWith // ignore: cast_nullable_to_non_nullable
              as String?,
      lt: freezed == lt
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as String?,
      lte: freezed == lte
          ? _value.lte
          : lte // ignore: cast_nullable_to_non_nullable
              as String?,
      gt: freezed == gt
          ? _value.gt
          : gt // ignore: cast_nullable_to_non_nullable
              as String?,
      gte: freezed == gte
          ? _value.gte
          : gte // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StringFilterImplCopyWith<$Res>
    implements $StringFilterCopyWith<$Res> {
  factory _$$StringFilterImplCopyWith(
          _$StringFilterImpl value, $Res Function(_$StringFilterImpl) then) =
      __$$StringFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? equals,
      String? not,
      @JsonKey(name: 'in') List<String>? in_,
      List<String>? notIn,
      String? contains,
      String? startsWith,
      String? endsWith,
      String? lt,
      String? lte,
      String? gt,
      String? gte});
}

/// @nodoc
class __$$StringFilterImplCopyWithImpl<$Res>
    extends _$StringFilterCopyWithImpl<$Res, _$StringFilterImpl>
    implements _$$StringFilterImplCopyWith<$Res> {
  __$$StringFilterImplCopyWithImpl(
      _$StringFilterImpl _value, $Res Function(_$StringFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of StringFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
    Object? contains = freezed,
    Object? startsWith = freezed,
    Object? endsWith = freezed,
    Object? lt = freezed,
    Object? lte = freezed,
    Object? gt = freezed,
    Object? gte = freezed,
  }) {
    return _then(_$StringFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as String?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as String?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contains: freezed == contains
          ? _value.contains
          : contains // ignore: cast_nullable_to_non_nullable
              as String?,
      startsWith: freezed == startsWith
          ? _value.startsWith
          : startsWith // ignore: cast_nullable_to_non_nullable
              as String?,
      endsWith: freezed == endsWith
          ? _value.endsWith
          : endsWith // ignore: cast_nullable_to_non_nullable
              as String?,
      lt: freezed == lt
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as String?,
      lte: freezed == lte
          ? _value.lte
          : lte // ignore: cast_nullable_to_non_nullable
              as String?,
      gt: freezed == gt
          ? _value.gt
          : gt // ignore: cast_nullable_to_non_nullable
              as String?,
      gte: freezed == gte
          ? _value.gte
          : gte // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringFilterImpl implements _StringFilter {
  const _$StringFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<String>? in_,
      final List<String>? notIn,
      this.contains,
      this.startsWith,
      this.endsWith,
      this.lt,
      this.lte,
      this.gt,
      this.gte})
      : _in_ = in_,
        _notIn = notIn;

  factory _$StringFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringFilterImplFromJson(json);

  /// Exact match
  @override
  final String? equals;

  /// Not equal to
  @override
  final String? not;

  /// In list of values
  final List<String>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<String>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<String>? _notIn;

  /// Not in list of values
  @override
  List<String>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Contains substring (case-sensitive)
  @override
  final String? contains;

  /// Starts with prefix (case-sensitive)
  @override
  final String? startsWith;

  /// Ends with suffix (case-sensitive)
  @override
  final String? endsWith;

  /// Less than
  @override
  final String? lt;

  /// Less than or equal
  @override
  final String? lte;

  /// Greater than
  @override
  final String? gt;

  /// Greater than or equal
  @override
  final String? gte;

  @override
  String toString() {
    return 'StringFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn, contains: $contains, startsWith: $startsWith, endsWith: $endsWith, lt: $lt, lte: $lte, gt: $gt, gte: $gte)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn) &&
            (identical(other.contains, contains) ||
                other.contains == contains) &&
            (identical(other.startsWith, startsWith) ||
                other.startsWith == startsWith) &&
            (identical(other.endsWith, endsWith) ||
                other.endsWith == endsWith) &&
            (identical(other.lt, lt) || other.lt == lt) &&
            (identical(other.lte, lte) || other.lte == lte) &&
            (identical(other.gt, gt) || other.gt == gt) &&
            (identical(other.gte, gte) || other.gte == gte));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn),
      contains,
      startsWith,
      endsWith,
      lt,
      lte,
      gt,
      gte);

  /// Create a copy of StringFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StringFilterImplCopyWith<_$StringFilterImpl> get copyWith =>
      __$$StringFilterImplCopyWithImpl<_$StringFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StringFilterImplToJson(
      this,
    );
  }
}

abstract class _StringFilter implements StringFilter {
  const factory _StringFilter(
      {final String? equals,
      final String? not,
      @JsonKey(name: 'in') final List<String>? in_,
      final List<String>? notIn,
      final String? contains,
      final String? startsWith,
      final String? endsWith,
      final String? lt,
      final String? lte,
      final String? gt,
      final String? gte}) = _$StringFilterImpl;

  factory _StringFilter.fromJson(Map<String, dynamic> json) =
      _$StringFilterImpl.fromJson;

  /// Exact match
  @override
  String? get equals;

  /// Not equal to
  @override
  String? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<String>? get in_;

  /// Not in list of values
  @override
  List<String>? get notIn;

  /// Contains substring (case-sensitive)
  @override
  String? get contains;

  /// Starts with prefix (case-sensitive)
  @override
  String? get startsWith;

  /// Ends with suffix (case-sensitive)
  @override
  String? get endsWith;

  /// Less than
  @override
  String? get lt;

  /// Less than or equal
  @override
  String? get lte;

  /// Greater than
  @override
  String? get gt;

  /// Greater than or equal
  @override
  String? get gte;

  /// Create a copy of StringFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StringFilterImplCopyWith<_$StringFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IntFilter _$IntFilterFromJson(Map<String, dynamic> json) {
  return _IntFilter.fromJson(json);
}

/// @nodoc
mixin _$IntFilter {
  /// Exact match
  int? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  int? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<int>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<int>? get notIn => throw _privateConstructorUsedError;

  /// Less than
  int? get lt => throw _privateConstructorUsedError;

  /// Less than or equal
  int? get lte => throw _privateConstructorUsedError;

  /// Greater than
  int? get gt => throw _privateConstructorUsedError;

  /// Greater than or equal
  int? get gte => throw _privateConstructorUsedError;

  /// Serializes this IntFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntFilterCopyWith<IntFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntFilterCopyWith<$Res> {
  factory $IntFilterCopyWith(IntFilter value, $Res Function(IntFilter) then) =
      _$IntFilterCopyWithImpl<$Res, IntFilter>;
  @useResult
  $Res call(
      {int? equals,
      int? not,
      @JsonKey(name: 'in') List<int>? in_,
      List<int>? notIn,
      int? lt,
      int? lte,
      int? gt,
      int? gte});
}

/// @nodoc
class _$IntFilterCopyWithImpl<$Res, $Val extends IntFilter>
    implements $IntFilterCopyWith<$Res> {
  _$IntFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
    Object? lt = freezed,
    Object? lte = freezed,
    Object? gt = freezed,
    Object? gte = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as int?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as int?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      lt: freezed == lt
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as int?,
      lte: freezed == lte
          ? _value.lte
          : lte // ignore: cast_nullable_to_non_nullable
              as int?,
      gt: freezed == gt
          ? _value.gt
          : gt // ignore: cast_nullable_to_non_nullable
              as int?,
      gte: freezed == gte
          ? _value.gte
          : gte // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntFilterImplCopyWith<$Res>
    implements $IntFilterCopyWith<$Res> {
  factory _$$IntFilterImplCopyWith(
          _$IntFilterImpl value, $Res Function(_$IntFilterImpl) then) =
      __$$IntFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? equals,
      int? not,
      @JsonKey(name: 'in') List<int>? in_,
      List<int>? notIn,
      int? lt,
      int? lte,
      int? gt,
      int? gte});
}

/// @nodoc
class __$$IntFilterImplCopyWithImpl<$Res>
    extends _$IntFilterCopyWithImpl<$Res, _$IntFilterImpl>
    implements _$$IntFilterImplCopyWith<$Res> {
  __$$IntFilterImplCopyWithImpl(
      _$IntFilterImpl _value, $Res Function(_$IntFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
    Object? lt = freezed,
    Object? lte = freezed,
    Object? gt = freezed,
    Object? gte = freezed,
  }) {
    return _then(_$IntFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as int?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as int?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      lt: freezed == lt
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as int?,
      lte: freezed == lte
          ? _value.lte
          : lte // ignore: cast_nullable_to_non_nullable
              as int?,
      gt: freezed == gt
          ? _value.gt
          : gt // ignore: cast_nullable_to_non_nullable
              as int?,
      gte: freezed == gte
          ? _value.gte
          : gte // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntFilterImpl implements _IntFilter {
  const _$IntFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<int>? in_,
      final List<int>? notIn,
      this.lt,
      this.lte,
      this.gt,
      this.gte})
      : _in_ = in_,
        _notIn = notIn;

  factory _$IntFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntFilterImplFromJson(json);

  /// Exact match
  @override
  final int? equals;

  /// Not equal to
  @override
  final int? not;

  /// In list of values
  final List<int>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<int>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<int>? _notIn;

  /// Not in list of values
  @override
  List<int>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Less than
  @override
  final int? lt;

  /// Less than or equal
  @override
  final int? lte;

  /// Greater than
  @override
  final int? gt;

  /// Greater than or equal
  @override
  final int? gte;

  @override
  String toString() {
    return 'IntFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn, lt: $lt, lte: $lte, gt: $gt, gte: $gte)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn) &&
            (identical(other.lt, lt) || other.lt == lt) &&
            (identical(other.lte, lte) || other.lte == lte) &&
            (identical(other.gt, gt) || other.gt == gt) &&
            (identical(other.gte, gte) || other.gte == gte));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn),
      lt,
      lte,
      gt,
      gte);

  /// Create a copy of IntFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntFilterImplCopyWith<_$IntFilterImpl> get copyWith =>
      __$$IntFilterImplCopyWithImpl<_$IntFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntFilterImplToJson(
      this,
    );
  }
}

abstract class _IntFilter implements IntFilter {
  const factory _IntFilter(
      {final int? equals,
      final int? not,
      @JsonKey(name: 'in') final List<int>? in_,
      final List<int>? notIn,
      final int? lt,
      final int? lte,
      final int? gt,
      final int? gte}) = _$IntFilterImpl;

  factory _IntFilter.fromJson(Map<String, dynamic> json) =
      _$IntFilterImpl.fromJson;

  /// Exact match
  @override
  int? get equals;

  /// Not equal to
  @override
  int? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<int>? get in_;

  /// Not in list of values
  @override
  List<int>? get notIn;

  /// Less than
  @override
  int? get lt;

  /// Less than or equal
  @override
  int? get lte;

  /// Greater than
  @override
  int? get gt;

  /// Greater than or equal
  @override
  int? get gte;

  /// Create a copy of IntFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntFilterImplCopyWith<_$IntFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FloatFilter _$FloatFilterFromJson(Map<String, dynamic> json) {
  return _FloatFilter.fromJson(json);
}

/// @nodoc
mixin _$FloatFilter {
  /// Exact match
  double? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  double? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<double>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<double>? get notIn => throw _privateConstructorUsedError;

  /// Less than
  double? get lt => throw _privateConstructorUsedError;

  /// Less than or equal
  double? get lte => throw _privateConstructorUsedError;

  /// Greater than
  double? get gt => throw _privateConstructorUsedError;

  /// Greater than or equal
  double? get gte => throw _privateConstructorUsedError;

  /// Serializes this FloatFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FloatFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FloatFilterCopyWith<FloatFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloatFilterCopyWith<$Res> {
  factory $FloatFilterCopyWith(
          FloatFilter value, $Res Function(FloatFilter) then) =
      _$FloatFilterCopyWithImpl<$Res, FloatFilter>;
  @useResult
  $Res call(
      {double? equals,
      double? not,
      @JsonKey(name: 'in') List<double>? in_,
      List<double>? notIn,
      double? lt,
      double? lte,
      double? gt,
      double? gte});
}

/// @nodoc
class _$FloatFilterCopyWithImpl<$Res, $Val extends FloatFilter>
    implements $FloatFilterCopyWith<$Res> {
  _$FloatFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FloatFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
    Object? lt = freezed,
    Object? lte = freezed,
    Object? gt = freezed,
    Object? gte = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as double?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as double?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      lt: freezed == lt
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as double?,
      lte: freezed == lte
          ? _value.lte
          : lte // ignore: cast_nullable_to_non_nullable
              as double?,
      gt: freezed == gt
          ? _value.gt
          : gt // ignore: cast_nullable_to_non_nullable
              as double?,
      gte: freezed == gte
          ? _value.gte
          : gte // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FloatFilterImplCopyWith<$Res>
    implements $FloatFilterCopyWith<$Res> {
  factory _$$FloatFilterImplCopyWith(
          _$FloatFilterImpl value, $Res Function(_$FloatFilterImpl) then) =
      __$$FloatFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? equals,
      double? not,
      @JsonKey(name: 'in') List<double>? in_,
      List<double>? notIn,
      double? lt,
      double? lte,
      double? gt,
      double? gte});
}

/// @nodoc
class __$$FloatFilterImplCopyWithImpl<$Res>
    extends _$FloatFilterCopyWithImpl<$Res, _$FloatFilterImpl>
    implements _$$FloatFilterImplCopyWith<$Res> {
  __$$FloatFilterImplCopyWithImpl(
      _$FloatFilterImpl _value, $Res Function(_$FloatFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of FloatFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
    Object? lt = freezed,
    Object? lte = freezed,
    Object? gt = freezed,
    Object? gte = freezed,
  }) {
    return _then(_$FloatFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as double?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as double?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      lt: freezed == lt
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as double?,
      lte: freezed == lte
          ? _value.lte
          : lte // ignore: cast_nullable_to_non_nullable
              as double?,
      gt: freezed == gt
          ? _value.gt
          : gt // ignore: cast_nullable_to_non_nullable
              as double?,
      gte: freezed == gte
          ? _value.gte
          : gte // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FloatFilterImpl implements _FloatFilter {
  const _$FloatFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<double>? in_,
      final List<double>? notIn,
      this.lt,
      this.lte,
      this.gt,
      this.gte})
      : _in_ = in_,
        _notIn = notIn;

  factory _$FloatFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$FloatFilterImplFromJson(json);

  /// Exact match
  @override
  final double? equals;

  /// Not equal to
  @override
  final double? not;

  /// In list of values
  final List<double>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<double>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<double>? _notIn;

  /// Not in list of values
  @override
  List<double>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Less than
  @override
  final double? lt;

  /// Less than or equal
  @override
  final double? lte;

  /// Greater than
  @override
  final double? gt;

  /// Greater than or equal
  @override
  final double? gte;

  @override
  String toString() {
    return 'FloatFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn, lt: $lt, lte: $lte, gt: $gt, gte: $gte)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FloatFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn) &&
            (identical(other.lt, lt) || other.lt == lt) &&
            (identical(other.lte, lte) || other.lte == lte) &&
            (identical(other.gt, gt) || other.gt == gt) &&
            (identical(other.gte, gte) || other.gte == gte));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn),
      lt,
      lte,
      gt,
      gte);

  /// Create a copy of FloatFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FloatFilterImplCopyWith<_$FloatFilterImpl> get copyWith =>
      __$$FloatFilterImplCopyWithImpl<_$FloatFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FloatFilterImplToJson(
      this,
    );
  }
}

abstract class _FloatFilter implements FloatFilter {
  const factory _FloatFilter(
      {final double? equals,
      final double? not,
      @JsonKey(name: 'in') final List<double>? in_,
      final List<double>? notIn,
      final double? lt,
      final double? lte,
      final double? gt,
      final double? gte}) = _$FloatFilterImpl;

  factory _FloatFilter.fromJson(Map<String, dynamic> json) =
      _$FloatFilterImpl.fromJson;

  /// Exact match
  @override
  double? get equals;

  /// Not equal to
  @override
  double? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<double>? get in_;

  /// Not in list of values
  @override
  List<double>? get notIn;

  /// Less than
  @override
  double? get lt;

  /// Less than or equal
  @override
  double? get lte;

  /// Greater than
  @override
  double? get gt;

  /// Greater than or equal
  @override
  double? get gte;

  /// Create a copy of FloatFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FloatFilterImplCopyWith<_$FloatFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BooleanFilter _$BooleanFilterFromJson(Map<String, dynamic> json) {
  return _BooleanFilter.fromJson(json);
}

/// @nodoc
mixin _$BooleanFilter {
  /// Exact match
  bool? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  bool? get not => throw _privateConstructorUsedError;

  /// Serializes this BooleanFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BooleanFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BooleanFilterCopyWith<BooleanFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooleanFilterCopyWith<$Res> {
  factory $BooleanFilterCopyWith(
          BooleanFilter value, $Res Function(BooleanFilter) then) =
      _$BooleanFilterCopyWithImpl<$Res, BooleanFilter>;
  @useResult
  $Res call({bool? equals, bool? not});
}

/// @nodoc
class _$BooleanFilterCopyWithImpl<$Res, $Val extends BooleanFilter>
    implements $BooleanFilterCopyWith<$Res> {
  _$BooleanFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BooleanFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as bool?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BooleanFilterImplCopyWith<$Res>
    implements $BooleanFilterCopyWith<$Res> {
  factory _$$BooleanFilterImplCopyWith(
          _$BooleanFilterImpl value, $Res Function(_$BooleanFilterImpl) then) =
      __$$BooleanFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? equals, bool? not});
}

/// @nodoc
class __$$BooleanFilterImplCopyWithImpl<$Res>
    extends _$BooleanFilterCopyWithImpl<$Res, _$BooleanFilterImpl>
    implements _$$BooleanFilterImplCopyWith<$Res> {
  __$$BooleanFilterImplCopyWithImpl(
      _$BooleanFilterImpl _value, $Res Function(_$BooleanFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of BooleanFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
  }) {
    return _then(_$BooleanFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as bool?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BooleanFilterImpl implements _BooleanFilter {
  const _$BooleanFilterImpl({this.equals, this.not});

  factory _$BooleanFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooleanFilterImplFromJson(json);

  /// Exact match
  @override
  final bool? equals;

  /// Not equal to
  @override
  final bool? not;

  @override
  String toString() {
    return 'BooleanFilter(equals: $equals, not: $not)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, equals, not);

  /// Create a copy of BooleanFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BooleanFilterImplCopyWith<_$BooleanFilterImpl> get copyWith =>
      __$$BooleanFilterImplCopyWithImpl<_$BooleanFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanFilterImplToJson(
      this,
    );
  }
}

abstract class _BooleanFilter implements BooleanFilter {
  const factory _BooleanFilter({final bool? equals, final bool? not}) =
      _$BooleanFilterImpl;

  factory _BooleanFilter.fromJson(Map<String, dynamic> json) =
      _$BooleanFilterImpl.fromJson;

  /// Exact match
  @override
  bool? get equals;

  /// Not equal to
  @override
  bool? get not;

  /// Create a copy of BooleanFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BooleanFilterImplCopyWith<_$BooleanFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DateTimeFilter _$DateTimeFilterFromJson(Map<String, dynamic> json) {
  return _DateTimeFilter.fromJson(json);
}

/// @nodoc
mixin _$DateTimeFilter {
  /// Exact match
  DateTime? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  DateTime? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<DateTime>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<DateTime>? get notIn => throw _privateConstructorUsedError;

  /// Less than (before)
  DateTime? get lt => throw _privateConstructorUsedError;

  /// Less than or equal
  DateTime? get lte => throw _privateConstructorUsedError;

  /// Greater than (after)
  DateTime? get gt => throw _privateConstructorUsedError;

  /// Greater than or equal
  DateTime? get gte => throw _privateConstructorUsedError;

  /// Serializes this DateTimeFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DateTimeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateTimeFilterCopyWith<DateTimeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateTimeFilterCopyWith<$Res> {
  factory $DateTimeFilterCopyWith(
          DateTimeFilter value, $Res Function(DateTimeFilter) then) =
      _$DateTimeFilterCopyWithImpl<$Res, DateTimeFilter>;
  @useResult
  $Res call(
      {DateTime? equals,
      DateTime? not,
      @JsonKey(name: 'in') List<DateTime>? in_,
      List<DateTime>? notIn,
      DateTime? lt,
      DateTime? lte,
      DateTime? gt,
      DateTime? gte});
}

/// @nodoc
class _$DateTimeFilterCopyWithImpl<$Res, $Val extends DateTimeFilter>
    implements $DateTimeFilterCopyWith<$Res> {
  _$DateTimeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateTimeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
    Object? lt = freezed,
    Object? lte = freezed,
    Object? gt = freezed,
    Object? gte = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      lt: freezed == lt
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lte: freezed == lte
          ? _value.lte
          : lte // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gt: freezed == gt
          ? _value.gt
          : gt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gte: freezed == gte
          ? _value.gte
          : gte // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateTimeFilterImplCopyWith<$Res>
    implements $DateTimeFilterCopyWith<$Res> {
  factory _$$DateTimeFilterImplCopyWith(_$DateTimeFilterImpl value,
          $Res Function(_$DateTimeFilterImpl) then) =
      __$$DateTimeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? equals,
      DateTime? not,
      @JsonKey(name: 'in') List<DateTime>? in_,
      List<DateTime>? notIn,
      DateTime? lt,
      DateTime? lte,
      DateTime? gt,
      DateTime? gte});
}

/// @nodoc
class __$$DateTimeFilterImplCopyWithImpl<$Res>
    extends _$DateTimeFilterCopyWithImpl<$Res, _$DateTimeFilterImpl>
    implements _$$DateTimeFilterImplCopyWith<$Res> {
  __$$DateTimeFilterImplCopyWithImpl(
      _$DateTimeFilterImpl _value, $Res Function(_$DateTimeFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateTimeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
    Object? lt = freezed,
    Object? lte = freezed,
    Object? gt = freezed,
    Object? gte = freezed,
  }) {
    return _then(_$DateTimeFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      lt: freezed == lt
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lte: freezed == lte
          ? _value.lte
          : lte // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gt: freezed == gt
          ? _value.gt
          : gt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gte: freezed == gte
          ? _value.gte
          : gte // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateTimeFilterImpl implements _DateTimeFilter {
  const _$DateTimeFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<DateTime>? in_,
      final List<DateTime>? notIn,
      this.lt,
      this.lte,
      this.gt,
      this.gte})
      : _in_ = in_,
        _notIn = notIn;

  factory _$DateTimeFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateTimeFilterImplFromJson(json);

  /// Exact match
  @override
  final DateTime? equals;

  /// Not equal to
  @override
  final DateTime? not;

  /// In list of values
  final List<DateTime>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<DateTime>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<DateTime>? _notIn;

  /// Not in list of values
  @override
  List<DateTime>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Less than (before)
  @override
  final DateTime? lt;

  /// Less than or equal
  @override
  final DateTime? lte;

  /// Greater than (after)
  @override
  final DateTime? gt;

  /// Greater than or equal
  @override
  final DateTime? gte;

  @override
  String toString() {
    return 'DateTimeFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn, lt: $lt, lte: $lte, gt: $gt, gte: $gte)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTimeFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn) &&
            (identical(other.lt, lt) || other.lt == lt) &&
            (identical(other.lte, lte) || other.lte == lte) &&
            (identical(other.gt, gt) || other.gt == gt) &&
            (identical(other.gte, gte) || other.gte == gte));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn),
      lt,
      lte,
      gt,
      gte);

  /// Create a copy of DateTimeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateTimeFilterImplCopyWith<_$DateTimeFilterImpl> get copyWith =>
      __$$DateTimeFilterImplCopyWithImpl<_$DateTimeFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateTimeFilterImplToJson(
      this,
    );
  }
}

abstract class _DateTimeFilter implements DateTimeFilter {
  const factory _DateTimeFilter(
      {final DateTime? equals,
      final DateTime? not,
      @JsonKey(name: 'in') final List<DateTime>? in_,
      final List<DateTime>? notIn,
      final DateTime? lt,
      final DateTime? lte,
      final DateTime? gt,
      final DateTime? gte}) = _$DateTimeFilterImpl;

  factory _DateTimeFilter.fromJson(Map<String, dynamic> json) =
      _$DateTimeFilterImpl.fromJson;

  /// Exact match
  @override
  DateTime? get equals;

  /// Not equal to
  @override
  DateTime? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<DateTime>? get in_;

  /// Not in list of values
  @override
  List<DateTime>? get notIn;

  /// Less than (before)
  @override
  DateTime? get lt;

  /// Less than or equal
  @override
  DateTime? get lte;

  /// Greater than (after)
  @override
  DateTime? get gt;

  /// Greater than or equal
  @override
  DateTime? get gte;

  /// Create a copy of DateTimeFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateTimeFilterImplCopyWith<_$DateTimeFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedbackStatusFilter _$FeedbackStatusFilterFromJson(Map<String, dynamic> json) {
  return _FeedbackStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$FeedbackStatusFilter {
  /// Exact match
  FeedbackStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  FeedbackStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<FeedbackStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<FeedbackStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this FeedbackStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackStatusFilterCopyWith<FeedbackStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackStatusFilterCopyWith<$Res> {
  factory $FeedbackStatusFilterCopyWith(FeedbackStatusFilter value,
          $Res Function(FeedbackStatusFilter) then) =
      _$FeedbackStatusFilterCopyWithImpl<$Res, FeedbackStatusFilter>;
  @useResult
  $Res call(
      {FeedbackStatus? equals,
      FeedbackStatus? not,
      @JsonKey(name: 'in') List<FeedbackStatus>? in_,
      List<FeedbackStatus>? notIn});
}

/// @nodoc
class _$FeedbackStatusFilterCopyWithImpl<$Res,
        $Val extends FeedbackStatusFilter>
    implements $FeedbackStatusFilterCopyWith<$Res> {
  _$FeedbackStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as FeedbackStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as FeedbackStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<FeedbackStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<FeedbackStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedbackStatusFilterImplCopyWith<$Res>
    implements $FeedbackStatusFilterCopyWith<$Res> {
  factory _$$FeedbackStatusFilterImplCopyWith(_$FeedbackStatusFilterImpl value,
          $Res Function(_$FeedbackStatusFilterImpl) then) =
      __$$FeedbackStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FeedbackStatus? equals,
      FeedbackStatus? not,
      @JsonKey(name: 'in') List<FeedbackStatus>? in_,
      List<FeedbackStatus>? notIn});
}

/// @nodoc
class __$$FeedbackStatusFilterImplCopyWithImpl<$Res>
    extends _$FeedbackStatusFilterCopyWithImpl<$Res, _$FeedbackStatusFilterImpl>
    implements _$$FeedbackStatusFilterImplCopyWith<$Res> {
  __$$FeedbackStatusFilterImplCopyWithImpl(_$FeedbackStatusFilterImpl _value,
      $Res Function(_$FeedbackStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$FeedbackStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as FeedbackStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as FeedbackStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<FeedbackStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<FeedbackStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedbackStatusFilterImpl implements _FeedbackStatusFilter {
  const _$FeedbackStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<FeedbackStatus>? in_,
      final List<FeedbackStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$FeedbackStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final FeedbackStatus? equals;

  /// Not equal to
  @override
  final FeedbackStatus? not;

  /// In list of values
  final List<FeedbackStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<FeedbackStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<FeedbackStatus>? _notIn;

  /// Not in list of values
  @override
  List<FeedbackStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FeedbackStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of FeedbackStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackStatusFilterImplCopyWith<_$FeedbackStatusFilterImpl>
      get copyWith =>
          __$$FeedbackStatusFilterImplCopyWithImpl<_$FeedbackStatusFilterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _FeedbackStatusFilter implements FeedbackStatusFilter {
  const factory _FeedbackStatusFilter(
      {final FeedbackStatus? equals,
      final FeedbackStatus? not,
      @JsonKey(name: 'in') final List<FeedbackStatus>? in_,
      final List<FeedbackStatus>? notIn}) = _$FeedbackStatusFilterImpl;

  factory _FeedbackStatusFilter.fromJson(Map<String, dynamic> json) =
      _$FeedbackStatusFilterImpl.fromJson;

  /// Exact match
  @override
  FeedbackStatus? get equals;

  /// Not equal to
  @override
  FeedbackStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<FeedbackStatus>? get in_;

  /// Not in list of values
  @override
  List<FeedbackStatus>? get notIn;

  /// Create a copy of FeedbackStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackStatusFilterImplCopyWith<_$FeedbackStatusFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportTicketStatusFilter _$SupportTicketStatusFilterFromJson(
    Map<String, dynamic> json) {
  return _SupportTicketStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketStatusFilter {
  /// Exact match
  SupportTicketStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  SupportTicketStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<SupportTicketStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<SupportTicketStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketStatusFilterCopyWith<SupportTicketStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketStatusFilterCopyWith<$Res> {
  factory $SupportTicketStatusFilterCopyWith(SupportTicketStatusFilter value,
          $Res Function(SupportTicketStatusFilter) then) =
      _$SupportTicketStatusFilterCopyWithImpl<$Res, SupportTicketStatusFilter>;
  @useResult
  $Res call(
      {SupportTicketStatus? equals,
      SupportTicketStatus? not,
      @JsonKey(name: 'in') List<SupportTicketStatus>? in_,
      List<SupportTicketStatus>? notIn});
}

/// @nodoc
class _$SupportTicketStatusFilterCopyWithImpl<$Res,
        $Val extends SupportTicketStatusFilter>
    implements $SupportTicketStatusFilterCopyWith<$Res> {
  _$SupportTicketStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as SupportTicketStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as SupportTicketStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<SupportTicketStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<SupportTicketStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportTicketStatusFilterImplCopyWith<$Res>
    implements $SupportTicketStatusFilterCopyWith<$Res> {
  factory _$$SupportTicketStatusFilterImplCopyWith(
          _$SupportTicketStatusFilterImpl value,
          $Res Function(_$SupportTicketStatusFilterImpl) then) =
      __$$SupportTicketStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SupportTicketStatus? equals,
      SupportTicketStatus? not,
      @JsonKey(name: 'in') List<SupportTicketStatus>? in_,
      List<SupportTicketStatus>? notIn});
}

/// @nodoc
class __$$SupportTicketStatusFilterImplCopyWithImpl<$Res>
    extends _$SupportTicketStatusFilterCopyWithImpl<$Res,
        _$SupportTicketStatusFilterImpl>
    implements _$$SupportTicketStatusFilterImplCopyWith<$Res> {
  __$$SupportTicketStatusFilterImplCopyWithImpl(
      _$SupportTicketStatusFilterImpl _value,
      $Res Function(_$SupportTicketStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportTicketStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$SupportTicketStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as SupportTicketStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as SupportTicketStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<SupportTicketStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<SupportTicketStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketStatusFilterImpl implements _SupportTicketStatusFilter {
  const _$SupportTicketStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<SupportTicketStatus>? in_,
      final List<SupportTicketStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$SupportTicketStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final SupportTicketStatus? equals;

  /// Not equal to
  @override
  final SupportTicketStatus? not;

  /// In list of values
  final List<SupportTicketStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<SupportTicketStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<SupportTicketStatus>? _notIn;

  /// Not in list of values
  @override
  List<SupportTicketStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SupportTicketStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of SupportTicketStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketStatusFilterImplCopyWith<_$SupportTicketStatusFilterImpl>
      get copyWith => __$$SupportTicketStatusFilterImplCopyWithImpl<
          _$SupportTicketStatusFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _SupportTicketStatusFilter implements SupportTicketStatusFilter {
  const factory _SupportTicketStatusFilter(
          {final SupportTicketStatus? equals,
          final SupportTicketStatus? not,
          @JsonKey(name: 'in') final List<SupportTicketStatus>? in_,
          final List<SupportTicketStatus>? notIn}) =
      _$SupportTicketStatusFilterImpl;

  factory _SupportTicketStatusFilter.fromJson(Map<String, dynamic> json) =
      _$SupportTicketStatusFilterImpl.fromJson;

  /// Exact match
  @override
  SupportTicketStatus? get equals;

  /// Not equal to
  @override
  SupportTicketStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<SupportTicketStatus>? get in_;

  /// Not in list of values
  @override
  List<SupportTicketStatus>? get notIn;

  /// Create a copy of SupportTicketStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketStatusFilterImplCopyWith<_$SupportTicketStatusFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportPriorityFilter _$SupportPriorityFilterFromJson(
    Map<String, dynamic> json) {
  return _SupportPriorityFilter.fromJson(json);
}

/// @nodoc
mixin _$SupportPriorityFilter {
  /// Exact match
  SupportPriority? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  SupportPriority? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<SupportPriority>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<SupportPriority>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this SupportPriorityFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportPriorityFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportPriorityFilterCopyWith<SupportPriorityFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportPriorityFilterCopyWith<$Res> {
  factory $SupportPriorityFilterCopyWith(SupportPriorityFilter value,
          $Res Function(SupportPriorityFilter) then) =
      _$SupportPriorityFilterCopyWithImpl<$Res, SupportPriorityFilter>;
  @useResult
  $Res call(
      {SupportPriority? equals,
      SupportPriority? not,
      @JsonKey(name: 'in') List<SupportPriority>? in_,
      List<SupportPriority>? notIn});
}

/// @nodoc
class _$SupportPriorityFilterCopyWithImpl<$Res,
        $Val extends SupportPriorityFilter>
    implements $SupportPriorityFilterCopyWith<$Res> {
  _$SupportPriorityFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportPriorityFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as SupportPriority?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as SupportPriority?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<SupportPriority>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<SupportPriority>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportPriorityFilterImplCopyWith<$Res>
    implements $SupportPriorityFilterCopyWith<$Res> {
  factory _$$SupportPriorityFilterImplCopyWith(
          _$SupportPriorityFilterImpl value,
          $Res Function(_$SupportPriorityFilterImpl) then) =
      __$$SupportPriorityFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SupportPriority? equals,
      SupportPriority? not,
      @JsonKey(name: 'in') List<SupportPriority>? in_,
      List<SupportPriority>? notIn});
}

/// @nodoc
class __$$SupportPriorityFilterImplCopyWithImpl<$Res>
    extends _$SupportPriorityFilterCopyWithImpl<$Res,
        _$SupportPriorityFilterImpl>
    implements _$$SupportPriorityFilterImplCopyWith<$Res> {
  __$$SupportPriorityFilterImplCopyWithImpl(_$SupportPriorityFilterImpl _value,
      $Res Function(_$SupportPriorityFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportPriorityFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$SupportPriorityFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as SupportPriority?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as SupportPriority?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<SupportPriority>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<SupportPriority>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportPriorityFilterImpl implements _SupportPriorityFilter {
  const _$SupportPriorityFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<SupportPriority>? in_,
      final List<SupportPriority>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$SupportPriorityFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportPriorityFilterImplFromJson(json);

  /// Exact match
  @override
  final SupportPriority? equals;

  /// Not equal to
  @override
  final SupportPriority? not;

  /// In list of values
  final List<SupportPriority>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<SupportPriority>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<SupportPriority>? _notIn;

  /// Not in list of values
  @override
  List<SupportPriority>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SupportPriorityFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportPriorityFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of SupportPriorityFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportPriorityFilterImplCopyWith<_$SupportPriorityFilterImpl>
      get copyWith => __$$SupportPriorityFilterImplCopyWithImpl<
          _$SupportPriorityFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportPriorityFilterImplToJson(
      this,
    );
  }
}

abstract class _SupportPriorityFilter implements SupportPriorityFilter {
  const factory _SupportPriorityFilter(
      {final SupportPriority? equals,
      final SupportPriority? not,
      @JsonKey(name: 'in') final List<SupportPriority>? in_,
      final List<SupportPriority>? notIn}) = _$SupportPriorityFilterImpl;

  factory _SupportPriorityFilter.fromJson(Map<String, dynamic> json) =
      _$SupportPriorityFilterImpl.fromJson;

  /// Exact match
  @override
  SupportPriority? get equals;

  /// Not equal to
  @override
  SupportPriority? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<SupportPriority>? get in_;

  /// Not in list of values
  @override
  List<SupportPriority>? get notIn;

  /// Create a copy of SupportPriorityFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportPriorityFilterImplCopyWith<_$SupportPriorityFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CancellationReasonFilter _$CancellationReasonFilterFromJson(
    Map<String, dynamic> json) {
  return _CancellationReasonFilter.fromJson(json);
}

/// @nodoc
mixin _$CancellationReasonFilter {
  /// Exact match
  CancellationReason? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  CancellationReason? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<CancellationReason>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<CancellationReason>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this CancellationReasonFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CancellationReasonFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CancellationReasonFilterCopyWith<CancellationReasonFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancellationReasonFilterCopyWith<$Res> {
  factory $CancellationReasonFilterCopyWith(CancellationReasonFilter value,
          $Res Function(CancellationReasonFilter) then) =
      _$CancellationReasonFilterCopyWithImpl<$Res, CancellationReasonFilter>;
  @useResult
  $Res call(
      {CancellationReason? equals,
      CancellationReason? not,
      @JsonKey(name: 'in') List<CancellationReason>? in_,
      List<CancellationReason>? notIn});
}

/// @nodoc
class _$CancellationReasonFilterCopyWithImpl<$Res,
        $Val extends CancellationReasonFilter>
    implements $CancellationReasonFilterCopyWith<$Res> {
  _$CancellationReasonFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CancellationReasonFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as CancellationReason?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as CancellationReason?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<CancellationReason>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<CancellationReason>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CancellationReasonFilterImplCopyWith<$Res>
    implements $CancellationReasonFilterCopyWith<$Res> {
  factory _$$CancellationReasonFilterImplCopyWith(
          _$CancellationReasonFilterImpl value,
          $Res Function(_$CancellationReasonFilterImpl) then) =
      __$$CancellationReasonFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CancellationReason? equals,
      CancellationReason? not,
      @JsonKey(name: 'in') List<CancellationReason>? in_,
      List<CancellationReason>? notIn});
}

/// @nodoc
class __$$CancellationReasonFilterImplCopyWithImpl<$Res>
    extends _$CancellationReasonFilterCopyWithImpl<$Res,
        _$CancellationReasonFilterImpl>
    implements _$$CancellationReasonFilterImplCopyWith<$Res> {
  __$$CancellationReasonFilterImplCopyWithImpl(
      _$CancellationReasonFilterImpl _value,
      $Res Function(_$CancellationReasonFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CancellationReasonFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$CancellationReasonFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as CancellationReason?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as CancellationReason?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<CancellationReason>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<CancellationReason>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CancellationReasonFilterImpl implements _CancellationReasonFilter {
  const _$CancellationReasonFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<CancellationReason>? in_,
      final List<CancellationReason>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$CancellationReasonFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancellationReasonFilterImplFromJson(json);

  /// Exact match
  @override
  final CancellationReason? equals;

  /// Not equal to
  @override
  final CancellationReason? not;

  /// In list of values
  final List<CancellationReason>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<CancellationReason>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<CancellationReason>? _notIn;

  /// Not in list of values
  @override
  List<CancellationReason>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CancellationReasonFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancellationReasonFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of CancellationReasonFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancellationReasonFilterImplCopyWith<_$CancellationReasonFilterImpl>
      get copyWith => __$$CancellationReasonFilterImplCopyWithImpl<
          _$CancellationReasonFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CancellationReasonFilterImplToJson(
      this,
    );
  }
}

abstract class _CancellationReasonFilter implements CancellationReasonFilter {
  const factory _CancellationReasonFilter(
      {final CancellationReason? equals,
      final CancellationReason? not,
      @JsonKey(name: 'in') final List<CancellationReason>? in_,
      final List<CancellationReason>? notIn}) = _$CancellationReasonFilterImpl;

  factory _CancellationReasonFilter.fromJson(Map<String, dynamic> json) =
      _$CancellationReasonFilterImpl.fromJson;

  /// Exact match
  @override
  CancellationReason? get equals;

  /// Not equal to
  @override
  CancellationReason? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<CancellationReason>? get in_;

  /// Not in list of values
  @override
  List<CancellationReason>? get notIn;

  /// Create a copy of CancellationReasonFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancellationReasonFilterImplCopyWith<_$CancellationReasonFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportIssueTypeFilter _$SupportIssueTypeFilterFromJson(
    Map<String, dynamic> json) {
  return _SupportIssueTypeFilter.fromJson(json);
}

/// @nodoc
mixin _$SupportIssueTypeFilter {
  /// Exact match
  SupportIssueType? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  SupportIssueType? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<SupportIssueType>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<SupportIssueType>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this SupportIssueTypeFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportIssueTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportIssueTypeFilterCopyWith<SupportIssueTypeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportIssueTypeFilterCopyWith<$Res> {
  factory $SupportIssueTypeFilterCopyWith(SupportIssueTypeFilter value,
          $Res Function(SupportIssueTypeFilter) then) =
      _$SupportIssueTypeFilterCopyWithImpl<$Res, SupportIssueTypeFilter>;
  @useResult
  $Res call(
      {SupportIssueType? equals,
      SupportIssueType? not,
      @JsonKey(name: 'in') List<SupportIssueType>? in_,
      List<SupportIssueType>? notIn});
}

/// @nodoc
class _$SupportIssueTypeFilterCopyWithImpl<$Res,
        $Val extends SupportIssueTypeFilter>
    implements $SupportIssueTypeFilterCopyWith<$Res> {
  _$SupportIssueTypeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportIssueTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as SupportIssueType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as SupportIssueType?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<SupportIssueType>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<SupportIssueType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportIssueTypeFilterImplCopyWith<$Res>
    implements $SupportIssueTypeFilterCopyWith<$Res> {
  factory _$$SupportIssueTypeFilterImplCopyWith(
          _$SupportIssueTypeFilterImpl value,
          $Res Function(_$SupportIssueTypeFilterImpl) then) =
      __$$SupportIssueTypeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SupportIssueType? equals,
      SupportIssueType? not,
      @JsonKey(name: 'in') List<SupportIssueType>? in_,
      List<SupportIssueType>? notIn});
}

/// @nodoc
class __$$SupportIssueTypeFilterImplCopyWithImpl<$Res>
    extends _$SupportIssueTypeFilterCopyWithImpl<$Res,
        _$SupportIssueTypeFilterImpl>
    implements _$$SupportIssueTypeFilterImplCopyWith<$Res> {
  __$$SupportIssueTypeFilterImplCopyWithImpl(
      _$SupportIssueTypeFilterImpl _value,
      $Res Function(_$SupportIssueTypeFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportIssueTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$SupportIssueTypeFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as SupportIssueType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as SupportIssueType?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<SupportIssueType>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<SupportIssueType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportIssueTypeFilterImpl implements _SupportIssueTypeFilter {
  const _$SupportIssueTypeFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<SupportIssueType>? in_,
      final List<SupportIssueType>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$SupportIssueTypeFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportIssueTypeFilterImplFromJson(json);

  /// Exact match
  @override
  final SupportIssueType? equals;

  /// Not equal to
  @override
  final SupportIssueType? not;

  /// In list of values
  final List<SupportIssueType>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<SupportIssueType>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<SupportIssueType>? _notIn;

  /// Not in list of values
  @override
  List<SupportIssueType>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SupportIssueTypeFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportIssueTypeFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of SupportIssueTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportIssueTypeFilterImplCopyWith<_$SupportIssueTypeFilterImpl>
      get copyWith => __$$SupportIssueTypeFilterImplCopyWithImpl<
          _$SupportIssueTypeFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportIssueTypeFilterImplToJson(
      this,
    );
  }
}

abstract class _SupportIssueTypeFilter implements SupportIssueTypeFilter {
  const factory _SupportIssueTypeFilter(
      {final SupportIssueType? equals,
      final SupportIssueType? not,
      @JsonKey(name: 'in') final List<SupportIssueType>? in_,
      final List<SupportIssueType>? notIn}) = _$SupportIssueTypeFilterImpl;

  factory _SupportIssueTypeFilter.fromJson(Map<String, dynamic> json) =
      _$SupportIssueTypeFilterImpl.fromJson;

  /// Exact match
  @override
  SupportIssueType? get equals;

  /// Not equal to
  @override
  SupportIssueType? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<SupportIssueType>? get in_;

  /// Not in list of values
  @override
  List<SupportIssueType>? get notIn;

  /// Create a copy of SupportIssueTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportIssueTypeFilterImplCopyWith<_$SupportIssueTypeFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AchievementTypeFilter _$AchievementTypeFilterFromJson(
    Map<String, dynamic> json) {
  return _AchievementTypeFilter.fromJson(json);
}

/// @nodoc
mixin _$AchievementTypeFilter {
  /// Exact match
  AchievementType? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  AchievementType? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<AchievementType>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<AchievementType>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this AchievementTypeFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AchievementTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AchievementTypeFilterCopyWith<AchievementTypeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementTypeFilterCopyWith<$Res> {
  factory $AchievementTypeFilterCopyWith(AchievementTypeFilter value,
          $Res Function(AchievementTypeFilter) then) =
      _$AchievementTypeFilterCopyWithImpl<$Res, AchievementTypeFilter>;
  @useResult
  $Res call(
      {AchievementType? equals,
      AchievementType? not,
      @JsonKey(name: 'in') List<AchievementType>? in_,
      List<AchievementType>? notIn});
}

/// @nodoc
class _$AchievementTypeFilterCopyWithImpl<$Res,
        $Val extends AchievementTypeFilter>
    implements $AchievementTypeFilterCopyWith<$Res> {
  _$AchievementTypeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AchievementTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as AchievementType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as AchievementType?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<AchievementType>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<AchievementType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AchievementTypeFilterImplCopyWith<$Res>
    implements $AchievementTypeFilterCopyWith<$Res> {
  factory _$$AchievementTypeFilterImplCopyWith(
          _$AchievementTypeFilterImpl value,
          $Res Function(_$AchievementTypeFilterImpl) then) =
      __$$AchievementTypeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AchievementType? equals,
      AchievementType? not,
      @JsonKey(name: 'in') List<AchievementType>? in_,
      List<AchievementType>? notIn});
}

/// @nodoc
class __$$AchievementTypeFilterImplCopyWithImpl<$Res>
    extends _$AchievementTypeFilterCopyWithImpl<$Res,
        _$AchievementTypeFilterImpl>
    implements _$$AchievementTypeFilterImplCopyWith<$Res> {
  __$$AchievementTypeFilterImplCopyWithImpl(_$AchievementTypeFilterImpl _value,
      $Res Function(_$AchievementTypeFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AchievementTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$AchievementTypeFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as AchievementType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as AchievementType?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<AchievementType>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<AchievementType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AchievementTypeFilterImpl implements _AchievementTypeFilter {
  const _$AchievementTypeFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<AchievementType>? in_,
      final List<AchievementType>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$AchievementTypeFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementTypeFilterImplFromJson(json);

  /// Exact match
  @override
  final AchievementType? equals;

  /// Not equal to
  @override
  final AchievementType? not;

  /// In list of values
  final List<AchievementType>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<AchievementType>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<AchievementType>? _notIn;

  /// Not in list of values
  @override
  List<AchievementType>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AchievementTypeFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementTypeFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of AchievementTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementTypeFilterImplCopyWith<_$AchievementTypeFilterImpl>
      get copyWith => __$$AchievementTypeFilterImplCopyWithImpl<
          _$AchievementTypeFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementTypeFilterImplToJson(
      this,
    );
  }
}

abstract class _AchievementTypeFilter implements AchievementTypeFilter {
  const factory _AchievementTypeFilter(
      {final AchievementType? equals,
      final AchievementType? not,
      @JsonKey(name: 'in') final List<AchievementType>? in_,
      final List<AchievementType>? notIn}) = _$AchievementTypeFilterImpl;

  factory _AchievementTypeFilter.fromJson(Map<String, dynamic> json) =
      _$AchievementTypeFilterImpl.fromJson;

  /// Exact match
  @override
  AchievementType? get equals;

  /// Not equal to
  @override
  AchievementType? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<AchievementType>? get in_;

  /// Not in list of values
  @override
  List<AchievementType>? get notIn;

  /// Create a copy of AchievementTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementTypeFilterImplCopyWith<_$AchievementTypeFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RequestStatusFilter _$RequestStatusFilterFromJson(Map<String, dynamic> json) {
  return _RequestStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$RequestStatusFilter {
  /// Exact match
  RequestStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  RequestStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<RequestStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<RequestStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this RequestStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestStatusFilterCopyWith<RequestStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStatusFilterCopyWith<$Res> {
  factory $RequestStatusFilterCopyWith(
          RequestStatusFilter value, $Res Function(RequestStatusFilter) then) =
      _$RequestStatusFilterCopyWithImpl<$Res, RequestStatusFilter>;
  @useResult
  $Res call(
      {RequestStatus? equals,
      RequestStatus? not,
      @JsonKey(name: 'in') List<RequestStatus>? in_,
      List<RequestStatus>? notIn});
}

/// @nodoc
class _$RequestStatusFilterCopyWithImpl<$Res, $Val extends RequestStatusFilter>
    implements $RequestStatusFilterCopyWith<$Res> {
  _$RequestStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<RequestStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<RequestStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestStatusFilterImplCopyWith<$Res>
    implements $RequestStatusFilterCopyWith<$Res> {
  factory _$$RequestStatusFilterImplCopyWith(_$RequestStatusFilterImpl value,
          $Res Function(_$RequestStatusFilterImpl) then) =
      __$$RequestStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus? equals,
      RequestStatus? not,
      @JsonKey(name: 'in') List<RequestStatus>? in_,
      List<RequestStatus>? notIn});
}

/// @nodoc
class __$$RequestStatusFilterImplCopyWithImpl<$Res>
    extends _$RequestStatusFilterCopyWithImpl<$Res, _$RequestStatusFilterImpl>
    implements _$$RequestStatusFilterImplCopyWith<$Res> {
  __$$RequestStatusFilterImplCopyWithImpl(_$RequestStatusFilterImpl _value,
      $Res Function(_$RequestStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$RequestStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<RequestStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<RequestStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestStatusFilterImpl implements _RequestStatusFilter {
  const _$RequestStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<RequestStatus>? in_,
      final List<RequestStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$RequestStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final RequestStatus? equals;

  /// Not equal to
  @override
  final RequestStatus? not;

  /// In list of values
  final List<RequestStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<RequestStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<RequestStatus>? _notIn;

  /// Not in list of values
  @override
  List<RequestStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of RequestStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestStatusFilterImplCopyWith<_$RequestStatusFilterImpl> get copyWith =>
      __$$RequestStatusFilterImplCopyWithImpl<_$RequestStatusFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _RequestStatusFilter implements RequestStatusFilter {
  const factory _RequestStatusFilter(
      {final RequestStatus? equals,
      final RequestStatus? not,
      @JsonKey(name: 'in') final List<RequestStatus>? in_,
      final List<RequestStatus>? notIn}) = _$RequestStatusFilterImpl;

  factory _RequestStatusFilter.fromJson(Map<String, dynamic> json) =
      _$RequestStatusFilterImpl.fromJson;

  /// Exact match
  @override
  RequestStatus? get equals;

  /// Not equal to
  @override
  RequestStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<RequestStatus>? get in_;

  /// Not in list of values
  @override
  List<RequestStatus>? get notIn;

  /// Create a copy of RequestStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestStatusFilterImplCopyWith<_$RequestStatusFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrialSessionStatusFilter _$TrialSessionStatusFilterFromJson(
    Map<String, dynamic> json) {
  return _TrialSessionStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$TrialSessionStatusFilter {
  /// Exact match
  TrialSessionStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  TrialSessionStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<TrialSessionStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<TrialSessionStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this TrialSessionStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrialSessionStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrialSessionStatusFilterCopyWith<TrialSessionStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrialSessionStatusFilterCopyWith<$Res> {
  factory $TrialSessionStatusFilterCopyWith(TrialSessionStatusFilter value,
          $Res Function(TrialSessionStatusFilter) then) =
      _$TrialSessionStatusFilterCopyWithImpl<$Res, TrialSessionStatusFilter>;
  @useResult
  $Res call(
      {TrialSessionStatus? equals,
      TrialSessionStatus? not,
      @JsonKey(name: 'in') List<TrialSessionStatus>? in_,
      List<TrialSessionStatus>? notIn});
}

/// @nodoc
class _$TrialSessionStatusFilterCopyWithImpl<$Res,
        $Val extends TrialSessionStatusFilter>
    implements $TrialSessionStatusFilterCopyWith<$Res> {
  _$TrialSessionStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrialSessionStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as TrialSessionStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as TrialSessionStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<TrialSessionStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<TrialSessionStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrialSessionStatusFilterImplCopyWith<$Res>
    implements $TrialSessionStatusFilterCopyWith<$Res> {
  factory _$$TrialSessionStatusFilterImplCopyWith(
          _$TrialSessionStatusFilterImpl value,
          $Res Function(_$TrialSessionStatusFilterImpl) then) =
      __$$TrialSessionStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrialSessionStatus? equals,
      TrialSessionStatus? not,
      @JsonKey(name: 'in') List<TrialSessionStatus>? in_,
      List<TrialSessionStatus>? notIn});
}

/// @nodoc
class __$$TrialSessionStatusFilterImplCopyWithImpl<$Res>
    extends _$TrialSessionStatusFilterCopyWithImpl<$Res,
        _$TrialSessionStatusFilterImpl>
    implements _$$TrialSessionStatusFilterImplCopyWith<$Res> {
  __$$TrialSessionStatusFilterImplCopyWithImpl(
      _$TrialSessionStatusFilterImpl _value,
      $Res Function(_$TrialSessionStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrialSessionStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$TrialSessionStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as TrialSessionStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as TrialSessionStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<TrialSessionStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<TrialSessionStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrialSessionStatusFilterImpl implements _TrialSessionStatusFilter {
  const _$TrialSessionStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<TrialSessionStatus>? in_,
      final List<TrialSessionStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$TrialSessionStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrialSessionStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final TrialSessionStatus? equals;

  /// Not equal to
  @override
  final TrialSessionStatus? not;

  /// In list of values
  final List<TrialSessionStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<TrialSessionStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<TrialSessionStatus>? _notIn;

  /// Not in list of values
  @override
  List<TrialSessionStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrialSessionStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrialSessionStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of TrialSessionStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrialSessionStatusFilterImplCopyWith<_$TrialSessionStatusFilterImpl>
      get copyWith => __$$TrialSessionStatusFilterImplCopyWithImpl<
          _$TrialSessionStatusFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrialSessionStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _TrialSessionStatusFilter implements TrialSessionStatusFilter {
  const factory _TrialSessionStatusFilter(
      {final TrialSessionStatus? equals,
      final TrialSessionStatus? not,
      @JsonKey(name: 'in') final List<TrialSessionStatus>? in_,
      final List<TrialSessionStatus>? notIn}) = _$TrialSessionStatusFilterImpl;

  factory _TrialSessionStatusFilter.fromJson(Map<String, dynamic> json) =
      _$TrialSessionStatusFilterImpl.fromJson;

  /// Exact match
  @override
  TrialSessionStatus? get equals;

  /// Not equal to
  @override
  TrialSessionStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<TrialSessionStatus>? get in_;

  /// Not in list of values
  @override
  List<TrialSessionStatus>? get notIn;

  /// Create a copy of TrialSessionStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrialSessionStatusFilterImplCopyWith<_$TrialSessionStatusFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActivityTypeFilter _$ActivityTypeFilterFromJson(Map<String, dynamic> json) {
  return _ActivityTypeFilter.fromJson(json);
}

/// @nodoc
mixin _$ActivityTypeFilter {
  /// Exact match
  ActivityType? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  ActivityType? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<ActivityType>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<ActivityType>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this ActivityTypeFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityTypeFilterCopyWith<ActivityTypeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityTypeFilterCopyWith<$Res> {
  factory $ActivityTypeFilterCopyWith(
          ActivityTypeFilter value, $Res Function(ActivityTypeFilter) then) =
      _$ActivityTypeFilterCopyWithImpl<$Res, ActivityTypeFilter>;
  @useResult
  $Res call(
      {ActivityType? equals,
      ActivityType? not,
      @JsonKey(name: 'in') List<ActivityType>? in_,
      List<ActivityType>? notIn});
}

/// @nodoc
class _$ActivityTypeFilterCopyWithImpl<$Res, $Val extends ActivityTypeFilter>
    implements $ActivityTypeFilterCopyWith<$Res> {
  _$ActivityTypeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ActivityType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ActivityType?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ActivityType>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ActivityType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityTypeFilterImplCopyWith<$Res>
    implements $ActivityTypeFilterCopyWith<$Res> {
  factory _$$ActivityTypeFilterImplCopyWith(_$ActivityTypeFilterImpl value,
          $Res Function(_$ActivityTypeFilterImpl) then) =
      __$$ActivityTypeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ActivityType? equals,
      ActivityType? not,
      @JsonKey(name: 'in') List<ActivityType>? in_,
      List<ActivityType>? notIn});
}

/// @nodoc
class __$$ActivityTypeFilterImplCopyWithImpl<$Res>
    extends _$ActivityTypeFilterCopyWithImpl<$Res, _$ActivityTypeFilterImpl>
    implements _$$ActivityTypeFilterImplCopyWith<$Res> {
  __$$ActivityTypeFilterImplCopyWithImpl(_$ActivityTypeFilterImpl _value,
      $Res Function(_$ActivityTypeFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$ActivityTypeFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ActivityType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ActivityType?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ActivityType>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ActivityType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityTypeFilterImpl implements _ActivityTypeFilter {
  const _$ActivityTypeFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<ActivityType>? in_,
      final List<ActivityType>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$ActivityTypeFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityTypeFilterImplFromJson(json);

  /// Exact match
  @override
  final ActivityType? equals;

  /// Not equal to
  @override
  final ActivityType? not;

  /// In list of values
  final List<ActivityType>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ActivityType>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<ActivityType>? _notIn;

  /// Not in list of values
  @override
  List<ActivityType>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ActivityTypeFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityTypeFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of ActivityTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityTypeFilterImplCopyWith<_$ActivityTypeFilterImpl> get copyWith =>
      __$$ActivityTypeFilterImplCopyWithImpl<_$ActivityTypeFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityTypeFilterImplToJson(
      this,
    );
  }
}

abstract class _ActivityTypeFilter implements ActivityTypeFilter {
  const factory _ActivityTypeFilter(
      {final ActivityType? equals,
      final ActivityType? not,
      @JsonKey(name: 'in') final List<ActivityType>? in_,
      final List<ActivityType>? notIn}) = _$ActivityTypeFilterImpl;

  factory _ActivityTypeFilter.fromJson(Map<String, dynamic> json) =
      _$ActivityTypeFilterImpl.fromJson;

  /// Exact match
  @override
  ActivityType? get equals;

  /// Not equal to
  @override
  ActivityType? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ActivityType>? get in_;

  /// Not in list of values
  @override
  List<ActivityType>? get notIn;

  /// Create a copy of ActivityTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityTypeFilterImplCopyWith<_$ActivityTypeFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingSourceFilter _$BookingSourceFilterFromJson(Map<String, dynamic> json) {
  return _BookingSourceFilter.fromJson(json);
}

/// @nodoc
mixin _$BookingSourceFilter {
  /// Exact match
  BookingSource? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  BookingSource? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<BookingSource>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<BookingSource>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this BookingSourceFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingSourceFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingSourceFilterCopyWith<BookingSourceFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingSourceFilterCopyWith<$Res> {
  factory $BookingSourceFilterCopyWith(
          BookingSourceFilter value, $Res Function(BookingSourceFilter) then) =
      _$BookingSourceFilterCopyWithImpl<$Res, BookingSourceFilter>;
  @useResult
  $Res call(
      {BookingSource? equals,
      BookingSource? not,
      @JsonKey(name: 'in') List<BookingSource>? in_,
      List<BookingSource>? notIn});
}

/// @nodoc
class _$BookingSourceFilterCopyWithImpl<$Res, $Val extends BookingSourceFilter>
    implements $BookingSourceFilterCopyWith<$Res> {
  _$BookingSourceFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingSourceFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as BookingSource?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as BookingSource?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<BookingSource>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<BookingSource>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingSourceFilterImplCopyWith<$Res>
    implements $BookingSourceFilterCopyWith<$Res> {
  factory _$$BookingSourceFilterImplCopyWith(_$BookingSourceFilterImpl value,
          $Res Function(_$BookingSourceFilterImpl) then) =
      __$$BookingSourceFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BookingSource? equals,
      BookingSource? not,
      @JsonKey(name: 'in') List<BookingSource>? in_,
      List<BookingSource>? notIn});
}

/// @nodoc
class __$$BookingSourceFilterImplCopyWithImpl<$Res>
    extends _$BookingSourceFilterCopyWithImpl<$Res, _$BookingSourceFilterImpl>
    implements _$$BookingSourceFilterImplCopyWith<$Res> {
  __$$BookingSourceFilterImplCopyWithImpl(_$BookingSourceFilterImpl _value,
      $Res Function(_$BookingSourceFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingSourceFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$BookingSourceFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as BookingSource?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as BookingSource?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<BookingSource>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<BookingSource>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingSourceFilterImpl implements _BookingSourceFilter {
  const _$BookingSourceFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<BookingSource>? in_,
      final List<BookingSource>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$BookingSourceFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingSourceFilterImplFromJson(json);

  /// Exact match
  @override
  final BookingSource? equals;

  /// Not equal to
  @override
  final BookingSource? not;

  /// In list of values
  final List<BookingSource>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<BookingSource>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<BookingSource>? _notIn;

  /// Not in list of values
  @override
  List<BookingSource>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookingSourceFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingSourceFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of BookingSourceFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingSourceFilterImplCopyWith<_$BookingSourceFilterImpl> get copyWith =>
      __$$BookingSourceFilterImplCopyWithImpl<_$BookingSourceFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingSourceFilterImplToJson(
      this,
    );
  }
}

abstract class _BookingSourceFilter implements BookingSourceFilter {
  const factory _BookingSourceFilter(
      {final BookingSource? equals,
      final BookingSource? not,
      @JsonKey(name: 'in') final List<BookingSource>? in_,
      final List<BookingSource>? notIn}) = _$BookingSourceFilterImpl;

  factory _BookingSourceFilter.fromJson(Map<String, dynamic> json) =
      _$BookingSourceFilterImpl.fromJson;

  /// Exact match
  @override
  BookingSource? get equals;

  /// Not equal to
  @override
  BookingSource? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<BookingSource>? get in_;

  /// Not in list of values
  @override
  List<BookingSource>? get notIn;

  /// Create a copy of BookingSourceFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingSourceFilterImplCopyWith<_$BookingSourceFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebinarStatusFilter _$WebinarStatusFilterFromJson(Map<String, dynamic> json) {
  return _WebinarStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$WebinarStatusFilter {
  /// Exact match
  WebinarStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  WebinarStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<WebinarStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<WebinarStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this WebinarStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarStatusFilterCopyWith<WebinarStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarStatusFilterCopyWith<$Res> {
  factory $WebinarStatusFilterCopyWith(
          WebinarStatusFilter value, $Res Function(WebinarStatusFilter) then) =
      _$WebinarStatusFilterCopyWithImpl<$Res, WebinarStatusFilter>;
  @useResult
  $Res call(
      {WebinarStatus? equals,
      WebinarStatus? not,
      @JsonKey(name: 'in') List<WebinarStatus>? in_,
      List<WebinarStatus>? notIn});
}

/// @nodoc
class _$WebinarStatusFilterCopyWithImpl<$Res, $Val extends WebinarStatusFilter>
    implements $WebinarStatusFilterCopyWith<$Res> {
  _$WebinarStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as WebinarStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as WebinarStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<WebinarStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<WebinarStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebinarStatusFilterImplCopyWith<$Res>
    implements $WebinarStatusFilterCopyWith<$Res> {
  factory _$$WebinarStatusFilterImplCopyWith(_$WebinarStatusFilterImpl value,
          $Res Function(_$WebinarStatusFilterImpl) then) =
      __$$WebinarStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WebinarStatus? equals,
      WebinarStatus? not,
      @JsonKey(name: 'in') List<WebinarStatus>? in_,
      List<WebinarStatus>? notIn});
}

/// @nodoc
class __$$WebinarStatusFilterImplCopyWithImpl<$Res>
    extends _$WebinarStatusFilterCopyWithImpl<$Res, _$WebinarStatusFilterImpl>
    implements _$$WebinarStatusFilterImplCopyWith<$Res> {
  __$$WebinarStatusFilterImplCopyWithImpl(_$WebinarStatusFilterImpl _value,
      $Res Function(_$WebinarStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$WebinarStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as WebinarStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as WebinarStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<WebinarStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<WebinarStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarStatusFilterImpl implements _WebinarStatusFilter {
  const _$WebinarStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<WebinarStatus>? in_,
      final List<WebinarStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$WebinarStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final WebinarStatus? equals;

  /// Not equal to
  @override
  final WebinarStatus? not;

  /// In list of values
  final List<WebinarStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<WebinarStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<WebinarStatus>? _notIn;

  /// Not in list of values
  @override
  List<WebinarStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WebinarStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of WebinarStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarStatusFilterImplCopyWith<_$WebinarStatusFilterImpl> get copyWith =>
      __$$WebinarStatusFilterImplCopyWithImpl<_$WebinarStatusFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _WebinarStatusFilter implements WebinarStatusFilter {
  const factory _WebinarStatusFilter(
      {final WebinarStatus? equals,
      final WebinarStatus? not,
      @JsonKey(name: 'in') final List<WebinarStatus>? in_,
      final List<WebinarStatus>? notIn}) = _$WebinarStatusFilterImpl;

  factory _WebinarStatusFilter.fromJson(Map<String, dynamic> json) =
      _$WebinarStatusFilterImpl.fromJson;

  /// Exact match
  @override
  WebinarStatus? get equals;

  /// Not equal to
  @override
  WebinarStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<WebinarStatus>? get in_;

  /// Not in list of values
  @override
  List<WebinarStatus>? get notIn;

  /// Create a copy of WebinarStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarStatusFilterImplCopyWith<_$WebinarStatusFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassStatusFilter _$ClassStatusFilterFromJson(Map<String, dynamic> json) {
  return _ClassStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$ClassStatusFilter {
  /// Exact match
  ClassStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  ClassStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<ClassStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<ClassStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this ClassStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassStatusFilterCopyWith<ClassStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassStatusFilterCopyWith<$Res> {
  factory $ClassStatusFilterCopyWith(
          ClassStatusFilter value, $Res Function(ClassStatusFilter) then) =
      _$ClassStatusFilterCopyWithImpl<$Res, ClassStatusFilter>;
  @useResult
  $Res call(
      {ClassStatus? equals,
      ClassStatus? not,
      @JsonKey(name: 'in') List<ClassStatus>? in_,
      List<ClassStatus>? notIn});
}

/// @nodoc
class _$ClassStatusFilterCopyWithImpl<$Res, $Val extends ClassStatusFilter>
    implements $ClassStatusFilterCopyWith<$Res> {
  _$ClassStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ClassStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ClassStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ClassStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ClassStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassStatusFilterImplCopyWith<$Res>
    implements $ClassStatusFilterCopyWith<$Res> {
  factory _$$ClassStatusFilterImplCopyWith(_$ClassStatusFilterImpl value,
          $Res Function(_$ClassStatusFilterImpl) then) =
      __$$ClassStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ClassStatus? equals,
      ClassStatus? not,
      @JsonKey(name: 'in') List<ClassStatus>? in_,
      List<ClassStatus>? notIn});
}

/// @nodoc
class __$$ClassStatusFilterImplCopyWithImpl<$Res>
    extends _$ClassStatusFilterCopyWithImpl<$Res, _$ClassStatusFilterImpl>
    implements _$$ClassStatusFilterImplCopyWith<$Res> {
  __$$ClassStatusFilterImplCopyWithImpl(_$ClassStatusFilterImpl _value,
      $Res Function(_$ClassStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$ClassStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ClassStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ClassStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ClassStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ClassStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassStatusFilterImpl implements _ClassStatusFilter {
  const _$ClassStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<ClassStatus>? in_,
      final List<ClassStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$ClassStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final ClassStatus? equals;

  /// Not equal to
  @override
  final ClassStatus? not;

  /// In list of values
  final List<ClassStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ClassStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<ClassStatus>? _notIn;

  /// Not in list of values
  @override
  List<ClassStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClassStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of ClassStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassStatusFilterImplCopyWith<_$ClassStatusFilterImpl> get copyWith =>
      __$$ClassStatusFilterImplCopyWithImpl<_$ClassStatusFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _ClassStatusFilter implements ClassStatusFilter {
  const factory _ClassStatusFilter(
      {final ClassStatus? equals,
      final ClassStatus? not,
      @JsonKey(name: 'in') final List<ClassStatus>? in_,
      final List<ClassStatus>? notIn}) = _$ClassStatusFilterImpl;

  factory _ClassStatusFilter.fromJson(Map<String, dynamic> json) =
      _$ClassStatusFilterImpl.fromJson;

  /// Exact match
  @override
  ClassStatus? get equals;

  /// Not equal to
  @override
  ClassStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ClassStatus>? get in_;

  /// Not in list of values
  @override
  List<ClassStatus>? get notIn;

  /// Create a copy of ClassStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassStatusFilterImplCopyWith<_$ClassStatusFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WaitlistStatusFilter _$WaitlistStatusFilterFromJson(Map<String, dynamic> json) {
  return _WaitlistStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$WaitlistStatusFilter {
  /// Exact match
  WaitlistStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  WaitlistStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<WaitlistStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<WaitlistStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this WaitlistStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WaitlistStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaitlistStatusFilterCopyWith<WaitlistStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaitlistStatusFilterCopyWith<$Res> {
  factory $WaitlistStatusFilterCopyWith(WaitlistStatusFilter value,
          $Res Function(WaitlistStatusFilter) then) =
      _$WaitlistStatusFilterCopyWithImpl<$Res, WaitlistStatusFilter>;
  @useResult
  $Res call(
      {WaitlistStatus? equals,
      WaitlistStatus? not,
      @JsonKey(name: 'in') List<WaitlistStatus>? in_,
      List<WaitlistStatus>? notIn});
}

/// @nodoc
class _$WaitlistStatusFilterCopyWithImpl<$Res,
        $Val extends WaitlistStatusFilter>
    implements $WaitlistStatusFilterCopyWith<$Res> {
  _$WaitlistStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WaitlistStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as WaitlistStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as WaitlistStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<WaitlistStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<WaitlistStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaitlistStatusFilterImplCopyWith<$Res>
    implements $WaitlistStatusFilterCopyWith<$Res> {
  factory _$$WaitlistStatusFilterImplCopyWith(_$WaitlistStatusFilterImpl value,
          $Res Function(_$WaitlistStatusFilterImpl) then) =
      __$$WaitlistStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WaitlistStatus? equals,
      WaitlistStatus? not,
      @JsonKey(name: 'in') List<WaitlistStatus>? in_,
      List<WaitlistStatus>? notIn});
}

/// @nodoc
class __$$WaitlistStatusFilterImplCopyWithImpl<$Res>
    extends _$WaitlistStatusFilterCopyWithImpl<$Res, _$WaitlistStatusFilterImpl>
    implements _$$WaitlistStatusFilterImplCopyWith<$Res> {
  __$$WaitlistStatusFilterImplCopyWithImpl(_$WaitlistStatusFilterImpl _value,
      $Res Function(_$WaitlistStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of WaitlistStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$WaitlistStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as WaitlistStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as WaitlistStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<WaitlistStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<WaitlistStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaitlistStatusFilterImpl implements _WaitlistStatusFilter {
  const _$WaitlistStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<WaitlistStatus>? in_,
      final List<WaitlistStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$WaitlistStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaitlistStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final WaitlistStatus? equals;

  /// Not equal to
  @override
  final WaitlistStatus? not;

  /// In list of values
  final List<WaitlistStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<WaitlistStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<WaitlistStatus>? _notIn;

  /// Not in list of values
  @override
  List<WaitlistStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WaitlistStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitlistStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of WaitlistStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitlistStatusFilterImplCopyWith<_$WaitlistStatusFilterImpl>
      get copyWith =>
          __$$WaitlistStatusFilterImplCopyWithImpl<_$WaitlistStatusFilterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaitlistStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _WaitlistStatusFilter implements WaitlistStatusFilter {
  const factory _WaitlistStatusFilter(
      {final WaitlistStatus? equals,
      final WaitlistStatus? not,
      @JsonKey(name: 'in') final List<WaitlistStatus>? in_,
      final List<WaitlistStatus>? notIn}) = _$WaitlistStatusFilterImpl;

  factory _WaitlistStatusFilter.fromJson(Map<String, dynamic> json) =
      _$WaitlistStatusFilterImpl.fromJson;

  /// Exact match
  @override
  WaitlistStatus? get equals;

  /// Not equal to
  @override
  WaitlistStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<WaitlistStatus>? get in_;

  /// Not in list of values
  @override
  List<WaitlistStatus>? get notIn;

  /// Create a copy of WaitlistStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaitlistStatusFilterImplCopyWith<_$WaitlistStatusFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppointmentsTypeFilter _$AppointmentsTypeFilterFromJson(
    Map<String, dynamic> json) {
  return _AppointmentsTypeFilter.fromJson(json);
}

/// @nodoc
mixin _$AppointmentsTypeFilter {
  /// Exact match
  AppointmentsType? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  AppointmentsType? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<AppointmentsType>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<AppointmentsType>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this AppointmentsTypeFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentsTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentsTypeFilterCopyWith<AppointmentsTypeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentsTypeFilterCopyWith<$Res> {
  factory $AppointmentsTypeFilterCopyWith(AppointmentsTypeFilter value,
          $Res Function(AppointmentsTypeFilter) then) =
      _$AppointmentsTypeFilterCopyWithImpl<$Res, AppointmentsTypeFilter>;
  @useResult
  $Res call(
      {AppointmentsType? equals,
      AppointmentsType? not,
      @JsonKey(name: 'in') List<AppointmentsType>? in_,
      List<AppointmentsType>? notIn});
}

/// @nodoc
class _$AppointmentsTypeFilterCopyWithImpl<$Res,
        $Val extends AppointmentsTypeFilter>
    implements $AppointmentsTypeFilterCopyWith<$Res> {
  _$AppointmentsTypeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentsTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as AppointmentsType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as AppointmentsType?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<AppointmentsType>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<AppointmentsType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentsTypeFilterImplCopyWith<$Res>
    implements $AppointmentsTypeFilterCopyWith<$Res> {
  factory _$$AppointmentsTypeFilterImplCopyWith(
          _$AppointmentsTypeFilterImpl value,
          $Res Function(_$AppointmentsTypeFilterImpl) then) =
      __$$AppointmentsTypeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppointmentsType? equals,
      AppointmentsType? not,
      @JsonKey(name: 'in') List<AppointmentsType>? in_,
      List<AppointmentsType>? notIn});
}

/// @nodoc
class __$$AppointmentsTypeFilterImplCopyWithImpl<$Res>
    extends _$AppointmentsTypeFilterCopyWithImpl<$Res,
        _$AppointmentsTypeFilterImpl>
    implements _$$AppointmentsTypeFilterImplCopyWith<$Res> {
  __$$AppointmentsTypeFilterImplCopyWithImpl(
      _$AppointmentsTypeFilterImpl _value,
      $Res Function(_$AppointmentsTypeFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentsTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$AppointmentsTypeFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as AppointmentsType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as AppointmentsType?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<AppointmentsType>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<AppointmentsType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentsTypeFilterImpl implements _AppointmentsTypeFilter {
  const _$AppointmentsTypeFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<AppointmentsType>? in_,
      final List<AppointmentsType>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$AppointmentsTypeFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentsTypeFilterImplFromJson(json);

  /// Exact match
  @override
  final AppointmentsType? equals;

  /// Not equal to
  @override
  final AppointmentsType? not;

  /// In list of values
  final List<AppointmentsType>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<AppointmentsType>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<AppointmentsType>? _notIn;

  /// Not in list of values
  @override
  List<AppointmentsType>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppointmentsTypeFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentsTypeFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of AppointmentsTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentsTypeFilterImplCopyWith<_$AppointmentsTypeFilterImpl>
      get copyWith => __$$AppointmentsTypeFilterImplCopyWithImpl<
          _$AppointmentsTypeFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentsTypeFilterImplToJson(
      this,
    );
  }
}

abstract class _AppointmentsTypeFilter implements AppointmentsTypeFilter {
  const factory _AppointmentsTypeFilter(
      {final AppointmentsType? equals,
      final AppointmentsType? not,
      @JsonKey(name: 'in') final List<AppointmentsType>? in_,
      final List<AppointmentsType>? notIn}) = _$AppointmentsTypeFilterImpl;

  factory _AppointmentsTypeFilter.fromJson(Map<String, dynamic> json) =
      _$AppointmentsTypeFilterImpl.fromJson;

  /// Exact match
  @override
  AppointmentsType? get equals;

  /// Not equal to
  @override
  AppointmentsType? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<AppointmentsType>? get in_;

  /// Not in list of values
  @override
  List<AppointmentsType>? get notIn;

  /// Create a copy of AppointmentsTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentsTypeFilterImplCopyWith<_$AppointmentsTypeFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DocumentReviewStatusFilter _$DocumentReviewStatusFilterFromJson(
    Map<String, dynamic> json) {
  return _DocumentReviewStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$DocumentReviewStatusFilter {
  /// Exact match
  DocumentReviewStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  DocumentReviewStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<DocumentReviewStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<DocumentReviewStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this DocumentReviewStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocumentReviewStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentReviewStatusFilterCopyWith<DocumentReviewStatusFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentReviewStatusFilterCopyWith<$Res> {
  factory $DocumentReviewStatusFilterCopyWith(DocumentReviewStatusFilter value,
          $Res Function(DocumentReviewStatusFilter) then) =
      _$DocumentReviewStatusFilterCopyWithImpl<$Res,
          DocumentReviewStatusFilter>;
  @useResult
  $Res call(
      {DocumentReviewStatus? equals,
      DocumentReviewStatus? not,
      @JsonKey(name: 'in') List<DocumentReviewStatus>? in_,
      List<DocumentReviewStatus>? notIn});
}

/// @nodoc
class _$DocumentReviewStatusFilterCopyWithImpl<$Res,
        $Val extends DocumentReviewStatusFilter>
    implements $DocumentReviewStatusFilterCopyWith<$Res> {
  _$DocumentReviewStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentReviewStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as DocumentReviewStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as DocumentReviewStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<DocumentReviewStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<DocumentReviewStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentReviewStatusFilterImplCopyWith<$Res>
    implements $DocumentReviewStatusFilterCopyWith<$Res> {
  factory _$$DocumentReviewStatusFilterImplCopyWith(
          _$DocumentReviewStatusFilterImpl value,
          $Res Function(_$DocumentReviewStatusFilterImpl) then) =
      __$$DocumentReviewStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DocumentReviewStatus? equals,
      DocumentReviewStatus? not,
      @JsonKey(name: 'in') List<DocumentReviewStatus>? in_,
      List<DocumentReviewStatus>? notIn});
}

/// @nodoc
class __$$DocumentReviewStatusFilterImplCopyWithImpl<$Res>
    extends _$DocumentReviewStatusFilterCopyWithImpl<$Res,
        _$DocumentReviewStatusFilterImpl>
    implements _$$DocumentReviewStatusFilterImplCopyWith<$Res> {
  __$$DocumentReviewStatusFilterImplCopyWithImpl(
      _$DocumentReviewStatusFilterImpl _value,
      $Res Function(_$DocumentReviewStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentReviewStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$DocumentReviewStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as DocumentReviewStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as DocumentReviewStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<DocumentReviewStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<DocumentReviewStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentReviewStatusFilterImpl implements _DocumentReviewStatusFilter {
  const _$DocumentReviewStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<DocumentReviewStatus>? in_,
      final List<DocumentReviewStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$DocumentReviewStatusFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DocumentReviewStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final DocumentReviewStatus? equals;

  /// Not equal to
  @override
  final DocumentReviewStatus? not;

  /// In list of values
  final List<DocumentReviewStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<DocumentReviewStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<DocumentReviewStatus>? _notIn;

  /// Not in list of values
  @override
  List<DocumentReviewStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DocumentReviewStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentReviewStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of DocumentReviewStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentReviewStatusFilterImplCopyWith<_$DocumentReviewStatusFilterImpl>
      get copyWith => __$$DocumentReviewStatusFilterImplCopyWithImpl<
          _$DocumentReviewStatusFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentReviewStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _DocumentReviewStatusFilter
    implements DocumentReviewStatusFilter {
  const factory _DocumentReviewStatusFilter(
          {final DocumentReviewStatus? equals,
          final DocumentReviewStatus? not,
          @JsonKey(name: 'in') final List<DocumentReviewStatus>? in_,
          final List<DocumentReviewStatus>? notIn}) =
      _$DocumentReviewStatusFilterImpl;

  factory _DocumentReviewStatusFilter.fromJson(Map<String, dynamic> json) =
      _$DocumentReviewStatusFilterImpl.fromJson;

  /// Exact match
  @override
  DocumentReviewStatus? get equals;

  /// Not equal to
  @override
  DocumentReviewStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<DocumentReviewStatus>? get in_;

  /// Not in list of values
  @override
  List<DocumentReviewStatus>? get notIn;

  /// Create a copy of DocumentReviewStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentReviewStatusFilterImplCopyWith<_$DocumentReviewStatusFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DocumentUploadRoleFilter _$DocumentUploadRoleFilterFromJson(
    Map<String, dynamic> json) {
  return _DocumentUploadRoleFilter.fromJson(json);
}

/// @nodoc
mixin _$DocumentUploadRoleFilter {
  /// Exact match
  DocumentUploadRole? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  DocumentUploadRole? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<DocumentUploadRole>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<DocumentUploadRole>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this DocumentUploadRoleFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocumentUploadRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentUploadRoleFilterCopyWith<DocumentUploadRoleFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentUploadRoleFilterCopyWith<$Res> {
  factory $DocumentUploadRoleFilterCopyWith(DocumentUploadRoleFilter value,
          $Res Function(DocumentUploadRoleFilter) then) =
      _$DocumentUploadRoleFilterCopyWithImpl<$Res, DocumentUploadRoleFilter>;
  @useResult
  $Res call(
      {DocumentUploadRole? equals,
      DocumentUploadRole? not,
      @JsonKey(name: 'in') List<DocumentUploadRole>? in_,
      List<DocumentUploadRole>? notIn});
}

/// @nodoc
class _$DocumentUploadRoleFilterCopyWithImpl<$Res,
        $Val extends DocumentUploadRoleFilter>
    implements $DocumentUploadRoleFilterCopyWith<$Res> {
  _$DocumentUploadRoleFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentUploadRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as DocumentUploadRole?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as DocumentUploadRole?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<DocumentUploadRole>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<DocumentUploadRole>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentUploadRoleFilterImplCopyWith<$Res>
    implements $DocumentUploadRoleFilterCopyWith<$Res> {
  factory _$$DocumentUploadRoleFilterImplCopyWith(
          _$DocumentUploadRoleFilterImpl value,
          $Res Function(_$DocumentUploadRoleFilterImpl) then) =
      __$$DocumentUploadRoleFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DocumentUploadRole? equals,
      DocumentUploadRole? not,
      @JsonKey(name: 'in') List<DocumentUploadRole>? in_,
      List<DocumentUploadRole>? notIn});
}

/// @nodoc
class __$$DocumentUploadRoleFilterImplCopyWithImpl<$Res>
    extends _$DocumentUploadRoleFilterCopyWithImpl<$Res,
        _$DocumentUploadRoleFilterImpl>
    implements _$$DocumentUploadRoleFilterImplCopyWith<$Res> {
  __$$DocumentUploadRoleFilterImplCopyWithImpl(
      _$DocumentUploadRoleFilterImpl _value,
      $Res Function(_$DocumentUploadRoleFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentUploadRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$DocumentUploadRoleFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as DocumentUploadRole?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as DocumentUploadRole?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<DocumentUploadRole>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<DocumentUploadRole>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentUploadRoleFilterImpl implements _DocumentUploadRoleFilter {
  const _$DocumentUploadRoleFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<DocumentUploadRole>? in_,
      final List<DocumentUploadRole>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$DocumentUploadRoleFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentUploadRoleFilterImplFromJson(json);

  /// Exact match
  @override
  final DocumentUploadRole? equals;

  /// Not equal to
  @override
  final DocumentUploadRole? not;

  /// In list of values
  final List<DocumentUploadRole>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<DocumentUploadRole>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<DocumentUploadRole>? _notIn;

  /// Not in list of values
  @override
  List<DocumentUploadRole>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DocumentUploadRoleFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentUploadRoleFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of DocumentUploadRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentUploadRoleFilterImplCopyWith<_$DocumentUploadRoleFilterImpl>
      get copyWith => __$$DocumentUploadRoleFilterImplCopyWithImpl<
          _$DocumentUploadRoleFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentUploadRoleFilterImplToJson(
      this,
    );
  }
}

abstract class _DocumentUploadRoleFilter implements DocumentUploadRoleFilter {
  const factory _DocumentUploadRoleFilter(
      {final DocumentUploadRole? equals,
      final DocumentUploadRole? not,
      @JsonKey(name: 'in') final List<DocumentUploadRole>? in_,
      final List<DocumentUploadRole>? notIn}) = _$DocumentUploadRoleFilterImpl;

  factory _DocumentUploadRoleFilter.fromJson(Map<String, dynamic> json) =
      _$DocumentUploadRoleFilterImpl.fromJson;

  /// Exact match
  @override
  DocumentUploadRole? get equals;

  /// Not equal to
  @override
  DocumentUploadRole? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<DocumentUploadRole>? get in_;

  /// Not in list of values
  @override
  List<DocumentUploadRole>? get notIn;

  /// Create a copy of DocumentUploadRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentUploadRoleFilterImplCopyWith<_$DocumentUploadRoleFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SlotCompletionStatusFilter _$SlotCompletionStatusFilterFromJson(
    Map<String, dynamic> json) {
  return _SlotCompletionStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$SlotCompletionStatusFilter {
  /// Exact match
  SlotCompletionStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  SlotCompletionStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<SlotCompletionStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<SlotCompletionStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this SlotCompletionStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlotCompletionStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlotCompletionStatusFilterCopyWith<SlotCompletionStatusFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotCompletionStatusFilterCopyWith<$Res> {
  factory $SlotCompletionStatusFilterCopyWith(SlotCompletionStatusFilter value,
          $Res Function(SlotCompletionStatusFilter) then) =
      _$SlotCompletionStatusFilterCopyWithImpl<$Res,
          SlotCompletionStatusFilter>;
  @useResult
  $Res call(
      {SlotCompletionStatus? equals,
      SlotCompletionStatus? not,
      @JsonKey(name: 'in') List<SlotCompletionStatus>? in_,
      List<SlotCompletionStatus>? notIn});
}

/// @nodoc
class _$SlotCompletionStatusFilterCopyWithImpl<$Res,
        $Val extends SlotCompletionStatusFilter>
    implements $SlotCompletionStatusFilterCopyWith<$Res> {
  _$SlotCompletionStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlotCompletionStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as SlotCompletionStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as SlotCompletionStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<SlotCompletionStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<SlotCompletionStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SlotCompletionStatusFilterImplCopyWith<$Res>
    implements $SlotCompletionStatusFilterCopyWith<$Res> {
  factory _$$SlotCompletionStatusFilterImplCopyWith(
          _$SlotCompletionStatusFilterImpl value,
          $Res Function(_$SlotCompletionStatusFilterImpl) then) =
      __$$SlotCompletionStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SlotCompletionStatus? equals,
      SlotCompletionStatus? not,
      @JsonKey(name: 'in') List<SlotCompletionStatus>? in_,
      List<SlotCompletionStatus>? notIn});
}

/// @nodoc
class __$$SlotCompletionStatusFilterImplCopyWithImpl<$Res>
    extends _$SlotCompletionStatusFilterCopyWithImpl<$Res,
        _$SlotCompletionStatusFilterImpl>
    implements _$$SlotCompletionStatusFilterImplCopyWith<$Res> {
  __$$SlotCompletionStatusFilterImplCopyWithImpl(
      _$SlotCompletionStatusFilterImpl _value,
      $Res Function(_$SlotCompletionStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotCompletionStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$SlotCompletionStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as SlotCompletionStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as SlotCompletionStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<SlotCompletionStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<SlotCompletionStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SlotCompletionStatusFilterImpl implements _SlotCompletionStatusFilter {
  const _$SlotCompletionStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<SlotCompletionStatus>? in_,
      final List<SlotCompletionStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$SlotCompletionStatusFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SlotCompletionStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final SlotCompletionStatus? equals;

  /// Not equal to
  @override
  final SlotCompletionStatus? not;

  /// In list of values
  final List<SlotCompletionStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<SlotCompletionStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<SlotCompletionStatus>? _notIn;

  /// Not in list of values
  @override
  List<SlotCompletionStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SlotCompletionStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotCompletionStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of SlotCompletionStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotCompletionStatusFilterImplCopyWith<_$SlotCompletionStatusFilterImpl>
      get copyWith => __$$SlotCompletionStatusFilterImplCopyWithImpl<
          _$SlotCompletionStatusFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotCompletionStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _SlotCompletionStatusFilter
    implements SlotCompletionStatusFilter {
  const factory _SlotCompletionStatusFilter(
          {final SlotCompletionStatus? equals,
          final SlotCompletionStatus? not,
          @JsonKey(name: 'in') final List<SlotCompletionStatus>? in_,
          final List<SlotCompletionStatus>? notIn}) =
      _$SlotCompletionStatusFilterImpl;

  factory _SlotCompletionStatusFilter.fromJson(Map<String, dynamic> json) =
      _$SlotCompletionStatusFilterImpl.fromJson;

  /// Exact match
  @override
  SlotCompletionStatus? get equals;

  /// Not equal to
  @override
  SlotCompletionStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<SlotCompletionStatus>? get in_;

  /// Not in list of values
  @override
  List<SlotCompletionStatus>? get notIn;

  /// Create a copy of SlotCompletionStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotCompletionStatusFilterImplCopyWith<_$SlotCompletionStatusFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecordingStorageTypeFilter _$RecordingStorageTypeFilterFromJson(
    Map<String, dynamic> json) {
  return _RecordingStorageTypeFilter.fromJson(json);
}

/// @nodoc
mixin _$RecordingStorageTypeFilter {
  /// Exact match
  RecordingStorageType? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  RecordingStorageType? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<RecordingStorageType>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<RecordingStorageType>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this RecordingStorageTypeFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecordingStorageTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordingStorageTypeFilterCopyWith<RecordingStorageTypeFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordingStorageTypeFilterCopyWith<$Res> {
  factory $RecordingStorageTypeFilterCopyWith(RecordingStorageTypeFilter value,
          $Res Function(RecordingStorageTypeFilter) then) =
      _$RecordingStorageTypeFilterCopyWithImpl<$Res,
          RecordingStorageTypeFilter>;
  @useResult
  $Res call(
      {RecordingStorageType? equals,
      RecordingStorageType? not,
      @JsonKey(name: 'in') List<RecordingStorageType>? in_,
      List<RecordingStorageType>? notIn});
}

/// @nodoc
class _$RecordingStorageTypeFilterCopyWithImpl<$Res,
        $Val extends RecordingStorageTypeFilter>
    implements $RecordingStorageTypeFilterCopyWith<$Res> {
  _$RecordingStorageTypeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordingStorageTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as RecordingStorageType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as RecordingStorageType?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<RecordingStorageType>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<RecordingStorageType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordingStorageTypeFilterImplCopyWith<$Res>
    implements $RecordingStorageTypeFilterCopyWith<$Res> {
  factory _$$RecordingStorageTypeFilterImplCopyWith(
          _$RecordingStorageTypeFilterImpl value,
          $Res Function(_$RecordingStorageTypeFilterImpl) then) =
      __$$RecordingStorageTypeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RecordingStorageType? equals,
      RecordingStorageType? not,
      @JsonKey(name: 'in') List<RecordingStorageType>? in_,
      List<RecordingStorageType>? notIn});
}

/// @nodoc
class __$$RecordingStorageTypeFilterImplCopyWithImpl<$Res>
    extends _$RecordingStorageTypeFilterCopyWithImpl<$Res,
        _$RecordingStorageTypeFilterImpl>
    implements _$$RecordingStorageTypeFilterImplCopyWith<$Res> {
  __$$RecordingStorageTypeFilterImplCopyWithImpl(
      _$RecordingStorageTypeFilterImpl _value,
      $Res Function(_$RecordingStorageTypeFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingStorageTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$RecordingStorageTypeFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as RecordingStorageType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as RecordingStorageType?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<RecordingStorageType>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<RecordingStorageType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordingStorageTypeFilterImpl implements _RecordingStorageTypeFilter {
  const _$RecordingStorageTypeFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<RecordingStorageType>? in_,
      final List<RecordingStorageType>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$RecordingStorageTypeFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RecordingStorageTypeFilterImplFromJson(json);

  /// Exact match
  @override
  final RecordingStorageType? equals;

  /// Not equal to
  @override
  final RecordingStorageType? not;

  /// In list of values
  final List<RecordingStorageType>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<RecordingStorageType>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<RecordingStorageType>? _notIn;

  /// Not in list of values
  @override
  List<RecordingStorageType>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RecordingStorageTypeFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingStorageTypeFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of RecordingStorageTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordingStorageTypeFilterImplCopyWith<_$RecordingStorageTypeFilterImpl>
      get copyWith => __$$RecordingStorageTypeFilterImplCopyWithImpl<
          _$RecordingStorageTypeFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordingStorageTypeFilterImplToJson(
      this,
    );
  }
}

abstract class _RecordingStorageTypeFilter
    implements RecordingStorageTypeFilter {
  const factory _RecordingStorageTypeFilter(
          {final RecordingStorageType? equals,
          final RecordingStorageType? not,
          @JsonKey(name: 'in') final List<RecordingStorageType>? in_,
          final List<RecordingStorageType>? notIn}) =
      _$RecordingStorageTypeFilterImpl;

  factory _RecordingStorageTypeFilter.fromJson(Map<String, dynamic> json) =
      _$RecordingStorageTypeFilterImpl.fromJson;

  /// Exact match
  @override
  RecordingStorageType? get equals;

  /// Not equal to
  @override
  RecordingStorageType? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<RecordingStorageType>? get in_;

  /// Not in list of values
  @override
  List<RecordingStorageType>? get notIn;

  /// Create a copy of RecordingStorageTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordingStorageTypeFilterImplCopyWith<_$RecordingStorageTypeFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecordingStoragePolicyFilter _$RecordingStoragePolicyFilterFromJson(
    Map<String, dynamic> json) {
  return _RecordingStoragePolicyFilter.fromJson(json);
}

/// @nodoc
mixin _$RecordingStoragePolicyFilter {
  /// Exact match
  RecordingStoragePolicy? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  RecordingStoragePolicy? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<RecordingStoragePolicy>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<RecordingStoragePolicy>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this RecordingStoragePolicyFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecordingStoragePolicyFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordingStoragePolicyFilterCopyWith<RecordingStoragePolicyFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordingStoragePolicyFilterCopyWith<$Res> {
  factory $RecordingStoragePolicyFilterCopyWith(
          RecordingStoragePolicyFilter value,
          $Res Function(RecordingStoragePolicyFilter) then) =
      _$RecordingStoragePolicyFilterCopyWithImpl<$Res,
          RecordingStoragePolicyFilter>;
  @useResult
  $Res call(
      {RecordingStoragePolicy? equals,
      RecordingStoragePolicy? not,
      @JsonKey(name: 'in') List<RecordingStoragePolicy>? in_,
      List<RecordingStoragePolicy>? notIn});
}

/// @nodoc
class _$RecordingStoragePolicyFilterCopyWithImpl<$Res,
        $Val extends RecordingStoragePolicyFilter>
    implements $RecordingStoragePolicyFilterCopyWith<$Res> {
  _$RecordingStoragePolicyFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordingStoragePolicyFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as RecordingStoragePolicy?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as RecordingStoragePolicy?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<RecordingStoragePolicy>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<RecordingStoragePolicy>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordingStoragePolicyFilterImplCopyWith<$Res>
    implements $RecordingStoragePolicyFilterCopyWith<$Res> {
  factory _$$RecordingStoragePolicyFilterImplCopyWith(
          _$RecordingStoragePolicyFilterImpl value,
          $Res Function(_$RecordingStoragePolicyFilterImpl) then) =
      __$$RecordingStoragePolicyFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RecordingStoragePolicy? equals,
      RecordingStoragePolicy? not,
      @JsonKey(name: 'in') List<RecordingStoragePolicy>? in_,
      List<RecordingStoragePolicy>? notIn});
}

/// @nodoc
class __$$RecordingStoragePolicyFilterImplCopyWithImpl<$Res>
    extends _$RecordingStoragePolicyFilterCopyWithImpl<$Res,
        _$RecordingStoragePolicyFilterImpl>
    implements _$$RecordingStoragePolicyFilterImplCopyWith<$Res> {
  __$$RecordingStoragePolicyFilterImplCopyWithImpl(
      _$RecordingStoragePolicyFilterImpl _value,
      $Res Function(_$RecordingStoragePolicyFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingStoragePolicyFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$RecordingStoragePolicyFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as RecordingStoragePolicy?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as RecordingStoragePolicy?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<RecordingStoragePolicy>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<RecordingStoragePolicy>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordingStoragePolicyFilterImpl
    implements _RecordingStoragePolicyFilter {
  const _$RecordingStoragePolicyFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<RecordingStoragePolicy>? in_,
      final List<RecordingStoragePolicy>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$RecordingStoragePolicyFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RecordingStoragePolicyFilterImplFromJson(json);

  /// Exact match
  @override
  final RecordingStoragePolicy? equals;

  /// Not equal to
  @override
  final RecordingStoragePolicy? not;

  /// In list of values
  final List<RecordingStoragePolicy>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<RecordingStoragePolicy>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<RecordingStoragePolicy>? _notIn;

  /// Not in list of values
  @override
  List<RecordingStoragePolicy>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RecordingStoragePolicyFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingStoragePolicyFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of RecordingStoragePolicyFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordingStoragePolicyFilterImplCopyWith<
          _$RecordingStoragePolicyFilterImpl>
      get copyWith => __$$RecordingStoragePolicyFilterImplCopyWithImpl<
          _$RecordingStoragePolicyFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordingStoragePolicyFilterImplToJson(
      this,
    );
  }
}

abstract class _RecordingStoragePolicyFilter
    implements RecordingStoragePolicyFilter {
  const factory _RecordingStoragePolicyFilter(
          {final RecordingStoragePolicy? equals,
          final RecordingStoragePolicy? not,
          @JsonKey(name: 'in') final List<RecordingStoragePolicy>? in_,
          final List<RecordingStoragePolicy>? notIn}) =
      _$RecordingStoragePolicyFilterImpl;

  factory _RecordingStoragePolicyFilter.fromJson(Map<String, dynamic> json) =
      _$RecordingStoragePolicyFilterImpl.fromJson;

  /// Exact match
  @override
  RecordingStoragePolicy? get equals;

  /// Not equal to
  @override
  RecordingStoragePolicy? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<RecordingStoragePolicy>? get in_;

  /// Not in list of values
  @override
  List<RecordingStoragePolicy>? get notIn;

  /// Create a copy of RecordingStoragePolicyFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordingStoragePolicyFilterImplCopyWith<
          _$RecordingStoragePolicyFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecordingStatusFilter _$RecordingStatusFilterFromJson(
    Map<String, dynamic> json) {
  return _RecordingStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$RecordingStatusFilter {
  /// Exact match
  RecordingStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  RecordingStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<RecordingStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<RecordingStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this RecordingStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecordingStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordingStatusFilterCopyWith<RecordingStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordingStatusFilterCopyWith<$Res> {
  factory $RecordingStatusFilterCopyWith(RecordingStatusFilter value,
          $Res Function(RecordingStatusFilter) then) =
      _$RecordingStatusFilterCopyWithImpl<$Res, RecordingStatusFilter>;
  @useResult
  $Res call(
      {RecordingStatus? equals,
      RecordingStatus? not,
      @JsonKey(name: 'in') List<RecordingStatus>? in_,
      List<RecordingStatus>? notIn});
}

/// @nodoc
class _$RecordingStatusFilterCopyWithImpl<$Res,
        $Val extends RecordingStatusFilter>
    implements $RecordingStatusFilterCopyWith<$Res> {
  _$RecordingStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordingStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as RecordingStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as RecordingStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<RecordingStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<RecordingStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordingStatusFilterImplCopyWith<$Res>
    implements $RecordingStatusFilterCopyWith<$Res> {
  factory _$$RecordingStatusFilterImplCopyWith(
          _$RecordingStatusFilterImpl value,
          $Res Function(_$RecordingStatusFilterImpl) then) =
      __$$RecordingStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RecordingStatus? equals,
      RecordingStatus? not,
      @JsonKey(name: 'in') List<RecordingStatus>? in_,
      List<RecordingStatus>? notIn});
}

/// @nodoc
class __$$RecordingStatusFilterImplCopyWithImpl<$Res>
    extends _$RecordingStatusFilterCopyWithImpl<$Res,
        _$RecordingStatusFilterImpl>
    implements _$$RecordingStatusFilterImplCopyWith<$Res> {
  __$$RecordingStatusFilterImplCopyWithImpl(_$RecordingStatusFilterImpl _value,
      $Res Function(_$RecordingStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$RecordingStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as RecordingStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as RecordingStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<RecordingStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<RecordingStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordingStatusFilterImpl implements _RecordingStatusFilter {
  const _$RecordingStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<RecordingStatus>? in_,
      final List<RecordingStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$RecordingStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordingStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final RecordingStatus? equals;

  /// Not equal to
  @override
  final RecordingStatus? not;

  /// In list of values
  final List<RecordingStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<RecordingStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<RecordingStatus>? _notIn;

  /// Not in list of values
  @override
  List<RecordingStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RecordingStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of RecordingStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordingStatusFilterImplCopyWith<_$RecordingStatusFilterImpl>
      get copyWith => __$$RecordingStatusFilterImplCopyWithImpl<
          _$RecordingStatusFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordingStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _RecordingStatusFilter implements RecordingStatusFilter {
  const factory _RecordingStatusFilter(
      {final RecordingStatus? equals,
      final RecordingStatus? not,
      @JsonKey(name: 'in') final List<RecordingStatus>? in_,
      final List<RecordingStatus>? notIn}) = _$RecordingStatusFilterImpl;

  factory _RecordingStatusFilter.fromJson(Map<String, dynamic> json) =
      _$RecordingStatusFilterImpl.fromJson;

  /// Exact match
  @override
  RecordingStatus? get equals;

  /// Not equal to
  @override
  RecordingStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<RecordingStatus>? get in_;

  /// Not in list of values
  @override
  List<RecordingStatus>? get notIn;

  /// Create a copy of RecordingStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordingStatusFilterImplCopyWith<_$RecordingStatusFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PlatformFilter _$PlatformFilterFromJson(Map<String, dynamic> json) {
  return _PlatformFilter.fromJson(json);
}

/// @nodoc
mixin _$PlatformFilter {
  /// Exact match
  Platform? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  Platform? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<Platform>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<Platform>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this PlatformFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlatformFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlatformFilterCopyWith<PlatformFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatformFilterCopyWith<$Res> {
  factory $PlatformFilterCopyWith(
          PlatformFilter value, $Res Function(PlatformFilter) then) =
      _$PlatformFilterCopyWithImpl<$Res, PlatformFilter>;
  @useResult
  $Res call(
      {Platform? equals,
      Platform? not,
      @JsonKey(name: 'in') List<Platform>? in_,
      List<Platform>? notIn});
}

/// @nodoc
class _$PlatformFilterCopyWithImpl<$Res, $Val extends PlatformFilter>
    implements $PlatformFilterCopyWith<$Res> {
  _$PlatformFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlatformFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as Platform?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as Platform?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<Platform>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<Platform>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlatformFilterImplCopyWith<$Res>
    implements $PlatformFilterCopyWith<$Res> {
  factory _$$PlatformFilterImplCopyWith(_$PlatformFilterImpl value,
          $Res Function(_$PlatformFilterImpl) then) =
      __$$PlatformFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Platform? equals,
      Platform? not,
      @JsonKey(name: 'in') List<Platform>? in_,
      List<Platform>? notIn});
}

/// @nodoc
class __$$PlatformFilterImplCopyWithImpl<$Res>
    extends _$PlatformFilterCopyWithImpl<$Res, _$PlatformFilterImpl>
    implements _$$PlatformFilterImplCopyWith<$Res> {
  __$$PlatformFilterImplCopyWithImpl(
      _$PlatformFilterImpl _value, $Res Function(_$PlatformFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlatformFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$PlatformFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as Platform?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as Platform?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<Platform>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<Platform>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlatformFilterImpl implements _PlatformFilter {
  const _$PlatformFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<Platform>? in_,
      final List<Platform>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$PlatformFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlatformFilterImplFromJson(json);

  /// Exact match
  @override
  final Platform? equals;

  /// Not equal to
  @override
  final Platform? not;

  /// In list of values
  final List<Platform>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<Platform>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<Platform>? _notIn;

  /// Not in list of values
  @override
  List<Platform>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlatformFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of PlatformFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformFilterImplCopyWith<_$PlatformFilterImpl> get copyWith =>
      __$$PlatformFilterImplCopyWithImpl<_$PlatformFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlatformFilterImplToJson(
      this,
    );
  }
}

abstract class _PlatformFilter implements PlatformFilter {
  const factory _PlatformFilter(
      {final Platform? equals,
      final Platform? not,
      @JsonKey(name: 'in') final List<Platform>? in_,
      final List<Platform>? notIn}) = _$PlatformFilterImpl;

  factory _PlatformFilter.fromJson(Map<String, dynamic> json) =
      _$PlatformFilterImpl.fromJson;

  /// Exact match
  @override
  Platform? get equals;

  /// Not equal to
  @override
  Platform? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<Platform>? get in_;

  /// Not in list of values
  @override
  List<Platform>? get notIn;

  /// Create a copy of PlatformFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlatformFilterImplCopyWith<_$PlatformFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentGatewayFilter _$PaymentGatewayFilterFromJson(Map<String, dynamic> json) {
  return _PaymentGatewayFilter.fromJson(json);
}

/// @nodoc
mixin _$PaymentGatewayFilter {
  /// Exact match
  PaymentGateway? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  PaymentGateway? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<PaymentGateway>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<PaymentGateway>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this PaymentGatewayFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentGatewayFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentGatewayFilterCopyWith<PaymentGatewayFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentGatewayFilterCopyWith<$Res> {
  factory $PaymentGatewayFilterCopyWith(PaymentGatewayFilter value,
          $Res Function(PaymentGatewayFilter) then) =
      _$PaymentGatewayFilterCopyWithImpl<$Res, PaymentGatewayFilter>;
  @useResult
  $Res call(
      {PaymentGateway? equals,
      PaymentGateway? not,
      @JsonKey(name: 'in') List<PaymentGateway>? in_,
      List<PaymentGateway>? notIn});
}

/// @nodoc
class _$PaymentGatewayFilterCopyWithImpl<$Res,
        $Val extends PaymentGatewayFilter>
    implements $PaymentGatewayFilterCopyWith<$Res> {
  _$PaymentGatewayFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentGatewayFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as PaymentGateway?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as PaymentGateway?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<PaymentGateway>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<PaymentGateway>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentGatewayFilterImplCopyWith<$Res>
    implements $PaymentGatewayFilterCopyWith<$Res> {
  factory _$$PaymentGatewayFilterImplCopyWith(_$PaymentGatewayFilterImpl value,
          $Res Function(_$PaymentGatewayFilterImpl) then) =
      __$$PaymentGatewayFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaymentGateway? equals,
      PaymentGateway? not,
      @JsonKey(name: 'in') List<PaymentGateway>? in_,
      List<PaymentGateway>? notIn});
}

/// @nodoc
class __$$PaymentGatewayFilterImplCopyWithImpl<$Res>
    extends _$PaymentGatewayFilterCopyWithImpl<$Res, _$PaymentGatewayFilterImpl>
    implements _$$PaymentGatewayFilterImplCopyWith<$Res> {
  __$$PaymentGatewayFilterImplCopyWithImpl(_$PaymentGatewayFilterImpl _value,
      $Res Function(_$PaymentGatewayFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentGatewayFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$PaymentGatewayFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as PaymentGateway?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as PaymentGateway?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<PaymentGateway>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<PaymentGateway>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentGatewayFilterImpl implements _PaymentGatewayFilter {
  const _$PaymentGatewayFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<PaymentGateway>? in_,
      final List<PaymentGateway>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$PaymentGatewayFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentGatewayFilterImplFromJson(json);

  /// Exact match
  @override
  final PaymentGateway? equals;

  /// Not equal to
  @override
  final PaymentGateway? not;

  /// In list of values
  final List<PaymentGateway>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<PaymentGateway>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<PaymentGateway>? _notIn;

  /// Not in list of values
  @override
  List<PaymentGateway>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaymentGatewayFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentGatewayFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of PaymentGatewayFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentGatewayFilterImplCopyWith<_$PaymentGatewayFilterImpl>
      get copyWith =>
          __$$PaymentGatewayFilterImplCopyWithImpl<_$PaymentGatewayFilterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentGatewayFilterImplToJson(
      this,
    );
  }
}

abstract class _PaymentGatewayFilter implements PaymentGatewayFilter {
  const factory _PaymentGatewayFilter(
      {final PaymentGateway? equals,
      final PaymentGateway? not,
      @JsonKey(name: 'in') final List<PaymentGateway>? in_,
      final List<PaymentGateway>? notIn}) = _$PaymentGatewayFilterImpl;

  factory _PaymentGatewayFilter.fromJson(Map<String, dynamic> json) =
      _$PaymentGatewayFilterImpl.fromJson;

  /// Exact match
  @override
  PaymentGateway? get equals;

  /// Not equal to
  @override
  PaymentGateway? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<PaymentGateway>? get in_;

  /// Not in list of values
  @override
  List<PaymentGateway>? get notIn;

  /// Create a copy of PaymentGatewayFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentGatewayFilterImplCopyWith<_$PaymentGatewayFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentStatusFilter _$PaymentStatusFilterFromJson(Map<String, dynamic> json) {
  return _PaymentStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$PaymentStatusFilter {
  /// Exact match
  PaymentStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  PaymentStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<PaymentStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<PaymentStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this PaymentStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentStatusFilterCopyWith<PaymentStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStatusFilterCopyWith<$Res> {
  factory $PaymentStatusFilterCopyWith(
          PaymentStatusFilter value, $Res Function(PaymentStatusFilter) then) =
      _$PaymentStatusFilterCopyWithImpl<$Res, PaymentStatusFilter>;
  @useResult
  $Res call(
      {PaymentStatus? equals,
      PaymentStatus? not,
      @JsonKey(name: 'in') List<PaymentStatus>? in_,
      List<PaymentStatus>? notIn});
}

/// @nodoc
class _$PaymentStatusFilterCopyWithImpl<$Res, $Val extends PaymentStatusFilter>
    implements $PaymentStatusFilterCopyWith<$Res> {
  _$PaymentStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as PaymentStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as PaymentStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<PaymentStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<PaymentStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentStatusFilterImplCopyWith<$Res>
    implements $PaymentStatusFilterCopyWith<$Res> {
  factory _$$PaymentStatusFilterImplCopyWith(_$PaymentStatusFilterImpl value,
          $Res Function(_$PaymentStatusFilterImpl) then) =
      __$$PaymentStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaymentStatus? equals,
      PaymentStatus? not,
      @JsonKey(name: 'in') List<PaymentStatus>? in_,
      List<PaymentStatus>? notIn});
}

/// @nodoc
class __$$PaymentStatusFilterImplCopyWithImpl<$Res>
    extends _$PaymentStatusFilterCopyWithImpl<$Res, _$PaymentStatusFilterImpl>
    implements _$$PaymentStatusFilterImplCopyWith<$Res> {
  __$$PaymentStatusFilterImplCopyWithImpl(_$PaymentStatusFilterImpl _value,
      $Res Function(_$PaymentStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$PaymentStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as PaymentStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as PaymentStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<PaymentStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<PaymentStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentStatusFilterImpl implements _PaymentStatusFilter {
  const _$PaymentStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<PaymentStatus>? in_,
      final List<PaymentStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$PaymentStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final PaymentStatus? equals;

  /// Not equal to
  @override
  final PaymentStatus? not;

  /// In list of values
  final List<PaymentStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<PaymentStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<PaymentStatus>? _notIn;

  /// Not in list of values
  @override
  List<PaymentStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaymentStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of PaymentStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStatusFilterImplCopyWith<_$PaymentStatusFilterImpl> get copyWith =>
      __$$PaymentStatusFilterImplCopyWithImpl<_$PaymentStatusFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _PaymentStatusFilter implements PaymentStatusFilter {
  const factory _PaymentStatusFilter(
      {final PaymentStatus? equals,
      final PaymentStatus? not,
      @JsonKey(name: 'in') final List<PaymentStatus>? in_,
      final List<PaymentStatus>? notIn}) = _$PaymentStatusFilterImpl;

  factory _PaymentStatusFilter.fromJson(Map<String, dynamic> json) =
      _$PaymentStatusFilterImpl.fromJson;

  /// Exact match
  @override
  PaymentStatus? get equals;

  /// Not equal to
  @override
  PaymentStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<PaymentStatus>? get in_;

  /// Not in list of values
  @override
  List<PaymentStatus>? get notIn;

  /// Create a copy of PaymentStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentStatusFilterImplCopyWith<_$PaymentStatusFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefundStatusFilter _$RefundStatusFilterFromJson(Map<String, dynamic> json) {
  return _RefundStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$RefundStatusFilter {
  /// Exact match
  RefundStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  RefundStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<RefundStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<RefundStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this RefundStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundStatusFilterCopyWith<RefundStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundStatusFilterCopyWith<$Res> {
  factory $RefundStatusFilterCopyWith(
          RefundStatusFilter value, $Res Function(RefundStatusFilter) then) =
      _$RefundStatusFilterCopyWithImpl<$Res, RefundStatusFilter>;
  @useResult
  $Res call(
      {RefundStatus? equals,
      RefundStatus? not,
      @JsonKey(name: 'in') List<RefundStatus>? in_,
      List<RefundStatus>? notIn});
}

/// @nodoc
class _$RefundStatusFilterCopyWithImpl<$Res, $Val extends RefundStatusFilter>
    implements $RefundStatusFilterCopyWith<$Res> {
  _$RefundStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as RefundStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as RefundStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<RefundStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<RefundStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefundStatusFilterImplCopyWith<$Res>
    implements $RefundStatusFilterCopyWith<$Res> {
  factory _$$RefundStatusFilterImplCopyWith(_$RefundStatusFilterImpl value,
          $Res Function(_$RefundStatusFilterImpl) then) =
      __$$RefundStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RefundStatus? equals,
      RefundStatus? not,
      @JsonKey(name: 'in') List<RefundStatus>? in_,
      List<RefundStatus>? notIn});
}

/// @nodoc
class __$$RefundStatusFilterImplCopyWithImpl<$Res>
    extends _$RefundStatusFilterCopyWithImpl<$Res, _$RefundStatusFilterImpl>
    implements _$$RefundStatusFilterImplCopyWith<$Res> {
  __$$RefundStatusFilterImplCopyWithImpl(_$RefundStatusFilterImpl _value,
      $Res Function(_$RefundStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefundStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$RefundStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as RefundStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as RefundStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<RefundStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<RefundStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundStatusFilterImpl implements _RefundStatusFilter {
  const _$RefundStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<RefundStatus>? in_,
      final List<RefundStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$RefundStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final RefundStatus? equals;

  /// Not equal to
  @override
  final RefundStatus? not;

  /// In list of values
  final List<RefundStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<RefundStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<RefundStatus>? _notIn;

  /// Not in list of values
  @override
  List<RefundStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RefundStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of RefundStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundStatusFilterImplCopyWith<_$RefundStatusFilterImpl> get copyWith =>
      __$$RefundStatusFilterImplCopyWithImpl<_$RefundStatusFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _RefundStatusFilter implements RefundStatusFilter {
  const factory _RefundStatusFilter(
      {final RefundStatus? equals,
      final RefundStatus? not,
      @JsonKey(name: 'in') final List<RefundStatus>? in_,
      final List<RefundStatus>? notIn}) = _$RefundStatusFilterImpl;

  factory _RefundStatusFilter.fromJson(Map<String, dynamic> json) =
      _$RefundStatusFilterImpl.fromJson;

  /// Exact match
  @override
  RefundStatus? get equals;

  /// Not equal to
  @override
  RefundStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<RefundStatus>? get in_;

  /// Not in list of values
  @override
  List<RefundStatus>? get notIn;

  /// Create a copy of RefundStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundStatusFilterImplCopyWith<_$RefundStatusFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DisputeStatusFilter _$DisputeStatusFilterFromJson(Map<String, dynamic> json) {
  return _DisputeStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$DisputeStatusFilter {
  /// Exact match
  DisputeStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  DisputeStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<DisputeStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<DisputeStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this DisputeStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisputeStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisputeStatusFilterCopyWith<DisputeStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeStatusFilterCopyWith<$Res> {
  factory $DisputeStatusFilterCopyWith(
          DisputeStatusFilter value, $Res Function(DisputeStatusFilter) then) =
      _$DisputeStatusFilterCopyWithImpl<$Res, DisputeStatusFilter>;
  @useResult
  $Res call(
      {DisputeStatus? equals,
      DisputeStatus? not,
      @JsonKey(name: 'in') List<DisputeStatus>? in_,
      List<DisputeStatus>? notIn});
}

/// @nodoc
class _$DisputeStatusFilterCopyWithImpl<$Res, $Val extends DisputeStatusFilter>
    implements $DisputeStatusFilterCopyWith<$Res> {
  _$DisputeStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisputeStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as DisputeStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as DisputeStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<DisputeStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<DisputeStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisputeStatusFilterImplCopyWith<$Res>
    implements $DisputeStatusFilterCopyWith<$Res> {
  factory _$$DisputeStatusFilterImplCopyWith(_$DisputeStatusFilterImpl value,
          $Res Function(_$DisputeStatusFilterImpl) then) =
      __$$DisputeStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DisputeStatus? equals,
      DisputeStatus? not,
      @JsonKey(name: 'in') List<DisputeStatus>? in_,
      List<DisputeStatus>? notIn});
}

/// @nodoc
class __$$DisputeStatusFilterImplCopyWithImpl<$Res>
    extends _$DisputeStatusFilterCopyWithImpl<$Res, _$DisputeStatusFilterImpl>
    implements _$$DisputeStatusFilterImplCopyWith<$Res> {
  __$$DisputeStatusFilterImplCopyWithImpl(_$DisputeStatusFilterImpl _value,
      $Res Function(_$DisputeStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisputeStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$DisputeStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as DisputeStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as DisputeStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<DisputeStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<DisputeStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisputeStatusFilterImpl implements _DisputeStatusFilter {
  const _$DisputeStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<DisputeStatus>? in_,
      final List<DisputeStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$DisputeStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisputeStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final DisputeStatus? equals;

  /// Not equal to
  @override
  final DisputeStatus? not;

  /// In list of values
  final List<DisputeStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<DisputeStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<DisputeStatus>? _notIn;

  /// Not in list of values
  @override
  List<DisputeStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DisputeStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisputeStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of DisputeStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisputeStatusFilterImplCopyWith<_$DisputeStatusFilterImpl> get copyWith =>
      __$$DisputeStatusFilterImplCopyWithImpl<_$DisputeStatusFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisputeStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _DisputeStatusFilter implements DisputeStatusFilter {
  const factory _DisputeStatusFilter(
      {final DisputeStatus? equals,
      final DisputeStatus? not,
      @JsonKey(name: 'in') final List<DisputeStatus>? in_,
      final List<DisputeStatus>? notIn}) = _$DisputeStatusFilterImpl;

  factory _DisputeStatusFilter.fromJson(Map<String, dynamic> json) =
      _$DisputeStatusFilterImpl.fromJson;

  /// Exact match
  @override
  DisputeStatus? get equals;

  /// Not equal to
  @override
  DisputeStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<DisputeStatus>? get in_;

  /// Not in list of values
  @override
  List<DisputeStatus>? get notIn;

  /// Create a copy of DisputeStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisputeStatusFilterImplCopyWith<_$DisputeStatusFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EarningStatusFilter _$EarningStatusFilterFromJson(Map<String, dynamic> json) {
  return _EarningStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$EarningStatusFilter {
  /// Exact match
  EarningStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  EarningStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<EarningStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<EarningStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this EarningStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarningStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarningStatusFilterCopyWith<EarningStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningStatusFilterCopyWith<$Res> {
  factory $EarningStatusFilterCopyWith(
          EarningStatusFilter value, $Res Function(EarningStatusFilter) then) =
      _$EarningStatusFilterCopyWithImpl<$Res, EarningStatusFilter>;
  @useResult
  $Res call(
      {EarningStatus? equals,
      EarningStatus? not,
      @JsonKey(name: 'in') List<EarningStatus>? in_,
      List<EarningStatus>? notIn});
}

/// @nodoc
class _$EarningStatusFilterCopyWithImpl<$Res, $Val extends EarningStatusFilter>
    implements $EarningStatusFilterCopyWith<$Res> {
  _$EarningStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarningStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as EarningStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as EarningStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<EarningStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<EarningStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarningStatusFilterImplCopyWith<$Res>
    implements $EarningStatusFilterCopyWith<$Res> {
  factory _$$EarningStatusFilterImplCopyWith(_$EarningStatusFilterImpl value,
          $Res Function(_$EarningStatusFilterImpl) then) =
      __$$EarningStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EarningStatus? equals,
      EarningStatus? not,
      @JsonKey(name: 'in') List<EarningStatus>? in_,
      List<EarningStatus>? notIn});
}

/// @nodoc
class __$$EarningStatusFilterImplCopyWithImpl<$Res>
    extends _$EarningStatusFilterCopyWithImpl<$Res, _$EarningStatusFilterImpl>
    implements _$$EarningStatusFilterImplCopyWith<$Res> {
  __$$EarningStatusFilterImplCopyWithImpl(_$EarningStatusFilterImpl _value,
      $Res Function(_$EarningStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarningStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$EarningStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as EarningStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as EarningStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<EarningStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<EarningStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarningStatusFilterImpl implements _EarningStatusFilter {
  const _$EarningStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<EarningStatus>? in_,
      final List<EarningStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$EarningStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarningStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final EarningStatus? equals;

  /// Not equal to
  @override
  final EarningStatus? not;

  /// In list of values
  final List<EarningStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<EarningStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<EarningStatus>? _notIn;

  /// Not in list of values
  @override
  List<EarningStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EarningStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of EarningStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningStatusFilterImplCopyWith<_$EarningStatusFilterImpl> get copyWith =>
      __$$EarningStatusFilterImplCopyWithImpl<_$EarningStatusFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarningStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _EarningStatusFilter implements EarningStatusFilter {
  const factory _EarningStatusFilter(
      {final EarningStatus? equals,
      final EarningStatus? not,
      @JsonKey(name: 'in') final List<EarningStatus>? in_,
      final List<EarningStatus>? notIn}) = _$EarningStatusFilterImpl;

  factory _EarningStatusFilter.fromJson(Map<String, dynamic> json) =
      _$EarningStatusFilterImpl.fromJson;

  /// Exact match
  @override
  EarningStatus? get equals;

  /// Not equal to
  @override
  EarningStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<EarningStatus>? get in_;

  /// Not in list of values
  @override
  List<EarningStatus>? get notIn;

  /// Create a copy of EarningStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarningStatusFilterImplCopyWith<_$EarningStatusFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayoutStatusFilter _$PayoutStatusFilterFromJson(Map<String, dynamic> json) {
  return _PayoutStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$PayoutStatusFilter {
  /// Exact match
  PayoutStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  PayoutStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<PayoutStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<PayoutStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this PayoutStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutStatusFilterCopyWith<PayoutStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutStatusFilterCopyWith<$Res> {
  factory $PayoutStatusFilterCopyWith(
          PayoutStatusFilter value, $Res Function(PayoutStatusFilter) then) =
      _$PayoutStatusFilterCopyWithImpl<$Res, PayoutStatusFilter>;
  @useResult
  $Res call(
      {PayoutStatus? equals,
      PayoutStatus? not,
      @JsonKey(name: 'in') List<PayoutStatus>? in_,
      List<PayoutStatus>? notIn});
}

/// @nodoc
class _$PayoutStatusFilterCopyWithImpl<$Res, $Val extends PayoutStatusFilter>
    implements $PayoutStatusFilterCopyWith<$Res> {
  _$PayoutStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as PayoutStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as PayoutStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<PayoutStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<PayoutStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayoutStatusFilterImplCopyWith<$Res>
    implements $PayoutStatusFilterCopyWith<$Res> {
  factory _$$PayoutStatusFilterImplCopyWith(_$PayoutStatusFilterImpl value,
          $Res Function(_$PayoutStatusFilterImpl) then) =
      __$$PayoutStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PayoutStatus? equals,
      PayoutStatus? not,
      @JsonKey(name: 'in') List<PayoutStatus>? in_,
      List<PayoutStatus>? notIn});
}

/// @nodoc
class __$$PayoutStatusFilterImplCopyWithImpl<$Res>
    extends _$PayoutStatusFilterCopyWithImpl<$Res, _$PayoutStatusFilterImpl>
    implements _$$PayoutStatusFilterImplCopyWith<$Res> {
  __$$PayoutStatusFilterImplCopyWithImpl(_$PayoutStatusFilterImpl _value,
      $Res Function(_$PayoutStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$PayoutStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as PayoutStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as PayoutStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<PayoutStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<PayoutStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutStatusFilterImpl implements _PayoutStatusFilter {
  const _$PayoutStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<PayoutStatus>? in_,
      final List<PayoutStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$PayoutStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final PayoutStatus? equals;

  /// Not equal to
  @override
  final PayoutStatus? not;

  /// In list of values
  final List<PayoutStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<PayoutStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<PayoutStatus>? _notIn;

  /// Not in list of values
  @override
  List<PayoutStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PayoutStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of PayoutStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutStatusFilterImplCopyWith<_$PayoutStatusFilterImpl> get copyWith =>
      __$$PayoutStatusFilterImplCopyWithImpl<_$PayoutStatusFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _PayoutStatusFilter implements PayoutStatusFilter {
  const factory _PayoutStatusFilter(
      {final PayoutStatus? equals,
      final PayoutStatus? not,
      @JsonKey(name: 'in') final List<PayoutStatus>? in_,
      final List<PayoutStatus>? notIn}) = _$PayoutStatusFilterImpl;

  factory _PayoutStatusFilter.fromJson(Map<String, dynamic> json) =
      _$PayoutStatusFilterImpl.fromJson;

  /// Exact match
  @override
  PayoutStatus? get equals;

  /// Not equal to
  @override
  PayoutStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<PayoutStatus>? get in_;

  /// Not in list of values
  @override
  List<PayoutStatus>? get notIn;

  /// Create a copy of PayoutStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutStatusFilterImplCopyWith<_$PayoutStatusFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayoutMethodFilter _$PayoutMethodFilterFromJson(Map<String, dynamic> json) {
  return _PayoutMethodFilter.fromJson(json);
}

/// @nodoc
mixin _$PayoutMethodFilter {
  /// Exact match
  PayoutMethod? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  PayoutMethod? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<PayoutMethod>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<PayoutMethod>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this PayoutMethodFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutMethodFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutMethodFilterCopyWith<PayoutMethodFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutMethodFilterCopyWith<$Res> {
  factory $PayoutMethodFilterCopyWith(
          PayoutMethodFilter value, $Res Function(PayoutMethodFilter) then) =
      _$PayoutMethodFilterCopyWithImpl<$Res, PayoutMethodFilter>;
  @useResult
  $Res call(
      {PayoutMethod? equals,
      PayoutMethod? not,
      @JsonKey(name: 'in') List<PayoutMethod>? in_,
      List<PayoutMethod>? notIn});
}

/// @nodoc
class _$PayoutMethodFilterCopyWithImpl<$Res, $Val extends PayoutMethodFilter>
    implements $PayoutMethodFilterCopyWith<$Res> {
  _$PayoutMethodFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutMethodFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as PayoutMethod?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as PayoutMethod?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<PayoutMethod>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<PayoutMethod>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayoutMethodFilterImplCopyWith<$Res>
    implements $PayoutMethodFilterCopyWith<$Res> {
  factory _$$PayoutMethodFilterImplCopyWith(_$PayoutMethodFilterImpl value,
          $Res Function(_$PayoutMethodFilterImpl) then) =
      __$$PayoutMethodFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PayoutMethod? equals,
      PayoutMethod? not,
      @JsonKey(name: 'in') List<PayoutMethod>? in_,
      List<PayoutMethod>? notIn});
}

/// @nodoc
class __$$PayoutMethodFilterImplCopyWithImpl<$Res>
    extends _$PayoutMethodFilterCopyWithImpl<$Res, _$PayoutMethodFilterImpl>
    implements _$$PayoutMethodFilterImplCopyWith<$Res> {
  __$$PayoutMethodFilterImplCopyWithImpl(_$PayoutMethodFilterImpl _value,
      $Res Function(_$PayoutMethodFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutMethodFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$PayoutMethodFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as PayoutMethod?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as PayoutMethod?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<PayoutMethod>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<PayoutMethod>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutMethodFilterImpl implements _PayoutMethodFilter {
  const _$PayoutMethodFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<PayoutMethod>? in_,
      final List<PayoutMethod>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$PayoutMethodFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutMethodFilterImplFromJson(json);

  /// Exact match
  @override
  final PayoutMethod? equals;

  /// Not equal to
  @override
  final PayoutMethod? not;

  /// In list of values
  final List<PayoutMethod>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<PayoutMethod>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<PayoutMethod>? _notIn;

  /// Not in list of values
  @override
  List<PayoutMethod>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PayoutMethodFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutMethodFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of PayoutMethodFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutMethodFilterImplCopyWith<_$PayoutMethodFilterImpl> get copyWith =>
      __$$PayoutMethodFilterImplCopyWithImpl<_$PayoutMethodFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutMethodFilterImplToJson(
      this,
    );
  }
}

abstract class _PayoutMethodFilter implements PayoutMethodFilter {
  const factory _PayoutMethodFilter(
      {final PayoutMethod? equals,
      final PayoutMethod? not,
      @JsonKey(name: 'in') final List<PayoutMethod>? in_,
      final List<PayoutMethod>? notIn}) = _$PayoutMethodFilterImpl;

  factory _PayoutMethodFilter.fromJson(Map<String, dynamic> json) =
      _$PayoutMethodFilterImpl.fromJson;

  /// Exact match
  @override
  PayoutMethod? get equals;

  /// Not equal to
  @override
  PayoutMethod? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<PayoutMethod>? get in_;

  /// Not in list of values
  @override
  List<PayoutMethod>? get notIn;

  /// Create a copy of PayoutMethodFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutMethodFilterImplCopyWith<_$PayoutMethodFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayoutAccountTypeFilter _$PayoutAccountTypeFilterFromJson(
    Map<String, dynamic> json) {
  return _PayoutAccountTypeFilter.fromJson(json);
}

/// @nodoc
mixin _$PayoutAccountTypeFilter {
  /// Exact match
  PayoutAccountType? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  PayoutAccountType? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<PayoutAccountType>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<PayoutAccountType>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this PayoutAccountTypeFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutAccountTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutAccountTypeFilterCopyWith<PayoutAccountTypeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutAccountTypeFilterCopyWith<$Res> {
  factory $PayoutAccountTypeFilterCopyWith(PayoutAccountTypeFilter value,
          $Res Function(PayoutAccountTypeFilter) then) =
      _$PayoutAccountTypeFilterCopyWithImpl<$Res, PayoutAccountTypeFilter>;
  @useResult
  $Res call(
      {PayoutAccountType? equals,
      PayoutAccountType? not,
      @JsonKey(name: 'in') List<PayoutAccountType>? in_,
      List<PayoutAccountType>? notIn});
}

/// @nodoc
class _$PayoutAccountTypeFilterCopyWithImpl<$Res,
        $Val extends PayoutAccountTypeFilter>
    implements $PayoutAccountTypeFilterCopyWith<$Res> {
  _$PayoutAccountTypeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutAccountTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as PayoutAccountType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as PayoutAccountType?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<PayoutAccountType>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<PayoutAccountType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayoutAccountTypeFilterImplCopyWith<$Res>
    implements $PayoutAccountTypeFilterCopyWith<$Res> {
  factory _$$PayoutAccountTypeFilterImplCopyWith(
          _$PayoutAccountTypeFilterImpl value,
          $Res Function(_$PayoutAccountTypeFilterImpl) then) =
      __$$PayoutAccountTypeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PayoutAccountType? equals,
      PayoutAccountType? not,
      @JsonKey(name: 'in') List<PayoutAccountType>? in_,
      List<PayoutAccountType>? notIn});
}

/// @nodoc
class __$$PayoutAccountTypeFilterImplCopyWithImpl<$Res>
    extends _$PayoutAccountTypeFilterCopyWithImpl<$Res,
        _$PayoutAccountTypeFilterImpl>
    implements _$$PayoutAccountTypeFilterImplCopyWith<$Res> {
  __$$PayoutAccountTypeFilterImplCopyWithImpl(
      _$PayoutAccountTypeFilterImpl _value,
      $Res Function(_$PayoutAccountTypeFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayoutAccountTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$PayoutAccountTypeFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as PayoutAccountType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as PayoutAccountType?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<PayoutAccountType>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<PayoutAccountType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutAccountTypeFilterImpl implements _PayoutAccountTypeFilter {
  const _$PayoutAccountTypeFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<PayoutAccountType>? in_,
      final List<PayoutAccountType>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$PayoutAccountTypeFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutAccountTypeFilterImplFromJson(json);

  /// Exact match
  @override
  final PayoutAccountType? equals;

  /// Not equal to
  @override
  final PayoutAccountType? not;

  /// In list of values
  final List<PayoutAccountType>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<PayoutAccountType>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<PayoutAccountType>? _notIn;

  /// Not in list of values
  @override
  List<PayoutAccountType>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PayoutAccountTypeFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutAccountTypeFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of PayoutAccountTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutAccountTypeFilterImplCopyWith<_$PayoutAccountTypeFilterImpl>
      get copyWith => __$$PayoutAccountTypeFilterImplCopyWithImpl<
          _$PayoutAccountTypeFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutAccountTypeFilterImplToJson(
      this,
    );
  }
}

abstract class _PayoutAccountTypeFilter implements PayoutAccountTypeFilter {
  const factory _PayoutAccountTypeFilter(
      {final PayoutAccountType? equals,
      final PayoutAccountType? not,
      @JsonKey(name: 'in') final List<PayoutAccountType>? in_,
      final List<PayoutAccountType>? notIn}) = _$PayoutAccountTypeFilterImpl;

  factory _PayoutAccountTypeFilter.fromJson(Map<String, dynamic> json) =
      _$PayoutAccountTypeFilterImpl.fromJson;

  /// Exact match
  @override
  PayoutAccountType? get equals;

  /// Not equal to
  @override
  PayoutAccountType? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<PayoutAccountType>? get in_;

  /// Not in list of values
  @override
  List<PayoutAccountType>? get notIn;

  /// Create a copy of PayoutAccountTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutAccountTypeFilterImplCopyWith<_$PayoutAccountTypeFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DiscountTypeFilter _$DiscountTypeFilterFromJson(Map<String, dynamic> json) {
  return _DiscountTypeFilter.fromJson(json);
}

/// @nodoc
mixin _$DiscountTypeFilter {
  /// Exact match
  DiscountType? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  DiscountType? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<DiscountType>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<DiscountType>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this DiscountTypeFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountTypeFilterCopyWith<DiscountTypeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountTypeFilterCopyWith<$Res> {
  factory $DiscountTypeFilterCopyWith(
          DiscountTypeFilter value, $Res Function(DiscountTypeFilter) then) =
      _$DiscountTypeFilterCopyWithImpl<$Res, DiscountTypeFilter>;
  @useResult
  $Res call(
      {DiscountType? equals,
      DiscountType? not,
      @JsonKey(name: 'in') List<DiscountType>? in_,
      List<DiscountType>? notIn});
}

/// @nodoc
class _$DiscountTypeFilterCopyWithImpl<$Res, $Val extends DiscountTypeFilter>
    implements $DiscountTypeFilterCopyWith<$Res> {
  _$DiscountTypeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as DiscountType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as DiscountType?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<DiscountType>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<DiscountType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountTypeFilterImplCopyWith<$Res>
    implements $DiscountTypeFilterCopyWith<$Res> {
  factory _$$DiscountTypeFilterImplCopyWith(_$DiscountTypeFilterImpl value,
          $Res Function(_$DiscountTypeFilterImpl) then) =
      __$$DiscountTypeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DiscountType? equals,
      DiscountType? not,
      @JsonKey(name: 'in') List<DiscountType>? in_,
      List<DiscountType>? notIn});
}

/// @nodoc
class __$$DiscountTypeFilterImplCopyWithImpl<$Res>
    extends _$DiscountTypeFilterCopyWithImpl<$Res, _$DiscountTypeFilterImpl>
    implements _$$DiscountTypeFilterImplCopyWith<$Res> {
  __$$DiscountTypeFilterImplCopyWithImpl(_$DiscountTypeFilterImpl _value,
      $Res Function(_$DiscountTypeFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$DiscountTypeFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as DiscountType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as DiscountType?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<DiscountType>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<DiscountType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountTypeFilterImpl implements _DiscountTypeFilter {
  const _$DiscountTypeFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<DiscountType>? in_,
      final List<DiscountType>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$DiscountTypeFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountTypeFilterImplFromJson(json);

  /// Exact match
  @override
  final DiscountType? equals;

  /// Not equal to
  @override
  final DiscountType? not;

  /// In list of values
  final List<DiscountType>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<DiscountType>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<DiscountType>? _notIn;

  /// Not in list of values
  @override
  List<DiscountType>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DiscountTypeFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountTypeFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of DiscountTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountTypeFilterImplCopyWith<_$DiscountTypeFilterImpl> get copyWith =>
      __$$DiscountTypeFilterImplCopyWithImpl<_$DiscountTypeFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountTypeFilterImplToJson(
      this,
    );
  }
}

abstract class _DiscountTypeFilter implements DiscountTypeFilter {
  const factory _DiscountTypeFilter(
      {final DiscountType? equals,
      final DiscountType? not,
      @JsonKey(name: 'in') final List<DiscountType>? in_,
      final List<DiscountType>? notIn}) = _$DiscountTypeFilterImpl;

  factory _DiscountTypeFilter.fromJson(Map<String, dynamic> json) =
      _$DiscountTypeFilterImpl.fromJson;

  /// Exact match
  @override
  DiscountType? get equals;

  /// Not equal to
  @override
  DiscountType? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<DiscountType>? get in_;

  /// Not in list of values
  @override
  List<DiscountType>? get notIn;

  /// Create a copy of DiscountTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountTypeFilterImplCopyWith<_$DiscountTypeFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferralStatusFilter _$ReferralStatusFilterFromJson(Map<String, dynamic> json) {
  return _ReferralStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$ReferralStatusFilter {
  /// Exact match
  ReferralStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  ReferralStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<ReferralStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<ReferralStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this ReferralStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralStatusFilterCopyWith<ReferralStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralStatusFilterCopyWith<$Res> {
  factory $ReferralStatusFilterCopyWith(ReferralStatusFilter value,
          $Res Function(ReferralStatusFilter) then) =
      _$ReferralStatusFilterCopyWithImpl<$Res, ReferralStatusFilter>;
  @useResult
  $Res call(
      {ReferralStatus? equals,
      ReferralStatus? not,
      @JsonKey(name: 'in') List<ReferralStatus>? in_,
      List<ReferralStatus>? notIn});
}

/// @nodoc
class _$ReferralStatusFilterCopyWithImpl<$Res,
        $Val extends ReferralStatusFilter>
    implements $ReferralStatusFilterCopyWith<$Res> {
  _$ReferralStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ReferralStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ReferralStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ReferralStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ReferralStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralStatusFilterImplCopyWith<$Res>
    implements $ReferralStatusFilterCopyWith<$Res> {
  factory _$$ReferralStatusFilterImplCopyWith(_$ReferralStatusFilterImpl value,
          $Res Function(_$ReferralStatusFilterImpl) then) =
      __$$ReferralStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReferralStatus? equals,
      ReferralStatus? not,
      @JsonKey(name: 'in') List<ReferralStatus>? in_,
      List<ReferralStatus>? notIn});
}

/// @nodoc
class __$$ReferralStatusFilterImplCopyWithImpl<$Res>
    extends _$ReferralStatusFilterCopyWithImpl<$Res, _$ReferralStatusFilterImpl>
    implements _$$ReferralStatusFilterImplCopyWith<$Res> {
  __$$ReferralStatusFilterImplCopyWithImpl(_$ReferralStatusFilterImpl _value,
      $Res Function(_$ReferralStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$ReferralStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ReferralStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ReferralStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ReferralStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ReferralStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralStatusFilterImpl implements _ReferralStatusFilter {
  const _$ReferralStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<ReferralStatus>? in_,
      final List<ReferralStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$ReferralStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final ReferralStatus? equals;

  /// Not equal to
  @override
  final ReferralStatus? not;

  /// In list of values
  final List<ReferralStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ReferralStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<ReferralStatus>? _notIn;

  /// Not in list of values
  @override
  List<ReferralStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReferralStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of ReferralStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralStatusFilterImplCopyWith<_$ReferralStatusFilterImpl>
      get copyWith =>
          __$$ReferralStatusFilterImplCopyWithImpl<_$ReferralStatusFilterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _ReferralStatusFilter implements ReferralStatusFilter {
  const factory _ReferralStatusFilter(
      {final ReferralStatus? equals,
      final ReferralStatus? not,
      @JsonKey(name: 'in') final List<ReferralStatus>? in_,
      final List<ReferralStatus>? notIn}) = _$ReferralStatusFilterImpl;

  factory _ReferralStatusFilter.fromJson(Map<String, dynamic> json) =
      _$ReferralStatusFilterImpl.fromJson;

  /// Exact match
  @override
  ReferralStatus? get equals;

  /// Not equal to
  @override
  ReferralStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ReferralStatus>? get in_;

  /// Not in list of values
  @override
  List<ReferralStatus>? get notIn;

  /// Create a copy of ReferralStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralStatusFilterImplCopyWith<_$ReferralStatusFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreditSourceFilter _$CreditSourceFilterFromJson(Map<String, dynamic> json) {
  return _CreditSourceFilter.fromJson(json);
}

/// @nodoc
mixin _$CreditSourceFilter {
  /// Exact match
  CreditSource? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  CreditSource? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<CreditSource>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<CreditSource>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this CreditSourceFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreditSourceFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreditSourceFilterCopyWith<CreditSourceFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditSourceFilterCopyWith<$Res> {
  factory $CreditSourceFilterCopyWith(
          CreditSourceFilter value, $Res Function(CreditSourceFilter) then) =
      _$CreditSourceFilterCopyWithImpl<$Res, CreditSourceFilter>;
  @useResult
  $Res call(
      {CreditSource? equals,
      CreditSource? not,
      @JsonKey(name: 'in') List<CreditSource>? in_,
      List<CreditSource>? notIn});
}

/// @nodoc
class _$CreditSourceFilterCopyWithImpl<$Res, $Val extends CreditSourceFilter>
    implements $CreditSourceFilterCopyWith<$Res> {
  _$CreditSourceFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreditSourceFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as CreditSource?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as CreditSource?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<CreditSource>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<CreditSource>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditSourceFilterImplCopyWith<$Res>
    implements $CreditSourceFilterCopyWith<$Res> {
  factory _$$CreditSourceFilterImplCopyWith(_$CreditSourceFilterImpl value,
          $Res Function(_$CreditSourceFilterImpl) then) =
      __$$CreditSourceFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CreditSource? equals,
      CreditSource? not,
      @JsonKey(name: 'in') List<CreditSource>? in_,
      List<CreditSource>? notIn});
}

/// @nodoc
class __$$CreditSourceFilterImplCopyWithImpl<$Res>
    extends _$CreditSourceFilterCopyWithImpl<$Res, _$CreditSourceFilterImpl>
    implements _$$CreditSourceFilterImplCopyWith<$Res> {
  __$$CreditSourceFilterImplCopyWithImpl(_$CreditSourceFilterImpl _value,
      $Res Function(_$CreditSourceFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreditSourceFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$CreditSourceFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as CreditSource?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as CreditSource?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<CreditSource>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<CreditSource>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditSourceFilterImpl implements _CreditSourceFilter {
  const _$CreditSourceFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<CreditSource>? in_,
      final List<CreditSource>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$CreditSourceFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditSourceFilterImplFromJson(json);

  /// Exact match
  @override
  final CreditSource? equals;

  /// Not equal to
  @override
  final CreditSource? not;

  /// In list of values
  final List<CreditSource>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<CreditSource>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<CreditSource>? _notIn;

  /// Not in list of values
  @override
  List<CreditSource>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreditSourceFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditSourceFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of CreditSourceFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditSourceFilterImplCopyWith<_$CreditSourceFilterImpl> get copyWith =>
      __$$CreditSourceFilterImplCopyWithImpl<_$CreditSourceFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditSourceFilterImplToJson(
      this,
    );
  }
}

abstract class _CreditSourceFilter implements CreditSourceFilter {
  const factory _CreditSourceFilter(
      {final CreditSource? equals,
      final CreditSource? not,
      @JsonKey(name: 'in') final List<CreditSource>? in_,
      final List<CreditSource>? notIn}) = _$CreditSourceFilterImpl;

  factory _CreditSourceFilter.fromJson(Map<String, dynamic> json) =
      _$CreditSourceFilterImpl.fromJson;

  /// Exact match
  @override
  CreditSource? get equals;

  /// Not equal to
  @override
  CreditSource? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<CreditSource>? get in_;

  /// Not in list of values
  @override
  List<CreditSource>? get notIn;

  /// Create a copy of CreditSourceFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreditSourceFilterImplCopyWith<_$CreditSourceFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CollaboratorStatusFilter _$CollaboratorStatusFilterFromJson(
    Map<String, dynamic> json) {
  return _CollaboratorStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$CollaboratorStatusFilter {
  /// Exact match
  CollaboratorStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  CollaboratorStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<CollaboratorStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<CollaboratorStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this CollaboratorStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollaboratorStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollaboratorStatusFilterCopyWith<CollaboratorStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollaboratorStatusFilterCopyWith<$Res> {
  factory $CollaboratorStatusFilterCopyWith(CollaboratorStatusFilter value,
          $Res Function(CollaboratorStatusFilter) then) =
      _$CollaboratorStatusFilterCopyWithImpl<$Res, CollaboratorStatusFilter>;
  @useResult
  $Res call(
      {CollaboratorStatus? equals,
      CollaboratorStatus? not,
      @JsonKey(name: 'in') List<CollaboratorStatus>? in_,
      List<CollaboratorStatus>? notIn});
}

/// @nodoc
class _$CollaboratorStatusFilterCopyWithImpl<$Res,
        $Val extends CollaboratorStatusFilter>
    implements $CollaboratorStatusFilterCopyWith<$Res> {
  _$CollaboratorStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollaboratorStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as CollaboratorStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as CollaboratorStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<CollaboratorStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<CollaboratorStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollaboratorStatusFilterImplCopyWith<$Res>
    implements $CollaboratorStatusFilterCopyWith<$Res> {
  factory _$$CollaboratorStatusFilterImplCopyWith(
          _$CollaboratorStatusFilterImpl value,
          $Res Function(_$CollaboratorStatusFilterImpl) then) =
      __$$CollaboratorStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CollaboratorStatus? equals,
      CollaboratorStatus? not,
      @JsonKey(name: 'in') List<CollaboratorStatus>? in_,
      List<CollaboratorStatus>? notIn});
}

/// @nodoc
class __$$CollaboratorStatusFilterImplCopyWithImpl<$Res>
    extends _$CollaboratorStatusFilterCopyWithImpl<$Res,
        _$CollaboratorStatusFilterImpl>
    implements _$$CollaboratorStatusFilterImplCopyWith<$Res> {
  __$$CollaboratorStatusFilterImplCopyWithImpl(
      _$CollaboratorStatusFilterImpl _value,
      $Res Function(_$CollaboratorStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollaboratorStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$CollaboratorStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as CollaboratorStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as CollaboratorStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<CollaboratorStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<CollaboratorStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollaboratorStatusFilterImpl implements _CollaboratorStatusFilter {
  const _$CollaboratorStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<CollaboratorStatus>? in_,
      final List<CollaboratorStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$CollaboratorStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollaboratorStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final CollaboratorStatus? equals;

  /// Not equal to
  @override
  final CollaboratorStatus? not;

  /// In list of values
  final List<CollaboratorStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<CollaboratorStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<CollaboratorStatus>? _notIn;

  /// Not in list of values
  @override
  List<CollaboratorStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CollaboratorStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollaboratorStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of CollaboratorStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollaboratorStatusFilterImplCopyWith<_$CollaboratorStatusFilterImpl>
      get copyWith => __$$CollaboratorStatusFilterImplCopyWithImpl<
          _$CollaboratorStatusFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollaboratorStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _CollaboratorStatusFilter implements CollaboratorStatusFilter {
  const factory _CollaboratorStatusFilter(
      {final CollaboratorStatus? equals,
      final CollaboratorStatus? not,
      @JsonKey(name: 'in') final List<CollaboratorStatus>? in_,
      final List<CollaboratorStatus>? notIn}) = _$CollaboratorStatusFilterImpl;

  factory _CollaboratorStatusFilter.fromJson(Map<String, dynamic> json) =
      _$CollaboratorStatusFilterImpl.fromJson;

  /// Exact match
  @override
  CollaboratorStatus? get equals;

  /// Not equal to
  @override
  CollaboratorStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<CollaboratorStatus>? get in_;

  /// Not in list of values
  @override
  List<CollaboratorStatus>? get notIn;

  /// Create a copy of CollaboratorStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollaboratorStatusFilterImplCopyWith<_$CollaboratorStatusFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebinarCollaboratorRoleFilter _$WebinarCollaboratorRoleFilterFromJson(
    Map<String, dynamic> json) {
  return _WebinarCollaboratorRoleFilter.fromJson(json);
}

/// @nodoc
mixin _$WebinarCollaboratorRoleFilter {
  /// Exact match
  WebinarCollaboratorRole? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  WebinarCollaboratorRole? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<WebinarCollaboratorRole>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<WebinarCollaboratorRole>? get notIn =>
      throw _privateConstructorUsedError;

  /// Serializes this WebinarCollaboratorRoleFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarCollaboratorRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarCollaboratorRoleFilterCopyWith<WebinarCollaboratorRoleFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarCollaboratorRoleFilterCopyWith<$Res> {
  factory $WebinarCollaboratorRoleFilterCopyWith(
          WebinarCollaboratorRoleFilter value,
          $Res Function(WebinarCollaboratorRoleFilter) then) =
      _$WebinarCollaboratorRoleFilterCopyWithImpl<$Res,
          WebinarCollaboratorRoleFilter>;
  @useResult
  $Res call(
      {WebinarCollaboratorRole? equals,
      WebinarCollaboratorRole? not,
      @JsonKey(name: 'in') List<WebinarCollaboratorRole>? in_,
      List<WebinarCollaboratorRole>? notIn});
}

/// @nodoc
class _$WebinarCollaboratorRoleFilterCopyWithImpl<$Res,
        $Val extends WebinarCollaboratorRoleFilter>
    implements $WebinarCollaboratorRoleFilterCopyWith<$Res> {
  _$WebinarCollaboratorRoleFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarCollaboratorRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorRole?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorRole?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<WebinarCollaboratorRole>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<WebinarCollaboratorRole>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebinarCollaboratorRoleFilterImplCopyWith<$Res>
    implements $WebinarCollaboratorRoleFilterCopyWith<$Res> {
  factory _$$WebinarCollaboratorRoleFilterImplCopyWith(
          _$WebinarCollaboratorRoleFilterImpl value,
          $Res Function(_$WebinarCollaboratorRoleFilterImpl) then) =
      __$$WebinarCollaboratorRoleFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WebinarCollaboratorRole? equals,
      WebinarCollaboratorRole? not,
      @JsonKey(name: 'in') List<WebinarCollaboratorRole>? in_,
      List<WebinarCollaboratorRole>? notIn});
}

/// @nodoc
class __$$WebinarCollaboratorRoleFilterImplCopyWithImpl<$Res>
    extends _$WebinarCollaboratorRoleFilterCopyWithImpl<$Res,
        _$WebinarCollaboratorRoleFilterImpl>
    implements _$$WebinarCollaboratorRoleFilterImplCopyWith<$Res> {
  __$$WebinarCollaboratorRoleFilterImplCopyWithImpl(
      _$WebinarCollaboratorRoleFilterImpl _value,
      $Res Function(_$WebinarCollaboratorRoleFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarCollaboratorRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$WebinarCollaboratorRoleFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorRole?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as WebinarCollaboratorRole?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<WebinarCollaboratorRole>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<WebinarCollaboratorRole>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarCollaboratorRoleFilterImpl
    implements _WebinarCollaboratorRoleFilter {
  const _$WebinarCollaboratorRoleFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<WebinarCollaboratorRole>? in_,
      final List<WebinarCollaboratorRole>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$WebinarCollaboratorRoleFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebinarCollaboratorRoleFilterImplFromJson(json);

  /// Exact match
  @override
  final WebinarCollaboratorRole? equals;

  /// Not equal to
  @override
  final WebinarCollaboratorRole? not;

  /// In list of values
  final List<WebinarCollaboratorRole>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<WebinarCollaboratorRole>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<WebinarCollaboratorRole>? _notIn;

  /// Not in list of values
  @override
  List<WebinarCollaboratorRole>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WebinarCollaboratorRoleFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarCollaboratorRoleFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of WebinarCollaboratorRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarCollaboratorRoleFilterImplCopyWith<
          _$WebinarCollaboratorRoleFilterImpl>
      get copyWith => __$$WebinarCollaboratorRoleFilterImplCopyWithImpl<
          _$WebinarCollaboratorRoleFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarCollaboratorRoleFilterImplToJson(
      this,
    );
  }
}

abstract class _WebinarCollaboratorRoleFilter
    implements WebinarCollaboratorRoleFilter {
  const factory _WebinarCollaboratorRoleFilter(
          {final WebinarCollaboratorRole? equals,
          final WebinarCollaboratorRole? not,
          @JsonKey(name: 'in') final List<WebinarCollaboratorRole>? in_,
          final List<WebinarCollaboratorRole>? notIn}) =
      _$WebinarCollaboratorRoleFilterImpl;

  factory _WebinarCollaboratorRoleFilter.fromJson(Map<String, dynamic> json) =
      _$WebinarCollaboratorRoleFilterImpl.fromJson;

  /// Exact match
  @override
  WebinarCollaboratorRole? get equals;

  /// Not equal to
  @override
  WebinarCollaboratorRole? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<WebinarCollaboratorRole>? get in_;

  /// Not in list of values
  @override
  List<WebinarCollaboratorRole>? get notIn;

  /// Create a copy of WebinarCollaboratorRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarCollaboratorRoleFilterImplCopyWith<
          _$WebinarCollaboratorRoleFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassCollaboratorRoleFilter _$ClassCollaboratorRoleFilterFromJson(
    Map<String, dynamic> json) {
  return _ClassCollaboratorRoleFilter.fromJson(json);
}

/// @nodoc
mixin _$ClassCollaboratorRoleFilter {
  /// Exact match
  ClassCollaboratorRole? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  ClassCollaboratorRole? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<ClassCollaboratorRole>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<ClassCollaboratorRole>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this ClassCollaboratorRoleFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassCollaboratorRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassCollaboratorRoleFilterCopyWith<ClassCollaboratorRoleFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassCollaboratorRoleFilterCopyWith<$Res> {
  factory $ClassCollaboratorRoleFilterCopyWith(
          ClassCollaboratorRoleFilter value,
          $Res Function(ClassCollaboratorRoleFilter) then) =
      _$ClassCollaboratorRoleFilterCopyWithImpl<$Res,
          ClassCollaboratorRoleFilter>;
  @useResult
  $Res call(
      {ClassCollaboratorRole? equals,
      ClassCollaboratorRole? not,
      @JsonKey(name: 'in') List<ClassCollaboratorRole>? in_,
      List<ClassCollaboratorRole>? notIn});
}

/// @nodoc
class _$ClassCollaboratorRoleFilterCopyWithImpl<$Res,
        $Val extends ClassCollaboratorRoleFilter>
    implements $ClassCollaboratorRoleFilterCopyWith<$Res> {
  _$ClassCollaboratorRoleFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassCollaboratorRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorRole?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorRole?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ClassCollaboratorRole>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ClassCollaboratorRole>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassCollaboratorRoleFilterImplCopyWith<$Res>
    implements $ClassCollaboratorRoleFilterCopyWith<$Res> {
  factory _$$ClassCollaboratorRoleFilterImplCopyWith(
          _$ClassCollaboratorRoleFilterImpl value,
          $Res Function(_$ClassCollaboratorRoleFilterImpl) then) =
      __$$ClassCollaboratorRoleFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ClassCollaboratorRole? equals,
      ClassCollaboratorRole? not,
      @JsonKey(name: 'in') List<ClassCollaboratorRole>? in_,
      List<ClassCollaboratorRole>? notIn});
}

/// @nodoc
class __$$ClassCollaboratorRoleFilterImplCopyWithImpl<$Res>
    extends _$ClassCollaboratorRoleFilterCopyWithImpl<$Res,
        _$ClassCollaboratorRoleFilterImpl>
    implements _$$ClassCollaboratorRoleFilterImplCopyWith<$Res> {
  __$$ClassCollaboratorRoleFilterImplCopyWithImpl(
      _$ClassCollaboratorRoleFilterImpl _value,
      $Res Function(_$ClassCollaboratorRoleFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassCollaboratorRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$ClassCollaboratorRoleFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorRole?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ClassCollaboratorRole?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ClassCollaboratorRole>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ClassCollaboratorRole>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassCollaboratorRoleFilterImpl
    implements _ClassCollaboratorRoleFilter {
  const _$ClassCollaboratorRoleFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<ClassCollaboratorRole>? in_,
      final List<ClassCollaboratorRole>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$ClassCollaboratorRoleFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClassCollaboratorRoleFilterImplFromJson(json);

  /// Exact match
  @override
  final ClassCollaboratorRole? equals;

  /// Not equal to
  @override
  final ClassCollaboratorRole? not;

  /// In list of values
  final List<ClassCollaboratorRole>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ClassCollaboratorRole>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<ClassCollaboratorRole>? _notIn;

  /// Not in list of values
  @override
  List<ClassCollaboratorRole>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClassCollaboratorRoleFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassCollaboratorRoleFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of ClassCollaboratorRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassCollaboratorRoleFilterImplCopyWith<_$ClassCollaboratorRoleFilterImpl>
      get copyWith => __$$ClassCollaboratorRoleFilterImplCopyWithImpl<
          _$ClassCollaboratorRoleFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassCollaboratorRoleFilterImplToJson(
      this,
    );
  }
}

abstract class _ClassCollaboratorRoleFilter
    implements ClassCollaboratorRoleFilter {
  const factory _ClassCollaboratorRoleFilter(
          {final ClassCollaboratorRole? equals,
          final ClassCollaboratorRole? not,
          @JsonKey(name: 'in') final List<ClassCollaboratorRole>? in_,
          final List<ClassCollaboratorRole>? notIn}) =
      _$ClassCollaboratorRoleFilterImpl;

  factory _ClassCollaboratorRoleFilter.fromJson(Map<String, dynamic> json) =
      _$ClassCollaboratorRoleFilterImpl.fromJson;

  /// Exact match
  @override
  ClassCollaboratorRole? get equals;

  /// Not equal to
  @override
  ClassCollaboratorRole? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ClassCollaboratorRole>? get in_;

  /// Not in list of values
  @override
  List<ClassCollaboratorRole>? get notIn;

  /// Create a copy of ClassCollaboratorRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassCollaboratorRoleFilterImplCopyWith<_$ClassCollaboratorRoleFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EarningRoleFilter _$EarningRoleFilterFromJson(Map<String, dynamic> json) {
  return _EarningRoleFilter.fromJson(json);
}

/// @nodoc
mixin _$EarningRoleFilter {
  /// Exact match
  EarningRole? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  EarningRole? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<EarningRole>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<EarningRole>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this EarningRoleFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarningRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarningRoleFilterCopyWith<EarningRoleFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningRoleFilterCopyWith<$Res> {
  factory $EarningRoleFilterCopyWith(
          EarningRoleFilter value, $Res Function(EarningRoleFilter) then) =
      _$EarningRoleFilterCopyWithImpl<$Res, EarningRoleFilter>;
  @useResult
  $Res call(
      {EarningRole? equals,
      EarningRole? not,
      @JsonKey(name: 'in') List<EarningRole>? in_,
      List<EarningRole>? notIn});
}

/// @nodoc
class _$EarningRoleFilterCopyWithImpl<$Res, $Val extends EarningRoleFilter>
    implements $EarningRoleFilterCopyWith<$Res> {
  _$EarningRoleFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarningRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as EarningRole?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as EarningRole?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<EarningRole>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<EarningRole>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarningRoleFilterImplCopyWith<$Res>
    implements $EarningRoleFilterCopyWith<$Res> {
  factory _$$EarningRoleFilterImplCopyWith(_$EarningRoleFilterImpl value,
          $Res Function(_$EarningRoleFilterImpl) then) =
      __$$EarningRoleFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EarningRole? equals,
      EarningRole? not,
      @JsonKey(name: 'in') List<EarningRole>? in_,
      List<EarningRole>? notIn});
}

/// @nodoc
class __$$EarningRoleFilterImplCopyWithImpl<$Res>
    extends _$EarningRoleFilterCopyWithImpl<$Res, _$EarningRoleFilterImpl>
    implements _$$EarningRoleFilterImplCopyWith<$Res> {
  __$$EarningRoleFilterImplCopyWithImpl(_$EarningRoleFilterImpl _value,
      $Res Function(_$EarningRoleFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarningRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$EarningRoleFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as EarningRole?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as EarningRole?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<EarningRole>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<EarningRole>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarningRoleFilterImpl implements _EarningRoleFilter {
  const _$EarningRoleFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<EarningRole>? in_,
      final List<EarningRole>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$EarningRoleFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarningRoleFilterImplFromJson(json);

  /// Exact match
  @override
  final EarningRole? equals;

  /// Not equal to
  @override
  final EarningRole? not;

  /// In list of values
  final List<EarningRole>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<EarningRole>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<EarningRole>? _notIn;

  /// Not in list of values
  @override
  List<EarningRole>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EarningRoleFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningRoleFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of EarningRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningRoleFilterImplCopyWith<_$EarningRoleFilterImpl> get copyWith =>
      __$$EarningRoleFilterImplCopyWithImpl<_$EarningRoleFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarningRoleFilterImplToJson(
      this,
    );
  }
}

abstract class _EarningRoleFilter implements EarningRoleFilter {
  const factory _EarningRoleFilter(
      {final EarningRole? equals,
      final EarningRole? not,
      @JsonKey(name: 'in') final List<EarningRole>? in_,
      final List<EarningRole>? notIn}) = _$EarningRoleFilterImpl;

  factory _EarningRoleFilter.fromJson(Map<String, dynamic> json) =
      _$EarningRoleFilterImpl.fromJson;

  /// Exact match
  @override
  EarningRole? get equals;

  /// Not equal to
  @override
  EarningRole? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<EarningRole>? get in_;

  /// Not in list of values
  @override
  List<EarningRole>? get notIn;

  /// Create a copy of EarningRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarningRoleFilterImplCopyWith<_$EarningRoleFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlanDurationFilter _$PlanDurationFilterFromJson(Map<String, dynamic> json) {
  return _PlanDurationFilter.fromJson(json);
}

/// @nodoc
mixin _$PlanDurationFilter {
  /// Exact match
  PlanDuration? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  PlanDuration? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<PlanDuration>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<PlanDuration>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this PlanDurationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlanDurationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanDurationFilterCopyWith<PlanDurationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanDurationFilterCopyWith<$Res> {
  factory $PlanDurationFilterCopyWith(
          PlanDurationFilter value, $Res Function(PlanDurationFilter) then) =
      _$PlanDurationFilterCopyWithImpl<$Res, PlanDurationFilter>;
  @useResult
  $Res call(
      {PlanDuration? equals,
      PlanDuration? not,
      @JsonKey(name: 'in') List<PlanDuration>? in_,
      List<PlanDuration>? notIn});
}

/// @nodoc
class _$PlanDurationFilterCopyWithImpl<$Res, $Val extends PlanDurationFilter>
    implements $PlanDurationFilterCopyWith<$Res> {
  _$PlanDurationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanDurationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as PlanDuration?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as PlanDuration?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<PlanDuration>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<PlanDuration>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanDurationFilterImplCopyWith<$Res>
    implements $PlanDurationFilterCopyWith<$Res> {
  factory _$$PlanDurationFilterImplCopyWith(_$PlanDurationFilterImpl value,
          $Res Function(_$PlanDurationFilterImpl) then) =
      __$$PlanDurationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlanDuration? equals,
      PlanDuration? not,
      @JsonKey(name: 'in') List<PlanDuration>? in_,
      List<PlanDuration>? notIn});
}

/// @nodoc
class __$$PlanDurationFilterImplCopyWithImpl<$Res>
    extends _$PlanDurationFilterCopyWithImpl<$Res, _$PlanDurationFilterImpl>
    implements _$$PlanDurationFilterImplCopyWith<$Res> {
  __$$PlanDurationFilterImplCopyWithImpl(_$PlanDurationFilterImpl _value,
      $Res Function(_$PlanDurationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanDurationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$PlanDurationFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as PlanDuration?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as PlanDuration?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<PlanDuration>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<PlanDuration>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanDurationFilterImpl implements _PlanDurationFilter {
  const _$PlanDurationFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<PlanDuration>? in_,
      final List<PlanDuration>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$PlanDurationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanDurationFilterImplFromJson(json);

  /// Exact match
  @override
  final PlanDuration? equals;

  /// Not equal to
  @override
  final PlanDuration? not;

  /// In list of values
  final List<PlanDuration>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<PlanDuration>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<PlanDuration>? _notIn;

  /// Not in list of values
  @override
  List<PlanDuration>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlanDurationFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanDurationFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of PlanDurationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanDurationFilterImplCopyWith<_$PlanDurationFilterImpl> get copyWith =>
      __$$PlanDurationFilterImplCopyWithImpl<_$PlanDurationFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanDurationFilterImplToJson(
      this,
    );
  }
}

abstract class _PlanDurationFilter implements PlanDurationFilter {
  const factory _PlanDurationFilter(
      {final PlanDuration? equals,
      final PlanDuration? not,
      @JsonKey(name: 'in') final List<PlanDuration>? in_,
      final List<PlanDuration>? notIn}) = _$PlanDurationFilterImpl;

  factory _PlanDurationFilter.fromJson(Map<String, dynamic> json) =
      _$PlanDurationFilterImpl.fromJson;

  /// Exact match
  @override
  PlanDuration? get equals;

  /// Not equal to
  @override
  PlanDuration? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<PlanDuration>? get in_;

  /// Not in list of values
  @override
  List<PlanDuration>? get notIn;

  /// Create a copy of PlanDurationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanDurationFilterImplCopyWith<_$PlanDurationFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlanEmailSupportFilter _$PlanEmailSupportFilterFromJson(
    Map<String, dynamic> json) {
  return _PlanEmailSupportFilter.fromJson(json);
}

/// @nodoc
mixin _$PlanEmailSupportFilter {
  /// Exact match
  PlanEmailSupport? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  PlanEmailSupport? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<PlanEmailSupport>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<PlanEmailSupport>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this PlanEmailSupportFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlanEmailSupportFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanEmailSupportFilterCopyWith<PlanEmailSupportFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanEmailSupportFilterCopyWith<$Res> {
  factory $PlanEmailSupportFilterCopyWith(PlanEmailSupportFilter value,
          $Res Function(PlanEmailSupportFilter) then) =
      _$PlanEmailSupportFilterCopyWithImpl<$Res, PlanEmailSupportFilter>;
  @useResult
  $Res call(
      {PlanEmailSupport? equals,
      PlanEmailSupport? not,
      @JsonKey(name: 'in') List<PlanEmailSupport>? in_,
      List<PlanEmailSupport>? notIn});
}

/// @nodoc
class _$PlanEmailSupportFilterCopyWithImpl<$Res,
        $Val extends PlanEmailSupportFilter>
    implements $PlanEmailSupportFilterCopyWith<$Res> {
  _$PlanEmailSupportFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanEmailSupportFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<PlanEmailSupport>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<PlanEmailSupport>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanEmailSupportFilterImplCopyWith<$Res>
    implements $PlanEmailSupportFilterCopyWith<$Res> {
  factory _$$PlanEmailSupportFilterImplCopyWith(
          _$PlanEmailSupportFilterImpl value,
          $Res Function(_$PlanEmailSupportFilterImpl) then) =
      __$$PlanEmailSupportFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlanEmailSupport? equals,
      PlanEmailSupport? not,
      @JsonKey(name: 'in') List<PlanEmailSupport>? in_,
      List<PlanEmailSupport>? notIn});
}

/// @nodoc
class __$$PlanEmailSupportFilterImplCopyWithImpl<$Res>
    extends _$PlanEmailSupportFilterCopyWithImpl<$Res,
        _$PlanEmailSupportFilterImpl>
    implements _$$PlanEmailSupportFilterImplCopyWith<$Res> {
  __$$PlanEmailSupportFilterImplCopyWithImpl(
      _$PlanEmailSupportFilterImpl _value,
      $Res Function(_$PlanEmailSupportFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanEmailSupportFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$PlanEmailSupportFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<PlanEmailSupport>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<PlanEmailSupport>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanEmailSupportFilterImpl implements _PlanEmailSupportFilter {
  const _$PlanEmailSupportFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<PlanEmailSupport>? in_,
      final List<PlanEmailSupport>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$PlanEmailSupportFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanEmailSupportFilterImplFromJson(json);

  /// Exact match
  @override
  final PlanEmailSupport? equals;

  /// Not equal to
  @override
  final PlanEmailSupport? not;

  /// In list of values
  final List<PlanEmailSupport>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<PlanEmailSupport>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<PlanEmailSupport>? _notIn;

  /// Not in list of values
  @override
  List<PlanEmailSupport>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlanEmailSupportFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanEmailSupportFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of PlanEmailSupportFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanEmailSupportFilterImplCopyWith<_$PlanEmailSupportFilterImpl>
      get copyWith => __$$PlanEmailSupportFilterImplCopyWithImpl<
          _$PlanEmailSupportFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanEmailSupportFilterImplToJson(
      this,
    );
  }
}

abstract class _PlanEmailSupportFilter implements PlanEmailSupportFilter {
  const factory _PlanEmailSupportFilter(
      {final PlanEmailSupport? equals,
      final PlanEmailSupport? not,
      @JsonKey(name: 'in') final List<PlanEmailSupport>? in_,
      final List<PlanEmailSupport>? notIn}) = _$PlanEmailSupportFilterImpl;

  factory _PlanEmailSupportFilter.fromJson(Map<String, dynamic> json) =
      _$PlanEmailSupportFilterImpl.fromJson;

  /// Exact match
  @override
  PlanEmailSupport? get equals;

  /// Not equal to
  @override
  PlanEmailSupport? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<PlanEmailSupport>? get in_;

  /// Not in list of values
  @override
  List<PlanEmailSupport>? get notIn;

  /// Create a copy of PlanEmailSupportFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanEmailSupportFilterImplCopyWith<_$PlanEmailSupportFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserRoleFilter _$UserRoleFilterFromJson(Map<String, dynamic> json) {
  return _UserRoleFilter.fromJson(json);
}

/// @nodoc
mixin _$UserRoleFilter {
  /// Exact match
  UserRole? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  UserRole? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<UserRole>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<UserRole>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this UserRoleFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRoleFilterCopyWith<UserRoleFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRoleFilterCopyWith<$Res> {
  factory $UserRoleFilterCopyWith(
          UserRoleFilter value, $Res Function(UserRoleFilter) then) =
      _$UserRoleFilterCopyWithImpl<$Res, UserRoleFilter>;
  @useResult
  $Res call(
      {UserRole? equals,
      UserRole? not,
      @JsonKey(name: 'in') List<UserRole>? in_,
      List<UserRole>? notIn});
}

/// @nodoc
class _$UserRoleFilterCopyWithImpl<$Res, $Val extends UserRoleFilter>
    implements $UserRoleFilterCopyWith<$Res> {
  _$UserRoleFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<UserRole>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<UserRole>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRoleFilterImplCopyWith<$Res>
    implements $UserRoleFilterCopyWith<$Res> {
  factory _$$UserRoleFilterImplCopyWith(_$UserRoleFilterImpl value,
          $Res Function(_$UserRoleFilterImpl) then) =
      __$$UserRoleFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserRole? equals,
      UserRole? not,
      @JsonKey(name: 'in') List<UserRole>? in_,
      List<UserRole>? notIn});
}

/// @nodoc
class __$$UserRoleFilterImplCopyWithImpl<$Res>
    extends _$UserRoleFilterCopyWithImpl<$Res, _$UserRoleFilterImpl>
    implements _$$UserRoleFilterImplCopyWith<$Res> {
  __$$UserRoleFilterImplCopyWithImpl(
      _$UserRoleFilterImpl _value, $Res Function(_$UserRoleFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$UserRoleFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<UserRole>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<UserRole>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRoleFilterImpl implements _UserRoleFilter {
  const _$UserRoleFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<UserRole>? in_,
      final List<UserRole>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$UserRoleFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRoleFilterImplFromJson(json);

  /// Exact match
  @override
  final UserRole? equals;

  /// Not equal to
  @override
  final UserRole? not;

  /// In list of values
  final List<UserRole>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<UserRole>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<UserRole>? _notIn;

  /// Not in list of values
  @override
  List<UserRole>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserRoleFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRoleFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of UserRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRoleFilterImplCopyWith<_$UserRoleFilterImpl> get copyWith =>
      __$$UserRoleFilterImplCopyWithImpl<_$UserRoleFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRoleFilterImplToJson(
      this,
    );
  }
}

abstract class _UserRoleFilter implements UserRoleFilter {
  const factory _UserRoleFilter(
      {final UserRole? equals,
      final UserRole? not,
      @JsonKey(name: 'in') final List<UserRole>? in_,
      final List<UserRole>? notIn}) = _$UserRoleFilterImpl;

  factory _UserRoleFilter.fromJson(Map<String, dynamic> json) =
      _$UserRoleFilterImpl.fromJson;

  /// Exact match
  @override
  UserRole? get equals;

  /// Not equal to
  @override
  UserRole? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<UserRole>? get in_;

  /// Not in list of values
  @override
  List<UserRole>? get notIn;

  /// Create a copy of UserRoleFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRoleFilterImplCopyWith<_$UserRoleFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DayOfWeekFilter _$DayOfWeekFilterFromJson(Map<String, dynamic> json) {
  return _DayOfWeekFilter.fromJson(json);
}

/// @nodoc
mixin _$DayOfWeekFilter {
  /// Exact match
  DayOfWeek? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  DayOfWeek? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<DayOfWeek>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<DayOfWeek>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this DayOfWeekFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DayOfWeekFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DayOfWeekFilterCopyWith<DayOfWeekFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayOfWeekFilterCopyWith<$Res> {
  factory $DayOfWeekFilterCopyWith(
          DayOfWeekFilter value, $Res Function(DayOfWeekFilter) then) =
      _$DayOfWeekFilterCopyWithImpl<$Res, DayOfWeekFilter>;
  @useResult
  $Res call(
      {DayOfWeek? equals,
      DayOfWeek? not,
      @JsonKey(name: 'in') List<DayOfWeek>? in_,
      List<DayOfWeek>? notIn});
}

/// @nodoc
class _$DayOfWeekFilterCopyWithImpl<$Res, $Val extends DayOfWeekFilter>
    implements $DayOfWeekFilterCopyWith<$Res> {
  _$DayOfWeekFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DayOfWeekFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as DayOfWeek?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as DayOfWeek?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<DayOfWeek>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<DayOfWeek>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayOfWeekFilterImplCopyWith<$Res>
    implements $DayOfWeekFilterCopyWith<$Res> {
  factory _$$DayOfWeekFilterImplCopyWith(_$DayOfWeekFilterImpl value,
          $Res Function(_$DayOfWeekFilterImpl) then) =
      __$$DayOfWeekFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DayOfWeek? equals,
      DayOfWeek? not,
      @JsonKey(name: 'in') List<DayOfWeek>? in_,
      List<DayOfWeek>? notIn});
}

/// @nodoc
class __$$DayOfWeekFilterImplCopyWithImpl<$Res>
    extends _$DayOfWeekFilterCopyWithImpl<$Res, _$DayOfWeekFilterImpl>
    implements _$$DayOfWeekFilterImplCopyWith<$Res> {
  __$$DayOfWeekFilterImplCopyWithImpl(
      _$DayOfWeekFilterImpl _value, $Res Function(_$DayOfWeekFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DayOfWeekFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$DayOfWeekFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as DayOfWeek?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as DayOfWeek?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<DayOfWeek>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<DayOfWeek>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayOfWeekFilterImpl implements _DayOfWeekFilter {
  const _$DayOfWeekFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<DayOfWeek>? in_,
      final List<DayOfWeek>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$DayOfWeekFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayOfWeekFilterImplFromJson(json);

  /// Exact match
  @override
  final DayOfWeek? equals;

  /// Not equal to
  @override
  final DayOfWeek? not;

  /// In list of values
  final List<DayOfWeek>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<DayOfWeek>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<DayOfWeek>? _notIn;

  /// Not in list of values
  @override
  List<DayOfWeek>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DayOfWeekFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayOfWeekFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of DayOfWeekFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DayOfWeekFilterImplCopyWith<_$DayOfWeekFilterImpl> get copyWith =>
      __$$DayOfWeekFilterImplCopyWithImpl<_$DayOfWeekFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayOfWeekFilterImplToJson(
      this,
    );
  }
}

abstract class _DayOfWeekFilter implements DayOfWeekFilter {
  const factory _DayOfWeekFilter(
      {final DayOfWeek? equals,
      final DayOfWeek? not,
      @JsonKey(name: 'in') final List<DayOfWeek>? in_,
      final List<DayOfWeek>? notIn}) = _$DayOfWeekFilterImpl;

  factory _DayOfWeekFilter.fromJson(Map<String, dynamic> json) =
      _$DayOfWeekFilterImpl.fromJson;

  /// Exact match
  @override
  DayOfWeek? get equals;

  /// Not equal to
  @override
  DayOfWeek? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<DayOfWeek>? get in_;

  /// Not in list of values
  @override
  List<DayOfWeek>? get notIn;

  /// Create a copy of DayOfWeekFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DayOfWeekFilterImplCopyWith<_$DayOfWeekFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScheduleTypeFilter _$ScheduleTypeFilterFromJson(Map<String, dynamic> json) {
  return _ScheduleTypeFilter.fromJson(json);
}

/// @nodoc
mixin _$ScheduleTypeFilter {
  /// Exact match
  ScheduleType? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  ScheduleType? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<ScheduleType>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<ScheduleType>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this ScheduleTypeFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleTypeFilterCopyWith<ScheduleTypeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleTypeFilterCopyWith<$Res> {
  factory $ScheduleTypeFilterCopyWith(
          ScheduleTypeFilter value, $Res Function(ScheduleTypeFilter) then) =
      _$ScheduleTypeFilterCopyWithImpl<$Res, ScheduleTypeFilter>;
  @useResult
  $Res call(
      {ScheduleType? equals,
      ScheduleType? not,
      @JsonKey(name: 'in') List<ScheduleType>? in_,
      List<ScheduleType>? notIn});
}

/// @nodoc
class _$ScheduleTypeFilterCopyWithImpl<$Res, $Val extends ScheduleTypeFilter>
    implements $ScheduleTypeFilterCopyWith<$Res> {
  _$ScheduleTypeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ScheduleType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ScheduleType?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ScheduleType>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ScheduleType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleTypeFilterImplCopyWith<$Res>
    implements $ScheduleTypeFilterCopyWith<$Res> {
  factory _$$ScheduleTypeFilterImplCopyWith(_$ScheduleTypeFilterImpl value,
          $Res Function(_$ScheduleTypeFilterImpl) then) =
      __$$ScheduleTypeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScheduleType? equals,
      ScheduleType? not,
      @JsonKey(name: 'in') List<ScheduleType>? in_,
      List<ScheduleType>? notIn});
}

/// @nodoc
class __$$ScheduleTypeFilterImplCopyWithImpl<$Res>
    extends _$ScheduleTypeFilterCopyWithImpl<$Res, _$ScheduleTypeFilterImpl>
    implements _$$ScheduleTypeFilterImplCopyWith<$Res> {
  __$$ScheduleTypeFilterImplCopyWithImpl(_$ScheduleTypeFilterImpl _value,
      $Res Function(_$ScheduleTypeFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$ScheduleTypeFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ScheduleType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ScheduleType?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ScheduleType>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ScheduleType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleTypeFilterImpl implements _ScheduleTypeFilter {
  const _$ScheduleTypeFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<ScheduleType>? in_,
      final List<ScheduleType>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$ScheduleTypeFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleTypeFilterImplFromJson(json);

  /// Exact match
  @override
  final ScheduleType? equals;

  /// Not equal to
  @override
  final ScheduleType? not;

  /// In list of values
  final List<ScheduleType>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ScheduleType>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<ScheduleType>? _notIn;

  /// Not in list of values
  @override
  List<ScheduleType>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScheduleTypeFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleTypeFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of ScheduleTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleTypeFilterImplCopyWith<_$ScheduleTypeFilterImpl> get copyWith =>
      __$$ScheduleTypeFilterImplCopyWithImpl<_$ScheduleTypeFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleTypeFilterImplToJson(
      this,
    );
  }
}

abstract class _ScheduleTypeFilter implements ScheduleTypeFilter {
  const factory _ScheduleTypeFilter(
      {final ScheduleType? equals,
      final ScheduleType? not,
      @JsonKey(name: 'in') final List<ScheduleType>? in_,
      final List<ScheduleType>? notIn}) = _$ScheduleTypeFilterImpl;

  factory _ScheduleTypeFilter.fromJson(Map<String, dynamic> json) =
      _$ScheduleTypeFilterImpl.fromJson;

  /// Exact match
  @override
  ScheduleType? get equals;

  /// Not equal to
  @override
  ScheduleType? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ScheduleType>? get in_;

  /// Not in list of values
  @override
  List<ScheduleType>? get notIn;

  /// Create a copy of ScheduleTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleTypeFilterImplCopyWith<_$ScheduleTypeFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GenderFilter _$GenderFilterFromJson(Map<String, dynamic> json) {
  return _GenderFilter.fromJson(json);
}

/// @nodoc
mixin _$GenderFilter {
  /// Exact match
  Gender? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  Gender? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<Gender>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<Gender>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this GenderFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenderFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenderFilterCopyWith<GenderFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderFilterCopyWith<$Res> {
  factory $GenderFilterCopyWith(
          GenderFilter value, $Res Function(GenderFilter) then) =
      _$GenderFilterCopyWithImpl<$Res, GenderFilter>;
  @useResult
  $Res call(
      {Gender? equals,
      Gender? not,
      @JsonKey(name: 'in') List<Gender>? in_,
      List<Gender>? notIn});
}

/// @nodoc
class _$GenderFilterCopyWithImpl<$Res, $Val extends GenderFilter>
    implements $GenderFilterCopyWith<$Res> {
  _$GenderFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenderFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as Gender?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as Gender?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<Gender>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<Gender>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenderFilterImplCopyWith<$Res>
    implements $GenderFilterCopyWith<$Res> {
  factory _$$GenderFilterImplCopyWith(
          _$GenderFilterImpl value, $Res Function(_$GenderFilterImpl) then) =
      __$$GenderFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Gender? equals,
      Gender? not,
      @JsonKey(name: 'in') List<Gender>? in_,
      List<Gender>? notIn});
}

/// @nodoc
class __$$GenderFilterImplCopyWithImpl<$Res>
    extends _$GenderFilterCopyWithImpl<$Res, _$GenderFilterImpl>
    implements _$$GenderFilterImplCopyWith<$Res> {
  __$$GenderFilterImplCopyWithImpl(
      _$GenderFilterImpl _value, $Res Function(_$GenderFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenderFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$GenderFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as Gender?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as Gender?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<Gender>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<Gender>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenderFilterImpl implements _GenderFilter {
  const _$GenderFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<Gender>? in_,
      final List<Gender>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$GenderFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenderFilterImplFromJson(json);

  /// Exact match
  @override
  final Gender? equals;

  /// Not equal to
  @override
  final Gender? not;

  /// In list of values
  final List<Gender>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<Gender>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<Gender>? _notIn;

  /// Not in list of values
  @override
  List<Gender>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GenderFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of GenderFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderFilterImplCopyWith<_$GenderFilterImpl> get copyWith =>
      __$$GenderFilterImplCopyWithImpl<_$GenderFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenderFilterImplToJson(
      this,
    );
  }
}

abstract class _GenderFilter implements GenderFilter {
  const factory _GenderFilter(
      {final Gender? equals,
      final Gender? not,
      @JsonKey(name: 'in') final List<Gender>? in_,
      final List<Gender>? notIn}) = _$GenderFilterImpl;

  factory _GenderFilter.fromJson(Map<String, dynamic> json) =
      _$GenderFilterImpl.fromJson;

  /// Exact match
  @override
  Gender? get equals;

  /// Not equal to
  @override
  Gender? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<Gender>? get in_;

  /// Not in list of values
  @override
  List<Gender>? get notIn;

  /// Create a copy of GenderFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenderFilterImplCopyWith<_$GenderFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CareerStageFilter _$CareerStageFilterFromJson(Map<String, dynamic> json) {
  return _CareerStageFilter.fromJson(json);
}

/// @nodoc
mixin _$CareerStageFilter {
  /// Exact match
  CareerStage? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  CareerStage? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<CareerStage>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<CareerStage>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this CareerStageFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CareerStageFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CareerStageFilterCopyWith<CareerStageFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareerStageFilterCopyWith<$Res> {
  factory $CareerStageFilterCopyWith(
          CareerStageFilter value, $Res Function(CareerStageFilter) then) =
      _$CareerStageFilterCopyWithImpl<$Res, CareerStageFilter>;
  @useResult
  $Res call(
      {CareerStage? equals,
      CareerStage? not,
      @JsonKey(name: 'in') List<CareerStage>? in_,
      List<CareerStage>? notIn});
}

/// @nodoc
class _$CareerStageFilterCopyWithImpl<$Res, $Val extends CareerStageFilter>
    implements $CareerStageFilterCopyWith<$Res> {
  _$CareerStageFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CareerStageFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as CareerStage?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as CareerStage?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<CareerStage>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<CareerStage>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CareerStageFilterImplCopyWith<$Res>
    implements $CareerStageFilterCopyWith<$Res> {
  factory _$$CareerStageFilterImplCopyWith(_$CareerStageFilterImpl value,
          $Res Function(_$CareerStageFilterImpl) then) =
      __$$CareerStageFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CareerStage? equals,
      CareerStage? not,
      @JsonKey(name: 'in') List<CareerStage>? in_,
      List<CareerStage>? notIn});
}

/// @nodoc
class __$$CareerStageFilterImplCopyWithImpl<$Res>
    extends _$CareerStageFilterCopyWithImpl<$Res, _$CareerStageFilterImpl>
    implements _$$CareerStageFilterImplCopyWith<$Res> {
  __$$CareerStageFilterImplCopyWithImpl(_$CareerStageFilterImpl _value,
      $Res Function(_$CareerStageFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CareerStageFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$CareerStageFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as CareerStage?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as CareerStage?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<CareerStage>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<CareerStage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CareerStageFilterImpl implements _CareerStageFilter {
  const _$CareerStageFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<CareerStage>? in_,
      final List<CareerStage>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$CareerStageFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CareerStageFilterImplFromJson(json);

  /// Exact match
  @override
  final CareerStage? equals;

  /// Not equal to
  @override
  final CareerStage? not;

  /// In list of values
  final List<CareerStage>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<CareerStage>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<CareerStage>? _notIn;

  /// Not in list of values
  @override
  List<CareerStage>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CareerStageFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareerStageFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of CareerStageFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CareerStageFilterImplCopyWith<_$CareerStageFilterImpl> get copyWith =>
      __$$CareerStageFilterImplCopyWithImpl<_$CareerStageFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CareerStageFilterImplToJson(
      this,
    );
  }
}

abstract class _CareerStageFilter implements CareerStageFilter {
  const factory _CareerStageFilter(
      {final CareerStage? equals,
      final CareerStage? not,
      @JsonKey(name: 'in') final List<CareerStage>? in_,
      final List<CareerStage>? notIn}) = _$CareerStageFilterImpl;

  factory _CareerStageFilter.fromJson(Map<String, dynamic> json) =
      _$CareerStageFilterImpl.fromJson;

  /// Exact match
  @override
  CareerStage? get equals;

  /// Not equal to
  @override
  CareerStage? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<CareerStage>? get in_;

  /// Not in list of values
  @override
  List<CareerStage>? get notIn;

  /// Create a copy of CareerStageFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CareerStageFilterImplCopyWith<_$CareerStageFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminLevelFilter _$AdminLevelFilterFromJson(Map<String, dynamic> json) {
  return _AdminLevelFilter.fromJson(json);
}

/// @nodoc
mixin _$AdminLevelFilter {
  /// Exact match
  AdminLevel? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  AdminLevel? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<AdminLevel>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<AdminLevel>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this AdminLevelFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminLevelFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminLevelFilterCopyWith<AdminLevelFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminLevelFilterCopyWith<$Res> {
  factory $AdminLevelFilterCopyWith(
          AdminLevelFilter value, $Res Function(AdminLevelFilter) then) =
      _$AdminLevelFilterCopyWithImpl<$Res, AdminLevelFilter>;
  @useResult
  $Res call(
      {AdminLevel? equals,
      AdminLevel? not,
      @JsonKey(name: 'in') List<AdminLevel>? in_,
      List<AdminLevel>? notIn});
}

/// @nodoc
class _$AdminLevelFilterCopyWithImpl<$Res, $Val extends AdminLevelFilter>
    implements $AdminLevelFilterCopyWith<$Res> {
  _$AdminLevelFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminLevelFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as AdminLevel?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as AdminLevel?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<AdminLevel>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<AdminLevel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminLevelFilterImplCopyWith<$Res>
    implements $AdminLevelFilterCopyWith<$Res> {
  factory _$$AdminLevelFilterImplCopyWith(_$AdminLevelFilterImpl value,
          $Res Function(_$AdminLevelFilterImpl) then) =
      __$$AdminLevelFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AdminLevel? equals,
      AdminLevel? not,
      @JsonKey(name: 'in') List<AdminLevel>? in_,
      List<AdminLevel>? notIn});
}

/// @nodoc
class __$$AdminLevelFilterImplCopyWithImpl<$Res>
    extends _$AdminLevelFilterCopyWithImpl<$Res, _$AdminLevelFilterImpl>
    implements _$$AdminLevelFilterImplCopyWith<$Res> {
  __$$AdminLevelFilterImplCopyWithImpl(_$AdminLevelFilterImpl _value,
      $Res Function(_$AdminLevelFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminLevelFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$AdminLevelFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as AdminLevel?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as AdminLevel?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<AdminLevel>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<AdminLevel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminLevelFilterImpl implements _AdminLevelFilter {
  const _$AdminLevelFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<AdminLevel>? in_,
      final List<AdminLevel>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$AdminLevelFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminLevelFilterImplFromJson(json);

  /// Exact match
  @override
  final AdminLevel? equals;

  /// Not equal to
  @override
  final AdminLevel? not;

  /// In list of values
  final List<AdminLevel>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<AdminLevel>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<AdminLevel>? _notIn;

  /// Not in list of values
  @override
  List<AdminLevel>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AdminLevelFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminLevelFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of AdminLevelFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminLevelFilterImplCopyWith<_$AdminLevelFilterImpl> get copyWith =>
      __$$AdminLevelFilterImplCopyWithImpl<_$AdminLevelFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminLevelFilterImplToJson(
      this,
    );
  }
}

abstract class _AdminLevelFilter implements AdminLevelFilter {
  const factory _AdminLevelFilter(
      {final AdminLevel? equals,
      final AdminLevel? not,
      @JsonKey(name: 'in') final List<AdminLevel>? in_,
      final List<AdminLevel>? notIn}) = _$AdminLevelFilterImpl;

  factory _AdminLevelFilter.fromJson(Map<String, dynamic> json) =
      _$AdminLevelFilterImpl.fromJson;

  /// Exact match
  @override
  AdminLevel? get equals;

  /// Not equal to
  @override
  AdminLevel? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<AdminLevel>? get in_;

  /// Not in list of values
  @override
  List<AdminLevel>? get notIn;

  /// Create a copy of AdminLevelFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminLevelFilterImplCopyWith<_$AdminLevelFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BudgetPreferenceFilter _$BudgetPreferenceFilterFromJson(
    Map<String, dynamic> json) {
  return _BudgetPreferenceFilter.fromJson(json);
}

/// @nodoc
mixin _$BudgetPreferenceFilter {
  /// Exact match
  BudgetPreference? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  BudgetPreference? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<BudgetPreference>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<BudgetPreference>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this BudgetPreferenceFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BudgetPreferenceFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BudgetPreferenceFilterCopyWith<BudgetPreferenceFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetPreferenceFilterCopyWith<$Res> {
  factory $BudgetPreferenceFilterCopyWith(BudgetPreferenceFilter value,
          $Res Function(BudgetPreferenceFilter) then) =
      _$BudgetPreferenceFilterCopyWithImpl<$Res, BudgetPreferenceFilter>;
  @useResult
  $Res call(
      {BudgetPreference? equals,
      BudgetPreference? not,
      @JsonKey(name: 'in') List<BudgetPreference>? in_,
      List<BudgetPreference>? notIn});
}

/// @nodoc
class _$BudgetPreferenceFilterCopyWithImpl<$Res,
        $Val extends BudgetPreferenceFilter>
    implements $BudgetPreferenceFilterCopyWith<$Res> {
  _$BudgetPreferenceFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BudgetPreferenceFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as BudgetPreference?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as BudgetPreference?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<BudgetPreference>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<BudgetPreference>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BudgetPreferenceFilterImplCopyWith<$Res>
    implements $BudgetPreferenceFilterCopyWith<$Res> {
  factory _$$BudgetPreferenceFilterImplCopyWith(
          _$BudgetPreferenceFilterImpl value,
          $Res Function(_$BudgetPreferenceFilterImpl) then) =
      __$$BudgetPreferenceFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BudgetPreference? equals,
      BudgetPreference? not,
      @JsonKey(name: 'in') List<BudgetPreference>? in_,
      List<BudgetPreference>? notIn});
}

/// @nodoc
class __$$BudgetPreferenceFilterImplCopyWithImpl<$Res>
    extends _$BudgetPreferenceFilterCopyWithImpl<$Res,
        _$BudgetPreferenceFilterImpl>
    implements _$$BudgetPreferenceFilterImplCopyWith<$Res> {
  __$$BudgetPreferenceFilterImplCopyWithImpl(
      _$BudgetPreferenceFilterImpl _value,
      $Res Function(_$BudgetPreferenceFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetPreferenceFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$BudgetPreferenceFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as BudgetPreference?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as BudgetPreference?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<BudgetPreference>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<BudgetPreference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BudgetPreferenceFilterImpl implements _BudgetPreferenceFilter {
  const _$BudgetPreferenceFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<BudgetPreference>? in_,
      final List<BudgetPreference>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$BudgetPreferenceFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetPreferenceFilterImplFromJson(json);

  /// Exact match
  @override
  final BudgetPreference? equals;

  /// Not equal to
  @override
  final BudgetPreference? not;

  /// In list of values
  final List<BudgetPreference>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<BudgetPreference>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<BudgetPreference>? _notIn;

  /// Not in list of values
  @override
  List<BudgetPreference>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BudgetPreferenceFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetPreferenceFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of BudgetPreferenceFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetPreferenceFilterImplCopyWith<_$BudgetPreferenceFilterImpl>
      get copyWith => __$$BudgetPreferenceFilterImplCopyWithImpl<
          _$BudgetPreferenceFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BudgetPreferenceFilterImplToJson(
      this,
    );
  }
}

abstract class _BudgetPreferenceFilter implements BudgetPreferenceFilter {
  const factory _BudgetPreferenceFilter(
      {final BudgetPreference? equals,
      final BudgetPreference? not,
      @JsonKey(name: 'in') final List<BudgetPreference>? in_,
      final List<BudgetPreference>? notIn}) = _$BudgetPreferenceFilterImpl;

  factory _BudgetPreferenceFilter.fromJson(Map<String, dynamic> json) =
      _$BudgetPreferenceFilterImpl.fromJson;

  /// Exact match
  @override
  BudgetPreference? get equals;

  /// Not equal to
  @override
  BudgetPreference? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<BudgetPreference>? get in_;

  /// Not in list of values
  @override
  List<BudgetPreference>? get notIn;

  /// Create a copy of BudgetPreferenceFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BudgetPreferenceFilterImplCopyWith<_$BudgetPreferenceFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionTypeFilter _$SessionTypeFilterFromJson(Map<String, dynamic> json) {
  return _SessionTypeFilter.fromJson(json);
}

/// @nodoc
mixin _$SessionTypeFilter {
  /// Exact match
  SessionType? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  SessionType? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<SessionType>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<SessionType>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this SessionTypeFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionTypeFilterCopyWith<SessionTypeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionTypeFilterCopyWith<$Res> {
  factory $SessionTypeFilterCopyWith(
          SessionTypeFilter value, $Res Function(SessionTypeFilter) then) =
      _$SessionTypeFilterCopyWithImpl<$Res, SessionTypeFilter>;
  @useResult
  $Res call(
      {SessionType? equals,
      SessionType? not,
      @JsonKey(name: 'in') List<SessionType>? in_,
      List<SessionType>? notIn});
}

/// @nodoc
class _$SessionTypeFilterCopyWithImpl<$Res, $Val extends SessionTypeFilter>
    implements $SessionTypeFilterCopyWith<$Res> {
  _$SessionTypeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as SessionType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as SessionType?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<SessionType>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<SessionType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionTypeFilterImplCopyWith<$Res>
    implements $SessionTypeFilterCopyWith<$Res> {
  factory _$$SessionTypeFilterImplCopyWith(_$SessionTypeFilterImpl value,
          $Res Function(_$SessionTypeFilterImpl) then) =
      __$$SessionTypeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SessionType? equals,
      SessionType? not,
      @JsonKey(name: 'in') List<SessionType>? in_,
      List<SessionType>? notIn});
}

/// @nodoc
class __$$SessionTypeFilterImplCopyWithImpl<$Res>
    extends _$SessionTypeFilterCopyWithImpl<$Res, _$SessionTypeFilterImpl>
    implements _$$SessionTypeFilterImplCopyWith<$Res> {
  __$$SessionTypeFilterImplCopyWithImpl(_$SessionTypeFilterImpl _value,
      $Res Function(_$SessionTypeFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$SessionTypeFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as SessionType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as SessionType?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<SessionType>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<SessionType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionTypeFilterImpl implements _SessionTypeFilter {
  const _$SessionTypeFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<SessionType>? in_,
      final List<SessionType>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$SessionTypeFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionTypeFilterImplFromJson(json);

  /// Exact match
  @override
  final SessionType? equals;

  /// Not equal to
  @override
  final SessionType? not;

  /// In list of values
  final List<SessionType>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<SessionType>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<SessionType>? _notIn;

  /// Not in list of values
  @override
  List<SessionType>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SessionTypeFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionTypeFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of SessionTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionTypeFilterImplCopyWith<_$SessionTypeFilterImpl> get copyWith =>
      __$$SessionTypeFilterImplCopyWithImpl<_$SessionTypeFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionTypeFilterImplToJson(
      this,
    );
  }
}

abstract class _SessionTypeFilter implements SessionTypeFilter {
  const factory _SessionTypeFilter(
      {final SessionType? equals,
      final SessionType? not,
      @JsonKey(name: 'in') final List<SessionType>? in_,
      final List<SessionType>? notIn}) = _$SessionTypeFilterImpl;

  factory _SessionTypeFilter.fromJson(Map<String, dynamic> json) =
      _$SessionTypeFilterImpl.fromJson;

  /// Exact match
  @override
  SessionType? get equals;

  /// Not equal to
  @override
  SessionType? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<SessionType>? get in_;

  /// Not in list of values
  @override
  List<SessionType>? get notIn;

  /// Create a copy of SessionTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionTypeFilterImplCopyWith<_$SessionTypeFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ModerationReportTypeFilter _$ModerationReportTypeFilterFromJson(
    Map<String, dynamic> json) {
  return _ModerationReportTypeFilter.fromJson(json);
}

/// @nodoc
mixin _$ModerationReportTypeFilter {
  /// Exact match
  ModerationReportType? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  ModerationReportType? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<ModerationReportType>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<ModerationReportType>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this ModerationReportTypeFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationReportTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationReportTypeFilterCopyWith<ModerationReportTypeFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationReportTypeFilterCopyWith<$Res> {
  factory $ModerationReportTypeFilterCopyWith(ModerationReportTypeFilter value,
          $Res Function(ModerationReportTypeFilter) then) =
      _$ModerationReportTypeFilterCopyWithImpl<$Res,
          ModerationReportTypeFilter>;
  @useResult
  $Res call(
      {ModerationReportType? equals,
      ModerationReportType? not,
      @JsonKey(name: 'in') List<ModerationReportType>? in_,
      List<ModerationReportType>? notIn});
}

/// @nodoc
class _$ModerationReportTypeFilterCopyWithImpl<$Res,
        $Val extends ModerationReportTypeFilter>
    implements $ModerationReportTypeFilterCopyWith<$Res> {
  _$ModerationReportTypeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationReportTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ModerationReportType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ModerationReportType?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ModerationReportType>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ModerationReportType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModerationReportTypeFilterImplCopyWith<$Res>
    implements $ModerationReportTypeFilterCopyWith<$Res> {
  factory _$$ModerationReportTypeFilterImplCopyWith(
          _$ModerationReportTypeFilterImpl value,
          $Res Function(_$ModerationReportTypeFilterImpl) then) =
      __$$ModerationReportTypeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ModerationReportType? equals,
      ModerationReportType? not,
      @JsonKey(name: 'in') List<ModerationReportType>? in_,
      List<ModerationReportType>? notIn});
}

/// @nodoc
class __$$ModerationReportTypeFilterImplCopyWithImpl<$Res>
    extends _$ModerationReportTypeFilterCopyWithImpl<$Res,
        _$ModerationReportTypeFilterImpl>
    implements _$$ModerationReportTypeFilterImplCopyWith<$Res> {
  __$$ModerationReportTypeFilterImplCopyWithImpl(
      _$ModerationReportTypeFilterImpl _value,
      $Res Function(_$ModerationReportTypeFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationReportTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$ModerationReportTypeFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ModerationReportType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ModerationReportType?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ModerationReportType>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ModerationReportType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationReportTypeFilterImpl implements _ModerationReportTypeFilter {
  const _$ModerationReportTypeFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<ModerationReportType>? in_,
      final List<ModerationReportType>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$ModerationReportTypeFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModerationReportTypeFilterImplFromJson(json);

  /// Exact match
  @override
  final ModerationReportType? equals;

  /// Not equal to
  @override
  final ModerationReportType? not;

  /// In list of values
  final List<ModerationReportType>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ModerationReportType>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<ModerationReportType>? _notIn;

  /// Not in list of values
  @override
  List<ModerationReportType>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ModerationReportTypeFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationReportTypeFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of ModerationReportTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationReportTypeFilterImplCopyWith<_$ModerationReportTypeFilterImpl>
      get copyWith => __$$ModerationReportTypeFilterImplCopyWithImpl<
          _$ModerationReportTypeFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationReportTypeFilterImplToJson(
      this,
    );
  }
}

abstract class _ModerationReportTypeFilter
    implements ModerationReportTypeFilter {
  const factory _ModerationReportTypeFilter(
          {final ModerationReportType? equals,
          final ModerationReportType? not,
          @JsonKey(name: 'in') final List<ModerationReportType>? in_,
          final List<ModerationReportType>? notIn}) =
      _$ModerationReportTypeFilterImpl;

  factory _ModerationReportTypeFilter.fromJson(Map<String, dynamic> json) =
      _$ModerationReportTypeFilterImpl.fromJson;

  /// Exact match
  @override
  ModerationReportType? get equals;

  /// Not equal to
  @override
  ModerationReportType? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ModerationReportType>? get in_;

  /// Not in list of values
  @override
  List<ModerationReportType>? get notIn;

  /// Create a copy of ModerationReportTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationReportTypeFilterImplCopyWith<_$ModerationReportTypeFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ModerationReportStatusFilter _$ModerationReportStatusFilterFromJson(
    Map<String, dynamic> json) {
  return _ModerationReportStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$ModerationReportStatusFilter {
  /// Exact match
  ModerationReportStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  ModerationReportStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<ModerationReportStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<ModerationReportStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this ModerationReportStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationReportStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationReportStatusFilterCopyWith<ModerationReportStatusFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationReportStatusFilterCopyWith<$Res> {
  factory $ModerationReportStatusFilterCopyWith(
          ModerationReportStatusFilter value,
          $Res Function(ModerationReportStatusFilter) then) =
      _$ModerationReportStatusFilterCopyWithImpl<$Res,
          ModerationReportStatusFilter>;
  @useResult
  $Res call(
      {ModerationReportStatus? equals,
      ModerationReportStatus? not,
      @JsonKey(name: 'in') List<ModerationReportStatus>? in_,
      List<ModerationReportStatus>? notIn});
}

/// @nodoc
class _$ModerationReportStatusFilterCopyWithImpl<$Res,
        $Val extends ModerationReportStatusFilter>
    implements $ModerationReportStatusFilterCopyWith<$Res> {
  _$ModerationReportStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationReportStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ModerationReportStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ModerationReportStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ModerationReportStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ModerationReportStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModerationReportStatusFilterImplCopyWith<$Res>
    implements $ModerationReportStatusFilterCopyWith<$Res> {
  factory _$$ModerationReportStatusFilterImplCopyWith(
          _$ModerationReportStatusFilterImpl value,
          $Res Function(_$ModerationReportStatusFilterImpl) then) =
      __$$ModerationReportStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ModerationReportStatus? equals,
      ModerationReportStatus? not,
      @JsonKey(name: 'in') List<ModerationReportStatus>? in_,
      List<ModerationReportStatus>? notIn});
}

/// @nodoc
class __$$ModerationReportStatusFilterImplCopyWithImpl<$Res>
    extends _$ModerationReportStatusFilterCopyWithImpl<$Res,
        _$ModerationReportStatusFilterImpl>
    implements _$$ModerationReportStatusFilterImplCopyWith<$Res> {
  __$$ModerationReportStatusFilterImplCopyWithImpl(
      _$ModerationReportStatusFilterImpl _value,
      $Res Function(_$ModerationReportStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationReportStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$ModerationReportStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ModerationReportStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ModerationReportStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ModerationReportStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ModerationReportStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationReportStatusFilterImpl
    implements _ModerationReportStatusFilter {
  const _$ModerationReportStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<ModerationReportStatus>? in_,
      final List<ModerationReportStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$ModerationReportStatusFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModerationReportStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final ModerationReportStatus? equals;

  /// Not equal to
  @override
  final ModerationReportStatus? not;

  /// In list of values
  final List<ModerationReportStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ModerationReportStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<ModerationReportStatus>? _notIn;

  /// Not in list of values
  @override
  List<ModerationReportStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ModerationReportStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationReportStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of ModerationReportStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationReportStatusFilterImplCopyWith<
          _$ModerationReportStatusFilterImpl>
      get copyWith => __$$ModerationReportStatusFilterImplCopyWithImpl<
          _$ModerationReportStatusFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationReportStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _ModerationReportStatusFilter
    implements ModerationReportStatusFilter {
  const factory _ModerationReportStatusFilter(
          {final ModerationReportStatus? equals,
          final ModerationReportStatus? not,
          @JsonKey(name: 'in') final List<ModerationReportStatus>? in_,
          final List<ModerationReportStatus>? notIn}) =
      _$ModerationReportStatusFilterImpl;

  factory _ModerationReportStatusFilter.fromJson(Map<String, dynamic> json) =
      _$ModerationReportStatusFilterImpl.fromJson;

  /// Exact match
  @override
  ModerationReportStatus? get equals;

  /// Not equal to
  @override
  ModerationReportStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ModerationReportStatus>? get in_;

  /// Not in list of values
  @override
  List<ModerationReportStatus>? get notIn;

  /// Create a copy of ModerationReportStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationReportStatusFilterImplCopyWith<
          _$ModerationReportStatusFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ModerationActionTypeFilter _$ModerationActionTypeFilterFromJson(
    Map<String, dynamic> json) {
  return _ModerationActionTypeFilter.fromJson(json);
}

/// @nodoc
mixin _$ModerationActionTypeFilter {
  /// Exact match
  ModerationActionType? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  ModerationActionType? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<ModerationActionType>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<ModerationActionType>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this ModerationActionTypeFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationActionTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationActionTypeFilterCopyWith<ModerationActionTypeFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationActionTypeFilterCopyWith<$Res> {
  factory $ModerationActionTypeFilterCopyWith(ModerationActionTypeFilter value,
          $Res Function(ModerationActionTypeFilter) then) =
      _$ModerationActionTypeFilterCopyWithImpl<$Res,
          ModerationActionTypeFilter>;
  @useResult
  $Res call(
      {ModerationActionType? equals,
      ModerationActionType? not,
      @JsonKey(name: 'in') List<ModerationActionType>? in_,
      List<ModerationActionType>? notIn});
}

/// @nodoc
class _$ModerationActionTypeFilterCopyWithImpl<$Res,
        $Val extends ModerationActionTypeFilter>
    implements $ModerationActionTypeFilterCopyWith<$Res> {
  _$ModerationActionTypeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationActionTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ModerationActionType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ModerationActionType?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ModerationActionType>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ModerationActionType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModerationActionTypeFilterImplCopyWith<$Res>
    implements $ModerationActionTypeFilterCopyWith<$Res> {
  factory _$$ModerationActionTypeFilterImplCopyWith(
          _$ModerationActionTypeFilterImpl value,
          $Res Function(_$ModerationActionTypeFilterImpl) then) =
      __$$ModerationActionTypeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ModerationActionType? equals,
      ModerationActionType? not,
      @JsonKey(name: 'in') List<ModerationActionType>? in_,
      List<ModerationActionType>? notIn});
}

/// @nodoc
class __$$ModerationActionTypeFilterImplCopyWithImpl<$Res>
    extends _$ModerationActionTypeFilterCopyWithImpl<$Res,
        _$ModerationActionTypeFilterImpl>
    implements _$$ModerationActionTypeFilterImplCopyWith<$Res> {
  __$$ModerationActionTypeFilterImplCopyWithImpl(
      _$ModerationActionTypeFilterImpl _value,
      $Res Function(_$ModerationActionTypeFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationActionTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$ModerationActionTypeFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ModerationActionType?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ModerationActionType?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ModerationActionType>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ModerationActionType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationActionTypeFilterImpl implements _ModerationActionTypeFilter {
  const _$ModerationActionTypeFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<ModerationActionType>? in_,
      final List<ModerationActionType>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$ModerationActionTypeFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModerationActionTypeFilterImplFromJson(json);

  /// Exact match
  @override
  final ModerationActionType? equals;

  /// Not equal to
  @override
  final ModerationActionType? not;

  /// In list of values
  final List<ModerationActionType>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ModerationActionType>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<ModerationActionType>? _notIn;

  /// Not in list of values
  @override
  List<ModerationActionType>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ModerationActionTypeFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationActionTypeFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of ModerationActionTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationActionTypeFilterImplCopyWith<_$ModerationActionTypeFilterImpl>
      get copyWith => __$$ModerationActionTypeFilterImplCopyWithImpl<
          _$ModerationActionTypeFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationActionTypeFilterImplToJson(
      this,
    );
  }
}

abstract class _ModerationActionTypeFilter
    implements ModerationActionTypeFilter {
  const factory _ModerationActionTypeFilter(
          {final ModerationActionType? equals,
          final ModerationActionType? not,
          @JsonKey(name: 'in') final List<ModerationActionType>? in_,
          final List<ModerationActionType>? notIn}) =
      _$ModerationActionTypeFilterImpl;

  factory _ModerationActionTypeFilter.fromJson(Map<String, dynamic> json) =
      _$ModerationActionTypeFilterImpl.fromJson;

  /// Exact match
  @override
  ModerationActionType? get equals;

  /// Not equal to
  @override
  ModerationActionType? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ModerationActionType>? get in_;

  /// Not in list of values
  @override
  List<ModerationActionType>? get notIn;

  /// Create a copy of ModerationActionTypeFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationActionTypeFilterImplCopyWith<_$ModerationActionTypeFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileVerificationStatusFilter _$ProfileVerificationStatusFilterFromJson(
    Map<String, dynamic> json) {
  return _ProfileVerificationStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$ProfileVerificationStatusFilter {
  /// Exact match
  ProfileVerificationStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  ProfileVerificationStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<ProfileVerificationStatus>? get in_ =>
      throw _privateConstructorUsedError;

  /// Not in list of values
  List<ProfileVerificationStatus>? get notIn =>
      throw _privateConstructorUsedError;

  /// Serializes this ProfileVerificationStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileVerificationStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileVerificationStatusFilterCopyWith<ProfileVerificationStatusFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileVerificationStatusFilterCopyWith<$Res> {
  factory $ProfileVerificationStatusFilterCopyWith(
          ProfileVerificationStatusFilter value,
          $Res Function(ProfileVerificationStatusFilter) then) =
      _$ProfileVerificationStatusFilterCopyWithImpl<$Res,
          ProfileVerificationStatusFilter>;
  @useResult
  $Res call(
      {ProfileVerificationStatus? equals,
      ProfileVerificationStatus? not,
      @JsonKey(name: 'in') List<ProfileVerificationStatus>? in_,
      List<ProfileVerificationStatus>? notIn});
}

/// @nodoc
class _$ProfileVerificationStatusFilterCopyWithImpl<$Res,
        $Val extends ProfileVerificationStatusFilter>
    implements $ProfileVerificationStatusFilterCopyWith<$Res> {
  _$ProfileVerificationStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileVerificationStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ProfileVerificationStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ProfileVerificationStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileVerificationStatusFilterImplCopyWith<$Res>
    implements $ProfileVerificationStatusFilterCopyWith<$Res> {
  factory _$$ProfileVerificationStatusFilterImplCopyWith(
          _$ProfileVerificationStatusFilterImpl value,
          $Res Function(_$ProfileVerificationStatusFilterImpl) then) =
      __$$ProfileVerificationStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileVerificationStatus? equals,
      ProfileVerificationStatus? not,
      @JsonKey(name: 'in') List<ProfileVerificationStatus>? in_,
      List<ProfileVerificationStatus>? notIn});
}

/// @nodoc
class __$$ProfileVerificationStatusFilterImplCopyWithImpl<$Res>
    extends _$ProfileVerificationStatusFilterCopyWithImpl<$Res,
        _$ProfileVerificationStatusFilterImpl>
    implements _$$ProfileVerificationStatusFilterImplCopyWith<$Res> {
  __$$ProfileVerificationStatusFilterImplCopyWithImpl(
      _$ProfileVerificationStatusFilterImpl _value,
      $Res Function(_$ProfileVerificationStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileVerificationStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$ProfileVerificationStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ProfileVerificationStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ProfileVerificationStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileVerificationStatusFilterImpl
    implements _ProfileVerificationStatusFilter {
  const _$ProfileVerificationStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<ProfileVerificationStatus>? in_,
      final List<ProfileVerificationStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$ProfileVerificationStatusFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProfileVerificationStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final ProfileVerificationStatus? equals;

  /// Not equal to
  @override
  final ProfileVerificationStatus? not;

  /// In list of values
  final List<ProfileVerificationStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ProfileVerificationStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<ProfileVerificationStatus>? _notIn;

  /// Not in list of values
  @override
  List<ProfileVerificationStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileVerificationStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileVerificationStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of ProfileVerificationStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileVerificationStatusFilterImplCopyWith<
          _$ProfileVerificationStatusFilterImpl>
      get copyWith => __$$ProfileVerificationStatusFilterImplCopyWithImpl<
          _$ProfileVerificationStatusFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileVerificationStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _ProfileVerificationStatusFilter
    implements ProfileVerificationStatusFilter {
  const factory _ProfileVerificationStatusFilter(
          {final ProfileVerificationStatus? equals,
          final ProfileVerificationStatus? not,
          @JsonKey(name: 'in') final List<ProfileVerificationStatus>? in_,
          final List<ProfileVerificationStatus>? notIn}) =
      _$ProfileVerificationStatusFilterImpl;

  factory _ProfileVerificationStatusFilter.fromJson(Map<String, dynamic> json) =
      _$ProfileVerificationStatusFilterImpl.fromJson;

  /// Exact match
  @override
  ProfileVerificationStatus? get equals;

  /// Not equal to
  @override
  ProfileVerificationStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ProfileVerificationStatus>? get in_;

  /// Not in list of values
  @override
  List<ProfileVerificationStatus>? get notIn;

  /// Create a copy of ProfileVerificationStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileVerificationStatusFilterImplCopyWith<
          _$ProfileVerificationStatusFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SystemJobStatusFilter _$SystemJobStatusFilterFromJson(
    Map<String, dynamic> json) {
  return _SystemJobStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$SystemJobStatusFilter {
  /// Exact match
  SystemJobStatus? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  SystemJobStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<SystemJobStatus>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<SystemJobStatus>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this SystemJobStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SystemJobStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemJobStatusFilterCopyWith<SystemJobStatusFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemJobStatusFilterCopyWith<$Res> {
  factory $SystemJobStatusFilterCopyWith(SystemJobStatusFilter value,
          $Res Function(SystemJobStatusFilter) then) =
      _$SystemJobStatusFilterCopyWithImpl<$Res, SystemJobStatusFilter>;
  @useResult
  $Res call(
      {SystemJobStatus? equals,
      SystemJobStatus? not,
      @JsonKey(name: 'in') List<SystemJobStatus>? in_,
      List<SystemJobStatus>? notIn});
}

/// @nodoc
class _$SystemJobStatusFilterCopyWithImpl<$Res,
        $Val extends SystemJobStatusFilter>
    implements $SystemJobStatusFilterCopyWith<$Res> {
  _$SystemJobStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemJobStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as SystemJobStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as SystemJobStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<SystemJobStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<SystemJobStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SystemJobStatusFilterImplCopyWith<$Res>
    implements $SystemJobStatusFilterCopyWith<$Res> {
  factory _$$SystemJobStatusFilterImplCopyWith(
          _$SystemJobStatusFilterImpl value,
          $Res Function(_$SystemJobStatusFilterImpl) then) =
      __$$SystemJobStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SystemJobStatus? equals,
      SystemJobStatus? not,
      @JsonKey(name: 'in') List<SystemJobStatus>? in_,
      List<SystemJobStatus>? notIn});
}

/// @nodoc
class __$$SystemJobStatusFilterImplCopyWithImpl<$Res>
    extends _$SystemJobStatusFilterCopyWithImpl<$Res,
        _$SystemJobStatusFilterImpl>
    implements _$$SystemJobStatusFilterImplCopyWith<$Res> {
  __$$SystemJobStatusFilterImplCopyWithImpl(_$SystemJobStatusFilterImpl _value,
      $Res Function(_$SystemJobStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemJobStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$SystemJobStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as SystemJobStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as SystemJobStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<SystemJobStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<SystemJobStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemJobStatusFilterImpl implements _SystemJobStatusFilter {
  const _$SystemJobStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<SystemJobStatus>? in_,
      final List<SystemJobStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$SystemJobStatusFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemJobStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final SystemJobStatus? equals;

  /// Not equal to
  @override
  final SystemJobStatus? not;

  /// In list of values
  final List<SystemJobStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<SystemJobStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<SystemJobStatus>? _notIn;

  /// Not in list of values
  @override
  List<SystemJobStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SystemJobStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemJobStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of SystemJobStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemJobStatusFilterImplCopyWith<_$SystemJobStatusFilterImpl>
      get copyWith => __$$SystemJobStatusFilterImplCopyWithImpl<
          _$SystemJobStatusFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemJobStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _SystemJobStatusFilter implements SystemJobStatusFilter {
  const factory _SystemJobStatusFilter(
      {final SystemJobStatus? equals,
      final SystemJobStatus? not,
      @JsonKey(name: 'in') final List<SystemJobStatus>? in_,
      final List<SystemJobStatus>? notIn}) = _$SystemJobStatusFilterImpl;

  factory _SystemJobStatusFilter.fromJson(Map<String, dynamic> json) =
      _$SystemJobStatusFilterImpl.fromJson;

  /// Exact match
  @override
  SystemJobStatus? get equals;

  /// Not equal to
  @override
  SystemJobStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<SystemJobStatus>? get in_;

  /// Not in list of values
  @override
  List<SystemJobStatus>? get notIn;

  /// Create a copy of SystemJobStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemJobStatusFilterImplCopyWith<_$SystemJobStatusFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantVerificationStatusFilter _$ConsultantVerificationStatusFilterFromJson(
    Map<String, dynamic> json) {
  return _ConsultantVerificationStatusFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultantVerificationStatusFilter {
  /// Exact match
  ConsultantVerificationStatus? get equals =>
      throw _privateConstructorUsedError;

  /// Not equal to
  ConsultantVerificationStatus? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<ConsultantVerificationStatus>? get in_ =>
      throw _privateConstructorUsedError;

  /// Not in list of values
  List<ConsultantVerificationStatus>? get notIn =>
      throw _privateConstructorUsedError;

  /// Serializes this ConsultantVerificationStatusFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantVerificationStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantVerificationStatusFilterCopyWith<
          ConsultantVerificationStatusFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantVerificationStatusFilterCopyWith<$Res> {
  factory $ConsultantVerificationStatusFilterCopyWith(
          ConsultantVerificationStatusFilter value,
          $Res Function(ConsultantVerificationStatusFilter) then) =
      _$ConsultantVerificationStatusFilterCopyWithImpl<$Res,
          ConsultantVerificationStatusFilter>;
  @useResult
  $Res call(
      {ConsultantVerificationStatus? equals,
      ConsultantVerificationStatus? not,
      @JsonKey(name: 'in') List<ConsultantVerificationStatus>? in_,
      List<ConsultantVerificationStatus>? notIn});
}

/// @nodoc
class _$ConsultantVerificationStatusFilterCopyWithImpl<$Res,
        $Val extends ConsultantVerificationStatusFilter>
    implements $ConsultantVerificationStatusFilterCopyWith<$Res> {
  _$ConsultantVerificationStatusFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantVerificationStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ConsultantVerificationStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ConsultantVerificationStatus?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ConsultantVerificationStatus>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ConsultantVerificationStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultantVerificationStatusFilterImplCopyWith<$Res>
    implements $ConsultantVerificationStatusFilterCopyWith<$Res> {
  factory _$$ConsultantVerificationStatusFilterImplCopyWith(
          _$ConsultantVerificationStatusFilterImpl value,
          $Res Function(_$ConsultantVerificationStatusFilterImpl) then) =
      __$$ConsultantVerificationStatusFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConsultantVerificationStatus? equals,
      ConsultantVerificationStatus? not,
      @JsonKey(name: 'in') List<ConsultantVerificationStatus>? in_,
      List<ConsultantVerificationStatus>? notIn});
}

/// @nodoc
class __$$ConsultantVerificationStatusFilterImplCopyWithImpl<$Res>
    extends _$ConsultantVerificationStatusFilterCopyWithImpl<$Res,
        _$ConsultantVerificationStatusFilterImpl>
    implements _$$ConsultantVerificationStatusFilterImplCopyWith<$Res> {
  __$$ConsultantVerificationStatusFilterImplCopyWithImpl(
      _$ConsultantVerificationStatusFilterImpl _value,
      $Res Function(_$ConsultantVerificationStatusFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantVerificationStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$ConsultantVerificationStatusFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as ConsultantVerificationStatus?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as ConsultantVerificationStatus?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<ConsultantVerificationStatus>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<ConsultantVerificationStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantVerificationStatusFilterImpl
    implements _ConsultantVerificationStatusFilter {
  const _$ConsultantVerificationStatusFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<ConsultantVerificationStatus>? in_,
      final List<ConsultantVerificationStatus>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$ConsultantVerificationStatusFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantVerificationStatusFilterImplFromJson(json);

  /// Exact match
  @override
  final ConsultantVerificationStatus? equals;

  /// Not equal to
  @override
  final ConsultantVerificationStatus? not;

  /// In list of values
  final List<ConsultantVerificationStatus>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ConsultantVerificationStatus>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<ConsultantVerificationStatus>? _notIn;

  /// Not in list of values
  @override
  List<ConsultantVerificationStatus>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ConsultantVerificationStatusFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantVerificationStatusFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of ConsultantVerificationStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantVerificationStatusFilterImplCopyWith<
          _$ConsultantVerificationStatusFilterImpl>
      get copyWith => __$$ConsultantVerificationStatusFilterImplCopyWithImpl<
          _$ConsultantVerificationStatusFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantVerificationStatusFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultantVerificationStatusFilter
    implements ConsultantVerificationStatusFilter {
  const factory _ConsultantVerificationStatusFilter(
          {final ConsultantVerificationStatus? equals,
          final ConsultantVerificationStatus? not,
          @JsonKey(name: 'in') final List<ConsultantVerificationStatus>? in_,
          final List<ConsultantVerificationStatus>? notIn}) =
      _$ConsultantVerificationStatusFilterImpl;

  factory _ConsultantVerificationStatusFilter.fromJson(
          Map<String, dynamic> json) =
      _$ConsultantVerificationStatusFilterImpl.fromJson;

  /// Exact match
  @override
  ConsultantVerificationStatus? get equals;

  /// Not equal to
  @override
  ConsultantVerificationStatus? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<ConsultantVerificationStatus>? get in_;

  /// Not in list of values
  @override
  List<ConsultantVerificationStatus>? get notIn;

  /// Create a copy of ConsultantVerificationStatusFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantVerificationStatusFilterImplCopyWith<
          _$ConsultantVerificationStatusFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MaintenancePhaseFilter _$MaintenancePhaseFilterFromJson(
    Map<String, dynamic> json) {
  return _MaintenancePhaseFilter.fromJson(json);
}

/// @nodoc
mixin _$MaintenancePhaseFilter {
  /// Exact match
  MaintenancePhase? get equals => throw _privateConstructorUsedError;

  /// Not equal to
  MaintenancePhase? get not => throw _privateConstructorUsedError;

  /// In list of values
  @JsonKey(name: 'in')
  List<MaintenancePhase>? get in_ => throw _privateConstructorUsedError;

  /// Not in list of values
  List<MaintenancePhase>? get notIn => throw _privateConstructorUsedError;

  /// Serializes this MaintenancePhaseFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaintenancePhaseFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaintenancePhaseFilterCopyWith<MaintenancePhaseFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenancePhaseFilterCopyWith<$Res> {
  factory $MaintenancePhaseFilterCopyWith(MaintenancePhaseFilter value,
          $Res Function(MaintenancePhaseFilter) then) =
      _$MaintenancePhaseFilterCopyWithImpl<$Res, MaintenancePhaseFilter>;
  @useResult
  $Res call(
      {MaintenancePhase? equals,
      MaintenancePhase? not,
      @JsonKey(name: 'in') List<MaintenancePhase>? in_,
      List<MaintenancePhase>? notIn});
}

/// @nodoc
class _$MaintenancePhaseFilterCopyWithImpl<$Res,
        $Val extends MaintenancePhaseFilter>
    implements $MaintenancePhaseFilterCopyWith<$Res> {
  _$MaintenancePhaseFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaintenancePhaseFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_value.copyWith(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as MaintenancePhase?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as MaintenancePhase?,
      in_: freezed == in_
          ? _value.in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<MaintenancePhase>?,
      notIn: freezed == notIn
          ? _value.notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<MaintenancePhase>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaintenancePhaseFilterImplCopyWith<$Res>
    implements $MaintenancePhaseFilterCopyWith<$Res> {
  factory _$$MaintenancePhaseFilterImplCopyWith(
          _$MaintenancePhaseFilterImpl value,
          $Res Function(_$MaintenancePhaseFilterImpl) then) =
      __$$MaintenancePhaseFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MaintenancePhase? equals,
      MaintenancePhase? not,
      @JsonKey(name: 'in') List<MaintenancePhase>? in_,
      List<MaintenancePhase>? notIn});
}

/// @nodoc
class __$$MaintenancePhaseFilterImplCopyWithImpl<$Res>
    extends _$MaintenancePhaseFilterCopyWithImpl<$Res,
        _$MaintenancePhaseFilterImpl>
    implements _$$MaintenancePhaseFilterImplCopyWith<$Res> {
  __$$MaintenancePhaseFilterImplCopyWithImpl(
      _$MaintenancePhaseFilterImpl _value,
      $Res Function(_$MaintenancePhaseFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaintenancePhaseFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equals = freezed,
    Object? not = freezed,
    Object? in_ = freezed,
    Object? notIn = freezed,
  }) {
    return _then(_$MaintenancePhaseFilterImpl(
      equals: freezed == equals
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as MaintenancePhase?,
      not: freezed == not
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as MaintenancePhase?,
      in_: freezed == in_
          ? _value._in_
          : in_ // ignore: cast_nullable_to_non_nullable
              as List<MaintenancePhase>?,
      notIn: freezed == notIn
          ? _value._notIn
          : notIn // ignore: cast_nullable_to_non_nullable
              as List<MaintenancePhase>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaintenancePhaseFilterImpl implements _MaintenancePhaseFilter {
  const _$MaintenancePhaseFilterImpl(
      {this.equals,
      this.not,
      @JsonKey(name: 'in') final List<MaintenancePhase>? in_,
      final List<MaintenancePhase>? notIn})
      : _in_ = in_,
        _notIn = notIn;

  factory _$MaintenancePhaseFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaintenancePhaseFilterImplFromJson(json);

  /// Exact match
  @override
  final MaintenancePhase? equals;

  /// Not equal to
  @override
  final MaintenancePhase? not;

  /// In list of values
  final List<MaintenancePhase>? _in_;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<MaintenancePhase>? get in_ {
    final value = _in_;
    if (value == null) return null;
    if (_in_ is EqualUnmodifiableListView) return _in_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Not in list of values
  final List<MaintenancePhase>? _notIn;

  /// Not in list of values
  @override
  List<MaintenancePhase>? get notIn {
    final value = _notIn;
    if (value == null) return null;
    if (_notIn is EqualUnmodifiableListView) return _notIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MaintenancePhaseFilter(equals: $equals, not: $not, in_: $in_, notIn: $notIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenancePhaseFilterImpl &&
            (identical(other.equals, equals) || other.equals == equals) &&
            (identical(other.not, not) || other.not == not) &&
            const DeepCollectionEquality().equals(other._in_, _in_) &&
            const DeepCollectionEquality().equals(other._notIn, _notIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      equals,
      not,
      const DeepCollectionEquality().hash(_in_),
      const DeepCollectionEquality().hash(_notIn));

  /// Create a copy of MaintenancePhaseFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenancePhaseFilterImplCopyWith<_$MaintenancePhaseFilterImpl>
      get copyWith => __$$MaintenancePhaseFilterImplCopyWithImpl<
          _$MaintenancePhaseFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaintenancePhaseFilterImplToJson(
      this,
    );
  }
}

abstract class _MaintenancePhaseFilter implements MaintenancePhaseFilter {
  const factory _MaintenancePhaseFilter(
      {final MaintenancePhase? equals,
      final MaintenancePhase? not,
      @JsonKey(name: 'in') final List<MaintenancePhase>? in_,
      final List<MaintenancePhase>? notIn}) = _$MaintenancePhaseFilterImpl;

  factory _MaintenancePhaseFilter.fromJson(Map<String, dynamic> json) =
      _$MaintenancePhaseFilterImpl.fromJson;

  /// Exact match
  @override
  MaintenancePhase? get equals;

  /// Not equal to
  @override
  MaintenancePhase? get not;

  /// In list of values
  @override
  @JsonKey(name: 'in')
  List<MaintenancePhase>? get in_;

  /// Not in list of values
  @override
  List<MaintenancePhase>? get notIn;

  /// Create a copy of MaintenancePhaseFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaintenancePhaseFilterImplCopyWith<_$MaintenancePhaseFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StringListFilter _$StringListFilterFromJson(Map<String, dynamic> json) {
  return _StringListFilter.fromJson(json);
}

/// @nodoc
mixin _$StringListFilter {
  /// Has specific value
  String? get has => throw _privateConstructorUsedError;

  /// Has every value in list
  List<String>? get hasEvery => throw _privateConstructorUsedError;

  /// Has some value in list
  List<String>? get hasSome => throw _privateConstructorUsedError;

  /// Is empty list
  bool? get isEmpty => throw _privateConstructorUsedError;

  /// Serializes this StringListFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StringListFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StringListFilterCopyWith<StringListFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringListFilterCopyWith<$Res> {
  factory $StringListFilterCopyWith(
          StringListFilter value, $Res Function(StringListFilter) then) =
      _$StringListFilterCopyWithImpl<$Res, StringListFilter>;
  @useResult
  $Res call(
      {String? has,
      List<String>? hasEvery,
      List<String>? hasSome,
      bool? isEmpty});
}

/// @nodoc
class _$StringListFilterCopyWithImpl<$Res, $Val extends StringListFilter>
    implements $StringListFilterCopyWith<$Res> {
  _$StringListFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StringListFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? has = freezed,
    Object? hasEvery = freezed,
    Object? hasSome = freezed,
    Object? isEmpty = freezed,
  }) {
    return _then(_value.copyWith(
      has: freezed == has
          ? _value.has
          : has // ignore: cast_nullable_to_non_nullable
              as String?,
      hasEvery: freezed == hasEvery
          ? _value.hasEvery
          : hasEvery // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hasSome: freezed == hasSome
          ? _value.hasSome
          : hasSome // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isEmpty: freezed == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StringListFilterImplCopyWith<$Res>
    implements $StringListFilterCopyWith<$Res> {
  factory _$$StringListFilterImplCopyWith(_$StringListFilterImpl value,
          $Res Function(_$StringListFilterImpl) then) =
      __$$StringListFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? has,
      List<String>? hasEvery,
      List<String>? hasSome,
      bool? isEmpty});
}

/// @nodoc
class __$$StringListFilterImplCopyWithImpl<$Res>
    extends _$StringListFilterCopyWithImpl<$Res, _$StringListFilterImpl>
    implements _$$StringListFilterImplCopyWith<$Res> {
  __$$StringListFilterImplCopyWithImpl(_$StringListFilterImpl _value,
      $Res Function(_$StringListFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of StringListFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? has = freezed,
    Object? hasEvery = freezed,
    Object? hasSome = freezed,
    Object? isEmpty = freezed,
  }) {
    return _then(_$StringListFilterImpl(
      has: freezed == has
          ? _value.has
          : has // ignore: cast_nullable_to_non_nullable
              as String?,
      hasEvery: freezed == hasEvery
          ? _value._hasEvery
          : hasEvery // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hasSome: freezed == hasSome
          ? _value._hasSome
          : hasSome // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isEmpty: freezed == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringListFilterImpl implements _StringListFilter {
  const _$StringListFilterImpl(
      {this.has,
      final List<String>? hasEvery,
      final List<String>? hasSome,
      this.isEmpty})
      : _hasEvery = hasEvery,
        _hasSome = hasSome;

  factory _$StringListFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringListFilterImplFromJson(json);

  /// Has specific value
  @override
  final String? has;

  /// Has every value in list
  final List<String>? _hasEvery;

  /// Has every value in list
  @override
  List<String>? get hasEvery {
    final value = _hasEvery;
    if (value == null) return null;
    if (_hasEvery is EqualUnmodifiableListView) return _hasEvery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Has some value in list
  final List<String>? _hasSome;

  /// Has some value in list
  @override
  List<String>? get hasSome {
    final value = _hasSome;
    if (value == null) return null;
    if (_hasSome is EqualUnmodifiableListView) return _hasSome;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Is empty list
  @override
  final bool? isEmpty;

  @override
  String toString() {
    return 'StringListFilter(has: $has, hasEvery: $hasEvery, hasSome: $hasSome, isEmpty: $isEmpty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringListFilterImpl &&
            (identical(other.has, has) || other.has == has) &&
            const DeepCollectionEquality().equals(other._hasEvery, _hasEvery) &&
            const DeepCollectionEquality().equals(other._hasSome, _hasSome) &&
            (identical(other.isEmpty, isEmpty) || other.isEmpty == isEmpty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      has,
      const DeepCollectionEquality().hash(_hasEvery),
      const DeepCollectionEquality().hash(_hasSome),
      isEmpty);

  /// Create a copy of StringListFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StringListFilterImplCopyWith<_$StringListFilterImpl> get copyWith =>
      __$$StringListFilterImplCopyWithImpl<_$StringListFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StringListFilterImplToJson(
      this,
    );
  }
}

abstract class _StringListFilter implements StringListFilter {
  const factory _StringListFilter(
      {final String? has,
      final List<String>? hasEvery,
      final List<String>? hasSome,
      final bool? isEmpty}) = _$StringListFilterImpl;

  factory _StringListFilter.fromJson(Map<String, dynamic> json) =
      _$StringListFilterImpl.fromJson;

  /// Has specific value
  @override
  String? get has;

  /// Has every value in list
  @override
  List<String>? get hasEvery;

  /// Has some value in list
  @override
  List<String>? get hasSome;

  /// Is empty list
  @override
  bool? get isEmpty;

  /// Create a copy of StringListFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StringListFilterImplCopyWith<_$StringListFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IntListFilter _$IntListFilterFromJson(Map<String, dynamic> json) {
  return _IntListFilter.fromJson(json);
}

/// @nodoc
mixin _$IntListFilter {
  /// Has specific value
  int? get has => throw _privateConstructorUsedError;

  /// Has every value in list
  List<int>? get hasEvery => throw _privateConstructorUsedError;

  /// Has some value in list
  List<int>? get hasSome => throw _privateConstructorUsedError;

  /// Is empty list
  bool? get isEmpty => throw _privateConstructorUsedError;

  /// Serializes this IntListFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntListFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntListFilterCopyWith<IntListFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntListFilterCopyWith<$Res> {
  factory $IntListFilterCopyWith(
          IntListFilter value, $Res Function(IntListFilter) then) =
      _$IntListFilterCopyWithImpl<$Res, IntListFilter>;
  @useResult
  $Res call({int? has, List<int>? hasEvery, List<int>? hasSome, bool? isEmpty});
}

/// @nodoc
class _$IntListFilterCopyWithImpl<$Res, $Val extends IntListFilter>
    implements $IntListFilterCopyWith<$Res> {
  _$IntListFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntListFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? has = freezed,
    Object? hasEvery = freezed,
    Object? hasSome = freezed,
    Object? isEmpty = freezed,
  }) {
    return _then(_value.copyWith(
      has: freezed == has
          ? _value.has
          : has // ignore: cast_nullable_to_non_nullable
              as int?,
      hasEvery: freezed == hasEvery
          ? _value.hasEvery
          : hasEvery // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      hasSome: freezed == hasSome
          ? _value.hasSome
          : hasSome // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      isEmpty: freezed == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntListFilterImplCopyWith<$Res>
    implements $IntListFilterCopyWith<$Res> {
  factory _$$IntListFilterImplCopyWith(
          _$IntListFilterImpl value, $Res Function(_$IntListFilterImpl) then) =
      __$$IntListFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? has, List<int>? hasEvery, List<int>? hasSome, bool? isEmpty});
}

/// @nodoc
class __$$IntListFilterImplCopyWithImpl<$Res>
    extends _$IntListFilterCopyWithImpl<$Res, _$IntListFilterImpl>
    implements _$$IntListFilterImplCopyWith<$Res> {
  __$$IntListFilterImplCopyWithImpl(
      _$IntListFilterImpl _value, $Res Function(_$IntListFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntListFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? has = freezed,
    Object? hasEvery = freezed,
    Object? hasSome = freezed,
    Object? isEmpty = freezed,
  }) {
    return _then(_$IntListFilterImpl(
      has: freezed == has
          ? _value.has
          : has // ignore: cast_nullable_to_non_nullable
              as int?,
      hasEvery: freezed == hasEvery
          ? _value._hasEvery
          : hasEvery // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      hasSome: freezed == hasSome
          ? _value._hasSome
          : hasSome // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      isEmpty: freezed == isEmpty
          ? _value.isEmpty
          : isEmpty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntListFilterImpl implements _IntListFilter {
  const _$IntListFilterImpl(
      {this.has,
      final List<int>? hasEvery,
      final List<int>? hasSome,
      this.isEmpty})
      : _hasEvery = hasEvery,
        _hasSome = hasSome;

  factory _$IntListFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntListFilterImplFromJson(json);

  /// Has specific value
  @override
  final int? has;

  /// Has every value in list
  final List<int>? _hasEvery;

  /// Has every value in list
  @override
  List<int>? get hasEvery {
    final value = _hasEvery;
    if (value == null) return null;
    if (_hasEvery is EqualUnmodifiableListView) return _hasEvery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Has some value in list
  final List<int>? _hasSome;

  /// Has some value in list
  @override
  List<int>? get hasSome {
    final value = _hasSome;
    if (value == null) return null;
    if (_hasSome is EqualUnmodifiableListView) return _hasSome;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Is empty list
  @override
  final bool? isEmpty;

  @override
  String toString() {
    return 'IntListFilter(has: $has, hasEvery: $hasEvery, hasSome: $hasSome, isEmpty: $isEmpty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntListFilterImpl &&
            (identical(other.has, has) || other.has == has) &&
            const DeepCollectionEquality().equals(other._hasEvery, _hasEvery) &&
            const DeepCollectionEquality().equals(other._hasSome, _hasSome) &&
            (identical(other.isEmpty, isEmpty) || other.isEmpty == isEmpty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      has,
      const DeepCollectionEquality().hash(_hasEvery),
      const DeepCollectionEquality().hash(_hasSome),
      isEmpty);

  /// Create a copy of IntListFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntListFilterImplCopyWith<_$IntListFilterImpl> get copyWith =>
      __$$IntListFilterImplCopyWithImpl<_$IntListFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntListFilterImplToJson(
      this,
    );
  }
}

abstract class _IntListFilter implements IntListFilter {
  const factory _IntListFilter(
      {final int? has,
      final List<int>? hasEvery,
      final List<int>? hasSome,
      final bool? isEmpty}) = _$IntListFilterImpl;

  factory _IntListFilter.fromJson(Map<String, dynamic> json) =
      _$IntListFilterImpl.fromJson;

  /// Has specific value
  @override
  int? get has;

  /// Has every value in list
  @override
  List<int>? get hasEvery;

  /// Has some value in list
  @override
  List<int>? get hasSome;

  /// Is empty list
  @override
  bool? get isEmpty;

  /// Create a copy of IntListFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntListFilterImplCopyWith<_$IntListFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
