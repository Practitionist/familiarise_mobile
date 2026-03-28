// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassContent _$ClassContentFromJson(Map<String, dynamic> json) {
  return _ClassContent.fromJson(json);
}

/// @nodoc
mixin _$ClassContent {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;
  String? get contentUrl => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  double get hoursAllotted => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ClassPlan? get classPlan => throw _privateConstructorUsedError;
  String get classPlanId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ClassContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassContentCopyWith<ClassContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassContentCopyWith<$Res> {
  factory $ClassContentCopyWith(
          ClassContent value, $Res Function(ClassContent) then) =
      _$ClassContentCopyWithImpl<$Res, ClassContent>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String? contentType,
      String? contentUrl,
      int order,
      double hoursAllotted,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ClassPlan? classPlan,
      String classPlanId,
      DateTime createdAt,
      DateTime updatedAt});

  $ClassPlanCopyWith<$Res>? get classPlan;
}

/// @nodoc
class _$ClassContentCopyWithImpl<$Res, $Val extends ClassContent>
    implements $ClassContentCopyWith<$Res> {
  _$ClassContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = null,
    Object? hoursAllotted = null,
    Object? classPlan = freezed,
    Object? classPlanId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      hoursAllotted: null == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as double,
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlan?,
      classPlanId: null == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of ClassContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassPlanCopyWith<$Res>? get classPlan {
    if (_value.classPlan == null) {
      return null;
    }

    return $ClassPlanCopyWith<$Res>(_value.classPlan!, (value) {
      return _then(_value.copyWith(classPlan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassContentImplCopyWith<$Res>
    implements $ClassContentCopyWith<$Res> {
  factory _$$ClassContentImplCopyWith(
          _$ClassContentImpl value, $Res Function(_$ClassContentImpl) then) =
      __$$ClassContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String? contentType,
      String? contentUrl,
      int order,
      double hoursAllotted,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ClassPlan? classPlan,
      String classPlanId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ClassPlanCopyWith<$Res>? get classPlan;
}

/// @nodoc
class __$$ClassContentImplCopyWithImpl<$Res>
    extends _$ClassContentCopyWithImpl<$Res, _$ClassContentImpl>
    implements _$$ClassContentImplCopyWith<$Res> {
  __$$ClassContentImplCopyWithImpl(
      _$ClassContentImpl _value, $Res Function(_$ClassContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = null,
    Object? hoursAllotted = null,
    Object? classPlan = freezed,
    Object? classPlanId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ClassContentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      hoursAllotted: null == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as double,
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlan?,
      classPlanId: null == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
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
class _$ClassContentImpl implements _ClassContent {
  const _$ClassContentImpl(
      {required this.id,
      required this.title,
      required this.description,
      this.contentType,
      this.contentUrl,
      required this.order,
      required this.hoursAllotted,
      @JsonKey(includeFromJson: false, includeToJson: false) this.classPlan,
      required this.classPlanId,
      required this.createdAt,
      required this.updatedAt});

  factory _$ClassContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassContentImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String? contentType;
  @override
  final String? contentUrl;
  @override
  final int order;
  @override
  final double hoursAllotted;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ClassPlan? classPlan;
  @override
  final String classPlanId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ClassContent(id: $id, title: $title, description: $description, contentType: $contentType, contentUrl: $contentUrl, order: $order, hoursAllotted: $hoursAllotted, classPlan: $classPlan, classPlanId: $classPlanId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassContentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.hoursAllotted, hoursAllotted) ||
                other.hoursAllotted == hoursAllotted) &&
            (identical(other.classPlan, classPlan) ||
                other.classPlan == classPlan) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId) &&
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
      title,
      description,
      contentType,
      contentUrl,
      order,
      hoursAllotted,
      classPlan,
      classPlanId,
      createdAt,
      updatedAt);

  /// Create a copy of ClassContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassContentImplCopyWith<_$ClassContentImpl> get copyWith =>
      __$$ClassContentImplCopyWithImpl<_$ClassContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassContentImplToJson(
      this,
    );
  }
}

abstract class _ClassContent implements ClassContent {
  const factory _ClassContent(
      {required final String id,
      required final String title,
      required final String description,
      final String? contentType,
      final String? contentUrl,
      required final int order,
      required final double hoursAllotted,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ClassPlan? classPlan,
      required final String classPlanId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ClassContentImpl;

  factory _ClassContent.fromJson(Map<String, dynamic> json) =
      _$ClassContentImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String? get contentType;
  @override
  String? get contentUrl;
  @override
  int get order;
  @override
  double get hoursAllotted;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ClassPlan? get classPlan;
  @override
  String get classPlanId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ClassContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassContentImplCopyWith<_$ClassContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateClassContentInput _$CreateClassContentInputFromJson(
    Map<String, dynamic> json) {
  return _CreateClassContentInput.fromJson(json);
}

/// @nodoc
mixin _$CreateClassContentInput {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;
  String? get contentUrl => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  double get hoursAllotted => throw _privateConstructorUsedError;
  String get classPlanId => throw _privateConstructorUsedError;

  /// Serializes this CreateClassContentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateClassContentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateClassContentInputCopyWith<CreateClassContentInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateClassContentInputCopyWith<$Res> {
  factory $CreateClassContentInputCopyWith(CreateClassContentInput value,
          $Res Function(CreateClassContentInput) then) =
      _$CreateClassContentInputCopyWithImpl<$Res, CreateClassContentInput>;
  @useResult
  $Res call(
      {String title,
      String description,
      String? contentType,
      String? contentUrl,
      int order,
      double hoursAllotted,
      String classPlanId});
}

/// @nodoc
class _$CreateClassContentInputCopyWithImpl<$Res,
        $Val extends CreateClassContentInput>
    implements $CreateClassContentInputCopyWith<$Res> {
  _$CreateClassContentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateClassContentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = null,
    Object? hoursAllotted = null,
    Object? classPlanId = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      hoursAllotted: null == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as double,
      classPlanId: null == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateClassContentInputImplCopyWith<$Res>
    implements $CreateClassContentInputCopyWith<$Res> {
  factory _$$CreateClassContentInputImplCopyWith(
          _$CreateClassContentInputImpl value,
          $Res Function(_$CreateClassContentInputImpl) then) =
      __$$CreateClassContentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String? contentType,
      String? contentUrl,
      int order,
      double hoursAllotted,
      String classPlanId});
}

/// @nodoc
class __$$CreateClassContentInputImplCopyWithImpl<$Res>
    extends _$CreateClassContentInputCopyWithImpl<$Res,
        _$CreateClassContentInputImpl>
    implements _$$CreateClassContentInputImplCopyWith<$Res> {
  __$$CreateClassContentInputImplCopyWithImpl(
      _$CreateClassContentInputImpl _value,
      $Res Function(_$CreateClassContentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateClassContentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = null,
    Object? hoursAllotted = null,
    Object? classPlanId = null,
  }) {
    return _then(_$CreateClassContentInputImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      hoursAllotted: null == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as double,
      classPlanId: null == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateClassContentInputImpl implements _CreateClassContentInput {
  const _$CreateClassContentInputImpl(
      {required this.title,
      required this.description,
      this.contentType,
      this.contentUrl,
      required this.order,
      required this.hoursAllotted,
      required this.classPlanId});

  factory _$CreateClassContentInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateClassContentInputImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String? contentType;
  @override
  final String? contentUrl;
  @override
  final int order;
  @override
  final double hoursAllotted;
  @override
  final String classPlanId;

  @override
  String toString() {
    return 'CreateClassContentInput(title: $title, description: $description, contentType: $contentType, contentUrl: $contentUrl, order: $order, hoursAllotted: $hoursAllotted, classPlanId: $classPlanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateClassContentInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.hoursAllotted, hoursAllotted) ||
                other.hoursAllotted == hoursAllotted) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, contentType,
      contentUrl, order, hoursAllotted, classPlanId);

  /// Create a copy of CreateClassContentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateClassContentInputImplCopyWith<_$CreateClassContentInputImpl>
      get copyWith => __$$CreateClassContentInputImplCopyWithImpl<
          _$CreateClassContentInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateClassContentInputImplToJson(
      this,
    );
  }
}

abstract class _CreateClassContentInput implements CreateClassContentInput {
  const factory _CreateClassContentInput(
      {required final String title,
      required final String description,
      final String? contentType,
      final String? contentUrl,
      required final int order,
      required final double hoursAllotted,
      required final String classPlanId}) = _$CreateClassContentInputImpl;

  factory _CreateClassContentInput.fromJson(Map<String, dynamic> json) =
      _$CreateClassContentInputImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String? get contentType;
  @override
  String? get contentUrl;
  @override
  int get order;
  @override
  double get hoursAllotted;
  @override
  String get classPlanId;

  /// Create a copy of CreateClassContentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateClassContentInputImplCopyWith<_$CreateClassContentInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateClassContentInput _$UpdateClassContentInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateClassContentInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateClassContentInput {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;
  String? get contentUrl => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  double? get hoursAllotted => throw _privateConstructorUsedError;
  String? get classPlanId => throw _privateConstructorUsedError;

  /// Serializes this UpdateClassContentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateClassContentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateClassContentInputCopyWith<UpdateClassContentInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateClassContentInputCopyWith<$Res> {
  factory $UpdateClassContentInputCopyWith(UpdateClassContentInput value,
          $Res Function(UpdateClassContentInput) then) =
      _$UpdateClassContentInputCopyWithImpl<$Res, UpdateClassContentInput>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? contentType,
      String? contentUrl,
      int? order,
      double? hoursAllotted,
      String? classPlanId});
}

/// @nodoc
class _$UpdateClassContentInputCopyWithImpl<$Res,
        $Val extends UpdateClassContentInput>
    implements $UpdateClassContentInputCopyWith<$Res> {
  _$UpdateClassContentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateClassContentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = freezed,
    Object? hoursAllotted = freezed,
    Object? classPlanId = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      hoursAllotted: freezed == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as double?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateClassContentInputImplCopyWith<$Res>
    implements $UpdateClassContentInputCopyWith<$Res> {
  factory _$$UpdateClassContentInputImplCopyWith(
          _$UpdateClassContentInputImpl value,
          $Res Function(_$UpdateClassContentInputImpl) then) =
      __$$UpdateClassContentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? contentType,
      String? contentUrl,
      int? order,
      double? hoursAllotted,
      String? classPlanId});
}

/// @nodoc
class __$$UpdateClassContentInputImplCopyWithImpl<$Res>
    extends _$UpdateClassContentInputCopyWithImpl<$Res,
        _$UpdateClassContentInputImpl>
    implements _$$UpdateClassContentInputImplCopyWith<$Res> {
  __$$UpdateClassContentInputImplCopyWithImpl(
      _$UpdateClassContentInputImpl _value,
      $Res Function(_$UpdateClassContentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateClassContentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = freezed,
    Object? hoursAllotted = freezed,
    Object? classPlanId = freezed,
  }) {
    return _then(_$UpdateClassContentInputImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      hoursAllotted: freezed == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as double?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateClassContentInputImpl implements _UpdateClassContentInput {
  const _$UpdateClassContentInputImpl(
      {this.title,
      this.description,
      this.contentType,
      this.contentUrl,
      this.order,
      this.hoursAllotted,
      this.classPlanId});

  factory _$UpdateClassContentInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateClassContentInputImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? contentType;
  @override
  final String? contentUrl;
  @override
  final int? order;
  @override
  final double? hoursAllotted;
  @override
  final String? classPlanId;

  @override
  String toString() {
    return 'UpdateClassContentInput(title: $title, description: $description, contentType: $contentType, contentUrl: $contentUrl, order: $order, hoursAllotted: $hoursAllotted, classPlanId: $classPlanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateClassContentInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.hoursAllotted, hoursAllotted) ||
                other.hoursAllotted == hoursAllotted) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, contentType,
      contentUrl, order, hoursAllotted, classPlanId);

  /// Create a copy of UpdateClassContentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateClassContentInputImplCopyWith<_$UpdateClassContentInputImpl>
      get copyWith => __$$UpdateClassContentInputImplCopyWithImpl<
          _$UpdateClassContentInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateClassContentInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateClassContentInput implements UpdateClassContentInput {
  const factory _UpdateClassContentInput(
      {final String? title,
      final String? description,
      final String? contentType,
      final String? contentUrl,
      final int? order,
      final double? hoursAllotted,
      final String? classPlanId}) = _$UpdateClassContentInputImpl;

  factory _UpdateClassContentInput.fromJson(Map<String, dynamic> json) =
      _$UpdateClassContentInputImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get contentType;
  @override
  String? get contentUrl;
  @override
  int? get order;
  @override
  double? get hoursAllotted;
  @override
  String? get classPlanId;

  /// Create a copy of UpdateClassContentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateClassContentInputImplCopyWith<_$UpdateClassContentInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassContentWhereUniqueInput _$ClassContentWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ClassContentWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ClassContentWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ClassContentWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassContentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassContentWhereUniqueInputCopyWith<ClassContentWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassContentWhereUniqueInputCopyWith<$Res> {
  factory $ClassContentWhereUniqueInputCopyWith(
          ClassContentWhereUniqueInput value,
          $Res Function(ClassContentWhereUniqueInput) then) =
      _$ClassContentWhereUniqueInputCopyWithImpl<$Res,
          ClassContentWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ClassContentWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ClassContentWhereUniqueInput>
    implements $ClassContentWhereUniqueInputCopyWith<$Res> {
  _$ClassContentWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassContentWhereUniqueInput
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
abstract class _$$ClassContentWhereUniqueInputImplCopyWith<$Res>
    implements $ClassContentWhereUniqueInputCopyWith<$Res> {
  factory _$$ClassContentWhereUniqueInputImplCopyWith(
          _$ClassContentWhereUniqueInputImpl value,
          $Res Function(_$ClassContentWhereUniqueInputImpl) then) =
      __$$ClassContentWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$ClassContentWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ClassContentWhereUniqueInputCopyWithImpl<$Res,
        _$ClassContentWhereUniqueInputImpl>
    implements _$$ClassContentWhereUniqueInputImplCopyWith<$Res> {
  __$$ClassContentWhereUniqueInputImplCopyWithImpl(
      _$ClassContentWhereUniqueInputImpl _value,
      $Res Function(_$ClassContentWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassContentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ClassContentWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassContentWhereUniqueInputImpl
    implements _ClassContentWhereUniqueInput {
  const _$ClassContentWhereUniqueInputImpl({this.id});

  factory _$ClassContentWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClassContentWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'ClassContentWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassContentWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ClassContentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassContentWhereUniqueInputImplCopyWith<
          _$ClassContentWhereUniqueInputImpl>
      get copyWith => __$$ClassContentWhereUniqueInputImplCopyWithImpl<
          _$ClassContentWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassContentWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ClassContentWhereUniqueInput
    implements ClassContentWhereUniqueInput {
  const factory _ClassContentWhereUniqueInput({final String? id}) =
      _$ClassContentWhereUniqueInputImpl;

  factory _ClassContentWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$ClassContentWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of ClassContentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassContentWhereUniqueInputImplCopyWith<
          _$ClassContentWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassContentWhereInput _$ClassContentWhereInputFromJson(
    Map<String, dynamic> json) {
  return _ClassContentWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ClassContentWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get title => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  StringFilter? get contentType => throw _privateConstructorUsedError;
  StringFilter? get contentUrl => throw _privateConstructorUsedError;
  IntFilter? get order => throw _privateConstructorUsedError;
  FloatFilter? get hoursAllotted => throw _privateConstructorUsedError;

  /// Filter by classPlan relation
  ClassPlanRelationFilter? get classPlan => throw _privateConstructorUsedError;
  StringFilter? get classPlanId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<ClassContentWhereInput>? get AND => throw _privateConstructorUsedError;
  List<ClassContentWhereInput>? get OR => throw _privateConstructorUsedError;
  ClassContentWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ClassContentWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassContentWhereInputCopyWith<ClassContentWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassContentWhereInputCopyWith<$Res> {
  factory $ClassContentWhereInputCopyWith(ClassContentWhereInput value,
          $Res Function(ClassContentWhereInput) then) =
      _$ClassContentWhereInputCopyWithImpl<$Res, ClassContentWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      StringFilter? contentType,
      StringFilter? contentUrl,
      IntFilter? order,
      FloatFilter? hoursAllotted,
      ClassPlanRelationFilter? classPlan,
      StringFilter? classPlanId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ClassContentWhereInput>? AND,
      List<ClassContentWhereInput>? OR,
      ClassContentWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get title;
  $StringFilterCopyWith<$Res>? get description;
  $StringFilterCopyWith<$Res>? get contentType;
  $StringFilterCopyWith<$Res>? get contentUrl;
  $IntFilterCopyWith<$Res>? get order;
  $FloatFilterCopyWith<$Res>? get hoursAllotted;
  $ClassPlanRelationFilterCopyWith<$Res>? get classPlan;
  $StringFilterCopyWith<$Res>? get classPlanId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ClassContentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ClassContentWhereInputCopyWithImpl<$Res,
        $Val extends ClassContentWhereInput>
    implements $ClassContentWhereInputCopyWith<$Res> {
  _$ClassContentWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = freezed,
    Object? hoursAllotted = freezed,
    Object? classPlan = freezed,
    Object? classPlanId = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      hoursAllotted: freezed == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlanRelationFilter?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
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
              as List<ClassContentWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ClassContentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ClassContentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ClassContentWhereInput
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

  /// Create a copy of ClassContentWhereInput
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

  /// Create a copy of ClassContentWhereInput
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

  /// Create a copy of ClassContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get contentType {
    if (_value.contentType == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.contentType!, (value) {
      return _then(_value.copyWith(contentType: value) as $Val);
    });
  }

  /// Create a copy of ClassContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get contentUrl {
    if (_value.contentUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.contentUrl!, (value) {
      return _then(_value.copyWith(contentUrl: value) as $Val);
    });
  }

  /// Create a copy of ClassContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }

  /// Create a copy of ClassContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get hoursAllotted {
    if (_value.hoursAllotted == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.hoursAllotted!, (value) {
      return _then(_value.copyWith(hoursAllotted: value) as $Val);
    });
  }

  /// Create a copy of ClassContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassPlanRelationFilterCopyWith<$Res>? get classPlan {
    if (_value.classPlan == null) {
      return null;
    }

    return $ClassPlanRelationFilterCopyWith<$Res>(_value.classPlan!, (value) {
      return _then(_value.copyWith(classPlan: value) as $Val);
    });
  }

  /// Create a copy of ClassContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get classPlanId {
    if (_value.classPlanId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.classPlanId!, (value) {
      return _then(_value.copyWith(classPlanId: value) as $Val);
    });
  }

  /// Create a copy of ClassContentWhereInput
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

  /// Create a copy of ClassContentWhereInput
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

  /// Create a copy of ClassContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassContentWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ClassContentWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassContentWhereInputImplCopyWith<$Res>
    implements $ClassContentWhereInputCopyWith<$Res> {
  factory _$$ClassContentWhereInputImplCopyWith(
          _$ClassContentWhereInputImpl value,
          $Res Function(_$ClassContentWhereInputImpl) then) =
      __$$ClassContentWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      StringFilter? contentType,
      StringFilter? contentUrl,
      IntFilter? order,
      FloatFilter? hoursAllotted,
      ClassPlanRelationFilter? classPlan,
      StringFilter? classPlanId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ClassContentWhereInput>? AND,
      List<ClassContentWhereInput>? OR,
      ClassContentWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get title;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $StringFilterCopyWith<$Res>? get contentType;
  @override
  $StringFilterCopyWith<$Res>? get contentUrl;
  @override
  $IntFilterCopyWith<$Res>? get order;
  @override
  $FloatFilterCopyWith<$Res>? get hoursAllotted;
  @override
  $ClassPlanRelationFilterCopyWith<$Res>? get classPlan;
  @override
  $StringFilterCopyWith<$Res>? get classPlanId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ClassContentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ClassContentWhereInputImplCopyWithImpl<$Res>
    extends _$ClassContentWhereInputCopyWithImpl<$Res,
        _$ClassContentWhereInputImpl>
    implements _$$ClassContentWhereInputImplCopyWith<$Res> {
  __$$ClassContentWhereInputImplCopyWithImpl(
      _$ClassContentWhereInputImpl _value,
      $Res Function(_$ClassContentWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = freezed,
    Object? hoursAllotted = freezed,
    Object? classPlan = freezed,
    Object? classPlanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ClassContentWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      hoursAllotted: freezed == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlanRelationFilter?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
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
              as List<ClassContentWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ClassContentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ClassContentWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ClassContentWhereInputImpl implements _ClassContentWhereInput {
  const _$ClassContentWhereInputImpl(
      {this.id,
      this.title,
      this.description,
      this.contentType,
      this.contentUrl,
      this.order,
      this.hoursAllotted,
      this.classPlan,
      this.classPlanId,
      this.createdAt,
      this.updatedAt,
      final List<ClassContentWhereInput>? AND,
      final List<ClassContentWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ClassContentWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassContentWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? title;
  @override
  final StringFilter? description;
  @override
  final StringFilter? contentType;
  @override
  final StringFilter? contentUrl;
  @override
  final IntFilter? order;
  @override
  final FloatFilter? hoursAllotted;

  /// Filter by classPlan relation
  @override
  final ClassPlanRelationFilter? classPlan;
  @override
  final StringFilter? classPlanId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<ClassContentWhereInput>? _AND;
  @override
  List<ClassContentWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ClassContentWhereInput>? _OR;
  @override
  List<ClassContentWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ClassContentWhereInput? NOT;

  @override
  String toString() {
    return 'ClassContentWhereInput(id: $id, title: $title, description: $description, contentType: $contentType, contentUrl: $contentUrl, order: $order, hoursAllotted: $hoursAllotted, classPlan: $classPlan, classPlanId: $classPlanId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassContentWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.hoursAllotted, hoursAllotted) ||
                other.hoursAllotted == hoursAllotted) &&
            (identical(other.classPlan, classPlan) ||
                other.classPlan == classPlan) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId) &&
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
      title,
      description,
      contentType,
      contentUrl,
      order,
      hoursAllotted,
      classPlan,
      classPlanId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of ClassContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassContentWhereInputImplCopyWith<_$ClassContentWhereInputImpl>
      get copyWith => __$$ClassContentWhereInputImplCopyWithImpl<
          _$ClassContentWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassContentWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ClassContentWhereInput implements ClassContentWhereInput {
  const factory _ClassContentWhereInput(
      {final StringFilter? id,
      final StringFilter? title,
      final StringFilter? description,
      final StringFilter? contentType,
      final StringFilter? contentUrl,
      final IntFilter? order,
      final FloatFilter? hoursAllotted,
      final ClassPlanRelationFilter? classPlan,
      final StringFilter? classPlanId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<ClassContentWhereInput>? AND,
      final List<ClassContentWhereInput>? OR,
      final ClassContentWhereInput? NOT}) = _$ClassContentWhereInputImpl;

  factory _ClassContentWhereInput.fromJson(Map<String, dynamic> json) =
      _$ClassContentWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get title;
  @override
  StringFilter? get description;
  @override
  StringFilter? get contentType;
  @override
  StringFilter? get contentUrl;
  @override
  IntFilter? get order;
  @override
  FloatFilter? get hoursAllotted;

  /// Filter by classPlan relation
  @override
  ClassPlanRelationFilter? get classPlan;
  @override
  StringFilter? get classPlanId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<ClassContentWhereInput>? get AND;
  @override
  List<ClassContentWhereInput>? get OR;
  @override
  ClassContentWhereInput? get NOT;

  /// Create a copy of ClassContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassContentWhereInputImplCopyWith<_$ClassContentWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassContentListRelationFilter _$ClassContentListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ClassContentListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ClassContentListRelationFilter {
  /// At least one related record matches
  ClassContentWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ClassContentWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ClassContentWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ClassContentListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassContentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassContentListRelationFilterCopyWith<ClassContentListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassContentListRelationFilterCopyWith<$Res> {
  factory $ClassContentListRelationFilterCopyWith(
          ClassContentListRelationFilter value,
          $Res Function(ClassContentListRelationFilter) then) =
      _$ClassContentListRelationFilterCopyWithImpl<$Res,
          ClassContentListRelationFilter>;
  @useResult
  $Res call(
      {ClassContentWhereInput? some,
      ClassContentWhereInput? every,
      ClassContentWhereInput? none});

  $ClassContentWhereInputCopyWith<$Res>? get some;
  $ClassContentWhereInputCopyWith<$Res>? get every;
  $ClassContentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ClassContentListRelationFilterCopyWithImpl<$Res,
        $Val extends ClassContentListRelationFilter>
    implements $ClassContentListRelationFilterCopyWith<$Res> {
  _$ClassContentListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassContentListRelationFilter
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
              as ClassContentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ClassContentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ClassContentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ClassContentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassContentWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ClassContentWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ClassContentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassContentWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ClassContentWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ClassContentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassContentWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ClassContentWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassContentListRelationFilterImplCopyWith<$Res>
    implements $ClassContentListRelationFilterCopyWith<$Res> {
  factory _$$ClassContentListRelationFilterImplCopyWith(
          _$ClassContentListRelationFilterImpl value,
          $Res Function(_$ClassContentListRelationFilterImpl) then) =
      __$$ClassContentListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ClassContentWhereInput? some,
      ClassContentWhereInput? every,
      ClassContentWhereInput? none});

  @override
  $ClassContentWhereInputCopyWith<$Res>? get some;
  @override
  $ClassContentWhereInputCopyWith<$Res>? get every;
  @override
  $ClassContentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ClassContentListRelationFilterImplCopyWithImpl<$Res>
    extends _$ClassContentListRelationFilterCopyWithImpl<$Res,
        _$ClassContentListRelationFilterImpl>
    implements _$$ClassContentListRelationFilterImplCopyWith<$Res> {
  __$$ClassContentListRelationFilterImplCopyWithImpl(
      _$ClassContentListRelationFilterImpl _value,
      $Res Function(_$ClassContentListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassContentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ClassContentListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ClassContentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ClassContentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ClassContentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassContentListRelationFilterImpl
    implements _ClassContentListRelationFilter {
  const _$ClassContentListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ClassContentListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClassContentListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ClassContentWhereInput? some;

  /// All related records match
  @override
  final ClassContentWhereInput? every;

  /// No related records match
  @override
  final ClassContentWhereInput? none;

  @override
  String toString() {
    return 'ClassContentListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassContentListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ClassContentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassContentListRelationFilterImplCopyWith<
          _$ClassContentListRelationFilterImpl>
      get copyWith => __$$ClassContentListRelationFilterImplCopyWithImpl<
          _$ClassContentListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassContentListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ClassContentListRelationFilter
    implements ClassContentListRelationFilter {
  const factory _ClassContentListRelationFilter(
          {final ClassContentWhereInput? some,
          final ClassContentWhereInput? every,
          final ClassContentWhereInput? none}) =
      _$ClassContentListRelationFilterImpl;

  factory _ClassContentListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ClassContentListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ClassContentWhereInput? get some;

  /// All related records match
  @override
  ClassContentWhereInput? get every;

  /// No related records match
  @override
  ClassContentWhereInput? get none;

  /// Create a copy of ClassContentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassContentListRelationFilterImplCopyWith<
          _$ClassContentListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassContentRelationFilter _$ClassContentRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ClassContentRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ClassContentRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ClassContentWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ClassContentWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ClassContentRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassContentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassContentRelationFilterCopyWith<ClassContentRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassContentRelationFilterCopyWith<$Res> {
  factory $ClassContentRelationFilterCopyWith(ClassContentRelationFilter value,
          $Res Function(ClassContentRelationFilter) then) =
      _$ClassContentRelationFilterCopyWithImpl<$Res,
          ClassContentRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ClassContentWhereInput? is_,
      ClassContentWhereInput? isNot});

  $ClassContentWhereInputCopyWith<$Res>? get is_;
  $ClassContentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ClassContentRelationFilterCopyWithImpl<$Res,
        $Val extends ClassContentRelationFilter>
    implements $ClassContentRelationFilterCopyWith<$Res> {
  _$ClassContentRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassContentRelationFilter
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
              as ClassContentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ClassContentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ClassContentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassContentWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ClassContentWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ClassContentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassContentWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ClassContentWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassContentRelationFilterImplCopyWith<$Res>
    implements $ClassContentRelationFilterCopyWith<$Res> {
  factory _$$ClassContentRelationFilterImplCopyWith(
          _$ClassContentRelationFilterImpl value,
          $Res Function(_$ClassContentRelationFilterImpl) then) =
      __$$ClassContentRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ClassContentWhereInput? is_,
      ClassContentWhereInput? isNot});

  @override
  $ClassContentWhereInputCopyWith<$Res>? get is_;
  @override
  $ClassContentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ClassContentRelationFilterImplCopyWithImpl<$Res>
    extends _$ClassContentRelationFilterCopyWithImpl<$Res,
        _$ClassContentRelationFilterImpl>
    implements _$$ClassContentRelationFilterImplCopyWith<$Res> {
  __$$ClassContentRelationFilterImplCopyWithImpl(
      _$ClassContentRelationFilterImpl _value,
      $Res Function(_$ClassContentRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassContentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ClassContentRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ClassContentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ClassContentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassContentRelationFilterImpl implements _ClassContentRelationFilter {
  const _$ClassContentRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ClassContentRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClassContentRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ClassContentWhereInput? is_;

  /// Related record does not match
  @override
  final ClassContentWhereInput? isNot;

  @override
  String toString() {
    return 'ClassContentRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassContentRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ClassContentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassContentRelationFilterImplCopyWith<_$ClassContentRelationFilterImpl>
      get copyWith => __$$ClassContentRelationFilterImplCopyWithImpl<
          _$ClassContentRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassContentRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ClassContentRelationFilter
    implements ClassContentRelationFilter {
  const factory _ClassContentRelationFilter(
      {@JsonKey(name: 'is') final ClassContentWhereInput? is_,
      final ClassContentWhereInput? isNot}) = _$ClassContentRelationFilterImpl;

  factory _ClassContentRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ClassContentRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ClassContentWhereInput? get is_;

  /// Related record does not match
  @override
  ClassContentWhereInput? get isNot;

  /// Create a copy of ClassContentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassContentRelationFilterImplCopyWith<_$ClassContentRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassContentOrderByInput _$ClassContentOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ClassContentOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ClassContentOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get title => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get contentType => throw _privateConstructorUsedError;
  SortOrder? get contentUrl => throw _privateConstructorUsedError;
  SortOrder? get order => throw _privateConstructorUsedError;
  SortOrder? get hoursAllotted => throw _privateConstructorUsedError;
  SortOrder? get classPlanId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ClassContentOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassContentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassContentOrderByInputCopyWith<ClassContentOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassContentOrderByInputCopyWith<$Res> {
  factory $ClassContentOrderByInputCopyWith(ClassContentOrderByInput value,
          $Res Function(ClassContentOrderByInput) then) =
      _$ClassContentOrderByInputCopyWithImpl<$Res, ClassContentOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? contentType,
      SortOrder? contentUrl,
      SortOrder? order,
      SortOrder? hoursAllotted,
      SortOrder? classPlanId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$ClassContentOrderByInputCopyWithImpl<$Res,
        $Val extends ClassContentOrderByInput>
    implements $ClassContentOrderByInputCopyWith<$Res> {
  _$ClassContentOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassContentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = freezed,
    Object? hoursAllotted = freezed,
    Object? classPlanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      hoursAllotted: freezed == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ClassContentOrderByInputImplCopyWith<$Res>
    implements $ClassContentOrderByInputCopyWith<$Res> {
  factory _$$ClassContentOrderByInputImplCopyWith(
          _$ClassContentOrderByInputImpl value,
          $Res Function(_$ClassContentOrderByInputImpl) then) =
      __$$ClassContentOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? contentType,
      SortOrder? contentUrl,
      SortOrder? order,
      SortOrder? hoursAllotted,
      SortOrder? classPlanId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$ClassContentOrderByInputImplCopyWithImpl<$Res>
    extends _$ClassContentOrderByInputCopyWithImpl<$Res,
        _$ClassContentOrderByInputImpl>
    implements _$$ClassContentOrderByInputImplCopyWith<$Res> {
  __$$ClassContentOrderByInputImplCopyWithImpl(
      _$ClassContentOrderByInputImpl _value,
      $Res Function(_$ClassContentOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassContentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = freezed,
    Object? hoursAllotted = freezed,
    Object? classPlanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ClassContentOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      hoursAllotted: freezed == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
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
class _$ClassContentOrderByInputImpl implements _ClassContentOrderByInput {
  const _$ClassContentOrderByInputImpl(
      {this.id,
      this.title,
      this.description,
      this.contentType,
      this.contentUrl,
      this.order,
      this.hoursAllotted,
      this.classPlanId,
      this.createdAt,
      this.updatedAt});

  factory _$ClassContentOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassContentOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? title;
  @override
  final SortOrder? description;
  @override
  final SortOrder? contentType;
  @override
  final SortOrder? contentUrl;
  @override
  final SortOrder? order;
  @override
  final SortOrder? hoursAllotted;
  @override
  final SortOrder? classPlanId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'ClassContentOrderByInput(id: $id, title: $title, description: $description, contentType: $contentType, contentUrl: $contentUrl, order: $order, hoursAllotted: $hoursAllotted, classPlanId: $classPlanId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassContentOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.hoursAllotted, hoursAllotted) ||
                other.hoursAllotted == hoursAllotted) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId) &&
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
      title,
      description,
      contentType,
      contentUrl,
      order,
      hoursAllotted,
      classPlanId,
      createdAt,
      updatedAt);

  /// Create a copy of ClassContentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassContentOrderByInputImplCopyWith<_$ClassContentOrderByInputImpl>
      get copyWith => __$$ClassContentOrderByInputImplCopyWithImpl<
          _$ClassContentOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassContentOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ClassContentOrderByInput implements ClassContentOrderByInput {
  const factory _ClassContentOrderByInput(
      {final SortOrder? id,
      final SortOrder? title,
      final SortOrder? description,
      final SortOrder? contentType,
      final SortOrder? contentUrl,
      final SortOrder? order,
      final SortOrder? hoursAllotted,
      final SortOrder? classPlanId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$ClassContentOrderByInputImpl;

  factory _ClassContentOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ClassContentOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get title;
  @override
  SortOrder? get description;
  @override
  SortOrder? get contentType;
  @override
  SortOrder? get contentUrl;
  @override
  SortOrder? get order;
  @override
  SortOrder? get hoursAllotted;
  @override
  SortOrder? get classPlanId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of ClassContentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassContentOrderByInputImplCopyWith<_$ClassContentOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
