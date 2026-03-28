// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'achievement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Achievement _$AchievementFromJson(Map<String, dynamic> json) {
  return _Achievement.fromJson(json);
}

/// @nodoc
mixin _$Achievement {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  AchievementType get achievementType => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Achievement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AchievementCopyWith<Achievement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementCopyWith<$Res> {
  factory $AchievementCopyWith(
          Achievement value, $Res Function(Achievement) then) =
      _$AchievementCopyWithImpl<$Res, Achievement>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      String? url,
      String? imageUrl,
      AchievementType achievementType,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String consultantProfileId,
      DateTime createdAt,
      DateTime updatedAt});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class _$AchievementCopyWithImpl<$Res, $Val extends Achievement>
    implements $AchievementCopyWith<$Res> {
  _$AchievementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? achievementType = null,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = null,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      achievementType: null == achievementType
          ? _value.achievementType
          : achievementType // ignore: cast_nullable_to_non_nullable
              as AchievementType,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of Achievement
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
}

/// @nodoc
abstract class _$$AchievementImplCopyWith<$Res>
    implements $AchievementCopyWith<$Res> {
  factory _$$AchievementImplCopyWith(
          _$AchievementImpl value, $Res Function(_$AchievementImpl) then) =
      __$$AchievementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      String? url,
      String? imageUrl,
      AchievementType achievementType,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String consultantProfileId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class __$$AchievementImplCopyWithImpl<$Res>
    extends _$AchievementCopyWithImpl<$Res, _$AchievementImpl>
    implements _$$AchievementImplCopyWith<$Res> {
  __$$AchievementImplCopyWithImpl(
      _$AchievementImpl _value, $Res Function(_$AchievementImpl) _then)
      : super(_value, _then);

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? achievementType = null,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AchievementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      achievementType: null == achievementType
          ? _value.achievementType
          : achievementType // ignore: cast_nullable_to_non_nullable
              as AchievementType,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
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
class _$AchievementImpl implements _Achievement {
  const _$AchievementImpl(
      {required this.id,
      required this.title,
      this.description,
      this.url,
      this.imageUrl,
      this.achievementType = AchievementType.other,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      required this.consultantProfileId,
      required this.createdAt,
      required this.updatedAt});

  factory _$AchievementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? imageUrl;
  @override
  @JsonKey()
  final AchievementType achievementType;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? consultantProfile;
  @override
  final String consultantProfileId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Achievement(id: $id, title: $title, description: $description, url: $url, imageUrl: $imageUrl, achievementType: $achievementType, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.achievementType, achievementType) ||
                other.achievementType == achievementType) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
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
      url,
      imageUrl,
      achievementType,
      consultantProfile,
      consultantProfileId,
      createdAt,
      updatedAt);

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementImplCopyWith<_$AchievementImpl> get copyWith =>
      __$$AchievementImplCopyWithImpl<_$AchievementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementImplToJson(
      this,
    );
  }
}

