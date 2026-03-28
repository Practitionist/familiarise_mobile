// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultant_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsultantReview _$ConsultantReviewFromJson(Map<String, dynamic> json) {
  return _ConsultantReview.fromJson(json);
}

/// @nodoc
mixin _$ConsultantReview {
  String get id => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String? get reviewDescription => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsulteeProfile? get consulteeProfile => throw _privateConstructorUsedError;
  String get consulteeProfileId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConsultantReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantReviewCopyWith<ConsultantReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantReviewCopyWith<$Res> {
  factory $ConsultantReviewCopyWith(
          ConsultantReview value, $Res Function(ConsultantReview) then) =
      _$ConsultantReviewCopyWithImpl<$Res, ConsultantReview>;
  @useResult
  $Res call(
      {String id,
      int rating,
      String? reviewDescription,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsulteeProfile? consulteeProfile,
      String consulteeProfileId,
      DateTime createdAt,
      DateTime updatedAt});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
  $ConsulteeProfileCopyWith<$Res>? get consulteeProfile;
}

/// @nodoc
class _$ConsultantReviewCopyWithImpl<$Res, $Val extends ConsultantReview>
    implements $ConsultantReviewCopyWith<$Res> {
  _$ConsultantReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rating = null,
    Object? reviewDescription = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = null,
    Object? consulteeProfile = freezed,
    Object? consulteeProfileId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      reviewDescription: freezed == reviewDescription
          ? _value.reviewDescription
          : reviewDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consulteeProfile: freezed == consulteeProfile
          ? _value.consulteeProfile
          : consulteeProfile // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfile?,
      consulteeProfileId: null == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of ConsultantReview
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

  /// Create a copy of ConsultantReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsulteeProfileCopyWith<$Res>? get consulteeProfile {
    if (_value.consulteeProfile == null) {
      return null;
    }

    return $ConsulteeProfileCopyWith<$Res>(_value.consulteeProfile!, (value) {
      return _then(_value.copyWith(consulteeProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantReviewImplCopyWith<$Res>
    implements $ConsultantReviewCopyWith<$Res> {
  factory _$$ConsultantReviewImplCopyWith(_$ConsultantReviewImpl value,
          $Res Function(_$ConsultantReviewImpl) then) =
      __$$ConsultantReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int rating,
      String? reviewDescription,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsulteeProfile? consulteeProfile,
      String consulteeProfileId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
  @override
  $ConsulteeProfileCopyWith<$Res>? get consulteeProfile;
}

/// @nodoc
class __$$ConsultantReviewImplCopyWithImpl<$Res>
    extends _$ConsultantReviewCopyWithImpl<$Res, _$ConsultantReviewImpl>
    implements _$$ConsultantReviewImplCopyWith<$Res> {
  __$$ConsultantReviewImplCopyWithImpl(_$ConsultantReviewImpl _value,
      $Res Function(_$ConsultantReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rating = null,
    Object? reviewDescription = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = null,
    Object? consulteeProfile = freezed,
    Object? consulteeProfileId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ConsultantReviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      reviewDescription: freezed == reviewDescription
          ? _value.reviewDescription
          : reviewDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consulteeProfile: freezed == consulteeProfile
          ? _value.consulteeProfile
          : consulteeProfile // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfile?,
      consulteeProfileId: null == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
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
class _$ConsultantReviewImpl implements _ConsultantReview {
  const _$ConsultantReviewImpl(
      {required this.id,
      this.rating = 0,
      this.reviewDescription,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      required this.consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consulteeProfile,
      required this.consulteeProfileId,
      required this.createdAt,
      required this.updatedAt});

  factory _$ConsultantReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultantReviewImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final int rating;
  @override
  final String? reviewDescription;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? consultantProfile;
  @override
  final String consultantProfileId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsulteeProfile? consulteeProfile;
  @override
  final String consulteeProfileId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ConsultantReview(id: $id, rating: $rating, reviewDescription: $reviewDescription, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, consulteeProfile: $consulteeProfile, consulteeProfileId: $consulteeProfileId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewDescription, reviewDescription) ||
                other.reviewDescription == reviewDescription) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consulteeProfile, consulteeProfile) ||
                other.consulteeProfile == consulteeProfile) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId) &&
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
      rating,
      reviewDescription,
      consultantProfile,
      consultantProfileId,
      consulteeProfile,
      consulteeProfileId,
      createdAt,
      updatedAt);

  /// Create a copy of ConsultantReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantReviewImplCopyWith<_$ConsultantReviewImpl> get copyWith =>
      __$$ConsultantReviewImplCopyWithImpl<_$ConsultantReviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantReviewImplToJson(
      this,
    );
  }
}

abstract class _ConsultantReview implements ConsultantReview {
  const factory _ConsultantReview(
      {required final String id,
      final int rating,
      final String? reviewDescription,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? consultantProfile,
      required final String consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsulteeProfile? consulteeProfile,
      required final String consulteeProfileId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ConsultantReviewImpl;

  factory _ConsultantReview.fromJson(Map<String, dynamic> json) =
      _$ConsultantReviewImpl.fromJson;

  @override
  String get id;
  @override
  int get rating;
  @override
  String? get reviewDescription;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile;
  @override
  String get consultantProfileId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsulteeProfile? get consulteeProfile;
  @override
  String get consulteeProfileId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ConsultantReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantReviewImplCopyWith<_$ConsultantReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateConsultantReviewInput _$CreateConsultantReviewInputFromJson(
    Map<String, dynamic> json) {
  return _CreateConsultantReviewInput.fromJson(json);
}

/// @nodoc
mixin _$CreateConsultantReviewInput {
  int? get rating => throw _privateConstructorUsedError;
  String? get reviewDescription => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  String get consulteeProfileId => throw _privateConstructorUsedError;

  /// Serializes this CreateConsultantReviewInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateConsultantReviewInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateConsultantReviewInputCopyWith<CreateConsultantReviewInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateConsultantReviewInputCopyWith<$Res> {
  factory $CreateConsultantReviewInputCopyWith(
          CreateConsultantReviewInput value,
          $Res Function(CreateConsultantReviewInput) then) =
      _$CreateConsultantReviewInputCopyWithImpl<$Res,
          CreateConsultantReviewInput>;
  @useResult
  $Res call(
      {int? rating,
      String? reviewDescription,
      String consultantProfileId,
      String consulteeProfileId});
}

/// @nodoc
class _$CreateConsultantReviewInputCopyWithImpl<$Res,
        $Val extends CreateConsultantReviewInput>
    implements $CreateConsultantReviewInputCopyWith<$Res> {
  _$CreateConsultantReviewInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateConsultantReviewInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? reviewDescription = freezed,
    Object? consultantProfileId = null,
    Object? consulteeProfileId = null,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewDescription: freezed == reviewDescription
          ? _value.reviewDescription
          : reviewDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consulteeProfileId: null == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateConsultantReviewInputImplCopyWith<$Res>
    implements $CreateConsultantReviewInputCopyWith<$Res> {
  factory _$$CreateConsultantReviewInputImplCopyWith(
          _$CreateConsultantReviewInputImpl value,
          $Res Function(_$CreateConsultantReviewInputImpl) then) =
      __$$CreateConsultantReviewInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? rating,
      String? reviewDescription,
      String consultantProfileId,
      String consulteeProfileId});
}

/// @nodoc
class __$$CreateConsultantReviewInputImplCopyWithImpl<$Res>
    extends _$CreateConsultantReviewInputCopyWithImpl<$Res,
        _$CreateConsultantReviewInputImpl>
    implements _$$CreateConsultantReviewInputImplCopyWith<$Res> {
  __$$CreateConsultantReviewInputImplCopyWithImpl(
      _$CreateConsultantReviewInputImpl _value,
      $Res Function(_$CreateConsultantReviewInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateConsultantReviewInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? reviewDescription = freezed,
    Object? consultantProfileId = null,
    Object? consulteeProfileId = null,
  }) {
    return _then(_$CreateConsultantReviewInputImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewDescription: freezed == reviewDescription
          ? _value.reviewDescription
          : reviewDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consulteeProfileId: null == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateConsultantReviewInputImpl
    implements _CreateConsultantReviewInput {
  const _$CreateConsultantReviewInputImpl(
      {this.rating = 0,
      this.reviewDescription,
      required this.consultantProfileId,
      required this.consulteeProfileId});

  factory _$CreateConsultantReviewInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateConsultantReviewInputImplFromJson(json);

  @override
  @JsonKey()
  final int? rating;
  @override
  final String? reviewDescription;
  @override
  final String consultantProfileId;
  @override
  final String consulteeProfileId;

  @override
  String toString() {
    return 'CreateConsultantReviewInput(rating: $rating, reviewDescription: $reviewDescription, consultantProfileId: $consultantProfileId, consulteeProfileId: $consulteeProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateConsultantReviewInputImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewDescription, reviewDescription) ||
                other.reviewDescription == reviewDescription) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rating, reviewDescription,
      consultantProfileId, consulteeProfileId);

  /// Create a copy of CreateConsultantReviewInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateConsultantReviewInputImplCopyWith<_$CreateConsultantReviewInputImpl>
      get copyWith => __$$CreateConsultantReviewInputImplCopyWithImpl<
          _$CreateConsultantReviewInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateConsultantReviewInputImplToJson(
      this,
    );
  }
}

abstract class _CreateConsultantReviewInput
    implements CreateConsultantReviewInput {
  const factory _CreateConsultantReviewInput(
          {final int? rating,
          final String? reviewDescription,
          required final String consultantProfileId,
          required final String consulteeProfileId}) =
      _$CreateConsultantReviewInputImpl;

  factory _CreateConsultantReviewInput.fromJson(Map<String, dynamic> json) =
      _$CreateConsultantReviewInputImpl.fromJson;

  @override
  int? get rating;
  @override
  String? get reviewDescription;
  @override
  String get consultantProfileId;
  @override
  String get consulteeProfileId;

  /// Create a copy of CreateConsultantReviewInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateConsultantReviewInputImplCopyWith<_$CreateConsultantReviewInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateConsultantReviewInput _$UpdateConsultantReviewInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateConsultantReviewInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateConsultantReviewInput {
  int? get rating => throw _privateConstructorUsedError;
  String? get reviewDescription => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;
  String? get consulteeProfileId => throw _privateConstructorUsedError;

  /// Serializes this UpdateConsultantReviewInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateConsultantReviewInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateConsultantReviewInputCopyWith<UpdateConsultantReviewInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateConsultantReviewInputCopyWith<$Res> {
  factory $UpdateConsultantReviewInputCopyWith(
          UpdateConsultantReviewInput value,
          $Res Function(UpdateConsultantReviewInput) then) =
      _$UpdateConsultantReviewInputCopyWithImpl<$Res,
          UpdateConsultantReviewInput>;
  @useResult
  $Res call(
      {int? rating,
      String? reviewDescription,
      String? consultantProfileId,
      String? consulteeProfileId});
}

/// @nodoc
class _$UpdateConsultantReviewInputCopyWithImpl<$Res,
        $Val extends UpdateConsultantReviewInput>
    implements $UpdateConsultantReviewInputCopyWith<$Res> {
  _$UpdateConsultantReviewInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateConsultantReviewInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? reviewDescription = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfileId = freezed,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewDescription: freezed == reviewDescription
          ? _value.reviewDescription
          : reviewDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateConsultantReviewInputImplCopyWith<$Res>
    implements $UpdateConsultantReviewInputCopyWith<$Res> {
  factory _$$UpdateConsultantReviewInputImplCopyWith(
          _$UpdateConsultantReviewInputImpl value,
          $Res Function(_$UpdateConsultantReviewInputImpl) then) =
      __$$UpdateConsultantReviewInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? rating,
      String? reviewDescription,
      String? consultantProfileId,
      String? consulteeProfileId});
}

/// @nodoc
class __$$UpdateConsultantReviewInputImplCopyWithImpl<$Res>
    extends _$UpdateConsultantReviewInputCopyWithImpl<$Res,
        _$UpdateConsultantReviewInputImpl>
    implements _$$UpdateConsultantReviewInputImplCopyWith<$Res> {
  __$$UpdateConsultantReviewInputImplCopyWithImpl(
      _$UpdateConsultantReviewInputImpl _value,
      $Res Function(_$UpdateConsultantReviewInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateConsultantReviewInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? reviewDescription = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfileId = freezed,
  }) {
    return _then(_$UpdateConsultantReviewInputImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewDescription: freezed == reviewDescription
          ? _value.reviewDescription
          : reviewDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateConsultantReviewInputImpl
    implements _UpdateConsultantReviewInput {
  const _$UpdateConsultantReviewInputImpl(
      {this.rating,
      this.reviewDescription,
      this.consultantProfileId,
      this.consulteeProfileId});

  factory _$UpdateConsultantReviewInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateConsultantReviewInputImplFromJson(json);

  @override
  final int? rating;
  @override
  final String? reviewDescription;
  @override
  final String? consultantProfileId;
  @override
  final String? consulteeProfileId;

  @override
  String toString() {
    return 'UpdateConsultantReviewInput(rating: $rating, reviewDescription: $reviewDescription, consultantProfileId: $consultantProfileId, consulteeProfileId: $consulteeProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateConsultantReviewInputImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewDescription, reviewDescription) ||
                other.reviewDescription == reviewDescription) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rating, reviewDescription,
      consultantProfileId, consulteeProfileId);

  /// Create a copy of UpdateConsultantReviewInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateConsultantReviewInputImplCopyWith<_$UpdateConsultantReviewInputImpl>
      get copyWith => __$$UpdateConsultantReviewInputImplCopyWithImpl<
          _$UpdateConsultantReviewInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateConsultantReviewInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateConsultantReviewInput
    implements UpdateConsultantReviewInput {
  const factory _UpdateConsultantReviewInput(
      {final int? rating,
      final String? reviewDescription,
      final String? consultantProfileId,
      final String? consulteeProfileId}) = _$UpdateConsultantReviewInputImpl;

  factory _UpdateConsultantReviewInput.fromJson(Map<String, dynamic> json) =
      _$UpdateConsultantReviewInputImpl.fromJson;

  @override
  int? get rating;
  @override
  String? get reviewDescription;
  @override
  String? get consultantProfileId;
  @override
  String? get consulteeProfileId;

  /// Create a copy of UpdateConsultantReviewInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateConsultantReviewInputImplCopyWith<_$UpdateConsultantReviewInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantReviewWhereUniqueInput _$ConsultantReviewWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultantReviewWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultantReviewWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ConsultantReviewWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantReviewWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantReviewWhereUniqueInputCopyWith<ConsultantReviewWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantReviewWhereUniqueInputCopyWith<$Res> {
  factory $ConsultantReviewWhereUniqueInputCopyWith(
          ConsultantReviewWhereUniqueInput value,
          $Res Function(ConsultantReviewWhereUniqueInput) then) =
      _$ConsultantReviewWhereUniqueInputCopyWithImpl<$Res,
          ConsultantReviewWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ConsultantReviewWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ConsultantReviewWhereUniqueInput>
    implements $ConsultantReviewWhereUniqueInputCopyWith<$Res> {
  _$ConsultantReviewWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantReviewWhereUniqueInput
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
abstract class _$$ConsultantReviewWhereUniqueInputImplCopyWith<$Res>
    implements $ConsultantReviewWhereUniqueInputCopyWith<$Res> {
  factory _$$ConsultantReviewWhereUniqueInputImplCopyWith(
          _$ConsultantReviewWhereUniqueInputImpl value,
          $Res Function(_$ConsultantReviewWhereUniqueInputImpl) then) =
      __$$ConsultantReviewWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$ConsultantReviewWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ConsultantReviewWhereUniqueInputCopyWithImpl<$Res,
        _$ConsultantReviewWhereUniqueInputImpl>
    implements _$$ConsultantReviewWhereUniqueInputImplCopyWith<$Res> {
  __$$ConsultantReviewWhereUniqueInputImplCopyWithImpl(
      _$ConsultantReviewWhereUniqueInputImpl _value,
      $Res Function(_$ConsultantReviewWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantReviewWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ConsultantReviewWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantReviewWhereUniqueInputImpl
    implements _ConsultantReviewWhereUniqueInput {
  const _$ConsultantReviewWhereUniqueInputImpl({this.id});

  factory _$ConsultantReviewWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantReviewWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'ConsultantReviewWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantReviewWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ConsultantReviewWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantReviewWhereUniqueInputImplCopyWith<
          _$ConsultantReviewWhereUniqueInputImpl>
      get copyWith => __$$ConsultantReviewWhereUniqueInputImplCopyWithImpl<
          _$ConsultantReviewWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantReviewWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultantReviewWhereUniqueInput
    implements ConsultantReviewWhereUniqueInput {
  const factory _ConsultantReviewWhereUniqueInput({final String? id}) =
      _$ConsultantReviewWhereUniqueInputImpl;

  factory _ConsultantReviewWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$ConsultantReviewWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of ConsultantReviewWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantReviewWhereUniqueInputImplCopyWith<
          _$ConsultantReviewWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantReviewWhereInput _$ConsultantReviewWhereInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultantReviewWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultantReviewWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  IntFilter? get rating => throw _privateConstructorUsedError;
  StringFilter? get reviewDescription => throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;

  /// Filter by consulteeProfile relation
  ConsulteeProfileRelationFilter? get consulteeProfile =>
      throw _privateConstructorUsedError;
  StringFilter? get consulteeProfileId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<ConsultantReviewWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<ConsultantReviewWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  ConsultantReviewWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ConsultantReviewWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantReviewWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantReviewWhereInputCopyWith<ConsultantReviewWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantReviewWhereInputCopyWith<$Res> {
  factory $ConsultantReviewWhereInputCopyWith(ConsultantReviewWhereInput value,
          $Res Function(ConsultantReviewWhereInput) then) =
      _$ConsultantReviewWhereInputCopyWithImpl<$Res,
          ConsultantReviewWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      IntFilter? rating,
      StringFilter? reviewDescription,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      ConsulteeProfileRelationFilter? consulteeProfile,
      StringFilter? consulteeProfileId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ConsultantReviewWhereInput>? AND,
      List<ConsultantReviewWhereInput>? OR,
      ConsultantReviewWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $IntFilterCopyWith<$Res>? get rating;
  $StringFilterCopyWith<$Res>? get reviewDescription;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $ConsulteeProfileRelationFilterCopyWith<$Res>? get consulteeProfile;
  $StringFilterCopyWith<$Res>? get consulteeProfileId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ConsultantReviewWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ConsultantReviewWhereInputCopyWithImpl<$Res,
        $Val extends ConsultantReviewWhereInput>
    implements $ConsultantReviewWhereInputCopyWith<$Res> {
  _$ConsultantReviewWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantReviewWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rating = freezed,
    Object? reviewDescription = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfile = freezed,
    Object? consulteeProfileId = freezed,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      reviewDescription: freezed == reviewDescription
          ? _value.reviewDescription
          : reviewDescription // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consulteeProfile: freezed == consulteeProfile
          ? _value.consulteeProfile
          : consulteeProfile // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileRelationFilter?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
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
              as List<ConsultantReviewWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsultantReviewWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsultantReviewWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultantReviewWhereInput
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

  /// Create a copy of ConsultantReviewWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }

  /// Create a copy of ConsultantReviewWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get reviewDescription {
    if (_value.reviewDescription == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.reviewDescription!, (value) {
      return _then(_value.copyWith(reviewDescription: value) as $Val);
    });
  }

  /// Create a copy of ConsultantReviewWhereInput
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

  /// Create a copy of ConsultantReviewWhereInput
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

  /// Create a copy of ConsultantReviewWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsulteeProfileRelationFilterCopyWith<$Res>? get consulteeProfile {
    if (_value.consulteeProfile == null) {
      return null;
    }

    return $ConsulteeProfileRelationFilterCopyWith<$Res>(
        _value.consulteeProfile!, (value) {
      return _then(_value.copyWith(consulteeProfile: value) as $Val);
    });
  }

  /// Create a copy of ConsultantReviewWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get consulteeProfileId {
    if (_value.consulteeProfileId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.consulteeProfileId!, (value) {
      return _then(_value.copyWith(consulteeProfileId: value) as $Val);
    });
  }

  /// Create a copy of ConsultantReviewWhereInput
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

  /// Create a copy of ConsultantReviewWhereInput
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

  /// Create a copy of ConsultantReviewWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantReviewWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ConsultantReviewWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantReviewWhereInputImplCopyWith<$Res>
    implements $ConsultantReviewWhereInputCopyWith<$Res> {
  factory _$$ConsultantReviewWhereInputImplCopyWith(
          _$ConsultantReviewWhereInputImpl value,
          $Res Function(_$ConsultantReviewWhereInputImpl) then) =
      __$$ConsultantReviewWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      IntFilter? rating,
      StringFilter? reviewDescription,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      ConsulteeProfileRelationFilter? consulteeProfile,
      StringFilter? consulteeProfileId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ConsultantReviewWhereInput>? AND,
      List<ConsultantReviewWhereInput>? OR,
      ConsultantReviewWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $IntFilterCopyWith<$Res>? get rating;
  @override
  $StringFilterCopyWith<$Res>? get reviewDescription;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $ConsulteeProfileRelationFilterCopyWith<$Res>? get consulteeProfile;
  @override
  $StringFilterCopyWith<$Res>? get consulteeProfileId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ConsultantReviewWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ConsultantReviewWhereInputImplCopyWithImpl<$Res>
    extends _$ConsultantReviewWhereInputCopyWithImpl<$Res,
        _$ConsultantReviewWhereInputImpl>
    implements _$$ConsultantReviewWhereInputImplCopyWith<$Res> {
  __$$ConsultantReviewWhereInputImplCopyWithImpl(
      _$ConsultantReviewWhereInputImpl _value,
      $Res Function(_$ConsultantReviewWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantReviewWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rating = freezed,
    Object? reviewDescription = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfile = freezed,
    Object? consulteeProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ConsultantReviewWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      reviewDescription: freezed == reviewDescription
          ? _value.reviewDescription
          : reviewDescription // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consulteeProfile: freezed == consulteeProfile
          ? _value.consulteeProfile
          : consulteeProfile // ignore: cast_nullable_to_non_nullable
              as ConsulteeProfileRelationFilter?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
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
              as List<ConsultantReviewWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsultantReviewWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsultantReviewWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ConsultantReviewWhereInputImpl implements _ConsultantReviewWhereInput {
  const _$ConsultantReviewWhereInputImpl(
      {this.id,
      this.rating,
      this.reviewDescription,
      this.consultantProfile,
      this.consultantProfileId,
      this.consulteeProfile,
      this.consulteeProfileId,
      this.createdAt,
      this.updatedAt,
      final List<ConsultantReviewWhereInput>? AND,
      final List<ConsultantReviewWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ConsultantReviewWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantReviewWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final IntFilter? rating;
  @override
  final StringFilter? reviewDescription;

  /// Filter by consultantProfile relation
  @override
  final ConsultantProfileRelationFilter? consultantProfile;
  @override
  final StringFilter? consultantProfileId;

  /// Filter by consulteeProfile relation
  @override
  final ConsulteeProfileRelationFilter? consulteeProfile;
  @override
  final StringFilter? consulteeProfileId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<ConsultantReviewWhereInput>? _AND;
  @override
  List<ConsultantReviewWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ConsultantReviewWhereInput>? _OR;
  @override
  List<ConsultantReviewWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ConsultantReviewWhereInput? NOT;

  @override
  String toString() {
    return 'ConsultantReviewWhereInput(id: $id, rating: $rating, reviewDescription: $reviewDescription, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, consulteeProfile: $consulteeProfile, consulteeProfileId: $consulteeProfileId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantReviewWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewDescription, reviewDescription) ||
                other.reviewDescription == reviewDescription) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consulteeProfile, consulteeProfile) ||
                other.consulteeProfile == consulteeProfile) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId) &&
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
      rating,
      reviewDescription,
      consultantProfile,
      consultantProfileId,
      consulteeProfile,
      consulteeProfileId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of ConsultantReviewWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantReviewWhereInputImplCopyWith<_$ConsultantReviewWhereInputImpl>
      get copyWith => __$$ConsultantReviewWhereInputImplCopyWithImpl<
          _$ConsultantReviewWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantReviewWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultantReviewWhereInput
    implements ConsultantReviewWhereInput {
  const factory _ConsultantReviewWhereInput(
          {final StringFilter? id,
          final IntFilter? rating,
          final StringFilter? reviewDescription,
          final ConsultantProfileRelationFilter? consultantProfile,
          final StringFilter? consultantProfileId,
          final ConsulteeProfileRelationFilter? consulteeProfile,
          final StringFilter? consulteeProfileId,
          final DateTimeFilter? createdAt,
          final DateTimeFilter? updatedAt,
          final List<ConsultantReviewWhereInput>? AND,
          final List<ConsultantReviewWhereInput>? OR,
          final ConsultantReviewWhereInput? NOT}) =
      _$ConsultantReviewWhereInputImpl;

  factory _ConsultantReviewWhereInput.fromJson(Map<String, dynamic> json) =
      _$ConsultantReviewWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  IntFilter? get rating;
  @override
  StringFilter? get reviewDescription;

  /// Filter by consultantProfile relation
  @override
  ConsultantProfileRelationFilter? get consultantProfile;
  @override
  StringFilter? get consultantProfileId;

  /// Filter by consulteeProfile relation
  @override
  ConsulteeProfileRelationFilter? get consulteeProfile;
  @override
  StringFilter? get consulteeProfileId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<ConsultantReviewWhereInput>? get AND;
  @override
  List<ConsultantReviewWhereInput>? get OR;
  @override
  ConsultantReviewWhereInput? get NOT;

  /// Create a copy of ConsultantReviewWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantReviewWhereInputImplCopyWith<_$ConsultantReviewWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantReviewListRelationFilter _$ConsultantReviewListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ConsultantReviewListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultantReviewListRelationFilter {
  /// At least one related record matches
  ConsultantReviewWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ConsultantReviewWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ConsultantReviewWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ConsultantReviewListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantReviewListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantReviewListRelationFilterCopyWith<
          ConsultantReviewListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantReviewListRelationFilterCopyWith<$Res> {
  factory $ConsultantReviewListRelationFilterCopyWith(
          ConsultantReviewListRelationFilter value,
          $Res Function(ConsultantReviewListRelationFilter) then) =
      _$ConsultantReviewListRelationFilterCopyWithImpl<$Res,
          ConsultantReviewListRelationFilter>;
  @useResult
  $Res call(
      {ConsultantReviewWhereInput? some,
      ConsultantReviewWhereInput? every,
      ConsultantReviewWhereInput? none});

  $ConsultantReviewWhereInputCopyWith<$Res>? get some;
  $ConsultantReviewWhereInputCopyWith<$Res>? get every;
  $ConsultantReviewWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ConsultantReviewListRelationFilterCopyWithImpl<$Res,
        $Val extends ConsultantReviewListRelationFilter>
    implements $ConsultantReviewListRelationFilterCopyWith<$Res> {
  _$ConsultantReviewListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantReviewListRelationFilter
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
              as ConsultantReviewWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsultantReviewWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsultantReviewWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultantReviewListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantReviewWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ConsultantReviewWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ConsultantReviewListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantReviewWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ConsultantReviewWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ConsultantReviewListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantReviewWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ConsultantReviewWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantReviewListRelationFilterImplCopyWith<$Res>
    implements $ConsultantReviewListRelationFilterCopyWith<$Res> {
  factory _$$ConsultantReviewListRelationFilterImplCopyWith(
          _$ConsultantReviewListRelationFilterImpl value,
          $Res Function(_$ConsultantReviewListRelationFilterImpl) then) =
      __$$ConsultantReviewListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConsultantReviewWhereInput? some,
      ConsultantReviewWhereInput? every,
      ConsultantReviewWhereInput? none});

  @override
  $ConsultantReviewWhereInputCopyWith<$Res>? get some;
  @override
  $ConsultantReviewWhereInputCopyWith<$Res>? get every;
  @override
  $ConsultantReviewWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ConsultantReviewListRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsultantReviewListRelationFilterCopyWithImpl<$Res,
        _$ConsultantReviewListRelationFilterImpl>
    implements _$$ConsultantReviewListRelationFilterImplCopyWith<$Res> {
  __$$ConsultantReviewListRelationFilterImplCopyWithImpl(
      _$ConsultantReviewListRelationFilterImpl _value,
      $Res Function(_$ConsultantReviewListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantReviewListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ConsultantReviewListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ConsultantReviewWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsultantReviewWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsultantReviewWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantReviewListRelationFilterImpl
    implements _ConsultantReviewListRelationFilter {
  const _$ConsultantReviewListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ConsultantReviewListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantReviewListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ConsultantReviewWhereInput? some;

  /// All related records match
  @override
  final ConsultantReviewWhereInput? every;

  /// No related records match
  @override
  final ConsultantReviewWhereInput? none;

  @override
  String toString() {
    return 'ConsultantReviewListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantReviewListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ConsultantReviewListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantReviewListRelationFilterImplCopyWith<
          _$ConsultantReviewListRelationFilterImpl>
      get copyWith => __$$ConsultantReviewListRelationFilterImplCopyWithImpl<
          _$ConsultantReviewListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantReviewListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultantReviewListRelationFilter
    implements ConsultantReviewListRelationFilter {
  const factory _ConsultantReviewListRelationFilter(
          {final ConsultantReviewWhereInput? some,
          final ConsultantReviewWhereInput? every,
          final ConsultantReviewWhereInput? none}) =
      _$ConsultantReviewListRelationFilterImpl;

  factory _ConsultantReviewListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ConsultantReviewListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ConsultantReviewWhereInput? get some;

  /// All related records match
  @override
  ConsultantReviewWhereInput? get every;

  /// No related records match
  @override
  ConsultantReviewWhereInput? get none;

  /// Create a copy of ConsultantReviewListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantReviewListRelationFilterImplCopyWith<
          _$ConsultantReviewListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantReviewRelationFilter _$ConsultantReviewRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ConsultantReviewRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultantReviewRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ConsultantReviewWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ConsultantReviewWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ConsultantReviewRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantReviewRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantReviewRelationFilterCopyWith<ConsultantReviewRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantReviewRelationFilterCopyWith<$Res> {
  factory $ConsultantReviewRelationFilterCopyWith(
          ConsultantReviewRelationFilter value,
          $Res Function(ConsultantReviewRelationFilter) then) =
      _$ConsultantReviewRelationFilterCopyWithImpl<$Res,
          ConsultantReviewRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsultantReviewWhereInput? is_,
      ConsultantReviewWhereInput? isNot});

  $ConsultantReviewWhereInputCopyWith<$Res>? get is_;
  $ConsultantReviewWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ConsultantReviewRelationFilterCopyWithImpl<$Res,
        $Val extends ConsultantReviewRelationFilter>
    implements $ConsultantReviewRelationFilterCopyWith<$Res> {
  _$ConsultantReviewRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantReviewRelationFilter
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
              as ConsultantReviewWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsultantReviewWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultantReviewRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantReviewWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ConsultantReviewWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ConsultantReviewRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantReviewWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ConsultantReviewWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantReviewRelationFilterImplCopyWith<$Res>
    implements $ConsultantReviewRelationFilterCopyWith<$Res> {
  factory _$$ConsultantReviewRelationFilterImplCopyWith(
          _$ConsultantReviewRelationFilterImpl value,
          $Res Function(_$ConsultantReviewRelationFilterImpl) then) =
      __$$ConsultantReviewRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsultantReviewWhereInput? is_,
      ConsultantReviewWhereInput? isNot});

  @override
  $ConsultantReviewWhereInputCopyWith<$Res>? get is_;
  @override
  $ConsultantReviewWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ConsultantReviewRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsultantReviewRelationFilterCopyWithImpl<$Res,
        _$ConsultantReviewRelationFilterImpl>
    implements _$$ConsultantReviewRelationFilterImplCopyWith<$Res> {
  __$$ConsultantReviewRelationFilterImplCopyWithImpl(
      _$ConsultantReviewRelationFilterImpl _value,
      $Res Function(_$ConsultantReviewRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantReviewRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ConsultantReviewRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ConsultantReviewWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsultantReviewWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantReviewRelationFilterImpl
    implements _ConsultantReviewRelationFilter {
  const _$ConsultantReviewRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ConsultantReviewRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantReviewRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ConsultantReviewWhereInput? is_;

  /// Related record does not match
  @override
  final ConsultantReviewWhereInput? isNot;

  @override
  String toString() {
    return 'ConsultantReviewRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantReviewRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ConsultantReviewRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantReviewRelationFilterImplCopyWith<
          _$ConsultantReviewRelationFilterImpl>
      get copyWith => __$$ConsultantReviewRelationFilterImplCopyWithImpl<
          _$ConsultantReviewRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantReviewRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultantReviewRelationFilter
    implements ConsultantReviewRelationFilter {
  const factory _ConsultantReviewRelationFilter(
          {@JsonKey(name: 'is') final ConsultantReviewWhereInput? is_,
          final ConsultantReviewWhereInput? isNot}) =
      _$ConsultantReviewRelationFilterImpl;

  factory _ConsultantReviewRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ConsultantReviewRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ConsultantReviewWhereInput? get is_;

  /// Related record does not match
  @override
  ConsultantReviewWhereInput? get isNot;

  /// Create a copy of ConsultantReviewRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantReviewRelationFilterImplCopyWith<
          _$ConsultantReviewRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantReviewOrderByInput _$ConsultantReviewOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultantReviewOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultantReviewOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get rating => throw _privateConstructorUsedError;
  SortOrder? get reviewDescription => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get consulteeProfileId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConsultantReviewOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantReviewOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantReviewOrderByInputCopyWith<ConsultantReviewOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantReviewOrderByInputCopyWith<$Res> {
  factory $ConsultantReviewOrderByInputCopyWith(
          ConsultantReviewOrderByInput value,
          $Res Function(ConsultantReviewOrderByInput) then) =
      _$ConsultantReviewOrderByInputCopyWithImpl<$Res,
          ConsultantReviewOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? rating,
      SortOrder? reviewDescription,
      SortOrder? consultantProfileId,
      SortOrder? consulteeProfileId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$ConsultantReviewOrderByInputCopyWithImpl<$Res,
        $Val extends ConsultantReviewOrderByInput>
    implements $ConsultantReviewOrderByInputCopyWith<$Res> {
  _$ConsultantReviewOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantReviewOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rating = freezed,
    Object? reviewDescription = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewDescription: freezed == reviewDescription
          ? _value.reviewDescription
          : reviewDescription // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ConsultantReviewOrderByInputImplCopyWith<$Res>
    implements $ConsultantReviewOrderByInputCopyWith<$Res> {
  factory _$$ConsultantReviewOrderByInputImplCopyWith(
          _$ConsultantReviewOrderByInputImpl value,
          $Res Function(_$ConsultantReviewOrderByInputImpl) then) =
      __$$ConsultantReviewOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? rating,
      SortOrder? reviewDescription,
      SortOrder? consultantProfileId,
      SortOrder? consulteeProfileId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$ConsultantReviewOrderByInputImplCopyWithImpl<$Res>
    extends _$ConsultantReviewOrderByInputCopyWithImpl<$Res,
        _$ConsultantReviewOrderByInputImpl>
    implements _$$ConsultantReviewOrderByInputImplCopyWith<$Res> {
  __$$ConsultantReviewOrderByInputImplCopyWithImpl(
      _$ConsultantReviewOrderByInputImpl _value,
      $Res Function(_$ConsultantReviewOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantReviewOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rating = freezed,
    Object? reviewDescription = freezed,
    Object? consultantProfileId = freezed,
    Object? consulteeProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ConsultantReviewOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewDescription: freezed == reviewDescription
          ? _value.reviewDescription
          : reviewDescription // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consulteeProfileId: freezed == consulteeProfileId
          ? _value.consulteeProfileId
          : consulteeProfileId // ignore: cast_nullable_to_non_nullable
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
class _$ConsultantReviewOrderByInputImpl
    implements _ConsultantReviewOrderByInput {
  const _$ConsultantReviewOrderByInputImpl(
      {this.id,
      this.rating,
      this.reviewDescription,
      this.consultantProfileId,
      this.consulteeProfileId,
      this.createdAt,
      this.updatedAt});

  factory _$ConsultantReviewOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantReviewOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? rating;
  @override
  final SortOrder? reviewDescription;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? consulteeProfileId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'ConsultantReviewOrderByInput(id: $id, rating: $rating, reviewDescription: $reviewDescription, consultantProfileId: $consultantProfileId, consulteeProfileId: $consulteeProfileId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantReviewOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewDescription, reviewDescription) ||
                other.reviewDescription == reviewDescription) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consulteeProfileId, consulteeProfileId) ||
                other.consulteeProfileId == consulteeProfileId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, rating, reviewDescription,
      consultantProfileId, consulteeProfileId, createdAt, updatedAt);

  /// Create a copy of ConsultantReviewOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantReviewOrderByInputImplCopyWith<
          _$ConsultantReviewOrderByInputImpl>
      get copyWith => __$$ConsultantReviewOrderByInputImplCopyWithImpl<
          _$ConsultantReviewOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantReviewOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultantReviewOrderByInput
    implements ConsultantReviewOrderByInput {
  const factory _ConsultantReviewOrderByInput(
      {final SortOrder? id,
      final SortOrder? rating,
      final SortOrder? reviewDescription,
      final SortOrder? consultantProfileId,
      final SortOrder? consulteeProfileId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$ConsultantReviewOrderByInputImpl;

  factory _ConsultantReviewOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ConsultantReviewOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get rating;
  @override
  SortOrder? get reviewDescription;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get consulteeProfileId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of ConsultantReviewOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantReviewOrderByInputImplCopyWith<
          _$ConsultantReviewOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
