// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_experience.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkExperience _$WorkExperienceFromJson(Map<String, dynamic> json) {
  return _WorkExperience.fromJson(json);
}

/// @nodoc
mixin _$WorkExperience {
  String get id => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String? get companyDomain => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool get isCurrent => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this WorkExperience to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkExperienceCopyWith<WorkExperience> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkExperienceCopyWith<$Res> {
  factory $WorkExperienceCopyWith(
          WorkExperience value, $Res Function(WorkExperience) then) =
      _$WorkExperienceCopyWithImpl<$Res, WorkExperience>;
  @useResult
  $Res call(
      {String id,
      String company,
      String? companyDomain,
      String title,
      String? location,
      DateTime startDate,
      DateTime? endDate,
      bool isCurrent,
      String? description,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$WorkExperienceCopyWithImpl<$Res, $Val extends WorkExperience>
    implements $WorkExperienceCopyWith<$Res> {
  _$WorkExperienceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? company = null,
    Object? companyDomain = freezed,
    Object? title = null,
    Object? location = freezed,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isCurrent = null,
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
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      companyDomain: freezed == companyDomain
          ? _value.companyDomain
          : companyDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCurrent: null == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
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

  /// Create a copy of WorkExperience
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
abstract class _$$WorkExperienceImplCopyWith<$Res>
    implements $WorkExperienceCopyWith<$Res> {
  factory _$$WorkExperienceImplCopyWith(_$WorkExperienceImpl value,
          $Res Function(_$WorkExperienceImpl) then) =
      __$$WorkExperienceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String company,
      String? companyDomain,
      String title,
      String? location,
      DateTime startDate,
      DateTime? endDate,
      bool isCurrent,
      String? description,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$WorkExperienceImplCopyWithImpl<$Res>
    extends _$WorkExperienceCopyWithImpl<$Res, _$WorkExperienceImpl>
    implements _$$WorkExperienceImplCopyWith<$Res> {
  __$$WorkExperienceImplCopyWithImpl(
      _$WorkExperienceImpl _value, $Res Function(_$WorkExperienceImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? company = null,
    Object? companyDomain = freezed,
    Object? title = null,
    Object? location = freezed,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isCurrent = null,
    Object? description = freezed,
    Object? user = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$WorkExperienceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      companyDomain: freezed == companyDomain
          ? _value.companyDomain
          : companyDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCurrent: null == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$WorkExperienceImpl implements _WorkExperience {
  const _$WorkExperienceImpl(
      {required this.id,
      required this.company,
      this.companyDomain,
      required this.title,
      this.location,
      required this.startDate,
      this.endDate,
      this.isCurrent = false,
      this.description,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required this.userId,
      required this.createdAt,
      required this.updatedAt});

  factory _$WorkExperienceImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkExperienceImplFromJson(json);

  @override
  final String id;
  @override
  final String company;
  @override
  final String? companyDomain;
  @override
  final String title;
  @override
  final String? location;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final bool isCurrent;
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
    return 'WorkExperience(id: $id, company: $company, companyDomain: $companyDomain, title: $title, location: $location, startDate: $startDate, endDate: $endDate, isCurrent: $isCurrent, description: $description, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkExperienceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.companyDomain, companyDomain) ||
                other.companyDomain == companyDomain) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isCurrent, isCurrent) ||
                other.isCurrent == isCurrent) &&
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
      company,
      companyDomain,
      title,
      location,
      startDate,
      endDate,
      isCurrent,
      description,
      user,
      userId,
      createdAt,
      updatedAt);

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkExperienceImplCopyWith<_$WorkExperienceImpl> get copyWith =>
      __$$WorkExperienceImplCopyWithImpl<_$WorkExperienceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkExperienceImplToJson(
      this,
    );
  }
}

abstract class _WorkExperience implements WorkExperience {
  const factory _WorkExperience(
      {required final String id,
      required final String company,
      final String? companyDomain,
      required final String title,
      final String? location,
      required final DateTime startDate,
      final DateTime? endDate,
      final bool isCurrent,
      final String? description,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final String userId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$WorkExperienceImpl;

  factory _WorkExperience.fromJson(Map<String, dynamic> json) =
      _$WorkExperienceImpl.fromJson;

  @override
  String get id;
  @override
  String get company;
  @override
  String? get companyDomain;
  @override
  String get title;
  @override
  String? get location;
  @override
  DateTime get startDate;
  @override
  DateTime? get endDate;
  @override
  bool get isCurrent;
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

  /// Create a copy of WorkExperience
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkExperienceImplCopyWith<_$WorkExperienceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateWorkExperienceInput _$CreateWorkExperienceInputFromJson(
    Map<String, dynamic> json) {
  return _CreateWorkExperienceInput.fromJson(json);
}

/// @nodoc
mixin _$CreateWorkExperienceInput {
  String get company => throw _privateConstructorUsedError;
  String? get companyDomain => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool? get isCurrent => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this CreateWorkExperienceInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateWorkExperienceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateWorkExperienceInputCopyWith<CreateWorkExperienceInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWorkExperienceInputCopyWith<$Res> {
  factory $CreateWorkExperienceInputCopyWith(CreateWorkExperienceInput value,
          $Res Function(CreateWorkExperienceInput) then) =
      _$CreateWorkExperienceInputCopyWithImpl<$Res, CreateWorkExperienceInput>;
  @useResult
  $Res call(
      {String company,
      String? companyDomain,
      String title,
      String? location,
      DateTime startDate,
      DateTime? endDate,
      bool? isCurrent,
      String? description,
      String userId});
}

/// @nodoc
class _$CreateWorkExperienceInputCopyWithImpl<$Res,
        $Val extends CreateWorkExperienceInput>
    implements $CreateWorkExperienceInputCopyWith<$Res> {
  _$CreateWorkExperienceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateWorkExperienceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
    Object? companyDomain = freezed,
    Object? title = null,
    Object? location = freezed,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isCurrent = freezed,
    Object? description = freezed,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      companyDomain: freezed == companyDomain
          ? _value.companyDomain
          : companyDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCurrent: freezed == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$CreateWorkExperienceInputImplCopyWith<$Res>
    implements $CreateWorkExperienceInputCopyWith<$Res> {
  factory _$$CreateWorkExperienceInputImplCopyWith(
          _$CreateWorkExperienceInputImpl value,
          $Res Function(_$CreateWorkExperienceInputImpl) then) =
      __$$CreateWorkExperienceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String company,
      String? companyDomain,
      String title,
      String? location,
      DateTime startDate,
      DateTime? endDate,
      bool? isCurrent,
      String? description,
      String userId});
}

/// @nodoc
class __$$CreateWorkExperienceInputImplCopyWithImpl<$Res>
    extends _$CreateWorkExperienceInputCopyWithImpl<$Res,
        _$CreateWorkExperienceInputImpl>
    implements _$$CreateWorkExperienceInputImplCopyWith<$Res> {
  __$$CreateWorkExperienceInputImplCopyWithImpl(
      _$CreateWorkExperienceInputImpl _value,
      $Res Function(_$CreateWorkExperienceInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateWorkExperienceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
    Object? companyDomain = freezed,
    Object? title = null,
    Object? location = freezed,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isCurrent = freezed,
    Object? description = freezed,
    Object? userId = null,
  }) {
    return _then(_$CreateWorkExperienceInputImpl(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      companyDomain: freezed == companyDomain
          ? _value.companyDomain
          : companyDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCurrent: freezed == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$CreateWorkExperienceInputImpl implements _CreateWorkExperienceInput {
  const _$CreateWorkExperienceInputImpl(
      {required this.company,
      this.companyDomain,
      required this.title,
      this.location,
      required this.startDate,
      this.endDate,
      this.isCurrent = false,
      this.description,
      required this.userId});

  factory _$CreateWorkExperienceInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateWorkExperienceInputImplFromJson(json);

  @override
  final String company;
  @override
  final String? companyDomain;
  @override
  final String title;
  @override
  final String? location;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final bool? isCurrent;
  @override
  final String? description;
  @override
  final String userId;

  @override
  String toString() {
    return 'CreateWorkExperienceInput(company: $company, companyDomain: $companyDomain, title: $title, location: $location, startDate: $startDate, endDate: $endDate, isCurrent: $isCurrent, description: $description, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWorkExperienceInputImpl &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.companyDomain, companyDomain) ||
                other.companyDomain == companyDomain) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isCurrent, isCurrent) ||
                other.isCurrent == isCurrent) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, company, companyDomain, title,
      location, startDate, endDate, isCurrent, description, userId);

  /// Create a copy of CreateWorkExperienceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWorkExperienceInputImplCopyWith<_$CreateWorkExperienceInputImpl>
      get copyWith => __$$CreateWorkExperienceInputImplCopyWithImpl<
          _$CreateWorkExperienceInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateWorkExperienceInputImplToJson(
      this,
    );
  }
}

abstract class _CreateWorkExperienceInput implements CreateWorkExperienceInput {
  const factory _CreateWorkExperienceInput(
      {required final String company,
      final String? companyDomain,
      required final String title,
      final String? location,
      required final DateTime startDate,
      final DateTime? endDate,
      final bool? isCurrent,
      final String? description,
      required final String userId}) = _$CreateWorkExperienceInputImpl;

  factory _CreateWorkExperienceInput.fromJson(Map<String, dynamic> json) =
      _$CreateWorkExperienceInputImpl.fromJson;

  @override
  String get company;
  @override
  String? get companyDomain;
  @override
  String get title;
  @override
  String? get location;
  @override
  DateTime get startDate;
  @override
  DateTime? get endDate;
  @override
  bool? get isCurrent;
  @override
  String? get description;
  @override
  String get userId;

  /// Create a copy of CreateWorkExperienceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateWorkExperienceInputImplCopyWith<_$CreateWorkExperienceInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateWorkExperienceInput _$UpdateWorkExperienceInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateWorkExperienceInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateWorkExperienceInput {
  String? get company => throw _privateConstructorUsedError;
  String? get companyDomain => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool? get isCurrent => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this UpdateWorkExperienceInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateWorkExperienceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateWorkExperienceInputCopyWith<UpdateWorkExperienceInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateWorkExperienceInputCopyWith<$Res> {
  factory $UpdateWorkExperienceInputCopyWith(UpdateWorkExperienceInput value,
          $Res Function(UpdateWorkExperienceInput) then) =
      _$UpdateWorkExperienceInputCopyWithImpl<$Res, UpdateWorkExperienceInput>;
  @useResult
  $Res call(
      {String? company,
      String? companyDomain,
      String? title,
      String? location,
      DateTime? startDate,
      DateTime? endDate,
      bool? isCurrent,
      String? description,
      String? userId});
}

/// @nodoc
class _$UpdateWorkExperienceInputCopyWithImpl<$Res,
        $Val extends UpdateWorkExperienceInput>
    implements $UpdateWorkExperienceInputCopyWith<$Res> {
  _$UpdateWorkExperienceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateWorkExperienceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = freezed,
    Object? companyDomain = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isCurrent = freezed,
    Object? description = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      companyDomain: freezed == companyDomain
          ? _value.companyDomain
          : companyDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCurrent: freezed == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$UpdateWorkExperienceInputImplCopyWith<$Res>
    implements $UpdateWorkExperienceInputCopyWith<$Res> {
  factory _$$UpdateWorkExperienceInputImplCopyWith(
          _$UpdateWorkExperienceInputImpl value,
          $Res Function(_$UpdateWorkExperienceInputImpl) then) =
      __$$UpdateWorkExperienceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? company,
      String? companyDomain,
      String? title,
      String? location,
      DateTime? startDate,
      DateTime? endDate,
      bool? isCurrent,
      String? description,
      String? userId});
}

/// @nodoc
class __$$UpdateWorkExperienceInputImplCopyWithImpl<$Res>
    extends _$UpdateWorkExperienceInputCopyWithImpl<$Res,
        _$UpdateWorkExperienceInputImpl>
    implements _$$UpdateWorkExperienceInputImplCopyWith<$Res> {
  __$$UpdateWorkExperienceInputImplCopyWithImpl(
      _$UpdateWorkExperienceInputImpl _value,
      $Res Function(_$UpdateWorkExperienceInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateWorkExperienceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = freezed,
    Object? companyDomain = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isCurrent = freezed,
    Object? description = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$UpdateWorkExperienceInputImpl(
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      companyDomain: freezed == companyDomain
          ? _value.companyDomain
          : companyDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCurrent: freezed == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$UpdateWorkExperienceInputImpl implements _UpdateWorkExperienceInput {
  const _$UpdateWorkExperienceInputImpl(
      {this.company,
      this.companyDomain,
      this.title,
      this.location,
      this.startDate,
      this.endDate,
      this.isCurrent,
      this.description,
      this.userId});

  factory _$UpdateWorkExperienceInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateWorkExperienceInputImplFromJson(json);

  @override
  final String? company;
  @override
  final String? companyDomain;
  @override
  final String? title;
  @override
  final String? location;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final bool? isCurrent;
  @override
  final String? description;
  @override
  final String? userId;

  @override
  String toString() {
    return 'UpdateWorkExperienceInput(company: $company, companyDomain: $companyDomain, title: $title, location: $location, startDate: $startDate, endDate: $endDate, isCurrent: $isCurrent, description: $description, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWorkExperienceInputImpl &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.companyDomain, companyDomain) ||
                other.companyDomain == companyDomain) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isCurrent, isCurrent) ||
                other.isCurrent == isCurrent) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, company, companyDomain, title,
      location, startDate, endDate, isCurrent, description, userId);

  /// Create a copy of UpdateWorkExperienceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWorkExperienceInputImplCopyWith<_$UpdateWorkExperienceInputImpl>
      get copyWith => __$$UpdateWorkExperienceInputImplCopyWithImpl<
          _$UpdateWorkExperienceInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateWorkExperienceInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateWorkExperienceInput implements UpdateWorkExperienceInput {
  const factory _UpdateWorkExperienceInput(
      {final String? company,
      final String? companyDomain,
      final String? title,
      final String? location,
      final DateTime? startDate,
      final DateTime? endDate,
      final bool? isCurrent,
      final String? description,
      final String? userId}) = _$UpdateWorkExperienceInputImpl;

  factory _UpdateWorkExperienceInput.fromJson(Map<String, dynamic> json) =
      _$UpdateWorkExperienceInputImpl.fromJson;

  @override
  String? get company;
  @override
  String? get companyDomain;
  @override
  String? get title;
  @override
  String? get location;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  bool? get isCurrent;
  @override
  String? get description;
  @override
  String? get userId;

  /// Create a copy of UpdateWorkExperienceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateWorkExperienceInputImplCopyWith<_$UpdateWorkExperienceInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WorkExperienceWhereUniqueInput _$WorkExperienceWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _WorkExperienceWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$WorkExperienceWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this WorkExperienceWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkExperienceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkExperienceWhereUniqueInputCopyWith<WorkExperienceWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkExperienceWhereUniqueInputCopyWith<$Res> {
  factory $WorkExperienceWhereUniqueInputCopyWith(
          WorkExperienceWhereUniqueInput value,
          $Res Function(WorkExperienceWhereUniqueInput) then) =
      _$WorkExperienceWhereUniqueInputCopyWithImpl<$Res,
          WorkExperienceWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$WorkExperienceWhereUniqueInputCopyWithImpl<$Res,
        $Val extends WorkExperienceWhereUniqueInput>
    implements $WorkExperienceWhereUniqueInputCopyWith<$Res> {
  _$WorkExperienceWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkExperienceWhereUniqueInput
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
abstract class _$$WorkExperienceWhereUniqueInputImplCopyWith<$Res>
    implements $WorkExperienceWhereUniqueInputCopyWith<$Res> {
  factory _$$WorkExperienceWhereUniqueInputImplCopyWith(
          _$WorkExperienceWhereUniqueInputImpl value,
          $Res Function(_$WorkExperienceWhereUniqueInputImpl) then) =
      __$$WorkExperienceWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$WorkExperienceWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$WorkExperienceWhereUniqueInputCopyWithImpl<$Res,
        _$WorkExperienceWhereUniqueInputImpl>
    implements _$$WorkExperienceWhereUniqueInputImplCopyWith<$Res> {
  __$$WorkExperienceWhereUniqueInputImplCopyWithImpl(
      _$WorkExperienceWhereUniqueInputImpl _value,
      $Res Function(_$WorkExperienceWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkExperienceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$WorkExperienceWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkExperienceWhereUniqueInputImpl
    implements _WorkExperienceWhereUniqueInput {
  const _$WorkExperienceWhereUniqueInputImpl({this.id});

  factory _$WorkExperienceWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WorkExperienceWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'WorkExperienceWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkExperienceWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of WorkExperienceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkExperienceWhereUniqueInputImplCopyWith<
          _$WorkExperienceWhereUniqueInputImpl>
      get copyWith => __$$WorkExperienceWhereUniqueInputImplCopyWithImpl<
          _$WorkExperienceWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkExperienceWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _WorkExperienceWhereUniqueInput
    implements WorkExperienceWhereUniqueInput {
  const factory _WorkExperienceWhereUniqueInput({final String? id}) =
      _$WorkExperienceWhereUniqueInputImpl;

  factory _WorkExperienceWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$WorkExperienceWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of WorkExperienceWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkExperienceWhereUniqueInputImplCopyWith<
          _$WorkExperienceWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WorkExperienceWhereInput _$WorkExperienceWhereInputFromJson(
    Map<String, dynamic> json) {
  return _WorkExperienceWhereInput.fromJson(json);
}

/// @nodoc
mixin _$WorkExperienceWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get company => throw _privateConstructorUsedError;
  StringFilter? get companyDomain => throw _privateConstructorUsedError;
  StringFilter? get title => throw _privateConstructorUsedError;
  StringFilter? get location => throw _privateConstructorUsedError;
  DateTimeFilter? get startDate => throw _privateConstructorUsedError;
  DateTimeFilter? get endDate => throw _privateConstructorUsedError;
  BooleanFilter? get isCurrent => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<WorkExperienceWhereInput>? get AND => throw _privateConstructorUsedError;
  List<WorkExperienceWhereInput>? get OR => throw _privateConstructorUsedError;
  WorkExperienceWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this WorkExperienceWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkExperienceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkExperienceWhereInputCopyWith<WorkExperienceWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkExperienceWhereInputCopyWith<$Res> {
  factory $WorkExperienceWhereInputCopyWith(WorkExperienceWhereInput value,
          $Res Function(WorkExperienceWhereInput) then) =
      _$WorkExperienceWhereInputCopyWithImpl<$Res, WorkExperienceWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? company,
      StringFilter? companyDomain,
      StringFilter? title,
      StringFilter? location,
      DateTimeFilter? startDate,
      DateTimeFilter? endDate,
      BooleanFilter? isCurrent,
      StringFilter? description,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<WorkExperienceWhereInput>? AND,
      List<WorkExperienceWhereInput>? OR,
      WorkExperienceWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get company;
  $StringFilterCopyWith<$Res>? get companyDomain;
  $StringFilterCopyWith<$Res>? get title;
  $StringFilterCopyWith<$Res>? get location;
  $DateTimeFilterCopyWith<$Res>? get startDate;
  $DateTimeFilterCopyWith<$Res>? get endDate;
  $BooleanFilterCopyWith<$Res>? get isCurrent;
  $StringFilterCopyWith<$Res>? get description;
  $UserRelationFilterCopyWith<$Res>? get user;
  $StringFilterCopyWith<$Res>? get userId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $WorkExperienceWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$WorkExperienceWhereInputCopyWithImpl<$Res,
        $Val extends WorkExperienceWhereInput>
    implements $WorkExperienceWhereInputCopyWith<$Res> {
  _$WorkExperienceWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkExperienceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? company = freezed,
    Object? companyDomain = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isCurrent = freezed,
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
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      companyDomain: freezed == companyDomain
          ? _value.companyDomain
          : companyDomain // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      isCurrent: freezed == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
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
              as List<WorkExperienceWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<WorkExperienceWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as WorkExperienceWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WorkExperienceWhereInput
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

  /// Create a copy of WorkExperienceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }

  /// Create a copy of WorkExperienceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get companyDomain {
    if (_value.companyDomain == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.companyDomain!, (value) {
      return _then(_value.copyWith(companyDomain: value) as $Val);
    });
  }

  /// Create a copy of WorkExperienceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get title {
    if (_value.title == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.title!, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of WorkExperienceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of WorkExperienceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get startDate {
    if (_value.startDate == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.startDate!, (value) {
      return _then(_value.copyWith(startDate: value) as $Val);
    });
  }

  /// Create a copy of WorkExperienceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get endDate {
    if (_value.endDate == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.endDate!, (value) {
      return _then(_value.copyWith(endDate: value) as $Val);
    });
  }

  /// Create a copy of WorkExperienceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isCurrent {
    if (_value.isCurrent == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isCurrent!, (value) {
      return _then(_value.copyWith(isCurrent: value) as $Val);
    });
  }

  /// Create a copy of WorkExperienceWhereInput
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

  /// Create a copy of WorkExperienceWhereInput
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

  /// Create a copy of WorkExperienceWhereInput
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

  /// Create a copy of WorkExperienceWhereInput
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

  /// Create a copy of WorkExperienceWhereInput
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

  /// Create a copy of WorkExperienceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkExperienceWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $WorkExperienceWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkExperienceWhereInputImplCopyWith<$Res>
    implements $WorkExperienceWhereInputCopyWith<$Res> {
  factory _$$WorkExperienceWhereInputImplCopyWith(
          _$WorkExperienceWhereInputImpl value,
          $Res Function(_$WorkExperienceWhereInputImpl) then) =
      __$$WorkExperienceWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? company,
      StringFilter? companyDomain,
      StringFilter? title,
      StringFilter? location,
      DateTimeFilter? startDate,
      DateTimeFilter? endDate,
      BooleanFilter? isCurrent,
      StringFilter? description,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<WorkExperienceWhereInput>? AND,
      List<WorkExperienceWhereInput>? OR,
      WorkExperienceWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get company;
  @override
  $StringFilterCopyWith<$Res>? get companyDomain;
  @override
  $StringFilterCopyWith<$Res>? get title;
  @override
  $StringFilterCopyWith<$Res>? get location;
  @override
  $DateTimeFilterCopyWith<$Res>? get startDate;
  @override
  $DateTimeFilterCopyWith<$Res>? get endDate;
  @override
  $BooleanFilterCopyWith<$Res>? get isCurrent;
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
  $WorkExperienceWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$WorkExperienceWhereInputImplCopyWithImpl<$Res>
    extends _$WorkExperienceWhereInputCopyWithImpl<$Res,
        _$WorkExperienceWhereInputImpl>
    implements _$$WorkExperienceWhereInputImplCopyWith<$Res> {
  __$$WorkExperienceWhereInputImplCopyWithImpl(
      _$WorkExperienceWhereInputImpl _value,
      $Res Function(_$WorkExperienceWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkExperienceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? company = freezed,
    Object? companyDomain = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isCurrent = freezed,
    Object? description = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$WorkExperienceWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      companyDomain: freezed == companyDomain
          ? _value.companyDomain
          : companyDomain // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      isCurrent: freezed == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
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
              as List<WorkExperienceWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<WorkExperienceWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as WorkExperienceWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WorkExperienceWhereInputImpl implements _WorkExperienceWhereInput {
  const _$WorkExperienceWhereInputImpl(
      {this.id,
      this.company,
      this.companyDomain,
      this.title,
      this.location,
      this.startDate,
      this.endDate,
      this.isCurrent,
      this.description,
      this.user,
      this.userId,
      this.createdAt,
      this.updatedAt,
      final List<WorkExperienceWhereInput>? AND,
      final List<WorkExperienceWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$WorkExperienceWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkExperienceWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? company;
  @override
  final StringFilter? companyDomain;
  @override
  final StringFilter? title;
  @override
  final StringFilter? location;
  @override
  final DateTimeFilter? startDate;
  @override
  final DateTimeFilter? endDate;
  @override
  final BooleanFilter? isCurrent;
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
  final List<WorkExperienceWhereInput>? _AND;
  @override
  List<WorkExperienceWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WorkExperienceWhereInput>? _OR;
  @override
  List<WorkExperienceWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final WorkExperienceWhereInput? NOT;

  @override
  String toString() {
    return 'WorkExperienceWhereInput(id: $id, company: $company, companyDomain: $companyDomain, title: $title, location: $location, startDate: $startDate, endDate: $endDate, isCurrent: $isCurrent, description: $description, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkExperienceWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.companyDomain, companyDomain) ||
                other.companyDomain == companyDomain) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isCurrent, isCurrent) ||
                other.isCurrent == isCurrent) &&
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
      company,
      companyDomain,
      title,
      location,
      startDate,
      endDate,
      isCurrent,
      description,
      user,
      userId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of WorkExperienceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkExperienceWhereInputImplCopyWith<_$WorkExperienceWhereInputImpl>
      get copyWith => __$$WorkExperienceWhereInputImplCopyWithImpl<
          _$WorkExperienceWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkExperienceWhereInputImplToJson(
      this,
    );
  }
}

abstract class _WorkExperienceWhereInput implements WorkExperienceWhereInput {
  const factory _WorkExperienceWhereInput(
      {final StringFilter? id,
      final StringFilter? company,
      final StringFilter? companyDomain,
      final StringFilter? title,
      final StringFilter? location,
      final DateTimeFilter? startDate,
      final DateTimeFilter? endDate,
      final BooleanFilter? isCurrent,
      final StringFilter? description,
      final UserRelationFilter? user,
      final StringFilter? userId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<WorkExperienceWhereInput>? AND,
      final List<WorkExperienceWhereInput>? OR,
      final WorkExperienceWhereInput? NOT}) = _$WorkExperienceWhereInputImpl;

  factory _WorkExperienceWhereInput.fromJson(Map<String, dynamic> json) =
      _$WorkExperienceWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get company;
  @override
  StringFilter? get companyDomain;
  @override
  StringFilter? get title;
  @override
  StringFilter? get location;
  @override
  DateTimeFilter? get startDate;
  @override
  DateTimeFilter? get endDate;
  @override
  BooleanFilter? get isCurrent;
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
  List<WorkExperienceWhereInput>? get AND;
  @override
  List<WorkExperienceWhereInput>? get OR;
  @override
  WorkExperienceWhereInput? get NOT;

  /// Create a copy of WorkExperienceWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkExperienceWhereInputImplCopyWith<_$WorkExperienceWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WorkExperienceListRelationFilter _$WorkExperienceListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _WorkExperienceListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$WorkExperienceListRelationFilter {
  /// At least one related record matches
  WorkExperienceWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  WorkExperienceWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  WorkExperienceWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this WorkExperienceListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkExperienceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkExperienceListRelationFilterCopyWith<WorkExperienceListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkExperienceListRelationFilterCopyWith<$Res> {
  factory $WorkExperienceListRelationFilterCopyWith(
          WorkExperienceListRelationFilter value,
          $Res Function(WorkExperienceListRelationFilter) then) =
      _$WorkExperienceListRelationFilterCopyWithImpl<$Res,
          WorkExperienceListRelationFilter>;
  @useResult
  $Res call(
      {WorkExperienceWhereInput? some,
      WorkExperienceWhereInput? every,
      WorkExperienceWhereInput? none});

  $WorkExperienceWhereInputCopyWith<$Res>? get some;
  $WorkExperienceWhereInputCopyWith<$Res>? get every;
  $WorkExperienceWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$WorkExperienceListRelationFilterCopyWithImpl<$Res,
        $Val extends WorkExperienceListRelationFilter>
    implements $WorkExperienceListRelationFilterCopyWith<$Res> {
  _$WorkExperienceListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkExperienceListRelationFilter
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
              as WorkExperienceWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as WorkExperienceWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as WorkExperienceWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WorkExperienceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkExperienceWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $WorkExperienceWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of WorkExperienceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkExperienceWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $WorkExperienceWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of WorkExperienceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkExperienceWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $WorkExperienceWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkExperienceListRelationFilterImplCopyWith<$Res>
    implements $WorkExperienceListRelationFilterCopyWith<$Res> {
  factory _$$WorkExperienceListRelationFilterImplCopyWith(
          _$WorkExperienceListRelationFilterImpl value,
          $Res Function(_$WorkExperienceListRelationFilterImpl) then) =
      __$$WorkExperienceListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WorkExperienceWhereInput? some,
      WorkExperienceWhereInput? every,
      WorkExperienceWhereInput? none});

  @override
  $WorkExperienceWhereInputCopyWith<$Res>? get some;
  @override
  $WorkExperienceWhereInputCopyWith<$Res>? get every;
  @override
  $WorkExperienceWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$WorkExperienceListRelationFilterImplCopyWithImpl<$Res>
    extends _$WorkExperienceListRelationFilterCopyWithImpl<$Res,
        _$WorkExperienceListRelationFilterImpl>
    implements _$$WorkExperienceListRelationFilterImplCopyWith<$Res> {
  __$$WorkExperienceListRelationFilterImplCopyWithImpl(
      _$WorkExperienceListRelationFilterImpl _value,
      $Res Function(_$WorkExperienceListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkExperienceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$WorkExperienceListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as WorkExperienceWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as WorkExperienceWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as WorkExperienceWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkExperienceListRelationFilterImpl
    implements _WorkExperienceListRelationFilter {
  const _$WorkExperienceListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$WorkExperienceListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WorkExperienceListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final WorkExperienceWhereInput? some;

  /// All related records match
  @override
  final WorkExperienceWhereInput? every;

  /// No related records match
  @override
  final WorkExperienceWhereInput? none;

  @override
  String toString() {
    return 'WorkExperienceListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkExperienceListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of WorkExperienceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkExperienceListRelationFilterImplCopyWith<
          _$WorkExperienceListRelationFilterImpl>
      get copyWith => __$$WorkExperienceListRelationFilterImplCopyWithImpl<
          _$WorkExperienceListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkExperienceListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _WorkExperienceListRelationFilter
    implements WorkExperienceListRelationFilter {
  const factory _WorkExperienceListRelationFilter(
          {final WorkExperienceWhereInput? some,
          final WorkExperienceWhereInput? every,
          final WorkExperienceWhereInput? none}) =
      _$WorkExperienceListRelationFilterImpl;

  factory _WorkExperienceListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$WorkExperienceListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  WorkExperienceWhereInput? get some;

  /// All related records match
  @override
  WorkExperienceWhereInput? get every;

  /// No related records match
  @override
  WorkExperienceWhereInput? get none;

  /// Create a copy of WorkExperienceListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkExperienceListRelationFilterImplCopyWith<
          _$WorkExperienceListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WorkExperienceRelationFilter _$WorkExperienceRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _WorkExperienceRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$WorkExperienceRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  WorkExperienceWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  WorkExperienceWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this WorkExperienceRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkExperienceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkExperienceRelationFilterCopyWith<WorkExperienceRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkExperienceRelationFilterCopyWith<$Res> {
  factory $WorkExperienceRelationFilterCopyWith(
          WorkExperienceRelationFilter value,
          $Res Function(WorkExperienceRelationFilter) then) =
      _$WorkExperienceRelationFilterCopyWithImpl<$Res,
          WorkExperienceRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') WorkExperienceWhereInput? is_,
      WorkExperienceWhereInput? isNot});

  $WorkExperienceWhereInputCopyWith<$Res>? get is_;
  $WorkExperienceWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$WorkExperienceRelationFilterCopyWithImpl<$Res,
        $Val extends WorkExperienceRelationFilter>
    implements $WorkExperienceRelationFilterCopyWith<$Res> {
  _$WorkExperienceRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkExperienceRelationFilter
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
              as WorkExperienceWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as WorkExperienceWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WorkExperienceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkExperienceWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $WorkExperienceWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of WorkExperienceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkExperienceWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $WorkExperienceWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkExperienceRelationFilterImplCopyWith<$Res>
    implements $WorkExperienceRelationFilterCopyWith<$Res> {
  factory _$$WorkExperienceRelationFilterImplCopyWith(
          _$WorkExperienceRelationFilterImpl value,
          $Res Function(_$WorkExperienceRelationFilterImpl) then) =
      __$$WorkExperienceRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') WorkExperienceWhereInput? is_,
      WorkExperienceWhereInput? isNot});

  @override
  $WorkExperienceWhereInputCopyWith<$Res>? get is_;
  @override
  $WorkExperienceWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$WorkExperienceRelationFilterImplCopyWithImpl<$Res>
    extends _$WorkExperienceRelationFilterCopyWithImpl<$Res,
        _$WorkExperienceRelationFilterImpl>
    implements _$$WorkExperienceRelationFilterImplCopyWith<$Res> {
  __$$WorkExperienceRelationFilterImplCopyWithImpl(
      _$WorkExperienceRelationFilterImpl _value,
      $Res Function(_$WorkExperienceRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkExperienceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$WorkExperienceRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as WorkExperienceWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as WorkExperienceWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkExperienceRelationFilterImpl
    implements _WorkExperienceRelationFilter {
  const _$WorkExperienceRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$WorkExperienceRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WorkExperienceRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final WorkExperienceWhereInput? is_;

  /// Related record does not match
  @override
  final WorkExperienceWhereInput? isNot;

  @override
  String toString() {
    return 'WorkExperienceRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkExperienceRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of WorkExperienceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkExperienceRelationFilterImplCopyWith<
          _$WorkExperienceRelationFilterImpl>
      get copyWith => __$$WorkExperienceRelationFilterImplCopyWithImpl<
          _$WorkExperienceRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkExperienceRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _WorkExperienceRelationFilter
    implements WorkExperienceRelationFilter {
  const factory _WorkExperienceRelationFilter(
          {@JsonKey(name: 'is') final WorkExperienceWhereInput? is_,
          final WorkExperienceWhereInput? isNot}) =
      _$WorkExperienceRelationFilterImpl;

  factory _WorkExperienceRelationFilter.fromJson(Map<String, dynamic> json) =
      _$WorkExperienceRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  WorkExperienceWhereInput? get is_;

  /// Related record does not match
  @override
  WorkExperienceWhereInput? get isNot;

  /// Create a copy of WorkExperienceRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkExperienceRelationFilterImplCopyWith<
          _$WorkExperienceRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WorkExperienceOrderByInput _$WorkExperienceOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _WorkExperienceOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$WorkExperienceOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get company => throw _privateConstructorUsedError;
  SortOrder? get companyDomain => throw _privateConstructorUsedError;
  SortOrder? get title => throw _privateConstructorUsedError;
  SortOrder? get location => throw _privateConstructorUsedError;
  SortOrder? get startDate => throw _privateConstructorUsedError;
  SortOrder? get endDate => throw _privateConstructorUsedError;
  SortOrder? get isCurrent => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this WorkExperienceOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkExperienceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkExperienceOrderByInputCopyWith<WorkExperienceOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkExperienceOrderByInputCopyWith<$Res> {
  factory $WorkExperienceOrderByInputCopyWith(WorkExperienceOrderByInput value,
          $Res Function(WorkExperienceOrderByInput) then) =
      _$WorkExperienceOrderByInputCopyWithImpl<$Res,
          WorkExperienceOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? company,
      SortOrder? companyDomain,
      SortOrder? title,
      SortOrder? location,
      SortOrder? startDate,
      SortOrder? endDate,
      SortOrder? isCurrent,
      SortOrder? description,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$WorkExperienceOrderByInputCopyWithImpl<$Res,
        $Val extends WorkExperienceOrderByInput>
    implements $WorkExperienceOrderByInputCopyWith<$Res> {
  _$WorkExperienceOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkExperienceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? company = freezed,
    Object? companyDomain = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isCurrent = freezed,
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
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      companyDomain: freezed == companyDomain
          ? _value.companyDomain
          : companyDomain // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isCurrent: freezed == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
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
abstract class _$$WorkExperienceOrderByInputImplCopyWith<$Res>
    implements $WorkExperienceOrderByInputCopyWith<$Res> {
  factory _$$WorkExperienceOrderByInputImplCopyWith(
          _$WorkExperienceOrderByInputImpl value,
          $Res Function(_$WorkExperienceOrderByInputImpl) then) =
      __$$WorkExperienceOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? company,
      SortOrder? companyDomain,
      SortOrder? title,
      SortOrder? location,
      SortOrder? startDate,
      SortOrder? endDate,
      SortOrder? isCurrent,
      SortOrder? description,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$WorkExperienceOrderByInputImplCopyWithImpl<$Res>
    extends _$WorkExperienceOrderByInputCopyWithImpl<$Res,
        _$WorkExperienceOrderByInputImpl>
    implements _$$WorkExperienceOrderByInputImplCopyWith<$Res> {
  __$$WorkExperienceOrderByInputImplCopyWithImpl(
      _$WorkExperienceOrderByInputImpl _value,
      $Res Function(_$WorkExperienceOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkExperienceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? company = freezed,
    Object? companyDomain = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isCurrent = freezed,
    Object? description = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$WorkExperienceOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      companyDomain: freezed == companyDomain
          ? _value.companyDomain
          : companyDomain // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isCurrent: freezed == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
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
class _$WorkExperienceOrderByInputImpl implements _WorkExperienceOrderByInput {
  const _$WorkExperienceOrderByInputImpl(
      {this.id,
      this.company,
      this.companyDomain,
      this.title,
      this.location,
      this.startDate,
      this.endDate,
      this.isCurrent,
      this.description,
      this.userId,
      this.createdAt,
      this.updatedAt});

  factory _$WorkExperienceOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WorkExperienceOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? company;
  @override
  final SortOrder? companyDomain;
  @override
  final SortOrder? title;
  @override
  final SortOrder? location;
  @override
  final SortOrder? startDate;
  @override
  final SortOrder? endDate;
  @override
  final SortOrder? isCurrent;
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
    return 'WorkExperienceOrderByInput(id: $id, company: $company, companyDomain: $companyDomain, title: $title, location: $location, startDate: $startDate, endDate: $endDate, isCurrent: $isCurrent, description: $description, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkExperienceOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.companyDomain, companyDomain) ||
                other.companyDomain == companyDomain) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isCurrent, isCurrent) ||
                other.isCurrent == isCurrent) &&
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
      company,
      companyDomain,
      title,
      location,
      startDate,
      endDate,
      isCurrent,
      description,
      userId,
      createdAt,
      updatedAt);

  /// Create a copy of WorkExperienceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkExperienceOrderByInputImplCopyWith<_$WorkExperienceOrderByInputImpl>
      get copyWith => __$$WorkExperienceOrderByInputImplCopyWithImpl<
          _$WorkExperienceOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkExperienceOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _WorkExperienceOrderByInput
    implements WorkExperienceOrderByInput {
  const factory _WorkExperienceOrderByInput(
      {final SortOrder? id,
      final SortOrder? company,
      final SortOrder? companyDomain,
      final SortOrder? title,
      final SortOrder? location,
      final SortOrder? startDate,
      final SortOrder? endDate,
      final SortOrder? isCurrent,
      final SortOrder? description,
      final SortOrder? userId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$WorkExperienceOrderByInputImpl;

  factory _WorkExperienceOrderByInput.fromJson(Map<String, dynamic> json) =
      _$WorkExperienceOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get company;
  @override
  SortOrder? get companyDomain;
  @override
  SortOrder? get title;
  @override
  SortOrder? get location;
  @override
  SortOrder? get startDate;
  @override
  SortOrder? get endDate;
  @override
  SortOrder? get isCurrent;
  @override
  SortOrder? get description;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of WorkExperienceOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkExperienceOrderByInputImplCopyWith<_$WorkExperienceOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
