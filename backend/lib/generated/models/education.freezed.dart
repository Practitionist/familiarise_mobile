// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Education _$EducationFromJson(Map<String, dynamic> json) {
  return _Education.fromJson(json);
}

/// @nodoc
mixin _$Education {
  String get id => throw _privateConstructorUsedError;
  String get institution => throw _privateConstructorUsedError;
  String? get institutionDomain => throw _privateConstructorUsedError;
  String get degree => throw _privateConstructorUsedError;
  String? get fieldOfStudy => throw _privateConstructorUsedError;
  int? get startYear => throw _privateConstructorUsedError;
  int? get endYear => throw _privateConstructorUsedError;
  String? get grade => throw _privateConstructorUsedError;
  String? get activities => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Education to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EducationCopyWith<Education> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationCopyWith<$Res> {
  factory $EducationCopyWith(Education value, $Res Function(Education) then) =
      _$EducationCopyWithImpl<$Res, Education>;
  @useResult
  $Res call(
      {String id,
      String institution,
      String? institutionDomain,
      String degree,
      String? fieldOfStudy,
      int? startYear,
      int? endYear,
      String? grade,
      String? activities,
      String? description,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$EducationCopyWithImpl<$Res, $Val extends Education>
    implements $EducationCopyWith<$Res> {
  _$EducationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? institution = null,
    Object? institutionDomain = freezed,
    Object? degree = null,
    Object? fieldOfStudy = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? grade = freezed,
    Object? activities = freezed,
    Object? description = freezed,
    Object? user = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      institutionDomain: freezed == institutionDomain
          ? _value.institutionDomain
          : institutionDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      degree: null == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String,
      fieldOfStudy: freezed == fieldOfStudy
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String?,
      startYear: freezed == startYear
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as int?,
      endYear: freezed == endYear
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as int?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of Education
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
abstract class _$$EducationImplCopyWith<$Res>
    implements $EducationCopyWith<$Res> {
  factory _$$EducationImplCopyWith(
          _$EducationImpl value, $Res Function(_$EducationImpl) then) =
      __$$EducationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String institution,
      String? institutionDomain,
      String degree,
      String? fieldOfStudy,
      int? startYear,
      int? endYear,
      String? grade,
      String? activities,
      String? description,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$EducationImplCopyWithImpl<$Res>
    extends _$EducationCopyWithImpl<$Res, _$EducationImpl>
    implements _$$EducationImplCopyWith<$Res> {
  __$$EducationImplCopyWithImpl(
      _$EducationImpl _value, $Res Function(_$EducationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? institution = null,
    Object? institutionDomain = freezed,
    Object? degree = null,
    Object? fieldOfStudy = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? grade = freezed,
    Object? activities = freezed,
    Object? description = freezed,
    Object? user = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$EducationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      institutionDomain: freezed == institutionDomain
          ? _value.institutionDomain
          : institutionDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      degree: null == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String,
      fieldOfStudy: freezed == fieldOfStudy
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String?,
      startYear: freezed == startYear
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as int?,
      endYear: freezed == endYear
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as int?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
class _$EducationImpl implements _Education {
  const _$EducationImpl(
      {required this.id,
      required this.institution,
      this.institutionDomain,
      required this.degree,
      this.fieldOfStudy,
      this.startYear,
      this.endYear,
      this.grade,
      this.activities,
      this.description,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required this.userId,
      required this.createdAt,
      required this.updatedAt});

  factory _$EducationImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationImplFromJson(json);

  @override
  final String id;
  @override
  final String institution;
  @override
  final String? institutionDomain;
  @override
  final String degree;
  @override
  final String? fieldOfStudy;
  @override
  final int? startYear;
  @override
  final int? endYear;
  @override
  final String? grade;
  @override
  final String? activities;
  @override
  final String? description;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  @override
  final String userId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Education(id: $id, institution: $institution, institutionDomain: $institutionDomain, degree: $degree, fieldOfStudy: $fieldOfStudy, startYear: $startYear, endYear: $endYear, grade: $grade, activities: $activities, description: $description, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.institutionDomain, institutionDomain) ||
                other.institutionDomain == institutionDomain) &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.fieldOfStudy, fieldOfStudy) ||
                other.fieldOfStudy == fieldOfStudy) &&
            (identical(other.startYear, startYear) ||
                other.startYear == startYear) &&
            (identical(other.endYear, endYear) || other.endYear == endYear) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.activities, activities) ||
                other.activities == activities) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
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
      institution,
      institutionDomain,
      degree,
      fieldOfStudy,
      startYear,
      endYear,
      grade,
      activities,
      description,
      user,
      userId,
      createdAt,
      updatedAt);

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationImplCopyWith<_$EducationImpl> get copyWith =>
      __$$EducationImplCopyWithImpl<_$EducationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationImplToJson(
      this,
    );
  }
}

abstract class _Education implements Education {
  const factory _Education(
      {required final String id,
      required final String institution,
      final String? institutionDomain,
      required final String degree,
      final String? fieldOfStudy,
      final int? startYear,
      final int? endYear,
      final String? grade,
      final String? activities,
      final String? description,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final String userId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$EducationImpl;

  factory _Education.fromJson(Map<String, dynamic> json) =
      _$EducationImpl.fromJson;

  @override
  String get id;
  @override
  String get institution;
  @override
  String? get institutionDomain;
  @override
  String get degree;
  @override
  String? get fieldOfStudy;
  @override
  int? get startYear;
  @override
  int? get endYear;
  @override
  String? get grade;
  @override
  String? get activities;
  @override
  String? get description;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  String get userId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EducationImplCopyWith<_$EducationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateEducationInput _$CreateEducationInputFromJson(Map<String, dynamic> json) {
  return _CreateEducationInput.fromJson(json);
}

/// @nodoc
mixin _$CreateEducationInput {
  String get institution => throw _privateConstructorUsedError;
  String? get institutionDomain => throw _privateConstructorUsedError;
  String get degree => throw _privateConstructorUsedError;
  String? get fieldOfStudy => throw _privateConstructorUsedError;
  int? get startYear => throw _privateConstructorUsedError;
  int? get endYear => throw _privateConstructorUsedError;
  String? get grade => throw _privateConstructorUsedError;
  String? get activities => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this CreateEducationInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateEducationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateEducationInputCopyWith<CreateEducationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEducationInputCopyWith<$Res> {
  factory $CreateEducationInputCopyWith(CreateEducationInput value,
          $Res Function(CreateEducationInput) then) =
      _$CreateEducationInputCopyWithImpl<$Res, CreateEducationInput>;
  @useResult
  $Res call(
      {String institution,
      String? institutionDomain,
      String degree,
      String? fieldOfStudy,
      int? startYear,
      int? endYear,
      String? grade,
      String? activities,
      String? description,
      String userId});
}

/// @nodoc
class _$CreateEducationInputCopyWithImpl<$Res,
        $Val extends CreateEducationInput>
    implements $CreateEducationInputCopyWith<$Res> {
  _$CreateEducationInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateEducationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institution = null,
    Object? institutionDomain = freezed,
    Object? degree = null,
    Object? fieldOfStudy = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? grade = freezed,
    Object? activities = freezed,
    Object? description = freezed,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      institutionDomain: freezed == institutionDomain
          ? _value.institutionDomain
          : institutionDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      degree: null == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String,
      fieldOfStudy: freezed == fieldOfStudy
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String?,
      startYear: freezed == startYear
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as int?,
      endYear: freezed == endYear
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as int?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateEducationInputImplCopyWith<$Res>
    implements $CreateEducationInputCopyWith<$Res> {
  factory _$$CreateEducationInputImplCopyWith(_$CreateEducationInputImpl value,
          $Res Function(_$CreateEducationInputImpl) then) =
      __$$CreateEducationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String institution,
      String? institutionDomain,
      String degree,
      String? fieldOfStudy,
      int? startYear,
      int? endYear,
      String? grade,
      String? activities,
      String? description,
      String userId});
}

/// @nodoc
class __$$CreateEducationInputImplCopyWithImpl<$Res>
    extends _$CreateEducationInputCopyWithImpl<$Res, _$CreateEducationInputImpl>
    implements _$$CreateEducationInputImplCopyWith<$Res> {
  __$$CreateEducationInputImplCopyWithImpl(_$CreateEducationInputImpl _value,
      $Res Function(_$CreateEducationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateEducationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institution = null,
    Object? institutionDomain = freezed,
    Object? degree = null,
    Object? fieldOfStudy = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? grade = freezed,
    Object? activities = freezed,
    Object? description = freezed,
    Object? userId = null,
  }) {
    return _then(_$CreateEducationInputImpl(
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      institutionDomain: freezed == institutionDomain
          ? _value.institutionDomain
          : institutionDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      degree: null == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String,
      fieldOfStudy: freezed == fieldOfStudy
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String?,
      startYear: freezed == startYear
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as int?,
      endYear: freezed == endYear
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as int?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateEducationInputImpl implements _CreateEducationInput {
  const _$CreateEducationInputImpl(
      {required this.institution,
      this.institutionDomain,
      required this.degree,
      this.fieldOfStudy,
      this.startYear,
      this.endYear,
      this.grade,
      this.activities,
      this.description,
      required this.userId});

  factory _$CreateEducationInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateEducationInputImplFromJson(json);

  @override
  final String institution;
  @override
  final String? institutionDomain;
  @override
  final String degree;
  @override
  final String? fieldOfStudy;
  @override
  final int? startYear;
  @override
  final int? endYear;
  @override
  final String? grade;
  @override
  final String? activities;
  @override
  final String? description;
  @override
  final String userId;

  @override
  String toString() {
    return 'CreateEducationInput(institution: $institution, institutionDomain: $institutionDomain, degree: $degree, fieldOfStudy: $fieldOfStudy, startYear: $startYear, endYear: $endYear, grade: $grade, activities: $activities, description: $description, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateEducationInputImpl &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.institutionDomain, institutionDomain) ||
                other.institutionDomain == institutionDomain) &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.fieldOfStudy, fieldOfStudy) ||
                other.fieldOfStudy == fieldOfStudy) &&
            (identical(other.startYear, startYear) ||
                other.startYear == startYear) &&
            (identical(other.endYear, endYear) || other.endYear == endYear) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.activities, activities) ||
                other.activities == activities) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      institution,
      institutionDomain,
      degree,
      fieldOfStudy,
      startYear,
      endYear,
      grade,
      activities,
      description,
      userId);

  /// Create a copy of CreateEducationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateEducationInputImplCopyWith<_$CreateEducationInputImpl>
      get copyWith =>
          __$$CreateEducationInputImplCopyWithImpl<_$CreateEducationInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateEducationInputImplToJson(
      this,
    );
  }
}

abstract class _CreateEducationInput implements CreateEducationInput {
  const factory _CreateEducationInput(
      {required final String institution,
      final String? institutionDomain,
      required final String degree,
      final String? fieldOfStudy,
      final int? startYear,
      final int? endYear,
      final String? grade,
      final String? activities,
      final String? description,
      required final String userId}) = _$CreateEducationInputImpl;

  factory _CreateEducationInput.fromJson(Map<String, dynamic> json) =
      _$CreateEducationInputImpl.fromJson;

  @override
  String get institution;
  @override
  String? get institutionDomain;
  @override
  String get degree;
  @override
  String? get fieldOfStudy;
  @override
  int? get startYear;
  @override
  int? get endYear;
  @override
  String? get grade;
  @override
  String? get activities;
  @override
  String? get description;
  @override
  String get userId;

  /// Create a copy of CreateEducationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateEducationInputImplCopyWith<_$CreateEducationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateEducationInput _$UpdateEducationInputFromJson(Map<String, dynamic> json) {
  return _UpdateEducationInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateEducationInput {
  String? get institution => throw _privateConstructorUsedError;
  String? get institutionDomain => throw _privateConstructorUsedError;
  String? get degree => throw _privateConstructorUsedError;
  String? get fieldOfStudy => throw _privateConstructorUsedError;
  int? get startYear => throw _privateConstructorUsedError;
  int? get endYear => throw _privateConstructorUsedError;
  String? get grade => throw _privateConstructorUsedError;
  String? get activities => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this UpdateEducationInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateEducationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateEducationInputCopyWith<UpdateEducationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateEducationInputCopyWith<$Res> {
  factory $UpdateEducationInputCopyWith(UpdateEducationInput value,
          $Res Function(UpdateEducationInput) then) =
      _$UpdateEducationInputCopyWithImpl<$Res, UpdateEducationInput>;
  @useResult
  $Res call(
      {String? institution,
      String? institutionDomain,
      String? degree,
      String? fieldOfStudy,
      int? startYear,
      int? endYear,
      String? grade,
      String? activities,
      String? description,
      String? userId});
}

/// @nodoc
class _$UpdateEducationInputCopyWithImpl<$Res,
        $Val extends UpdateEducationInput>
    implements $UpdateEducationInputCopyWith<$Res> {
  _$UpdateEducationInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateEducationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institution = freezed,
    Object? institutionDomain = freezed,
    Object? degree = freezed,
    Object? fieldOfStudy = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? grade = freezed,
    Object? activities = freezed,
    Object? description = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionDomain: freezed == institutionDomain
          ? _value.institutionDomain
          : institutionDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      degree: freezed == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String?,
      fieldOfStudy: freezed == fieldOfStudy
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String?,
      startYear: freezed == startYear
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as int?,
      endYear: freezed == endYear
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as int?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateEducationInputImplCopyWith<$Res>
    implements $UpdateEducationInputCopyWith<$Res> {
  factory _$$UpdateEducationInputImplCopyWith(_$UpdateEducationInputImpl value,
          $Res Function(_$UpdateEducationInputImpl) then) =
      __$$UpdateEducationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? institution,
      String? institutionDomain,
      String? degree,
      String? fieldOfStudy,
      int? startYear,
      int? endYear,
      String? grade,
      String? activities,
      String? description,
      String? userId});
}

/// @nodoc
class __$$UpdateEducationInputImplCopyWithImpl<$Res>
    extends _$UpdateEducationInputCopyWithImpl<$Res, _$UpdateEducationInputImpl>
    implements _$$UpdateEducationInputImplCopyWith<$Res> {
  __$$UpdateEducationInputImplCopyWithImpl(_$UpdateEducationInputImpl _value,
      $Res Function(_$UpdateEducationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEducationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institution = freezed,
    Object? institutionDomain = freezed,
    Object? degree = freezed,
    Object? fieldOfStudy = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? grade = freezed,
    Object? activities = freezed,
    Object? description = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$UpdateEducationInputImpl(
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String?,
      institutionDomain: freezed == institutionDomain
          ? _value.institutionDomain
          : institutionDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      degree: freezed == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as String?,
      fieldOfStudy: freezed == fieldOfStudy
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String?,
      startYear: freezed == startYear
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as int?,
      endYear: freezed == endYear
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as int?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$UpdateEducationInputImpl implements _UpdateEducationInput {
  const _$UpdateEducationInputImpl(
      {this.institution,
      this.institutionDomain,
      this.degree,
      this.fieldOfStudy,
      this.startYear,
      this.endYear,
      this.grade,
      this.activities,
      this.description,
      this.userId});

  factory _$UpdateEducationInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateEducationInputImplFromJson(json);

  @override
  final String? institution;
  @override
  final String? institutionDomain;
  @override
  final String? degree;
  @override
  final String? fieldOfStudy;
  @override
  final int? startYear;
  @override
  final int? endYear;
  @override
  final String? grade;
  @override
  final String? activities;
  @override
  final String? description;
  @override
  final String? userId;

  @override
  String toString() {
    return 'UpdateEducationInput(institution: $institution, institutionDomain: $institutionDomain, degree: $degree, fieldOfStudy: $fieldOfStudy, startYear: $startYear, endYear: $endYear, grade: $grade, activities: $activities, description: $description, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEducationInputImpl &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.institutionDomain, institutionDomain) ||
                other.institutionDomain == institutionDomain) &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.fieldOfStudy, fieldOfStudy) ||
                other.fieldOfStudy == fieldOfStudy) &&
            (identical(other.startYear, startYear) ||
                other.startYear == startYear) &&
            (identical(other.endYear, endYear) || other.endYear == endYear) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.activities, activities) ||
                other.activities == activities) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      institution,
      institutionDomain,
      degree,
      fieldOfStudy,
      startYear,
      endYear,
      grade,
      activities,
      description,
      userId);

  /// Create a copy of UpdateEducationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEducationInputImplCopyWith<_$UpdateEducationInputImpl>
      get copyWith =>
          __$$UpdateEducationInputImplCopyWithImpl<_$UpdateEducationInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateEducationInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateEducationInput implements UpdateEducationInput {
  const factory _UpdateEducationInput(
      {final String? institution,
      final String? institutionDomain,
      final String? degree,
      final String? fieldOfStudy,
      final int? startYear,
      final int? endYear,
      final String? grade,
      final String? activities,
      final String? description,
      final String? userId}) = _$UpdateEducationInputImpl;

  factory _UpdateEducationInput.fromJson(Map<String, dynamic> json) =
      _$UpdateEducationInputImpl.fromJson;

  @override
  String? get institution;
  @override
  String? get institutionDomain;
  @override
  String? get degree;
  @override
  String? get fieldOfStudy;
  @override
  int? get startYear;
  @override
  int? get endYear;
  @override
  String? get grade;
  @override
  String? get activities;
  @override
  String? get description;
  @override
  String? get userId;

  /// Create a copy of UpdateEducationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEducationInputImplCopyWith<_$UpdateEducationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EducationWhereUniqueInput _$EducationWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _EducationWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$EducationWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this EducationWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EducationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EducationWhereUniqueInputCopyWith<EducationWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationWhereUniqueInputCopyWith<$Res> {
  factory $EducationWhereUniqueInputCopyWith(EducationWhereUniqueInput value,
          $Res Function(EducationWhereUniqueInput) then) =
      _$EducationWhereUniqueInputCopyWithImpl<$Res, EducationWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$EducationWhereUniqueInputCopyWithImpl<$Res,
        $Val extends EducationWhereUniqueInput>
    implements $EducationWhereUniqueInputCopyWith<$Res> {
  _$EducationWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EducationWhereUniqueInput
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
abstract class _$$EducationWhereUniqueInputImplCopyWith<$Res>
    implements $EducationWhereUniqueInputCopyWith<$Res> {
  factory _$$EducationWhereUniqueInputImplCopyWith(
          _$EducationWhereUniqueInputImpl value,
          $Res Function(_$EducationWhereUniqueInputImpl) then) =
      __$$EducationWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$EducationWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$EducationWhereUniqueInputCopyWithImpl<$Res,
        _$EducationWhereUniqueInputImpl>
    implements _$$EducationWhereUniqueInputImplCopyWith<$Res> {
  __$$EducationWhereUniqueInputImplCopyWithImpl(
      _$EducationWhereUniqueInputImpl _value,
      $Res Function(_$EducationWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of EducationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$EducationWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EducationWhereUniqueInputImpl implements _EducationWhereUniqueInput {
  const _$EducationWhereUniqueInputImpl({this.id});

  factory _$EducationWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'EducationWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of EducationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationWhereUniqueInputImplCopyWith<_$EducationWhereUniqueInputImpl>
      get copyWith => __$$EducationWhereUniqueInputImplCopyWithImpl<
          _$EducationWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _EducationWhereUniqueInput implements EducationWhereUniqueInput {
  const factory _EducationWhereUniqueInput({final String? id}) =
      _$EducationWhereUniqueInputImpl;

  factory _EducationWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$EducationWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of EducationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EducationWhereUniqueInputImplCopyWith<_$EducationWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EducationWhereInput _$EducationWhereInputFromJson(Map<String, dynamic> json) {
  return _EducationWhereInput.fromJson(json);
}

/// @nodoc
mixin _$EducationWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get institution => throw _privateConstructorUsedError;
  StringFilter? get institutionDomain => throw _privateConstructorUsedError;
  StringFilter? get degree => throw _privateConstructorUsedError;
  StringFilter? get fieldOfStudy => throw _privateConstructorUsedError;
  IntFilter? get startYear => throw _privateConstructorUsedError;
  IntFilter? get endYear => throw _privateConstructorUsedError;
  StringFilter? get grade => throw _privateConstructorUsedError;
  StringFilter? get activities => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<EducationWhereInput>? get AND => throw _privateConstructorUsedError;
  List<EducationWhereInput>? get OR => throw _privateConstructorUsedError;
  EducationWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this EducationWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EducationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EducationWhereInputCopyWith<EducationWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationWhereInputCopyWith<$Res> {
  factory $EducationWhereInputCopyWith(
          EducationWhereInput value, $Res Function(EducationWhereInput) then) =
      _$EducationWhereInputCopyWithImpl<$Res, EducationWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? institution,
      StringFilter? institutionDomain,
      StringFilter? degree,
      StringFilter? fieldOfStudy,
      IntFilter? startYear,
      IntFilter? endYear,
      StringFilter? grade,
      StringFilter? activities,
      StringFilter? description,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<EducationWhereInput>? AND,
      List<EducationWhereInput>? OR,
      EducationWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get institution;
  $StringFilterCopyWith<$Res>? get institutionDomain;
  $StringFilterCopyWith<$Res>? get degree;
  $StringFilterCopyWith<$Res>? get fieldOfStudy;
  $IntFilterCopyWith<$Res>? get startYear;
  $IntFilterCopyWith<$Res>? get endYear;
  $StringFilterCopyWith<$Res>? get grade;
  $StringFilterCopyWith<$Res>? get activities;
  $StringFilterCopyWith<$Res>? get description;
  $UserRelationFilterCopyWith<$Res>? get user;
  $StringFilterCopyWith<$Res>? get userId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $EducationWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$EducationWhereInputCopyWithImpl<$Res, $Val extends EducationWhereInput>
    implements $EducationWhereInputCopyWith<$Res> {
  _$EducationWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EducationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? institution = freezed,
    Object? institutionDomain = freezed,
    Object? degree = freezed,
    Object? fieldOfStudy = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? grade = freezed,
    Object? activities = freezed,
    Object? description = freezed,
    Object? user = freezed,
    Object? userId = freezed,
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
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      institutionDomain: freezed == institutionDomain
          ? _value.institutionDomain
          : institutionDomain // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      degree: freezed == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      fieldOfStudy: freezed == fieldOfStudy
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      startYear: freezed == startYear
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      endYear: freezed == endYear
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
              as List<EducationWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<EducationWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as EducationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of EducationWhereInput
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

  /// Create a copy of EducationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get institution {
    if (_value.institution == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.institution!, (value) {
      return _then(_value.copyWith(institution: value) as $Val);
    });
  }

  /// Create a copy of EducationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get institutionDomain {
    if (_value.institutionDomain == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.institutionDomain!, (value) {
      return _then(_value.copyWith(institutionDomain: value) as $Val);
    });
  }

  /// Create a copy of EducationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get degree {
    if (_value.degree == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.degree!, (value) {
      return _then(_value.copyWith(degree: value) as $Val);
    });
  }

  /// Create a copy of EducationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get fieldOfStudy {
    if (_value.fieldOfStudy == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.fieldOfStudy!, (value) {
      return _then(_value.copyWith(fieldOfStudy: value) as $Val);
    });
  }

  /// Create a copy of EducationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get startYear {
    if (_value.startYear == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.startYear!, (value) {
      return _then(_value.copyWith(startYear: value) as $Val);
    });
  }

  /// Create a copy of EducationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get endYear {
    if (_value.endYear == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.endYear!, (value) {
      return _then(_value.copyWith(endYear: value) as $Val);
    });
  }

  /// Create a copy of EducationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get grade {
    if (_value.grade == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.grade!, (value) {
      return _then(_value.copyWith(grade: value) as $Val);
    });
  }

  /// Create a copy of EducationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get activities {
    if (_value.activities == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.activities!, (value) {
      return _then(_value.copyWith(activities: value) as $Val);
    });
  }

  /// Create a copy of EducationWhereInput
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

  /// Create a copy of EducationWhereInput
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

  /// Create a copy of EducationWhereInput
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

  /// Create a copy of EducationWhereInput
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

  /// Create a copy of EducationWhereInput
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

  /// Create a copy of EducationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EducationWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $EducationWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EducationWhereInputImplCopyWith<$Res>
    implements $EducationWhereInputCopyWith<$Res> {
  factory _$$EducationWhereInputImplCopyWith(_$EducationWhereInputImpl value,
          $Res Function(_$EducationWhereInputImpl) then) =
      __$$EducationWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? institution,
      StringFilter? institutionDomain,
      StringFilter? degree,
      StringFilter? fieldOfStudy,
      IntFilter? startYear,
      IntFilter? endYear,
      StringFilter? grade,
      StringFilter? activities,
      StringFilter? description,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<EducationWhereInput>? AND,
      List<EducationWhereInput>? OR,
      EducationWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get institution;
  @override
  $StringFilterCopyWith<$Res>? get institutionDomain;
  @override
  $StringFilterCopyWith<$Res>? get degree;
  @override
  $StringFilterCopyWith<$Res>? get fieldOfStudy;
  @override
  $IntFilterCopyWith<$Res>? get startYear;
  @override
  $IntFilterCopyWith<$Res>? get endYear;
  @override
  $StringFilterCopyWith<$Res>? get grade;
  @override
  $StringFilterCopyWith<$Res>? get activities;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $EducationWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$EducationWhereInputImplCopyWithImpl<$Res>
    extends _$EducationWhereInputCopyWithImpl<$Res, _$EducationWhereInputImpl>
    implements _$$EducationWhereInputImplCopyWith<$Res> {
  __$$EducationWhereInputImplCopyWithImpl(_$EducationWhereInputImpl _value,
      $Res Function(_$EducationWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of EducationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? institution = freezed,
    Object? institutionDomain = freezed,
    Object? degree = freezed,
    Object? fieldOfStudy = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? grade = freezed,
    Object? activities = freezed,
    Object? description = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$EducationWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      institutionDomain: freezed == institutionDomain
          ? _value.institutionDomain
          : institutionDomain // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      degree: freezed == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      fieldOfStudy: freezed == fieldOfStudy
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      startYear: freezed == startYear
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      endYear: freezed == endYear
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
              as List<EducationWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<EducationWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as EducationWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$EducationWhereInputImpl implements _EducationWhereInput {
  const _$EducationWhereInputImpl(
      {this.id,
      this.institution,
      this.institutionDomain,
      this.degree,
      this.fieldOfStudy,
      this.startYear,
      this.endYear,
      this.grade,
      this.activities,
      this.description,
      this.user,
      this.userId,
      this.createdAt,
      this.updatedAt,
      final List<EducationWhereInput>? AND,
      final List<EducationWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$EducationWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? institution;
  @override
  final StringFilter? institutionDomain;
  @override
  final StringFilter? degree;
  @override
  final StringFilter? fieldOfStudy;
  @override
  final IntFilter? startYear;
  @override
  final IntFilter? endYear;
  @override
  final StringFilter? grade;
  @override
  final StringFilter? activities;
  @override
  final StringFilter? description;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final StringFilter? userId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<EducationWhereInput>? _AND;
  @override
  List<EducationWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EducationWhereInput>? _OR;
  @override
  List<EducationWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final EducationWhereInput? NOT;

  @override
  String toString() {
    return 'EducationWhereInput(id: $id, institution: $institution, institutionDomain: $institutionDomain, degree: $degree, fieldOfStudy: $fieldOfStudy, startYear: $startYear, endYear: $endYear, grade: $grade, activities: $activities, description: $description, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.institutionDomain, institutionDomain) ||
                other.institutionDomain == institutionDomain) &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.fieldOfStudy, fieldOfStudy) ||
                other.fieldOfStudy == fieldOfStudy) &&
            (identical(other.startYear, startYear) ||
                other.startYear == startYear) &&
            (identical(other.endYear, endYear) || other.endYear == endYear) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.activities, activities) ||
                other.activities == activities) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
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
      institution,
      institutionDomain,
      degree,
      fieldOfStudy,
      startYear,
      endYear,
      grade,
      activities,
      description,
      user,
      userId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of EducationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationWhereInputImplCopyWith<_$EducationWhereInputImpl> get copyWith =>
      __$$EducationWhereInputImplCopyWithImpl<_$EducationWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationWhereInputImplToJson(
      this,
    );
  }
}

abstract class _EducationWhereInput implements EducationWhereInput {
  const factory _EducationWhereInput(
      {final StringFilter? id,
      final StringFilter? institution,
      final StringFilter? institutionDomain,
      final StringFilter? degree,
      final StringFilter? fieldOfStudy,
      final IntFilter? startYear,
      final IntFilter? endYear,
      final StringFilter? grade,
      final StringFilter? activities,
      final StringFilter? description,
      final UserRelationFilter? user,
      final StringFilter? userId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<EducationWhereInput>? AND,
      final List<EducationWhereInput>? OR,
      final EducationWhereInput? NOT}) = _$EducationWhereInputImpl;

  factory _EducationWhereInput.fromJson(Map<String, dynamic> json) =
      _$EducationWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get institution;
  @override
  StringFilter? get institutionDomain;
  @override
  StringFilter? get degree;
  @override
  StringFilter? get fieldOfStudy;
  @override
  IntFilter? get startYear;
  @override
  IntFilter? get endYear;
  @override
  StringFilter? get grade;
  @override
  StringFilter? get activities;
  @override
  StringFilter? get description;

  /// Filter by user relation
  @override
  UserRelationFilter? get user;
  @override
  StringFilter? get userId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<EducationWhereInput>? get AND;
  @override
  List<EducationWhereInput>? get OR;
  @override
  EducationWhereInput? get NOT;

  /// Create a copy of EducationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EducationWhereInputImplCopyWith<_$EducationWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EducationListRelationFilter _$EducationListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _EducationListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$EducationListRelationFilter {
  /// At least one related record matches
  EducationWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  EducationWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  EducationWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this EducationListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EducationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EducationListRelationFilterCopyWith<EducationListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationListRelationFilterCopyWith<$Res> {
  factory $EducationListRelationFilterCopyWith(
          EducationListRelationFilter value,
          $Res Function(EducationListRelationFilter) then) =
      _$EducationListRelationFilterCopyWithImpl<$Res,
          EducationListRelationFilter>;
  @useResult
  $Res call(
      {EducationWhereInput? some,
      EducationWhereInput? every,
      EducationWhereInput? none});

  $EducationWhereInputCopyWith<$Res>? get some;
  $EducationWhereInputCopyWith<$Res>? get every;
  $EducationWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$EducationListRelationFilterCopyWithImpl<$Res,
        $Val extends EducationListRelationFilter>
    implements $EducationListRelationFilterCopyWith<$Res> {
  _$EducationListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EducationListRelationFilter
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
              as EducationWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as EducationWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as EducationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of EducationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EducationWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $EducationWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of EducationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EducationWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $EducationWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of EducationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EducationWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $EducationWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EducationListRelationFilterImplCopyWith<$Res>
    implements $EducationListRelationFilterCopyWith<$Res> {
  factory _$$EducationListRelationFilterImplCopyWith(
          _$EducationListRelationFilterImpl value,
          $Res Function(_$EducationListRelationFilterImpl) then) =
      __$$EducationListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EducationWhereInput? some,
      EducationWhereInput? every,
      EducationWhereInput? none});

  @override
  $EducationWhereInputCopyWith<$Res>? get some;
  @override
  $EducationWhereInputCopyWith<$Res>? get every;
  @override
  $EducationWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$EducationListRelationFilterImplCopyWithImpl<$Res>
    extends _$EducationListRelationFilterCopyWithImpl<$Res,
        _$EducationListRelationFilterImpl>
    implements _$$EducationListRelationFilterImplCopyWith<$Res> {
  __$$EducationListRelationFilterImplCopyWithImpl(
      _$EducationListRelationFilterImpl _value,
      $Res Function(_$EducationListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of EducationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$EducationListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as EducationWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as EducationWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as EducationWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EducationListRelationFilterImpl
    implements _EducationListRelationFilter {
  const _$EducationListRelationFilterImpl({this.some, this.every, this.none});

  factory _$EducationListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EducationListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final EducationWhereInput? some;

  /// All related records match
  @override
  final EducationWhereInput? every;

  /// No related records match
  @override
  final EducationWhereInput? none;

  @override
  String toString() {
    return 'EducationListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of EducationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationListRelationFilterImplCopyWith<_$EducationListRelationFilterImpl>
      get copyWith => __$$EducationListRelationFilterImplCopyWithImpl<
          _$EducationListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _EducationListRelationFilter
    implements EducationListRelationFilter {
  const factory _EducationListRelationFilter(
      {final EducationWhereInput? some,
      final EducationWhereInput? every,
      final EducationWhereInput? none}) = _$EducationListRelationFilterImpl;

  factory _EducationListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$EducationListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  EducationWhereInput? get some;

  /// All related records match
  @override
  EducationWhereInput? get every;

  /// No related records match
  @override
  EducationWhereInput? get none;

  /// Create a copy of EducationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EducationListRelationFilterImplCopyWith<_$EducationListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EducationRelationFilter _$EducationRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _EducationRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$EducationRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  EducationWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  EducationWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this EducationRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EducationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EducationRelationFilterCopyWith<EducationRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationRelationFilterCopyWith<$Res> {
  factory $EducationRelationFilterCopyWith(EducationRelationFilter value,
          $Res Function(EducationRelationFilter) then) =
      _$EducationRelationFilterCopyWithImpl<$Res, EducationRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') EducationWhereInput? is_,
      EducationWhereInput? isNot});

  $EducationWhereInputCopyWith<$Res>? get is_;
  $EducationWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$EducationRelationFilterCopyWithImpl<$Res,
        $Val extends EducationRelationFilter>
    implements $EducationRelationFilterCopyWith<$Res> {
  _$EducationRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EducationRelationFilter
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
              as EducationWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as EducationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of EducationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EducationWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $EducationWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of EducationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EducationWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $EducationWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EducationRelationFilterImplCopyWith<$Res>
    implements $EducationRelationFilterCopyWith<$Res> {
  factory _$$EducationRelationFilterImplCopyWith(
          _$EducationRelationFilterImpl value,
          $Res Function(_$EducationRelationFilterImpl) then) =
      __$$EducationRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') EducationWhereInput? is_,
      EducationWhereInput? isNot});

  @override
  $EducationWhereInputCopyWith<$Res>? get is_;
  @override
  $EducationWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$EducationRelationFilterImplCopyWithImpl<$Res>
    extends _$EducationRelationFilterCopyWithImpl<$Res,
        _$EducationRelationFilterImpl>
    implements _$$EducationRelationFilterImplCopyWith<$Res> {
  __$$EducationRelationFilterImplCopyWithImpl(
      _$EducationRelationFilterImpl _value,
      $Res Function(_$EducationRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of EducationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$EducationRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as EducationWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as EducationWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EducationRelationFilterImpl implements _EducationRelationFilter {
  const _$EducationRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$EducationRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final EducationWhereInput? is_;

  /// Related record does not match
  @override
  final EducationWhereInput? isNot;

  @override
  String toString() {
    return 'EducationRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of EducationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationRelationFilterImplCopyWith<_$EducationRelationFilterImpl>
      get copyWith => __$$EducationRelationFilterImplCopyWithImpl<
          _$EducationRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _EducationRelationFilter implements EducationRelationFilter {
  const factory _EducationRelationFilter(
      {@JsonKey(name: 'is') final EducationWhereInput? is_,
      final EducationWhereInput? isNot}) = _$EducationRelationFilterImpl;

  factory _EducationRelationFilter.fromJson(Map<String, dynamic> json) =
      _$EducationRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  EducationWhereInput? get is_;

  /// Related record does not match
  @override
  EducationWhereInput? get isNot;

  /// Create a copy of EducationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EducationRelationFilterImplCopyWith<_$EducationRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EducationOrderByInput _$EducationOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _EducationOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$EducationOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get institution => throw _privateConstructorUsedError;
  SortOrder? get institutionDomain => throw _privateConstructorUsedError;
  SortOrder? get degree => throw _privateConstructorUsedError;
  SortOrder? get fieldOfStudy => throw _privateConstructorUsedError;
  SortOrder? get startYear => throw _privateConstructorUsedError;
  SortOrder? get endYear => throw _privateConstructorUsedError;
  SortOrder? get grade => throw _privateConstructorUsedError;
  SortOrder? get activities => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this EducationOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EducationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EducationOrderByInputCopyWith<EducationOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationOrderByInputCopyWith<$Res> {
  factory $EducationOrderByInputCopyWith(EducationOrderByInput value,
          $Res Function(EducationOrderByInput) then) =
      _$EducationOrderByInputCopyWithImpl<$Res, EducationOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? institution,
      SortOrder? institutionDomain,
      SortOrder? degree,
      SortOrder? fieldOfStudy,
      SortOrder? startYear,
      SortOrder? endYear,
      SortOrder? grade,
      SortOrder? activities,
      SortOrder? description,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$EducationOrderByInputCopyWithImpl<$Res,
        $Val extends EducationOrderByInput>
    implements $EducationOrderByInputCopyWith<$Res> {
  _$EducationOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EducationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? institution = freezed,
    Object? institutionDomain = freezed,
    Object? degree = freezed,
    Object? fieldOfStudy = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? grade = freezed,
    Object? activities = freezed,
    Object? description = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      institutionDomain: freezed == institutionDomain
          ? _value.institutionDomain
          : institutionDomain // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      degree: freezed == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      fieldOfStudy: freezed == fieldOfStudy
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startYear: freezed == startYear
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endYear: freezed == endYear
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$EducationOrderByInputImplCopyWith<$Res>
    implements $EducationOrderByInputCopyWith<$Res> {
  factory _$$EducationOrderByInputImplCopyWith(
          _$EducationOrderByInputImpl value,
          $Res Function(_$EducationOrderByInputImpl) then) =
      __$$EducationOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? institution,
      SortOrder? institutionDomain,
      SortOrder? degree,
      SortOrder? fieldOfStudy,
      SortOrder? startYear,
      SortOrder? endYear,
      SortOrder? grade,
      SortOrder? activities,
      SortOrder? description,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$EducationOrderByInputImplCopyWithImpl<$Res>
    extends _$EducationOrderByInputCopyWithImpl<$Res,
        _$EducationOrderByInputImpl>
    implements _$$EducationOrderByInputImplCopyWith<$Res> {
  __$$EducationOrderByInputImplCopyWithImpl(_$EducationOrderByInputImpl _value,
      $Res Function(_$EducationOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of EducationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? institution = freezed,
    Object? institutionDomain = freezed,
    Object? degree = freezed,
    Object? fieldOfStudy = freezed,
    Object? startYear = freezed,
    Object? endYear = freezed,
    Object? grade = freezed,
    Object? activities = freezed,
    Object? description = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$EducationOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      institutionDomain: freezed == institutionDomain
          ? _value.institutionDomain
          : institutionDomain // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      degree: freezed == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      fieldOfStudy: freezed == fieldOfStudy
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startYear: freezed == startYear
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endYear: freezed == endYear
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
class _$EducationOrderByInputImpl implements _EducationOrderByInput {
  const _$EducationOrderByInputImpl(
      {this.id,
      this.institution,
      this.institutionDomain,
      this.degree,
      this.fieldOfStudy,
      this.startYear,
      this.endYear,
      this.grade,
      this.activities,
      this.description,
      this.userId,
      this.createdAt,
      this.updatedAt});

  factory _$EducationOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? institution;
  @override
  final SortOrder? institutionDomain;
  @override
  final SortOrder? degree;
  @override
  final SortOrder? fieldOfStudy;
  @override
  final SortOrder? startYear;
  @override
  final SortOrder? endYear;
  @override
  final SortOrder? grade;
  @override
  final SortOrder? activities;
  @override
  final SortOrder? description;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'EducationOrderByInput(id: $id, institution: $institution, institutionDomain: $institutionDomain, degree: $degree, fieldOfStudy: $fieldOfStudy, startYear: $startYear, endYear: $endYear, grade: $grade, activities: $activities, description: $description, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.institutionDomain, institutionDomain) ||
                other.institutionDomain == institutionDomain) &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.fieldOfStudy, fieldOfStudy) ||
                other.fieldOfStudy == fieldOfStudy) &&
            (identical(other.startYear, startYear) ||
                other.startYear == startYear) &&
            (identical(other.endYear, endYear) || other.endYear == endYear) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.activities, activities) ||
                other.activities == activities) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.userId, userId) || other.userId == userId) &&
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
      institution,
      institutionDomain,
      degree,
      fieldOfStudy,
      startYear,
      endYear,
      grade,
      activities,
      description,
      userId,
      createdAt,
      updatedAt);

  /// Create a copy of EducationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationOrderByInputImplCopyWith<_$EducationOrderByInputImpl>
      get copyWith => __$$EducationOrderByInputImplCopyWithImpl<
          _$EducationOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _EducationOrderByInput implements EducationOrderByInput {
  const factory _EducationOrderByInput(
      {final SortOrder? id,
      final SortOrder? institution,
      final SortOrder? institutionDomain,
      final SortOrder? degree,
      final SortOrder? fieldOfStudy,
      final SortOrder? startYear,
      final SortOrder? endYear,
      final SortOrder? grade,
      final SortOrder? activities,
      final SortOrder? description,
      final SortOrder? userId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$EducationOrderByInputImpl;

  factory _EducationOrderByInput.fromJson(Map<String, dynamic> json) =
      _$EducationOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get institution;
  @override
  SortOrder? get institutionDomain;
  @override
  SortOrder? get degree;
  @override
  SortOrder? get fieldOfStudy;
  @override
  SortOrder? get startYear;
  @override
  SortOrder? get endYear;
  @override
  SortOrder? get grade;
  @override
  SortOrder? get activities;
  @override
  SortOrder? get description;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of EducationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EducationOrderByInputImplCopyWith<_$EducationOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