abstract class _Achievement implements Achievement {
  const factory _Achievement(
      {required final String id,
      required final String title,
      final String? description,
      final String? url,
      final String? imageUrl,
      final AchievementType achievementType,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? consultantProfile,
      required final String consultantProfileId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$AchievementImpl;

  factory _Achievement.fromJson(Map<String, dynamic> json) =
      _$AchievementImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  String? get url;
  @override
  String? get imageUrl;
  @override
  AchievementType get achievementType;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile;
  @override
  String get consultantProfileId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementImplCopyWith<_$AchievementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateAchievementInput _$CreateAchievementInputFromJson(
    Map<String, dynamic> json) {
  return _CreateAchievementInput.fromJson(json);
}

/// @nodoc
mixin _$CreateAchievementInput {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  AchievementType get achievementType => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;

  /// Serializes this CreateAchievementInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateAchievementInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateAchievementInputCopyWith<CreateAchievementInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAchievementInputCopyWith<$Res> {
  factory $CreateAchievementInputCopyWith(CreateAchievementInput value,
          $Res Function(CreateAchievementInput) then) =
      _$CreateAchievementInputCopyWithImpl<$Res, CreateAchievementInput>;
  @useResult
  $Res call(
      {String title,
      String? description,
      String? url,
      String? imageUrl,
      AchievementType achievementType,
      String consultantProfileId});
}

/// @nodoc
class _$CreateAchievementInputCopyWithImpl<$Res,
        $Val extends CreateAchievementInput>
    implements $CreateAchievementInputCopyWith<$Res> {
  _$CreateAchievementInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAchievementInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? achievementType = null,
    Object? consultantProfileId = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      achievementType: null == achievementType
          ? _value.achievementType
          : achievementType // ignore: cast_nullable_to_non_nullable
              as AchievementType,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAchievementInputImplCopyWith<$Res>
    implements $CreateAchievementInputCopyWith<$Res> {
  factory _$$CreateAchievementInputImplCopyWith(
          _$CreateAchievementInputImpl value,
          $Res Function(_$CreateAchievementInputImpl) then) =
      __$$CreateAchievementInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? description,
      String? url,
      String? imageUrl,
      AchievementType achievementType,
      String consultantProfileId});
}

/// @nodoc
class __$$CreateAchievementInputImplCopyWithImpl<$Res>
    extends _$CreateAchievementInputCopyWithImpl<$Res,
        _$CreateAchievementInputImpl>
    implements _$$CreateAchievementInputImplCopyWith<$Res> {
  __$$CreateAchievementInputImplCopyWithImpl(
      _$CreateAchievementInputImpl _value,
      $Res Function(_$CreateAchievementInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAchievementInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? achievementType = null,
    Object? consultantProfileId = null,
  }) {
    return _then(_$CreateAchievementInputImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      achievementType: null == achievementType
          ? _value.achievementType
          : achievementType // ignore: cast_nullable_to_non_nullable
              as AchievementType,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAchievementInputImpl implements _CreateAchievementInput {
  const _$CreateAchievementInputImpl(
      {required this.title,
      this.description,
      this.url,
      this.imageUrl,
      this.achievementType = AchievementType.other,
      required this.consultantProfileId});

  factory _$CreateAchievementInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAchievementInputImplFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? imageUrl;
  @override
  @JsonKey()
  final AchievementType achievementType;
  @override
  final String consultantProfileId;

  @override
  String toString() {
    return 'CreateAchievementInput(title: $title, description: $description, url: $url, imageUrl: $imageUrl, achievementType: $achievementType, consultantProfileId: $consultantProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAchievementInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.achievementType, achievementType) ||
                other.achievementType == achievementType) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, url,
      imageUrl, achievementType, consultantProfileId);

  /// Create a copy of CreateAchievementInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAchievementInputImplCopyWith<_$CreateAchievementInputImpl>
      get copyWith => __$$CreateAchievementInputImplCopyWithImpl<
          _$CreateAchievementInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAchievementInputImplToJson(
      this,
    );
  }
}

abstract class _CreateAchievementInput implements CreateAchievementInput {
  const factory _CreateAchievementInput(
          {required final String title,
          final String? description,
          final String? url,
          final String? imageUrl,
          final AchievementType achievementType,
          required final String consultantProfileId}) =
      _$CreateAchievementInputImpl;

  factory _CreateAchievementInput.fromJson(Map<String, dynamic> json) =
      _$CreateAchievementInputImpl.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  String? get url;
  @override
  String? get imageUrl;
  @override
  AchievementType get achievementType;
  @override
  String get consultantProfileId;

  /// Create a copy of CreateAchievementInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAchievementInputImplCopyWith<_$CreateAchievementInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateAchievementInput _$UpdateAchievementInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateAchievementInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateAchievementInput {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  AchievementType? get achievementType => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;

  /// Serializes this UpdateAchievementInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateAchievementInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateAchievementInputCopyWith<UpdateAchievementInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAchievementInputCopyWith<$Res> {
  factory $UpdateAchievementInputCopyWith(UpdateAchievementInput value,
          $Res Function(UpdateAchievementInput) then) =
      _$UpdateAchievementInputCopyWithImpl<$Res, UpdateAchievementInput>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? url,
      String? imageUrl,
      AchievementType? achievementType,
      String? consultantProfileId});
}

/// @nodoc
class _$UpdateAchievementInputCopyWithImpl<$Res,
        $Val extends UpdateAchievementInput>
    implements $UpdateAchievementInputCopyWith<$Res> {
  _$UpdateAchievementInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateAchievementInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? achievementType = freezed,
    Object? consultantProfileId = freezed,
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      achievementType: freezed == achievementType
          ? _value.achievementType
          : achievementType // ignore: cast_nullable_to_non_nullable
              as AchievementType?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateAchievementInputImplCopyWith<$Res>
    implements $UpdateAchievementInputCopyWith<$Res> {
  factory _$$UpdateAchievementInputImplCopyWith(
          _$UpdateAchievementInputImpl value,
          $Res Function(_$UpdateAchievementInputImpl) then) =
      __$$UpdateAchievementInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? url,
      String? imageUrl,
      AchievementType? achievementType,
      String? consultantProfileId});
}

