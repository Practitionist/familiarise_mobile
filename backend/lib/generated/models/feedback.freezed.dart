// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Feedback _$FeedbackFromJson(Map<String, dynamic> json) {
  return _Feedback.fromJson(json);
}

/// @nodoc
mixin _$Feedback {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  FeedbackStatus get status => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Feedback to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackCopyWith<Feedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackCopyWith<$Res> {
  factory $FeedbackCopyWith(Feedback value, $Res Function(Feedback) then) =
      _$FeedbackCopyWithImpl<$Res, Feedback>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int? rating,
      String? category,
      FeedbackStatus status,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$FeedbackCopyWithImpl<$Res, $Val extends Feedback>
    implements $FeedbackCopyWith<$Res> {
  _$FeedbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? rating = freezed,
    Object? category = freezed,
    Object? status = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStatus,
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

  /// Create a copy of Feedback
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
abstract class _$$FeedbackImplCopyWith<$Res>
    implements $FeedbackCopyWith<$Res> {
  factory _$$FeedbackImplCopyWith(
          _$FeedbackImpl value, $Res Function(_$FeedbackImpl) then) =
      __$$FeedbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int? rating,
      String? category,
      FeedbackStatus status,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$FeedbackImplCopyWithImpl<$Res>
    extends _$FeedbackCopyWithImpl<$Res, _$FeedbackImpl>
    implements _$$FeedbackImplCopyWith<$Res> {
  __$$FeedbackImplCopyWithImpl(
      _$FeedbackImpl _value, $Res Function(_$FeedbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? rating = freezed,
    Object? category = freezed,
    Object? status = null,
    Object? user = freezed,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$FeedbackImpl(
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStatus,
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
class _$FeedbackImpl implements _Feedback {
  const _$FeedbackImpl(
      {required this.id,
      required this.title,
      required this.description,
      this.rating,
      this.category,
      this.status = FeedbackStatus.pending,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required this.userId,
      required this.createdAt,
      required this.updatedAt});

  factory _$FeedbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int? rating;
  @override
  final String? category;
  @override
  @JsonKey()
  final FeedbackStatus status;
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
    return 'Feedback(id: $id, title: $title, description: $description, rating: $rating, category: $category, status: $status, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, rating,
      category, status, user, userId, createdAt, updatedAt);

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackImplCopyWith<_$FeedbackImpl> get copyWith =>
      __$$FeedbackImplCopyWithImpl<_$FeedbackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackImplToJson(
      this,
    );
  }
}

abstract class _Feedback implements Feedback {
  const factory _Feedback(
      {required final String id,
      required final String title,
      required final String description,
      final int? rating,
      final String? category,
      final FeedbackStatus status,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final String userId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$FeedbackImpl;

  factory _Feedback.fromJson(Map<String, dynamic> json) =
      _$FeedbackImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int? get rating;
  @override
  String? get category;
  @override
  FeedbackStatus get status;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  String get userId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackImplCopyWith<_$FeedbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateFeedbackInput _$CreateFeedbackInputFromJson(Map<String, dynamic> json) {
  return _CreateFeedbackInput.fromJson(json);
}

/// @nodoc
mixin _$CreateFeedbackInput {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  FeedbackStatus get status => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this CreateFeedbackInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateFeedbackInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFeedbackInputCopyWith<CreateFeedbackInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFeedbackInputCopyWith<$Res> {
  factory $CreateFeedbackInputCopyWith(
          CreateFeedbackInput value, $Res Function(CreateFeedbackInput) then) =
      _$CreateFeedbackInputCopyWithImpl<$Res, CreateFeedbackInput>;
  @useResult
  $Res call(
      {String title,
      String description,
      int? rating,
      String? category,
      FeedbackStatus status,
      String userId});
}

/// @nodoc
class _$CreateFeedbackInputCopyWithImpl<$Res, $Val extends CreateFeedbackInput>
    implements $CreateFeedbackInputCopyWith<$Res> {
  _$CreateFeedbackInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFeedbackInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? rating = freezed,
    Object? category = freezed,
    Object? status = null,
    Object? userId = null,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStatus,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateFeedbackInputImplCopyWith<$Res>
    implements $CreateFeedbackInputCopyWith<$Res> {
  factory _$$CreateFeedbackInputImplCopyWith(_$CreateFeedbackInputImpl value,
          $Res Function(_$CreateFeedbackInputImpl) then) =
      __$$CreateFeedbackInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      int? rating,
      String? category,
      FeedbackStatus status,
      String userId});
}

/// @nodoc
class __$$CreateFeedbackInputImplCopyWithImpl<$Res>
    extends _$CreateFeedbackInputCopyWithImpl<$Res, _$CreateFeedbackInputImpl>
    implements _$$CreateFeedbackInputImplCopyWith<$Res> {
  __$$CreateFeedbackInputImplCopyWithImpl(_$CreateFeedbackInputImpl _value,
      $Res Function(_$CreateFeedbackInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateFeedbackInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? rating = freezed,
    Object? category = freezed,
    Object? status = null,
    Object? userId = null,
  }) {
    return _then(_$CreateFeedbackInputImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStatus,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateFeedbackInputImpl implements _CreateFeedbackInput {
  const _$CreateFeedbackInputImpl(
      {required this.title,
      required this.description,
      this.rating,
      this.category,
      this.status = FeedbackStatus.pending,
      required this.userId});

  factory _$CreateFeedbackInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateFeedbackInputImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final int? rating;
  @override
  final String? category;
  @override
  @JsonKey()
  final FeedbackStatus status;
  @override
  final String userId;

  @override
  String toString() {
    return 'CreateFeedbackInput(title: $title, description: $description, rating: $rating, category: $category, status: $status, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFeedbackInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, rating, category, status, userId);

  /// Create a copy of CreateFeedbackInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFeedbackInputImplCopyWith<_$CreateFeedbackInputImpl> get copyWith =>
      __$$CreateFeedbackInputImplCopyWithImpl<_$CreateFeedbackInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateFeedbackInputImplToJson(
      this,
    );
  }
}

abstract class _CreateFeedbackInput implements CreateFeedbackInput {
  const factory _CreateFeedbackInput(
      {required final String title,
      required final String description,
      final int? rating,
      final String? category,
      final FeedbackStatus status,
      required final String userId}) = _$CreateFeedbackInputImpl;

  factory _CreateFeedbackInput.fromJson(Map<String, dynamic> json) =
      _$CreateFeedbackInputImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  int? get rating;
  @override
  String? get category;
  @override
  FeedbackStatus get status;
  @override
  String get userId;

  /// Create a copy of CreateFeedbackInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFeedbackInputImplCopyWith<_$CreateFeedbackInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateFeedbackInput _$UpdateFeedbackInputFromJson(Map<String, dynamic> json) {
  return _UpdateFeedbackInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateFeedbackInput {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  FeedbackStatus? get status => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  /// Serializes this UpdateFeedbackInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFeedbackInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFeedbackInputCopyWith<UpdateFeedbackInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFeedbackInputCopyWith<$Res> {
  factory $UpdateFeedbackInputCopyWith(
          UpdateFeedbackInput value, $Res Function(UpdateFeedbackInput) then) =
      _$UpdateFeedbackInputCopyWithImpl<$Res, UpdateFeedbackInput>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      int? rating,
      String? category,
      FeedbackStatus? status,
      String? userId});
}

/// @nodoc
class _$UpdateFeedbackInputCopyWithImpl<$Res, $Val extends UpdateFeedbackInput>
    implements $UpdateFeedbackInputCopyWith<$Res> {
  _$UpdateFeedbackInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFeedbackInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? category = freezed,
    Object? status = freezed,
    Object? userId = freezed,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStatus?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateFeedbackInputImplCopyWith<$Res>
    implements $UpdateFeedbackInputCopyWith<$Res> {
  factory _$$UpdateFeedbackInputImplCopyWith(_$UpdateFeedbackInputImpl value,
          $Res Function(_$UpdateFeedbackInputImpl) then) =
      __$$UpdateFeedbackInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      int? rating,
      String? category,
      FeedbackStatus? status,
      String? userId});
}

/// @nodoc
class __$$UpdateFeedbackInputImplCopyWithImpl<$Res>
    extends _$UpdateFeedbackInputCopyWithImpl<$Res, _$UpdateFeedbackInputImpl>
    implements _$$UpdateFeedbackInputImplCopyWith<$Res> {
  __$$UpdateFeedbackInputImplCopyWithImpl(_$UpdateFeedbackInputImpl _value,
      $Res Function(_$UpdateFeedbackInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateFeedbackInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? category = freezed,
    Object? status = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$UpdateFeedbackInputImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStatus?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateFeedbackInputImpl implements _UpdateFeedbackInput {
  const _$UpdateFeedbackInputImpl(
      {this.title,
      this.description,
      this.rating,
      this.category,
      this.status,
      this.userId});

  factory _$UpdateFeedbackInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateFeedbackInputImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? rating;
  @override
  final String? category;
  @override
  final FeedbackStatus? status;
  @override
  final String? userId;

  @override
  String toString() {
    return 'UpdateFeedbackInput(title: $title, description: $description, rating: $rating, category: $category, status: $status, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFeedbackInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, rating, category, status, userId);

  /// Create a copy of UpdateFeedbackInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFeedbackInputImplCopyWith<_$UpdateFeedbackInputImpl> get copyWith =>
      __$$UpdateFeedbackInputImplCopyWithImpl<_$UpdateFeedbackInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateFeedbackInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateFeedbackInput implements UpdateFeedbackInput {
  const factory _UpdateFeedbackInput(
      {final String? title,
      final String? description,
      final int? rating,
      final String? category,
      final FeedbackStatus? status,
      final String? userId}) = _$UpdateFeedbackInputImpl;

  factory _UpdateFeedbackInput.fromJson(Map<String, dynamic> json) =
      _$UpdateFeedbackInputImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get rating;
  @override
  String? get category;
  @override
  FeedbackStatus? get status;
  @override
  String? get userId;

  /// Create a copy of UpdateFeedbackInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFeedbackInputImplCopyWith<_$UpdateFeedbackInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedbackWhereUniqueInput _$FeedbackWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _FeedbackWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$FeedbackWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this FeedbackWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackWhereUniqueInputCopyWith<FeedbackWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackWhereUniqueInputCopyWith<$Res> {
  factory $FeedbackWhereUniqueInputCopyWith(FeedbackWhereUniqueInput value,
          $Res Function(FeedbackWhereUniqueInput) then) =
      _$FeedbackWhereUniqueInputCopyWithImpl<$Res, FeedbackWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$FeedbackWhereUniqueInputCopyWithImpl<$Res,
        $Val extends FeedbackWhereUniqueInput>
    implements $FeedbackWhereUniqueInputCopyWith<$Res> {
  _$FeedbackWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackWhereUniqueInput
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
abstract class _$$FeedbackWhereUniqueInputImplCopyWith<$Res>
    implements $FeedbackWhereUniqueInputCopyWith<$Res> {
  factory _$$FeedbackWhereUniqueInputImplCopyWith(
          _$FeedbackWhereUniqueInputImpl value,
          $Res Function(_$FeedbackWhereUniqueInputImpl) then) =
      __$$FeedbackWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$FeedbackWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$FeedbackWhereUniqueInputCopyWithImpl<$Res,
        _$FeedbackWhereUniqueInputImpl>
    implements _$$FeedbackWhereUniqueInputImplCopyWith<$Res> {
  __$$FeedbackWhereUniqueInputImplCopyWithImpl(
      _$FeedbackWhereUniqueInputImpl _value,
      $Res Function(_$FeedbackWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$FeedbackWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedbackWhereUniqueInputImpl implements _FeedbackWhereUniqueInput {
  const _$FeedbackWhereUniqueInputImpl({this.id});

  factory _$FeedbackWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'FeedbackWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of FeedbackWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackWhereUniqueInputImplCopyWith<_$FeedbackWhereUniqueInputImpl>
      get copyWith => __$$FeedbackWhereUniqueInputImplCopyWithImpl<
          _$FeedbackWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _FeedbackWhereUniqueInput implements FeedbackWhereUniqueInput {
  const factory _FeedbackWhereUniqueInput({final String? id}) =
      _$FeedbackWhereUniqueInputImpl;

  factory _FeedbackWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$FeedbackWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of FeedbackWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackWhereUniqueInputImplCopyWith<_$FeedbackWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FeedbackWhereInput _$FeedbackWhereInputFromJson(Map<String, dynamic> json) {
  return _FeedbackWhereInput.fromJson(json);
}

/// @nodoc
mixin _$FeedbackWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get title => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  IntFilter? get rating => throw _privateConstructorUsedError;
  StringFilter? get category => throw _privateConstructorUsedError;
  FeedbackStatusFilter? get status => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<FeedbackWhereInput>? get AND => throw _privateConstructorUsedError;
  List<FeedbackWhereInput>? get OR => throw _privateConstructorUsedError;
  FeedbackWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this FeedbackWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackWhereInputCopyWith<FeedbackWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackWhereInputCopyWith<$Res> {
  factory $FeedbackWhereInputCopyWith(
          FeedbackWhereInput value, $Res Function(FeedbackWhereInput) then) =
      _$FeedbackWhereInputCopyWithImpl<$Res, FeedbackWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      IntFilter? rating,
      StringFilter? category,
      FeedbackStatusFilter? status,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<FeedbackWhereInput>? AND,
      List<FeedbackWhereInput>? OR,
      FeedbackWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get title;
  $StringFilterCopyWith<$Res>? get description;
  $IntFilterCopyWith<$Res>? get rating;
  $StringFilterCopyWith<$Res>? get category;
  $FeedbackStatusFilterCopyWith<$Res>? get status;
  $UserRelationFilterCopyWith<$Res>? get user;
  $StringFilterCopyWith<$Res>? get userId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $FeedbackWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$FeedbackWhereInputCopyWithImpl<$Res, $Val extends FeedbackWhereInput>
    implements $FeedbackWhereInputCopyWith<$Res> {
  _$FeedbackWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? category = freezed,
    Object? status = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStatusFilter?,
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
              as List<FeedbackWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<FeedbackWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as FeedbackWhereInput?,
    ) as $Val);
  }

  /// Create a copy of FeedbackWhereInput
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

  /// Create a copy of FeedbackWhereInput
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

  /// Create a copy of FeedbackWhereInput
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

  /// Create a copy of FeedbackWhereInput
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

  /// Create a copy of FeedbackWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of FeedbackWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $FeedbackStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of FeedbackWhereInput
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

  /// Create a copy of FeedbackWhereInput
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

  /// Create a copy of FeedbackWhereInput
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

  /// Create a copy of FeedbackWhereInput
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

  /// Create a copy of FeedbackWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $FeedbackWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedbackWhereInputImplCopyWith<$Res>
    implements $FeedbackWhereInputCopyWith<$Res> {
  factory _$$FeedbackWhereInputImplCopyWith(_$FeedbackWhereInputImpl value,
          $Res Function(_$FeedbackWhereInputImpl) then) =
      __$$FeedbackWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      IntFilter? rating,
      StringFilter? category,
      FeedbackStatusFilter? status,
      UserRelationFilter? user,
      StringFilter? userId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<FeedbackWhereInput>? AND,
      List<FeedbackWhereInput>? OR,
      FeedbackWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get title;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $IntFilterCopyWith<$Res>? get rating;
  @override
  $StringFilterCopyWith<$Res>? get category;
  @override
  $FeedbackStatusFilterCopyWith<$Res>? get status;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $FeedbackWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$FeedbackWhereInputImplCopyWithImpl<$Res>
    extends _$FeedbackWhereInputCopyWithImpl<$Res, _$FeedbackWhereInputImpl>
    implements _$$FeedbackWhereInputImplCopyWith<$Res> {
  __$$FeedbackWhereInputImplCopyWithImpl(_$FeedbackWhereInputImpl _value,
      $Res Function(_$FeedbackWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? category = freezed,
    Object? status = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$FeedbackWhereInputImpl(
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStatusFilter?,
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
              as List<FeedbackWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<FeedbackWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as FeedbackWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FeedbackWhereInputImpl implements _FeedbackWhereInput {
  const _$FeedbackWhereInputImpl(
      {this.id,
      this.title,
      this.description,
      this.rating,
      this.category,
      this.status,
      this.user,
      this.userId,
      this.createdAt,
      this.updatedAt,
      final List<FeedbackWhereInput>? AND,
      final List<FeedbackWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$FeedbackWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? title;
  @override
  final StringFilter? description;
  @override
  final IntFilter? rating;
  @override
  final StringFilter? category;
  @override
  final FeedbackStatusFilter? status;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final StringFilter? userId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<FeedbackWhereInput>? _AND;
  @override
  List<FeedbackWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FeedbackWhereInput>? _OR;
  @override
  List<FeedbackWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FeedbackWhereInput? NOT;

  @override
  String toString() {
    return 'FeedbackWhereInput(id: $id, title: $title, description: $description, rating: $rating, category: $category, status: $status, user: $user, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.status, status) || other.status == status) &&
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
      title,
      description,
      rating,
      category,
      status,
      user,
      userId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of FeedbackWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackWhereInputImplCopyWith<_$FeedbackWhereInputImpl> get copyWith =>
      __$$FeedbackWhereInputImplCopyWithImpl<_$FeedbackWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackWhereInputImplToJson(
      this,
    );
  }
}

abstract class _FeedbackWhereInput implements FeedbackWhereInput {
  const factory _FeedbackWhereInput(
      {final StringFilter? id,
      final StringFilter? title,
      final StringFilter? description,
      final IntFilter? rating,
      final StringFilter? category,
      final FeedbackStatusFilter? status,
      final UserRelationFilter? user,
      final StringFilter? userId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<FeedbackWhereInput>? AND,
      final List<FeedbackWhereInput>? OR,
      final FeedbackWhereInput? NOT}) = _$FeedbackWhereInputImpl;

  factory _FeedbackWhereInput.fromJson(Map<String, dynamic> json) =
      _$FeedbackWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get title;
  @override
  StringFilter? get description;
  @override
  IntFilter? get rating;
  @override
  StringFilter? get category;
  @override
  FeedbackStatusFilter? get status;

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
  List<FeedbackWhereInput>? get AND;
  @override
  List<FeedbackWhereInput>? get OR;
  @override
  FeedbackWhereInput? get NOT;

  /// Create a copy of FeedbackWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackWhereInputImplCopyWith<_$FeedbackWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedbackListRelationFilter _$FeedbackListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _FeedbackListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$FeedbackListRelationFilter {
  /// At least one related record matches
  FeedbackWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  FeedbackWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  FeedbackWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this FeedbackListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackListRelationFilterCopyWith<FeedbackListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackListRelationFilterCopyWith<$Res> {
  factory $FeedbackListRelationFilterCopyWith(FeedbackListRelationFilter value,
          $Res Function(FeedbackListRelationFilter) then) =
      _$FeedbackListRelationFilterCopyWithImpl<$Res,
          FeedbackListRelationFilter>;
  @useResult
  $Res call(
      {FeedbackWhereInput? some,
      FeedbackWhereInput? every,
      FeedbackWhereInput? none});

  $FeedbackWhereInputCopyWith<$Res>? get some;
  $FeedbackWhereInputCopyWith<$Res>? get every;
  $FeedbackWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$FeedbackListRelationFilterCopyWithImpl<$Res,
        $Val extends FeedbackListRelationFilter>
    implements $FeedbackListRelationFilterCopyWith<$Res> {
  _$FeedbackListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackListRelationFilter
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
              as FeedbackWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as FeedbackWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as FeedbackWhereInput?,
    ) as $Val);
  }

  /// Create a copy of FeedbackListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $FeedbackWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of FeedbackListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $FeedbackWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of FeedbackListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $FeedbackWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedbackListRelationFilterImplCopyWith<$Res>
    implements $FeedbackListRelationFilterCopyWith<$Res> {
  factory _$$FeedbackListRelationFilterImplCopyWith(
          _$FeedbackListRelationFilterImpl value,
          $Res Function(_$FeedbackListRelationFilterImpl) then) =
      __$$FeedbackListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FeedbackWhereInput? some,
      FeedbackWhereInput? every,
      FeedbackWhereInput? none});

  @override
  $FeedbackWhereInputCopyWith<$Res>? get some;
  @override
  $FeedbackWhereInputCopyWith<$Res>? get every;
  @override
  $FeedbackWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$FeedbackListRelationFilterImplCopyWithImpl<$Res>
    extends _$FeedbackListRelationFilterCopyWithImpl<$Res,
        _$FeedbackListRelationFilterImpl>
    implements _$$FeedbackListRelationFilterImplCopyWith<$Res> {
  __$$FeedbackListRelationFilterImplCopyWithImpl(
      _$FeedbackListRelationFilterImpl _value,
      $Res Function(_$FeedbackListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$FeedbackListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as FeedbackWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as FeedbackWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as FeedbackWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedbackListRelationFilterImpl implements _FeedbackListRelationFilter {
  const _$FeedbackListRelationFilterImpl({this.some, this.every, this.none});

  factory _$FeedbackListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FeedbackListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final FeedbackWhereInput? some;

  /// All related records match
  @override
  final FeedbackWhereInput? every;

  /// No related records match
  @override
  final FeedbackWhereInput? none;

  @override
  String toString() {
    return 'FeedbackListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of FeedbackListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackListRelationFilterImplCopyWith<_$FeedbackListRelationFilterImpl>
      get copyWith => __$$FeedbackListRelationFilterImplCopyWithImpl<
          _$FeedbackListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _FeedbackListRelationFilter
    implements FeedbackListRelationFilter {
  const factory _FeedbackListRelationFilter(
      {final FeedbackWhereInput? some,
      final FeedbackWhereInput? every,
      final FeedbackWhereInput? none}) = _$FeedbackListRelationFilterImpl;

  factory _FeedbackListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$FeedbackListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  FeedbackWhereInput? get some;

  /// All related records match
  @override
  FeedbackWhereInput? get every;

  /// No related records match
  @override
  FeedbackWhereInput? get none;

  /// Create a copy of FeedbackListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackListRelationFilterImplCopyWith<_$FeedbackListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FeedbackRelationFilter _$FeedbackRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _FeedbackRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$FeedbackRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  FeedbackWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  FeedbackWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this FeedbackRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackRelationFilterCopyWith<FeedbackRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackRelationFilterCopyWith<$Res> {
  factory $FeedbackRelationFilterCopyWith(FeedbackRelationFilter value,
          $Res Function(FeedbackRelationFilter) then) =
      _$FeedbackRelationFilterCopyWithImpl<$Res, FeedbackRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') FeedbackWhereInput? is_,
      FeedbackWhereInput? isNot});

  $FeedbackWhereInputCopyWith<$Res>? get is_;
  $FeedbackWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$FeedbackRelationFilterCopyWithImpl<$Res,
        $Val extends FeedbackRelationFilter>
    implements $FeedbackRelationFilterCopyWith<$Res> {
  _$FeedbackRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackRelationFilter
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
              as FeedbackWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as FeedbackWhereInput?,
    ) as $Val);
  }

  /// Create a copy of FeedbackRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $FeedbackWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of FeedbackRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $FeedbackWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedbackRelationFilterImplCopyWith<$Res>
    implements $FeedbackRelationFilterCopyWith<$Res> {
  factory _$$FeedbackRelationFilterImplCopyWith(
          _$FeedbackRelationFilterImpl value,
          $Res Function(_$FeedbackRelationFilterImpl) then) =
      __$$FeedbackRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') FeedbackWhereInput? is_,
      FeedbackWhereInput? isNot});

  @override
  $FeedbackWhereInputCopyWith<$Res>? get is_;
  @override
  $FeedbackWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$FeedbackRelationFilterImplCopyWithImpl<$Res>
    extends _$FeedbackRelationFilterCopyWithImpl<$Res,
        _$FeedbackRelationFilterImpl>
    implements _$$FeedbackRelationFilterImplCopyWith<$Res> {
  __$$FeedbackRelationFilterImplCopyWithImpl(
      _$FeedbackRelationFilterImpl _value,
      $Res Function(_$FeedbackRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$FeedbackRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as FeedbackWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as FeedbackWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedbackRelationFilterImpl implements _FeedbackRelationFilter {
  const _$FeedbackRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$FeedbackRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final FeedbackWhereInput? is_;

  /// Related record does not match
  @override
  final FeedbackWhereInput? isNot;

  @override
  String toString() {
    return 'FeedbackRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of FeedbackRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackRelationFilterImplCopyWith<_$FeedbackRelationFilterImpl>
      get copyWith => __$$FeedbackRelationFilterImplCopyWithImpl<
          _$FeedbackRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _FeedbackRelationFilter implements FeedbackRelationFilter {
  const factory _FeedbackRelationFilter(
      {@JsonKey(name: 'is') final FeedbackWhereInput? is_,
      final FeedbackWhereInput? isNot}) = _$FeedbackRelationFilterImpl;

  factory _FeedbackRelationFilter.fromJson(Map<String, dynamic> json) =
      _$FeedbackRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  FeedbackWhereInput? get is_;

  /// Related record does not match
  @override
  FeedbackWhereInput? get isNot;

  /// Create a copy of FeedbackRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackRelationFilterImplCopyWith<_$FeedbackRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FeedbackOrderByInput _$FeedbackOrderByInputFromJson(Map<String, dynamic> json) {
  return _FeedbackOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$FeedbackOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get title => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get rating => throw _privateConstructorUsedError;
  SortOrder? get category => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this FeedbackOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackOrderByInputCopyWith<FeedbackOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackOrderByInputCopyWith<$Res> {
  factory $FeedbackOrderByInputCopyWith(FeedbackOrderByInput value,
          $Res Function(FeedbackOrderByInput) then) =
      _$FeedbackOrderByInputCopyWithImpl<$Res, FeedbackOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? rating,
      SortOrder? category,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$FeedbackOrderByInputCopyWithImpl<$Res,
        $Val extends FeedbackOrderByInput>
    implements $FeedbackOrderByInputCopyWith<$Res> {
  _$FeedbackOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? category = freezed,
    Object? userId = freezed,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
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
abstract class _$$FeedbackOrderByInputImplCopyWith<$Res>
    implements $FeedbackOrderByInputCopyWith<$Res> {
  factory _$$FeedbackOrderByInputImplCopyWith(_$FeedbackOrderByInputImpl value,
          $Res Function(_$FeedbackOrderByInputImpl) then) =
      __$$FeedbackOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? rating,
      SortOrder? category,
      SortOrder? userId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$FeedbackOrderByInputImplCopyWithImpl<$Res>
    extends _$FeedbackOrderByInputCopyWithImpl<$Res, _$FeedbackOrderByInputImpl>
    implements _$$FeedbackOrderByInputImplCopyWith<$Res> {
  __$$FeedbackOrderByInputImplCopyWithImpl(_$FeedbackOrderByInputImpl _value,
      $Res Function(_$FeedbackOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? category = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FeedbackOrderByInputImpl(
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
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
class _$FeedbackOrderByInputImpl implements _FeedbackOrderByInput {
  const _$FeedbackOrderByInputImpl(
      {this.id,
      this.title,
      this.description,
      this.rating,
      this.category,
      this.userId,
      this.createdAt,
      this.updatedAt});

  factory _$FeedbackOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? title;
  @override
  final SortOrder? description;
  @override
  final SortOrder? rating;
  @override
  final SortOrder? category;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'FeedbackOrderByInput(id: $id, title: $title, description: $description, rating: $rating, category: $category, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, rating,
      category, userId, createdAt, updatedAt);

  /// Create a copy of FeedbackOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackOrderByInputImplCopyWith<_$FeedbackOrderByInputImpl>
      get copyWith =>
          __$$FeedbackOrderByInputImplCopyWithImpl<_$FeedbackOrderByInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _FeedbackOrderByInput implements FeedbackOrderByInput {
  const factory _FeedbackOrderByInput(
      {final SortOrder? id,
      final SortOrder? title,
      final SortOrder? description,
      final SortOrder? rating,
      final SortOrder? category,
      final SortOrder? userId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$FeedbackOrderByInputImpl;

  factory _FeedbackOrderByInput.fromJson(Map<String, dynamic> json) =
      _$FeedbackOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get title;
  @override
  SortOrder? get description;
  @override
  SortOrder? get rating;
  @override
  SortOrder? get category;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of FeedbackOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackOrderByInputImplCopyWith<_$FeedbackOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