/// @nodoc
class __$$UpdateAchievementInputImplCopyWithImpl<$Res>
    extends _$UpdateAchievementInputCopyWithImpl<$Res,
        _$UpdateAchievementInputImpl>
    implements _$$UpdateAchievementInputImplCopyWith<$Res> {
  __$$UpdateAchievementInputImplCopyWithImpl(
      _$UpdateAchievementInputImpl _value,
      $Res Function(_$UpdateAchievementInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateAchievementInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? achievementType = freezed,
    Object? consultantProfileId = freezed,
  }) {
    return _then(_$UpdateAchievementInputImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      achievementType: freezed == achievementType
          ? _value.achievementType
          : achievementType // ignore: cast_nullable_to_non_nullable
              as AchievementType?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateAchievementInputImpl implements _UpdateAchievementInput {
  const _$UpdateAchievementInputImpl(
      {this.title,
      this.description,
      this.url,
      this.imageUrl,
      this.achievementType,
      this.consultantProfileId});

  factory _$UpdateAchievementInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateAchievementInputImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? imageUrl;
  @override
  final AchievementType? achievementType;
  @override
  final String? consultantProfileId;

  @override
  String toString() {
    return 'UpdateAchievementInput(title: $title, description: $description, url: $url, imageUrl: $imageUrl, achievementType: $achievementType, consultantProfileId: $consultantProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAchievementInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.achievementType, achievementType) ||
                other.achievementType == achievementType) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, url,
      imageUrl, achievementType, consultantProfileId);

  /// Create a copy of UpdateAchievementInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAchievementInputImplCopyWith<_$UpdateAchievementInputImpl>
      get copyWith => __$$UpdateAchievementInputImplCopyWithImpl<
          _$UpdateAchievementInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAchievementInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateAchievementInput implements UpdateAchievementInput {
  const factory _UpdateAchievementInput(
      {final String? title,
      final String? description,
      final String? url,
      final String? imageUrl,
      final AchievementType? achievementType,
      final String? consultantProfileId}) = _$UpdateAchievementInputImpl;

  factory _UpdateAchievementInput.fromJson(Map<String, dynamic> json) =
      _$UpdateAchievementInputImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get url;
  @override
  String? get imageUrl;
  @override
  AchievementType? get achievementType;
  @override
  String? get consultantProfileId;

  /// Create a copy of UpdateAchievementInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAchievementInputImplCopyWith<_$UpdateAchievementInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AchievementWhereUniqueInput _$AchievementWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _AchievementWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$AchievementWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this AchievementWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AchievementWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AchievementWhereUniqueInputCopyWith<AchievementWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementWhereUniqueInputCopyWith<$Res> {
  factory $AchievementWhereUniqueInputCopyWith(
          AchievementWhereUniqueInput value,
          $Res Function(AchievementWhereUniqueInput) then) =
      _$AchievementWhereUniqueInputCopyWithImpl<$Res,
          AchievementWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$AchievementWhereUniqueInputCopyWithImpl<$Res,
        $Val extends AchievementWhereUniqueInput>
    implements $AchievementWhereUniqueInputCopyWith<$Res> {
  _$AchievementWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AchievementWhereUniqueInput
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
abstract class _$$AchievementWhereUniqueInputImplCopyWith<$Res>
    implements $AchievementWhereUniqueInputCopyWith<$Res> {
  factory _$$AchievementWhereUniqueInputImplCopyWith(
          _$AchievementWhereUniqueInputImpl value,
          $Res Function(_$AchievementWhereUniqueInputImpl) then) =
      __$$AchievementWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$AchievementWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$AchievementWhereUniqueInputCopyWithImpl<$Res,
        _$AchievementWhereUniqueInputImpl>
    implements _$$AchievementWhereUniqueInputImplCopyWith<$Res> {
  __$$AchievementWhereUniqueInputImplCopyWithImpl(
      _$AchievementWhereUniqueInputImpl _value,
      $Res Function(_$AchievementWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AchievementWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$AchievementWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AchievementWhereUniqueInputImpl
    implements _AchievementWhereUniqueInput {
  const _$AchievementWhereUniqueInputImpl({this.id});

  factory _$AchievementWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AchievementWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'AchievementWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AchievementWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementWhereUniqueInputImplCopyWith<_$AchievementWhereUniqueInputImpl>
      get copyWith => __$$AchievementWhereUniqueInputImplCopyWithImpl<
          _$AchievementWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _AchievementWhereUniqueInput
    implements AchievementWhereUniqueInput {
  const factory _AchievementWhereUniqueInput({final String? id}) =
      _$AchievementWhereUniqueInputImpl;

  factory _AchievementWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$AchievementWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of AchievementWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementWhereUniqueInputImplCopyWith<_$AchievementWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AchievementWhereInput _$AchievementWhereInputFromJson(
    Map<String, dynamic> json) {
  return _AchievementWhereInput.fromJson(json);
}

/// @nodoc
mixin _$AchievementWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get title => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  StringFilter? get url => throw _privateConstructorUsedError;
  StringFilter? get imageUrl => throw _privateConstructorUsedError;
  AchievementTypeFilter? get achievementType =>
      throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<AchievementWhereInput>? get AND => throw _privateConstructorUsedError;
  List<AchievementWhereInput>? get OR => throw _privateConstructorUsedError;
  AchievementWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this AchievementWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AchievementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AchievementWhereInputCopyWith<AchievementWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementWhereInputCopyWith<$Res> {
  factory $AchievementWhereInputCopyWith(AchievementWhereInput value,
          $Res Function(AchievementWhereInput) then) =
      _$AchievementWhereInputCopyWithImpl<$Res, AchievementWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      StringFilter? url,
      StringFilter? imageUrl,
      AchievementTypeFilter? achievementType,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<AchievementWhereInput>? AND,
      List<AchievementWhereInput>? OR,
      AchievementWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get title;
  $StringFilterCopyWith<$Res>? get description;
  $StringFilterCopyWith<$Res>? get url;
  $StringFilterCopyWith<$Res>? get imageUrl;
  $AchievementTypeFilterCopyWith<$Res>? get achievementType;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $AchievementWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$AchievementWhereInputCopyWithImpl<$Res,
        $Val extends AchievementWhereInput>
    implements $AchievementWhereInputCopyWith<$Res> {
  _$AchievementWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AchievementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? achievementType = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      achievementType: freezed == achievementType
          ? _value.achievementType
          : achievementType // ignore: cast_nullable_to_non_nullable
              as AchievementTypeFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
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
              as List<AchievementWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<AchievementWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as AchievementWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AchievementWhereInput
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

  /// Create a copy of AchievementWhereInput
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

  /// Create a copy of AchievementWhereInput
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

  /// Create a copy of AchievementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get url {
    if (_value.url == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.url!, (value) {
      return _then(_value.copyWith(url: value) as $Val);
    });
  }

  /// Create a copy of AchievementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get imageUrl {
    if (_value.imageUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.imageUrl!, (value) {
      return _then(_value.copyWith(imageUrl: value) as $Val);
    });
  }

  /// Create a copy of AchievementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AchievementTypeFilterCopyWith<$Res>? get achievementType {
    if (_value.achievementType == null) {
      return null;
    }

    return $AchievementTypeFilterCopyWith<$Res>(_value.achievementType!,
        (value) {
      return _then(_value.copyWith(achievementType: value) as $Val);
    });
  }

  /// Create a copy of AchievementWhereInput
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

  /// Create a copy of AchievementWhereInput
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

  /// Create a copy of AchievementWhereInput
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

  /// Create a copy of AchievementWhereInput
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

  /// Create a copy of AchievementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AchievementWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $AchievementWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AchievementWhereInputImplCopyWith<$Res>
    implements $AchievementWhereInputCopyWith<$Res> {
  factory _$$AchievementWhereInputImplCopyWith(
          _$AchievementWhereInputImpl value,
          $Res Function(_$AchievementWhereInputImpl) then) =
      __$$AchievementWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      StringFilter? url,
      StringFilter? imageUrl,
      AchievementTypeFilter? achievementType,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<AchievementWhereInput>? AND,
      List<AchievementWhereInput>? OR,
      AchievementWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get title;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $StringFilterCopyWith<$Res>? get url;
  @override
  $StringFilterCopyWith<$Res>? get imageUrl;
  @override
  $AchievementTypeFilterCopyWith<$Res>? get achievementType;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $AchievementWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$AchievementWhereInputImplCopyWithImpl<$Res>
    extends _$AchievementWhereInputCopyWithImpl<$Res,
        _$AchievementWhereInputImpl>
    implements _$$AchievementWhereInputImplCopyWith<$Res> {
  __$$AchievementWhereInputImplCopyWithImpl(_$AchievementWhereInputImpl _value,
      $Res Function(_$AchievementWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AchievementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? achievementType = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$AchievementWhereInputImpl(
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      achievementType: freezed == achievementType
          ? _value.achievementType
          : achievementType // ignore: cast_nullable_to_non_nullable
              as AchievementTypeFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
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
              as List<AchievementWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<AchievementWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as AchievementWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AchievementWhereInputImpl implements _AchievementWhereInput {
  const _$AchievementWhereInputImpl(
      {this.id,
      this.title,
      this.description,
      this.url,
      this.imageUrl,
      this.achievementType,
      this.consultantProfile,
      this.consultantProfileId,
      this.createdAt,
      this.updatedAt,
      final List<AchievementWhereInput>? AND,
      final List<AchievementWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$AchievementWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? title;
  @override
  final StringFilter? description;
  @override
  final StringFilter? url;
  @override
  final StringFilter? imageUrl;
  @override
  final AchievementTypeFilter? achievementType;

  /// Filter by consultantProfile relation
  @override
  final ConsultantProfileRelationFilter? consultantProfile;
  @override
  final StringFilter? consultantProfileId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<AchievementWhereInput>? _AND;
  @override
  List<AchievementWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AchievementWhereInput>? _OR;
  @override
  List<AchievementWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AchievementWhereInput? NOT;

  @override
  String toString() {
    return 'AchievementWhereInput(id: $id, title: $title, description: $description, url: $url, imageUrl: $imageUrl, achievementType: $achievementType, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.achievementType, achievementType) ||
                other.achievementType == achievementType) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
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
      url,
      imageUrl,
      achievementType,
      consultantProfile,
      consultantProfileId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of AchievementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementWhereInputImplCopyWith<_$AchievementWhereInputImpl>
      get copyWith => __$$AchievementWhereInputImplCopyWithImpl<
          _$AchievementWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementWhereInputImplToJson(
      this,
    );
  }
}

abstract class _AchievementWhereInput implements AchievementWhereInput {
  const factory _AchievementWhereInput(
      {final StringFilter? id,
      final StringFilter? title,
      final StringFilter? description,
      final StringFilter? url,
      final StringFilter? imageUrl,
      final AchievementTypeFilter? achievementType,
      final ConsultantProfileRelationFilter? consultantProfile,
      final StringFilter? consultantProfileId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<AchievementWhereInput>? AND,
      final List<AchievementWhereInput>? OR,
      final AchievementWhereInput? NOT}) = _$AchievementWhereInputImpl;

  factory _AchievementWhereInput.fromJson(Map<String, dynamic> json) =
      _$AchievementWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get title;
  @override
  StringFilter? get description;
  @override
  StringFilter? get url;
  @override
  StringFilter? get imageUrl;
  @override
  AchievementTypeFilter? get achievementType;

  /// Filter by consultantProfile relation
  @override
  ConsultantProfileRelationFilter? get consultantProfile;
  @override
  StringFilter? get consultantProfileId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<AchievementWhereInput>? get AND;
  @override
  List<AchievementWhereInput>? get OR;
  @override
  AchievementWhereInput? get NOT;

  /// Create a copy of AchievementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementWhereInputImplCopyWith<_$AchievementWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AchievementListRelationFilter _$AchievementListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _AchievementListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$AchievementListRelationFilter {
  /// At least one related record matches
  AchievementWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  AchievementWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  AchievementWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this AchievementListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AchievementListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AchievementListRelationFilterCopyWith<AchievementListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementListRelationFilterCopyWith<$Res> {
  factory $AchievementListRelationFilterCopyWith(
          AchievementListRelationFilter value,
          $Res Function(AchievementListRelationFilter) then) =
      _$AchievementListRelationFilterCopyWithImpl<$Res,
          AchievementListRelationFilter>;
  @useResult
  $Res call(
      {AchievementWhereInput? some,
      AchievementWhereInput? every,
      AchievementWhereInput? none});

  $AchievementWhereInputCopyWith<$Res>? get some;
  $AchievementWhereInputCopyWith<$Res>? get every;
  $AchievementWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$AchievementListRelationFilterCopyWithImpl<$Res,
        $Val extends AchievementListRelationFilter>
    implements $AchievementListRelationFilterCopyWith<$Res> {
  _$AchievementListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AchievementListRelationFilter
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
              as AchievementWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as AchievementWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as AchievementWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AchievementListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AchievementWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $AchievementWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of AchievementListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AchievementWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $AchievementWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of AchievementListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AchievementWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $AchievementWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AchievementListRelationFilterImplCopyWith<$Res>
    implements $AchievementListRelationFilterCopyWith<$Res> {
  factory _$$AchievementListRelationFilterImplCopyWith(
          _$AchievementListRelationFilterImpl value,
          $Res Function(_$AchievementListRelationFilterImpl) then) =
      __$$AchievementListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AchievementWhereInput? some,
      AchievementWhereInput? every,
      AchievementWhereInput? none});

  @override
  $AchievementWhereInputCopyWith<$Res>? get some;
  @override
  $AchievementWhereInputCopyWith<$Res>? get every;
  @override
  $AchievementWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$AchievementListRelationFilterImplCopyWithImpl<$Res>
    extends _$AchievementListRelationFilterCopyWithImpl<$Res,
        _$AchievementListRelationFilterImpl>
    implements _$$AchievementListRelationFilterImplCopyWith<$Res> {
  __$$AchievementListRelationFilterImplCopyWithImpl(
      _$AchievementListRelationFilterImpl _value,
      $Res Function(_$AchievementListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AchievementListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$AchievementListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as AchievementWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as AchievementWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as AchievementWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AchievementListRelationFilterImpl
    implements _AchievementListRelationFilter {
  const _$AchievementListRelationFilterImpl({this.some, this.every, this.none});

  factory _$AchievementListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AchievementListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final AchievementWhereInput? some;

  /// All related records match
  @override
  final AchievementWhereInput? every;

  /// No related records match
  @override
  final AchievementWhereInput? none;

  @override
  String toString() {
    return 'AchievementListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of AchievementListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementListRelationFilterImplCopyWith<
          _$AchievementListRelationFilterImpl>
      get copyWith => __$$AchievementListRelationFilterImplCopyWithImpl<
          _$AchievementListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _AchievementListRelationFilter
    implements AchievementListRelationFilter {
  const factory _AchievementListRelationFilter(
      {final AchievementWhereInput? some,
      final AchievementWhereInput? every,
      final AchievementWhereInput? none}) = _$AchievementListRelationFilterImpl;

  factory _AchievementListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$AchievementListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  AchievementWhereInput? get some;

  /// All related records match
  @override
  AchievementWhereInput? get every;

  /// No related records match
  @override
  AchievementWhereInput? get none;

  /// Create a copy of AchievementListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementListRelationFilterImplCopyWith<
          _$AchievementListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AchievementRelationFilter _$AchievementRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _AchievementRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$AchievementRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  AchievementWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  AchievementWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this AchievementRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AchievementRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AchievementRelationFilterCopyWith<AchievementRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementRelationFilterCopyWith<$Res> {
  factory $AchievementRelationFilterCopyWith(AchievementRelationFilter value,
          $Res Function(AchievementRelationFilter) then) =
      _$AchievementRelationFilterCopyWithImpl<$Res, AchievementRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') AchievementWhereInput? is_,
      AchievementWhereInput? isNot});

  $AchievementWhereInputCopyWith<$Res>? get is_;
  $AchievementWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$AchievementRelationFilterCopyWithImpl<$Res,
        $Val extends AchievementRelationFilter>
    implements $AchievementRelationFilterCopyWith<$Res> {
  _$AchievementRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AchievementRelationFilter
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
              as AchievementWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as AchievementWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AchievementRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AchievementWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $AchievementWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of AchievementRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AchievementWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $AchievementWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AchievementRelationFilterImplCopyWith<$Res>
    implements $AchievementRelationFilterCopyWith<$Res> {
  factory _$$AchievementRelationFilterImplCopyWith(
          _$AchievementRelationFilterImpl value,
          $Res Function(_$AchievementRelationFilterImpl) then) =
      __$$AchievementRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') AchievementWhereInput? is_,
      AchievementWhereInput? isNot});

  @override
  $AchievementWhereInputCopyWith<$Res>? get is_;
  @override
  $AchievementWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$AchievementRelationFilterImplCopyWithImpl<$Res>
    extends _$AchievementRelationFilterCopyWithImpl<$Res,
        _$AchievementRelationFilterImpl>
    implements _$$AchievementRelationFilterImplCopyWith<$Res> {
  __$$AchievementRelationFilterImplCopyWithImpl(
      _$AchievementRelationFilterImpl _value,
      $Res Function(_$AchievementRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AchievementRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$AchievementRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as AchievementWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as AchievementWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AchievementRelationFilterImpl implements _AchievementRelationFilter {
  const _$AchievementRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$AchievementRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final AchievementWhereInput? is_;

  /// Related record does not match
  @override
  final AchievementWhereInput? isNot;

  @override
  String toString() {
    return 'AchievementRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of AchievementRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementRelationFilterImplCopyWith<_$AchievementRelationFilterImpl>
      get copyWith => __$$AchievementRelationFilterImplCopyWithImpl<
          _$AchievementRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _AchievementRelationFilter implements AchievementRelationFilter {
  const factory _AchievementRelationFilter(
      {@JsonKey(name: 'is') final AchievementWhereInput? is_,
      final AchievementWhereInput? isNot}) = _$AchievementRelationFilterImpl;

  factory _AchievementRelationFilter.fromJson(Map<String, dynamic> json) =
      _$AchievementRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  AchievementWhereInput? get is_;

  /// Related record does not match
  @override
  AchievementWhereInput? get isNot;

  /// Create a copy of AchievementRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementRelationFilterImplCopyWith<_$AchievementRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AchievementOrderByInput _$AchievementOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _AchievementOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$AchievementOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get title => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get url => throw _privateConstructorUsedError;
  SortOrder? get imageUrl => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AchievementOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AchievementOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AchievementOrderByInputCopyWith<AchievementOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementOrderByInputCopyWith<$Res> {
  factory $AchievementOrderByInputCopyWith(AchievementOrderByInput value,
          $Res Function(AchievementOrderByInput) then) =
      _$AchievementOrderByInputCopyWithImpl<$Res, AchievementOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? url,
      SortOrder? imageUrl,
      SortOrder? consultantProfileId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$AchievementOrderByInputCopyWithImpl<$Res,
        $Val extends AchievementOrderByInput>
    implements $AchievementOrderByInputCopyWith<$Res> {
  _$AchievementOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AchievementOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? consultantProfileId = freezed,
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AchievementOrderByInputImplCopyWith<$Res>
    implements $AchievementOrderByInputCopyWith<$Res> {
  factory _$$AchievementOrderByInputImplCopyWith(
          _$AchievementOrderByInputImpl value,
          $Res Function(_$AchievementOrderByInputImpl) then) =
      __$$AchievementOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? url,
      SortOrder? imageUrl,
      SortOrder? consultantProfileId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$AchievementOrderByInputImplCopyWithImpl<$Res>
    extends _$AchievementOrderByInputCopyWithImpl<$Res,
        _$AchievementOrderByInputImpl>
    implements _$$AchievementOrderByInputImplCopyWith<$Res> {
  __$$AchievementOrderByInputImplCopyWithImpl(
      _$AchievementOrderByInputImpl _value,
      $Res Function(_$AchievementOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AchievementOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? consultantProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AchievementOrderByInputImpl(
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
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
class _$AchievementOrderByInputImpl implements _AchievementOrderByInput {
  const _$AchievementOrderByInputImpl(
      {this.id,
      this.title,
      this.description,
      this.url,
      this.imageUrl,
      this.consultantProfileId,
      this.createdAt,
      this.updatedAt});

  factory _$AchievementOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? title;
  @override
  final SortOrder? description;
  @override
  final SortOrder? url;
  @override
  final SortOrder? imageUrl;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'AchievementOrderByInput(id: $id, title: $title, description: $description, url: $url, imageUrl: $imageUrl, consultantProfileId: $consultantProfileId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, url,
      imageUrl, consultantProfileId, createdAt, updatedAt);

  /// Create a copy of AchievementOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementOrderByInputImplCopyWith<_$AchievementOrderByInputImpl>
      get copyWith => __$$AchievementOrderByInputImplCopyWithImpl<
          _$AchievementOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _AchievementOrderByInput implements AchievementOrderByInput {
  const factory _AchievementOrderByInput(
      {final SortOrder? id,
      final SortOrder? title,
      final SortOrder? description,
      final SortOrder? url,
      final SortOrder? imageUrl,
      final SortOrder? consultantProfileId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$AchievementOrderByInputImpl;

  factory _AchievementOrderByInput.fromJson(Map<String, dynamic> json) =
      _$AchievementOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get title;
  @override
  SortOrder? get description;
  @override
  SortOrder? get url;
  @override
  SortOrder? get imageUrl;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of AchievementOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementOrderByInputImplCopyWith<_$AchievementOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
