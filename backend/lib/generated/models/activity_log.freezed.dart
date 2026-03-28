// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivityLog _$ActivityLogFromJson(Map<String, dynamic> json) {
  return _ActivityLog.fromJson(json);
}

/// @nodoc
mixin _$ActivityLog {
  String get id => throw _privateConstructorUsedError;
  ActivityType get activityType => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  String get actorId => throw _privateConstructorUsedError;
  String get actorName => throw _privateConstructorUsedError;
  String? get actorImage => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  String? get consultationId => throw _privateConstructorUsedError;
  String? get subscriptionId => throw _privateConstructorUsedError;
  String? get webinarId => throw _privateConstructorUsedError;
  String? get classId => throw _privateConstructorUsedError;
  String? get trialSessionId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ActivityLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityLogCopyWith<ActivityLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityLogCopyWith<$Res> {
  factory $ActivityLogCopyWith(
          ActivityLog value, $Res Function(ActivityLog) then) =
      _$ActivityLogCopyWithImpl<$Res, ActivityLog>;
  @useResult
  $Res call(
      {String id,
      ActivityType activityType,
      String description,
      Map<String, dynamic>? metadata,
      String actorId,
      String actorName,
      String? actorImage,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String consultantProfileId,
      String? consultationId,
      String? subscriptionId,
      String? webinarId,
      String? classId,
      String? trialSessionId,
      DateTime createdAt});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class _$ActivityLogCopyWithImpl<$Res, $Val extends ActivityLog>
    implements $ActivityLogCopyWith<$Res> {
  _$ActivityLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? activityType = null,
    Object? description = null,
    Object? metadata = freezed,
    Object? actorId = null,
    Object? actorName = null,
    Object? actorImage = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = null,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
    Object? trialSessionId = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      activityType: null == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      actorId: null == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String,
      actorName: null == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as String,
      actorImage: freezed == actorImage
          ? _value.actorImage
          : actorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      trialSessionId: freezed == trialSessionId
          ? _value.trialSessionId
          : trialSessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of ActivityLog
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
abstract class _$$ActivityLogImplCopyWith<$Res>
    implements $ActivityLogCopyWith<$Res> {
  factory _$$ActivityLogImplCopyWith(
          _$ActivityLogImpl value, $Res Function(_$ActivityLogImpl) then) =
      __$$ActivityLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ActivityType activityType,
      String description,
      Map<String, dynamic>? metadata,
      String actorId,
      String actorName,
      String? actorImage,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String consultantProfileId,
      String? consultationId,
      String? subscriptionId,
      String? webinarId,
      String? classId,
      String? trialSessionId,
      DateTime createdAt});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class __$$ActivityLogImplCopyWithImpl<$Res>
    extends _$ActivityLogCopyWithImpl<$Res, _$ActivityLogImpl>
    implements _$$ActivityLogImplCopyWith<$Res> {
  __$$ActivityLogImplCopyWithImpl(
      _$ActivityLogImpl _value, $Res Function(_$ActivityLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? activityType = null,
    Object? description = null,
    Object? metadata = freezed,
    Object? actorId = null,
    Object? actorName = null,
    Object? actorImage = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = null,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
    Object? trialSessionId = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$ActivityLogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      activityType: null == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      actorId: null == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String,
      actorName: null == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as String,
      actorImage: freezed == actorImage
          ? _value.actorImage
          : actorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      trialSessionId: freezed == trialSessionId
          ? _value.trialSessionId
          : trialSessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityLogImpl implements _ActivityLog {
  const _$ActivityLogImpl(
      {required this.id,
      required this.activityType,
      required this.description,
      final Map<String, dynamic>? metadata,
      required this.actorId,
      required this.actorName,
      this.actorImage,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      required this.consultantProfileId,
      this.consultationId,
      this.subscriptionId,
      this.webinarId,
      this.classId,
      this.trialSessionId,
      required this.createdAt})
      : _metadata = metadata;

  factory _$ActivityLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityLogImplFromJson(json);

  @override
  final String id;
  @override
  final ActivityType activityType;
  @override
  final String description;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String actorId;
  @override
  final String actorName;
  @override
  final String? actorImage;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? consultantProfile;
  @override
  final String consultantProfileId;
  @override
  final String? consultationId;
  @override
  final String? subscriptionId;
  @override
  final String? webinarId;
  @override
  final String? classId;
  @override
  final String? trialSessionId;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ActivityLog(id: $id, activityType: $activityType, description: $description, metadata: $metadata, actorId: $actorId, actorName: $actorName, actorImage: $actorImage, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, consultationId: $consultationId, subscriptionId: $subscriptionId, webinarId: $webinarId, classId: $classId, trialSessionId: $trialSessionId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.actorId, actorId) || other.actorId == actorId) &&
            (identical(other.actorName, actorName) ||
                other.actorName == actorName) &&
            (identical(other.actorImage, actorImage) ||
                other.actorImage == actorImage) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.webinarId, webinarId) ||
                other.webinarId == webinarId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.trialSessionId, trialSessionId) ||
                other.trialSessionId == trialSessionId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      activityType,
      description,
      const DeepCollectionEquality().hash(_metadata),
      actorId,
      actorName,
      actorImage,
      consultantProfile,
      consultantProfileId,
      consultationId,
      subscriptionId,
      webinarId,
      classId,
      trialSessionId,
      createdAt);

  /// Create a copy of ActivityLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityLogImplCopyWith<_$ActivityLogImpl> get copyWith =>
      __$$ActivityLogImplCopyWithImpl<_$ActivityLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityLogImplToJson(
      this,
    );
  }
}

abstract class _ActivityLog implements ActivityLog {
  const factory _ActivityLog(
      {required final String id,
      required final ActivityType activityType,
      required final String description,
      final Map<String, dynamic>? metadata,
      required final String actorId,
      required final String actorName,
      final String? actorImage,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? consultantProfile,
      required final String consultantProfileId,
      final String? consultationId,
      final String? subscriptionId,
      final String? webinarId,
      final String? classId,
      final String? trialSessionId,
      required final DateTime createdAt}) = _$ActivityLogImpl;

  factory _ActivityLog.fromJson(Map<String, dynamic> json) =
      _$ActivityLogImpl.fromJson;

  @override
  String get id;
  @override
  ActivityType get activityType;
  @override
  String get description;
  @override
  Map<String, dynamic>? get metadata;
  @override
  String get actorId;
  @override
  String get actorName;
  @override
  String? get actorImage;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile;
  @override
  String get consultantProfileId;
  @override
  String? get consultationId;
  @override
  String? get subscriptionId;
  @override
  String? get webinarId;
  @override
  String? get classId;
  @override
  String? get trialSessionId;
  @override
  DateTime get createdAt;

  /// Create a copy of ActivityLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityLogImplCopyWith<_$ActivityLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateActivityLogInput _$CreateActivityLogInputFromJson(
    Map<String, dynamic> json) {
  return _CreateActivityLogInput.fromJson(json);
}

/// @nodoc
mixin _$CreateActivityLogInput {
  ActivityType get activityType => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  String get actorId => throw _privateConstructorUsedError;
  String get actorName => throw _privateConstructorUsedError;
  String? get actorImage => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  String? get consultationId => throw _privateConstructorUsedError;
  String? get subscriptionId => throw _privateConstructorUsedError;
  String? get webinarId => throw _privateConstructorUsedError;
  String? get classId => throw _privateConstructorUsedError;
  String? get trialSessionId => throw _privateConstructorUsedError;

  /// Serializes this CreateActivityLogInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateActivityLogInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateActivityLogInputCopyWith<CreateActivityLogInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateActivityLogInputCopyWith<$Res> {
  factory $CreateActivityLogInputCopyWith(CreateActivityLogInput value,
          $Res Function(CreateActivityLogInput) then) =
      _$CreateActivityLogInputCopyWithImpl<$Res, CreateActivityLogInput>;
  @useResult
  $Res call(
      {ActivityType activityType,
      String description,
      Map<String, dynamic>? metadata,
      String actorId,
      String actorName,
      String? actorImage,
      String consultantProfileId,
      String? consultationId,
      String? subscriptionId,
      String? webinarId,
      String? classId,
      String? trialSessionId});
}

/// @nodoc
class _$CreateActivityLogInputCopyWithImpl<$Res,
        $Val extends CreateActivityLogInput>
    implements $CreateActivityLogInputCopyWith<$Res> {
  _$CreateActivityLogInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateActivityLogInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityType = null,
    Object? description = null,
    Object? metadata = freezed,
    Object? actorId = null,
    Object? actorName = null,
    Object? actorImage = freezed,
    Object? consultantProfileId = null,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
    Object? trialSessionId = freezed,
  }) {
    return _then(_value.copyWith(
      activityType: null == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      actorId: null == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String,
      actorName: null == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as String,
      actorImage: freezed == actorImage
          ? _value.actorImage
          : actorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      trialSessionId: freezed == trialSessionId
          ? _value.trialSessionId
          : trialSessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateActivityLogInputImplCopyWith<$Res>
    implements $CreateActivityLogInputCopyWith<$Res> {
  factory _$$CreateActivityLogInputImplCopyWith(
          _$CreateActivityLogInputImpl value,
          $Res Function(_$CreateActivityLogInputImpl) then) =
      __$$CreateActivityLogInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ActivityType activityType,
      String description,
      Map<String, dynamic>? metadata,
      String actorId,
      String actorName,
      String? actorImage,
      String consultantProfileId,
      String? consultationId,
      String? subscriptionId,
      String? webinarId,
      String? classId,
      String? trialSessionId});
}

/// @nodoc
class __$$CreateActivityLogInputImplCopyWithImpl<$Res>
    extends _$CreateActivityLogInputCopyWithImpl<$Res,
        _$CreateActivityLogInputImpl>
    implements _$$CreateActivityLogInputImplCopyWith<$Res> {
  __$$CreateActivityLogInputImplCopyWithImpl(
      _$CreateActivityLogInputImpl _value,
      $Res Function(_$CreateActivityLogInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateActivityLogInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityType = null,
    Object? description = null,
    Object? metadata = freezed,
    Object? actorId = null,
    Object? actorName = null,
    Object? actorImage = freezed,
    Object? consultantProfileId = null,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
    Object? trialSessionId = freezed,
  }) {
    return _then(_$CreateActivityLogInputImpl(
      activityType: null == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      actorId: null == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String,
      actorName: null == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as String,
      actorImage: freezed == actorImage
          ? _value.actorImage
          : actorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      trialSessionId: freezed == trialSessionId
          ? _value.trialSessionId
          : trialSessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateActivityLogInputImpl implements _CreateActivityLogInput {
  const _$CreateActivityLogInputImpl(
      {required this.activityType,
      required this.description,
      final Map<String, dynamic>? metadata,
      required this.actorId,
      required this.actorName,
      this.actorImage,
      required this.consultantProfileId,
      this.consultationId,
      this.subscriptionId,
      this.webinarId,
      this.classId,
      this.trialSessionId})
      : _metadata = metadata;

  factory _$CreateActivityLogInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateActivityLogInputImplFromJson(json);

  @override
  final ActivityType activityType;
  @override
  final String description;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String actorId;
  @override
  final String actorName;
  @override
  final String? actorImage;
  @override
  final String consultantProfileId;
  @override
  final String? consultationId;
  @override
  final String? subscriptionId;
  @override
  final String? webinarId;
  @override
  final String? classId;
  @override
  final String? trialSessionId;

  @override
  String toString() {
    return 'CreateActivityLogInput(activityType: $activityType, description: $description, metadata: $metadata, actorId: $actorId, actorName: $actorName, actorImage: $actorImage, consultantProfileId: $consultantProfileId, consultationId: $consultationId, subscriptionId: $subscriptionId, webinarId: $webinarId, classId: $classId, trialSessionId: $trialSessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateActivityLogInputImpl &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.actorId, actorId) || other.actorId == actorId) &&
            (identical(other.actorName, actorName) ||
                other.actorName == actorName) &&
            (identical(other.actorImage, actorImage) ||
                other.actorImage == actorImage) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.webinarId, webinarId) ||
                other.webinarId == webinarId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.trialSessionId, trialSessionId) ||
                other.trialSessionId == trialSessionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      activityType,
      description,
      const DeepCollectionEquality().hash(_metadata),
      actorId,
      actorName,
      actorImage,
      consultantProfileId,
      consultationId,
      subscriptionId,
      webinarId,
      classId,
      trialSessionId);

  /// Create a copy of CreateActivityLogInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateActivityLogInputImplCopyWith<_$CreateActivityLogInputImpl>
      get copyWith => __$$CreateActivityLogInputImplCopyWithImpl<
          _$CreateActivityLogInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateActivityLogInputImplToJson(
      this,
    );
  }
}

abstract class _CreateActivityLogInput implements CreateActivityLogInput {
  const factory _CreateActivityLogInput(
      {required final ActivityType activityType,
      required final String description,
      final Map<String, dynamic>? metadata,
      required final String actorId,
      required final String actorName,
      final String? actorImage,
      required final String consultantProfileId,
      final String? consultationId,
      final String? subscriptionId,
      final String? webinarId,
      final String? classId,
      final String? trialSessionId}) = _$CreateActivityLogInputImpl;

  factory _CreateActivityLogInput.fromJson(Map<String, dynamic> json) =
      _$CreateActivityLogInputImpl.fromJson;

  @override
  ActivityType get activityType;
  @override
  String get description;
  @override
  Map<String, dynamic>? get metadata;
  @override
  String get actorId;
  @override
  String get actorName;
  @override
  String? get actorImage;
  @override
  String get consultantProfileId;
  @override
  String? get consultationId;
  @override
  String? get subscriptionId;
  @override
  String? get webinarId;
  @override
  String? get classId;
  @override
  String? get trialSessionId;

  /// Create a copy of CreateActivityLogInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateActivityLogInputImplCopyWith<_$CreateActivityLogInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateActivityLogInput _$UpdateActivityLogInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateActivityLogInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateActivityLogInput {
  ActivityType? get activityType => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  String? get actorId => throw _privateConstructorUsedError;
  String? get actorName => throw _privateConstructorUsedError;
  String? get actorImage => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;
  String? get consultationId => throw _privateConstructorUsedError;
  String? get subscriptionId => throw _privateConstructorUsedError;
  String? get webinarId => throw _privateConstructorUsedError;
  String? get classId => throw _privateConstructorUsedError;
  String? get trialSessionId => throw _privateConstructorUsedError;

  /// Serializes this UpdateActivityLogInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateActivityLogInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateActivityLogInputCopyWith<UpdateActivityLogInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateActivityLogInputCopyWith<$Res> {
  factory $UpdateActivityLogInputCopyWith(UpdateActivityLogInput value,
          $Res Function(UpdateActivityLogInput) then) =
      _$UpdateActivityLogInputCopyWithImpl<$Res, UpdateActivityLogInput>;
  @useResult
  $Res call(
      {ActivityType? activityType,
      String? description,
      Map<String, dynamic>? metadata,
      String? actorId,
      String? actorName,
      String? actorImage,
      String? consultantProfileId,
      String? consultationId,
      String? subscriptionId,
      String? webinarId,
      String? classId,
      String? trialSessionId});
}

/// @nodoc
class _$UpdateActivityLogInputCopyWithImpl<$Res,
        $Val extends UpdateActivityLogInput>
    implements $UpdateActivityLogInputCopyWith<$Res> {
  _$UpdateActivityLogInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateActivityLogInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityType = freezed,
    Object? description = freezed,
    Object? metadata = freezed,
    Object? actorId = freezed,
    Object? actorName = freezed,
    Object? actorImage = freezed,
    Object? consultantProfileId = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
    Object? trialSessionId = freezed,
  }) {
    return _then(_value.copyWith(
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityType?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      actorId: freezed == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String?,
      actorName: freezed == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as String?,
      actorImage: freezed == actorImage
          ? _value.actorImage
          : actorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      trialSessionId: freezed == trialSessionId
          ? _value.trialSessionId
          : trialSessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateActivityLogInputImplCopyWith<$Res>
    implements $UpdateActivityLogInputCopyWith<$Res> {
  factory _$$UpdateActivityLogInputImplCopyWith(
          _$UpdateActivityLogInputImpl value,
          $Res Function(_$UpdateActivityLogInputImpl) then) =
      __$$UpdateActivityLogInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ActivityType? activityType,
      String? description,
      Map<String, dynamic>? metadata,
      String? actorId,
      String? actorName,
      String? actorImage,
      String? consultantProfileId,
      String? consultationId,
      String? subscriptionId,
      String? webinarId,
      String? classId,
      String? trialSessionId});
}

/// @nodoc
class __$$UpdateActivityLogInputImplCopyWithImpl<$Res>
    extends _$UpdateActivityLogInputCopyWithImpl<$Res,
        _$UpdateActivityLogInputImpl>
    implements _$$UpdateActivityLogInputImplCopyWith<$Res> {
  __$$UpdateActivityLogInputImplCopyWithImpl(
      _$UpdateActivityLogInputImpl _value,
      $Res Function(_$UpdateActivityLogInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateActivityLogInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityType = freezed,
    Object? description = freezed,
    Object? metadata = freezed,
    Object? actorId = freezed,
    Object? actorName = freezed,
    Object? actorImage = freezed,
    Object? consultantProfileId = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
    Object? trialSessionId = freezed,
  }) {
    return _then(_$UpdateActivityLogInputImpl(
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityType?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      actorId: freezed == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String?,
      actorName: freezed == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as String?,
      actorImage: freezed == actorImage
          ? _value.actorImage
          : actorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      trialSessionId: freezed == trialSessionId
          ? _value.trialSessionId
          : trialSessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateActivityLogInputImpl implements _UpdateActivityLogInput {
  const _$UpdateActivityLogInputImpl(
      {this.activityType,
      this.description,
      final Map<String, dynamic>? metadata,
      this.actorId,
      this.actorName,
      this.actorImage,
      this.consultantProfileId,
      this.consultationId,
      this.subscriptionId,
      this.webinarId,
      this.classId,
      this.trialSessionId})
      : _metadata = metadata;

  factory _$UpdateActivityLogInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateActivityLogInputImplFromJson(json);

  @override
  final ActivityType? activityType;
  @override
  final String? description;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? actorId;
  @override
  final String? actorName;
  @override
  final String? actorImage;
  @override
  final String? consultantProfileId;
  @override
  final String? consultationId;
  @override
  final String? subscriptionId;
  @override
  final String? webinarId;
  @override
  final String? classId;
  @override
  final String? trialSessionId;

  @override
  String toString() {
    return 'UpdateActivityLogInput(activityType: $activityType, description: $description, metadata: $metadata, actorId: $actorId, actorName: $actorName, actorImage: $actorImage, consultantProfileId: $consultantProfileId, consultationId: $consultationId, subscriptionId: $subscriptionId, webinarId: $webinarId, classId: $classId, trialSessionId: $trialSessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateActivityLogInputImpl &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.actorId, actorId) || other.actorId == actorId) &&
            (identical(other.actorName, actorName) ||
                other.actorName == actorName) &&
            (identical(other.actorImage, actorImage) ||
                other.actorImage == actorImage) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.webinarId, webinarId) ||
                other.webinarId == webinarId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.trialSessionId, trialSessionId) ||
                other.trialSessionId == trialSessionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      activityType,
      description,
      const DeepCollectionEquality().hash(_metadata),
      actorId,
      actorName,
      actorImage,
      consultantProfileId,
      consultationId,
      subscriptionId,
      webinarId,
      classId,
      trialSessionId);

  /// Create a copy of UpdateActivityLogInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateActivityLogInputImplCopyWith<_$UpdateActivityLogInputImpl>
      get copyWith => __$$UpdateActivityLogInputImplCopyWithImpl<
          _$UpdateActivityLogInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateActivityLogInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateActivityLogInput implements UpdateActivityLogInput {
  const factory _UpdateActivityLogInput(
      {final ActivityType? activityType,
      final String? description,
      final Map<String, dynamic>? metadata,
      final String? actorId,
      final String? actorName,
      final String? actorImage,
      final String? consultantProfileId,
      final String? consultationId,
      final String? subscriptionId,
      final String? webinarId,
      final String? classId,
      final String? trialSessionId}) = _$UpdateActivityLogInputImpl;

  factory _UpdateActivityLogInput.fromJson(Map<String, dynamic> json) =
      _$UpdateActivityLogInputImpl.fromJson;

  @override
  ActivityType? get activityType;
  @override
  String? get description;
  @override
  Map<String, dynamic>? get metadata;
  @override
  String? get actorId;
  @override
  String? get actorName;
  @override
  String? get actorImage;
  @override
  String? get consultantProfileId;
  @override
  String? get consultationId;
  @override
  String? get subscriptionId;
  @override
  String? get webinarId;
  @override
  String? get classId;
  @override
  String? get trialSessionId;

  /// Create a copy of UpdateActivityLogInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateActivityLogInputImplCopyWith<_$UpdateActivityLogInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActivityLogWhereUniqueInput _$ActivityLogWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ActivityLogWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ActivityLogWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ActivityLogWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityLogWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityLogWhereUniqueInputCopyWith<ActivityLogWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityLogWhereUniqueInputCopyWith<$Res> {
  factory $ActivityLogWhereUniqueInputCopyWith(
          ActivityLogWhereUniqueInput value,
          $Res Function(ActivityLogWhereUniqueInput) then) =
      _$ActivityLogWhereUniqueInputCopyWithImpl<$Res,
          ActivityLogWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ActivityLogWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ActivityLogWhereUniqueInput>
    implements $ActivityLogWhereUniqueInputCopyWith<$Res> {
  _$ActivityLogWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityLogWhereUniqueInput
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
abstract class _$$ActivityLogWhereUniqueInputImplCopyWith<$Res>
    implements $ActivityLogWhereUniqueInputCopyWith<$Res> {
  factory _$$ActivityLogWhereUniqueInputImplCopyWith(
          _$ActivityLogWhereUniqueInputImpl value,
          $Res Function(_$ActivityLogWhereUniqueInputImpl) then) =
      __$$ActivityLogWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$ActivityLogWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ActivityLogWhereUniqueInputCopyWithImpl<$Res,
        _$ActivityLogWhereUniqueInputImpl>
    implements _$$ActivityLogWhereUniqueInputImplCopyWith<$Res> {
  __$$ActivityLogWhereUniqueInputImplCopyWithImpl(
      _$ActivityLogWhereUniqueInputImpl _value,
      $Res Function(_$ActivityLogWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityLogWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ActivityLogWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityLogWhereUniqueInputImpl
    implements _ActivityLogWhereUniqueInput {
  const _$ActivityLogWhereUniqueInputImpl({this.id});

  factory _$ActivityLogWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ActivityLogWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'ActivityLogWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityLogWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ActivityLogWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityLogWhereUniqueInputImplCopyWith<_$ActivityLogWhereUniqueInputImpl>
      get copyWith => __$$ActivityLogWhereUniqueInputImplCopyWithImpl<
          _$ActivityLogWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityLogWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ActivityLogWhereUniqueInput
    implements ActivityLogWhereUniqueInput {
  const factory _ActivityLogWhereUniqueInput({final String? id}) =
      _$ActivityLogWhereUniqueInputImpl;

  factory _ActivityLogWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$ActivityLogWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of ActivityLogWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityLogWhereUniqueInputImplCopyWith<_$ActivityLogWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActivityLogWhereInput _$ActivityLogWhereInputFromJson(
    Map<String, dynamic> json) {
  return _ActivityLogWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ActivityLogWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  ActivityTypeFilter? get activityType => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  StringFilter? get actorId => throw _privateConstructorUsedError;
  StringFilter? get actorName => throw _privateConstructorUsedError;
  StringFilter? get actorImage => throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;
  StringFilter? get consultationId => throw _privateConstructorUsedError;
  StringFilter? get subscriptionId => throw _privateConstructorUsedError;
  StringFilter? get webinarId => throw _privateConstructorUsedError;
  StringFilter? get classId => throw _privateConstructorUsedError;
  StringFilter? get trialSessionId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  List<ActivityLogWhereInput>? get AND => throw _privateConstructorUsedError;
  List<ActivityLogWhereInput>? get OR => throw _privateConstructorUsedError;
  ActivityLogWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ActivityLogWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityLogWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityLogWhereInputCopyWith<ActivityLogWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityLogWhereInputCopyWith<$Res> {
  factory $ActivityLogWhereInputCopyWith(ActivityLogWhereInput value,
          $Res Function(ActivityLogWhereInput) then) =
      _$ActivityLogWhereInputCopyWithImpl<$Res, ActivityLogWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      ActivityTypeFilter? activityType,
      StringFilter? description,
      StringFilter? actorId,
      StringFilter? actorName,
      StringFilter? actorImage,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      StringFilter? consultationId,
      StringFilter? subscriptionId,
      StringFilter? webinarId,
      StringFilter? classId,
      StringFilter? trialSessionId,
      DateTimeFilter? createdAt,
      List<ActivityLogWhereInput>? AND,
      List<ActivityLogWhereInput>? OR,
      ActivityLogWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $ActivityTypeFilterCopyWith<$Res>? get activityType;
  $StringFilterCopyWith<$Res>? get description;
  $StringFilterCopyWith<$Res>? get actorId;
  $StringFilterCopyWith<$Res>? get actorName;
  $StringFilterCopyWith<$Res>? get actorImage;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $StringFilterCopyWith<$Res>? get consultationId;
  $StringFilterCopyWith<$Res>? get subscriptionId;
  $StringFilterCopyWith<$Res>? get webinarId;
  $StringFilterCopyWith<$Res>? get classId;
  $StringFilterCopyWith<$Res>? get trialSessionId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $ActivityLogWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ActivityLogWhereInputCopyWithImpl<$Res,
        $Val extends ActivityLogWhereInput>
    implements $ActivityLogWhereInputCopyWith<$Res> {
  _$ActivityLogWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityLogWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? activityType = freezed,
    Object? description = freezed,
    Object? actorId = freezed,
    Object? actorName = freezed,
    Object? actorImage = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
    Object? trialSessionId = freezed,
    Object? createdAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityTypeFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      actorId: freezed == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      actorName: freezed == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      actorImage: freezed == actorImage
          ? _value.actorImage
          : actorImage // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      trialSessionId: freezed == trialSessionId
          ? _value.trialSessionId
          : trialSessionId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<ActivityLogWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ActivityLogWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ActivityLogWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ActivityLogWhereInput
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

  /// Create a copy of ActivityLogWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityTypeFilterCopyWith<$Res>? get activityType {
    if (_value.activityType == null) {
      return null;
    }

    return $ActivityTypeFilterCopyWith<$Res>(_value.activityType!, (value) {
      return _then(_value.copyWith(activityType: value) as $Val);
    });
  }

  /// Create a copy of ActivityLogWhereInput
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

  /// Create a copy of ActivityLogWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get actorId {
    if (_value.actorId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.actorId!, (value) {
      return _then(_value.copyWith(actorId: value) as $Val);
    });
  }

  /// Create a copy of ActivityLogWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get actorName {
    if (_value.actorName == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.actorName!, (value) {
      return _then(_value.copyWith(actorName: value) as $Val);
    });
  }

  /// Create a copy of ActivityLogWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get actorImage {
    if (_value.actorImage == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.actorImage!, (value) {
      return _then(_value.copyWith(actorImage: value) as $Val);
    });
  }

  /// Create a copy of ActivityLogWhereInput
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

  /// Create a copy of ActivityLogWhereInput
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

  /// Create a copy of ActivityLogWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get consultationId {
    if (_value.consultationId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.consultationId!, (value) {
      return _then(_value.copyWith(consultationId: value) as $Val);
    });
  }

  /// Create a copy of ActivityLogWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get subscriptionId {
    if (_value.subscriptionId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.subscriptionId!, (value) {
      return _then(_value.copyWith(subscriptionId: value) as $Val);
    });
  }

  /// Create a copy of ActivityLogWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get webinarId {
    if (_value.webinarId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.webinarId!, (value) {
      return _then(_value.copyWith(webinarId: value) as $Val);
    });
  }

  /// Create a copy of ActivityLogWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get classId {
    if (_value.classId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.classId!, (value) {
      return _then(_value.copyWith(classId: value) as $Val);
    });
  }

  /// Create a copy of ActivityLogWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get trialSessionId {
    if (_value.trialSessionId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.trialSessionId!, (value) {
      return _then(_value.copyWith(trialSessionId: value) as $Val);
    });
  }

  /// Create a copy of ActivityLogWhereInput
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

  /// Create a copy of ActivityLogWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityLogWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ActivityLogWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityLogWhereInputImplCopyWith<$Res>
    implements $ActivityLogWhereInputCopyWith<$Res> {
  factory _$$ActivityLogWhereInputImplCopyWith(
          _$ActivityLogWhereInputImpl value,
          $Res Function(_$ActivityLogWhereInputImpl) then) =
      __$$ActivityLogWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      ActivityTypeFilter? activityType,
      StringFilter? description,
      StringFilter? actorId,
      StringFilter? actorName,
      StringFilter? actorImage,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      StringFilter? consultationId,
      StringFilter? subscriptionId,
      StringFilter? webinarId,
      StringFilter? classId,
      StringFilter? trialSessionId,
      DateTimeFilter? createdAt,
      List<ActivityLogWhereInput>? AND,
      List<ActivityLogWhereInput>? OR,
      ActivityLogWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $ActivityTypeFilterCopyWith<$Res>? get activityType;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $StringFilterCopyWith<$Res>? get actorId;
  @override
  $StringFilterCopyWith<$Res>? get actorName;
  @override
  $StringFilterCopyWith<$Res>? get actorImage;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $StringFilterCopyWith<$Res>? get consultationId;
  @override
  $StringFilterCopyWith<$Res>? get subscriptionId;
  @override
  $StringFilterCopyWith<$Res>? get webinarId;
  @override
  $StringFilterCopyWith<$Res>? get classId;
  @override
  $StringFilterCopyWith<$Res>? get trialSessionId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $ActivityLogWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ActivityLogWhereInputImplCopyWithImpl<$Res>
    extends _$ActivityLogWhereInputCopyWithImpl<$Res,
        _$ActivityLogWhereInputImpl>
    implements _$$ActivityLogWhereInputImplCopyWith<$Res> {
  __$$ActivityLogWhereInputImplCopyWithImpl(_$ActivityLogWhereInputImpl _value,
      $Res Function(_$ActivityLogWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityLogWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? activityType = freezed,
    Object? description = freezed,
    Object? actorId = freezed,
    Object? actorName = freezed,
    Object? actorImage = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
    Object? trialSessionId = freezed,
    Object? createdAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ActivityLogWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityTypeFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      actorId: freezed == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      actorName: freezed == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      actorImage: freezed == actorImage
          ? _value.actorImage
          : actorImage // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      trialSessionId: freezed == trialSessionId
          ? _value.trialSessionId
          : trialSessionId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<ActivityLogWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ActivityLogWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ActivityLogWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ActivityLogWhereInputImpl implements _ActivityLogWhereInput {
  const _$ActivityLogWhereInputImpl(
      {this.id,
      this.activityType,
      this.description,
      this.actorId,
      this.actorName,
      this.actorImage,
      this.consultantProfile,
      this.consultantProfileId,
      this.consultationId,
      this.subscriptionId,
      this.webinarId,
      this.classId,
      this.trialSessionId,
      this.createdAt,
      final List<ActivityLogWhereInput>? AND,
      final List<ActivityLogWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ActivityLogWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityLogWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final ActivityTypeFilter? activityType;
  @override
  final StringFilter? description;
  @override
  final StringFilter? actorId;
  @override
  final StringFilter? actorName;
  @override
  final StringFilter? actorImage;

  /// Filter by consultantProfile relation
  @override
  final ConsultantProfileRelationFilter? consultantProfile;
  @override
  final StringFilter? consultantProfileId;
  @override
  final StringFilter? consultationId;
  @override
  final StringFilter? subscriptionId;
  @override
  final StringFilter? webinarId;
  @override
  final StringFilter? classId;
  @override
  final StringFilter? trialSessionId;
  @override
  final DateTimeFilter? createdAt;
  final List<ActivityLogWhereInput>? _AND;
  @override
  List<ActivityLogWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ActivityLogWhereInput>? _OR;
  @override
  List<ActivityLogWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ActivityLogWhereInput? NOT;

  @override
  String toString() {
    return 'ActivityLogWhereInput(id: $id, activityType: $activityType, description: $description, actorId: $actorId, actorName: $actorName, actorImage: $actorImage, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, consultationId: $consultationId, subscriptionId: $subscriptionId, webinarId: $webinarId, classId: $classId, trialSessionId: $trialSessionId, createdAt: $createdAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityLogWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.actorId, actorId) || other.actorId == actorId) &&
            (identical(other.actorName, actorName) ||
                other.actorName == actorName) &&
            (identical(other.actorImage, actorImage) ||
                other.actorImage == actorImage) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.webinarId, webinarId) ||
                other.webinarId == webinarId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.trialSessionId, trialSessionId) ||
                other.trialSessionId == trialSessionId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      activityType,
      description,
      actorId,
      actorName,
      actorImage,
      consultantProfile,
      consultantProfileId,
      consultationId,
      subscriptionId,
      webinarId,
      classId,
      trialSessionId,
      createdAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of ActivityLogWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityLogWhereInputImplCopyWith<_$ActivityLogWhereInputImpl>
      get copyWith => __$$ActivityLogWhereInputImplCopyWithImpl<
          _$ActivityLogWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityLogWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ActivityLogWhereInput implements ActivityLogWhereInput {
  const factory _ActivityLogWhereInput(
      {final StringFilter? id,
      final ActivityTypeFilter? activityType,
      final StringFilter? description,
      final StringFilter? actorId,
      final StringFilter? actorName,
      final StringFilter? actorImage,
      final ConsultantProfileRelationFilter? consultantProfile,
      final StringFilter? consultantProfileId,
      final StringFilter? consultationId,
      final StringFilter? subscriptionId,
      final StringFilter? webinarId,
      final StringFilter? classId,
      final StringFilter? trialSessionId,
      final DateTimeFilter? createdAt,
      final List<ActivityLogWhereInput>? AND,
      final List<ActivityLogWhereInput>? OR,
      final ActivityLogWhereInput? NOT}) = _$ActivityLogWhereInputImpl;

  factory _ActivityLogWhereInput.fromJson(Map<String, dynamic> json) =
      _$ActivityLogWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  ActivityTypeFilter? get activityType;
  @override
  StringFilter? get description;
  @override
  StringFilter? get actorId;
  @override
  StringFilter? get actorName;
  @override
  StringFilter? get actorImage;

  /// Filter by consultantProfile relation
  @override
  ConsultantProfileRelationFilter? get consultantProfile;
  @override
  StringFilter? get consultantProfileId;
  @override
  StringFilter? get consultationId;
  @override
  StringFilter? get subscriptionId;
  @override
  StringFilter? get webinarId;
  @override
  StringFilter? get classId;
  @override
  StringFilter? get trialSessionId;
  @override
  DateTimeFilter? get createdAt;
  @override
  List<ActivityLogWhereInput>? get AND;
  @override
  List<ActivityLogWhereInput>? get OR;
  @override
  ActivityLogWhereInput? get NOT;

  /// Create a copy of ActivityLogWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityLogWhereInputImplCopyWith<_$ActivityLogWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActivityLogListRelationFilter _$ActivityLogListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ActivityLogListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ActivityLogListRelationFilter {
  /// At least one related record matches
  ActivityLogWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ActivityLogWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ActivityLogWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ActivityLogListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityLogListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityLogListRelationFilterCopyWith<ActivityLogListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityLogListRelationFilterCopyWith<$Res> {
  factory $ActivityLogListRelationFilterCopyWith(
          ActivityLogListRelationFilter value,
          $Res Function(ActivityLogListRelationFilter) then) =
      _$ActivityLogListRelationFilterCopyWithImpl<$Res,
          ActivityLogListRelationFilter>;
  @useResult
  $Res call(
      {ActivityLogWhereInput? some,
      ActivityLogWhereInput? every,
      ActivityLogWhereInput? none});

  $ActivityLogWhereInputCopyWith<$Res>? get some;
  $ActivityLogWhereInputCopyWith<$Res>? get every;
  $ActivityLogWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ActivityLogListRelationFilterCopyWithImpl<$Res,
        $Val extends ActivityLogListRelationFilter>
    implements $ActivityLogListRelationFilterCopyWith<$Res> {
  _$ActivityLogListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityLogListRelationFilter
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
              as ActivityLogWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ActivityLogWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ActivityLogWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ActivityLogListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityLogWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ActivityLogWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ActivityLogListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityLogWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ActivityLogWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ActivityLogListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityLogWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ActivityLogWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityLogListRelationFilterImplCopyWith<$Res>
    implements $ActivityLogListRelationFilterCopyWith<$Res> {
  factory _$$ActivityLogListRelationFilterImplCopyWith(
          _$ActivityLogListRelationFilterImpl value,
          $Res Function(_$ActivityLogListRelationFilterImpl) then) =
      __$$ActivityLogListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ActivityLogWhereInput? some,
      ActivityLogWhereInput? every,
      ActivityLogWhereInput? none});

  @override
  $ActivityLogWhereInputCopyWith<$Res>? get some;
  @override
  $ActivityLogWhereInputCopyWith<$Res>? get every;
  @override
  $ActivityLogWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ActivityLogListRelationFilterImplCopyWithImpl<$Res>
    extends _$ActivityLogListRelationFilterCopyWithImpl<$Res,
        _$ActivityLogListRelationFilterImpl>
    implements _$$ActivityLogListRelationFilterImplCopyWith<$Res> {
  __$$ActivityLogListRelationFilterImplCopyWithImpl(
      _$ActivityLogListRelationFilterImpl _value,
      $Res Function(_$ActivityLogListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityLogListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ActivityLogListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ActivityLogWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ActivityLogWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ActivityLogWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityLogListRelationFilterImpl
    implements _ActivityLogListRelationFilter {
  const _$ActivityLogListRelationFilterImpl({this.some, this.every, this.none});

  factory _$ActivityLogListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ActivityLogListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ActivityLogWhereInput? some;

  /// All related records match
  @override
  final ActivityLogWhereInput? every;

  /// No related records match
  @override
  final ActivityLogWhereInput? none;

  @override
  String toString() {
    return 'ActivityLogListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityLogListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ActivityLogListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityLogListRelationFilterImplCopyWith<
          _$ActivityLogListRelationFilterImpl>
      get copyWith => __$$ActivityLogListRelationFilterImplCopyWithImpl<
          _$ActivityLogListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityLogListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ActivityLogListRelationFilter
    implements ActivityLogListRelationFilter {
  const factory _ActivityLogListRelationFilter(
      {final ActivityLogWhereInput? some,
      final ActivityLogWhereInput? every,
      final ActivityLogWhereInput? none}) = _$ActivityLogListRelationFilterImpl;

  factory _ActivityLogListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ActivityLogListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ActivityLogWhereInput? get some;

  /// All related records match
  @override
  ActivityLogWhereInput? get every;

  /// No related records match
  @override
  ActivityLogWhereInput? get none;

  /// Create a copy of ActivityLogListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityLogListRelationFilterImplCopyWith<
          _$ActivityLogListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActivityLogRelationFilter _$ActivityLogRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ActivityLogRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ActivityLogRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ActivityLogWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ActivityLogWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ActivityLogRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityLogRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityLogRelationFilterCopyWith<ActivityLogRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityLogRelationFilterCopyWith<$Res> {
  factory $ActivityLogRelationFilterCopyWith(ActivityLogRelationFilter value,
          $Res Function(ActivityLogRelationFilter) then) =
      _$ActivityLogRelationFilterCopyWithImpl<$Res, ActivityLogRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ActivityLogWhereInput? is_,
      ActivityLogWhereInput? isNot});

  $ActivityLogWhereInputCopyWith<$Res>? get is_;
  $ActivityLogWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ActivityLogRelationFilterCopyWithImpl<$Res,
        $Val extends ActivityLogRelationFilter>
    implements $ActivityLogRelationFilterCopyWith<$Res> {
  _$ActivityLogRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityLogRelationFilter
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
              as ActivityLogWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ActivityLogWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ActivityLogRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityLogWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ActivityLogWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ActivityLogRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityLogWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ActivityLogWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityLogRelationFilterImplCopyWith<$Res>
    implements $ActivityLogRelationFilterCopyWith<$Res> {
  factory _$$ActivityLogRelationFilterImplCopyWith(
          _$ActivityLogRelationFilterImpl value,
          $Res Function(_$ActivityLogRelationFilterImpl) then) =
      __$$ActivityLogRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ActivityLogWhereInput? is_,
      ActivityLogWhereInput? isNot});

  @override
  $ActivityLogWhereInputCopyWith<$Res>? get is_;
  @override
  $ActivityLogWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ActivityLogRelationFilterImplCopyWithImpl<$Res>
    extends _$ActivityLogRelationFilterCopyWithImpl<$Res,
        _$ActivityLogRelationFilterImpl>
    implements _$$ActivityLogRelationFilterImplCopyWith<$Res> {
  __$$ActivityLogRelationFilterImplCopyWithImpl(
      _$ActivityLogRelationFilterImpl _value,
      $Res Function(_$ActivityLogRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityLogRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ActivityLogRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ActivityLogWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ActivityLogWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityLogRelationFilterImpl implements _ActivityLogRelationFilter {
  const _$ActivityLogRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ActivityLogRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityLogRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ActivityLogWhereInput? is_;

  /// Related record does not match
  @override
  final ActivityLogWhereInput? isNot;

  @override
  String toString() {
    return 'ActivityLogRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityLogRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ActivityLogRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityLogRelationFilterImplCopyWith<_$ActivityLogRelationFilterImpl>
      get copyWith => __$$ActivityLogRelationFilterImplCopyWithImpl<
          _$ActivityLogRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityLogRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ActivityLogRelationFilter implements ActivityLogRelationFilter {
  const factory _ActivityLogRelationFilter(
      {@JsonKey(name: 'is') final ActivityLogWhereInput? is_,
      final ActivityLogWhereInput? isNot}) = _$ActivityLogRelationFilterImpl;

  factory _ActivityLogRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ActivityLogRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ActivityLogWhereInput? get is_;

  /// Related record does not match
  @override
  ActivityLogWhereInput? get isNot;

  /// Create a copy of ActivityLogRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityLogRelationFilterImplCopyWith<_$ActivityLogRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActivityLogOrderByInput _$ActivityLogOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ActivityLogOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ActivityLogOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get actorId => throw _privateConstructorUsedError;
  SortOrder? get actorName => throw _privateConstructorUsedError;
  SortOrder? get actorImage => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get consultationId => throw _privateConstructorUsedError;
  SortOrder? get subscriptionId => throw _privateConstructorUsedError;
  SortOrder? get webinarId => throw _privateConstructorUsedError;
  SortOrder? get classId => throw _privateConstructorUsedError;
  SortOrder? get trialSessionId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ActivityLogOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityLogOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityLogOrderByInputCopyWith<ActivityLogOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityLogOrderByInputCopyWith<$Res> {
  factory $ActivityLogOrderByInputCopyWith(ActivityLogOrderByInput value,
          $Res Function(ActivityLogOrderByInput) then) =
      _$ActivityLogOrderByInputCopyWithImpl<$Res, ActivityLogOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? description,
      SortOrder? actorId,
      SortOrder? actorName,
      SortOrder? actorImage,
      SortOrder? consultantProfileId,
      SortOrder? consultationId,
      SortOrder? subscriptionId,
      SortOrder? webinarId,
      SortOrder? classId,
      SortOrder? trialSessionId,
      SortOrder? createdAt});
}

/// @nodoc
class _$ActivityLogOrderByInputCopyWithImpl<$Res,
        $Val extends ActivityLogOrderByInput>
    implements $ActivityLogOrderByInputCopyWith<$Res> {
  _$ActivityLogOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityLogOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? actorId = freezed,
    Object? actorName = freezed,
    Object? actorImage = freezed,
    Object? consultantProfileId = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
    Object? trialSessionId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      actorId: freezed == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      actorName: freezed == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      actorImage: freezed == actorImage
          ? _value.actorImage
          : actorImage // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      trialSessionId: freezed == trialSessionId
          ? _value.trialSessionId
          : trialSessionId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityLogOrderByInputImplCopyWith<$Res>
    implements $ActivityLogOrderByInputCopyWith<$Res> {
  factory _$$ActivityLogOrderByInputImplCopyWith(
          _$ActivityLogOrderByInputImpl value,
          $Res Function(_$ActivityLogOrderByInputImpl) then) =
      __$$ActivityLogOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? description,
      SortOrder? actorId,
      SortOrder? actorName,
      SortOrder? actorImage,
      SortOrder? consultantProfileId,
      SortOrder? consultationId,
      SortOrder? subscriptionId,
      SortOrder? webinarId,
      SortOrder? classId,
      SortOrder? trialSessionId,
      SortOrder? createdAt});
}

/// @nodoc
class __$$ActivityLogOrderByInputImplCopyWithImpl<$Res>
    extends _$ActivityLogOrderByInputCopyWithImpl<$Res,
        _$ActivityLogOrderByInputImpl>
    implements _$$ActivityLogOrderByInputImplCopyWith<$Res> {
  __$$ActivityLogOrderByInputImplCopyWithImpl(
      _$ActivityLogOrderByInputImpl _value,
      $Res Function(_$ActivityLogOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityLogOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? actorId = freezed,
    Object? actorName = freezed,
    Object? actorImage = freezed,
    Object? consultantProfileId = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? webinarId = freezed,
    Object? classId = freezed,
    Object? trialSessionId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$ActivityLogOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      actorId: freezed == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      actorName: freezed == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      actorImage: freezed == actorImage
          ? _value.actorImage
          : actorImage // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      trialSessionId: freezed == trialSessionId
          ? _value.trialSessionId
          : trialSessionId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityLogOrderByInputImpl implements _ActivityLogOrderByInput {
  const _$ActivityLogOrderByInputImpl(
      {this.id,
      this.description,
      this.actorId,
      this.actorName,
      this.actorImage,
      this.consultantProfileId,
      this.consultationId,
      this.subscriptionId,
      this.webinarId,
      this.classId,
      this.trialSessionId,
      this.createdAt});

  factory _$ActivityLogOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityLogOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? description;
  @override
  final SortOrder? actorId;
  @override
  final SortOrder? actorName;
  @override
  final SortOrder? actorImage;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? consultationId;
  @override
  final SortOrder? subscriptionId;
  @override
  final SortOrder? webinarId;
  @override
  final SortOrder? classId;
  @override
  final SortOrder? trialSessionId;
  @override
  final SortOrder? createdAt;

  @override
  String toString() {
    return 'ActivityLogOrderByInput(id: $id, description: $description, actorId: $actorId, actorName: $actorName, actorImage: $actorImage, consultantProfileId: $consultantProfileId, consultationId: $consultationId, subscriptionId: $subscriptionId, webinarId: $webinarId, classId: $classId, trialSessionId: $trialSessionId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityLogOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.actorId, actorId) || other.actorId == actorId) &&
            (identical(other.actorName, actorName) ||
                other.actorName == actorName) &&
            (identical(other.actorImage, actorImage) ||
                other.actorImage == actorImage) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.webinarId, webinarId) ||
                other.webinarId == webinarId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.trialSessionId, trialSessionId) ||
                other.trialSessionId == trialSessionId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      description,
      actorId,
      actorName,
      actorImage,
      consultantProfileId,
      consultationId,
      subscriptionId,
      webinarId,
      classId,
      trialSessionId,
      createdAt);

  /// Create a copy of ActivityLogOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityLogOrderByInputImplCopyWith<_$ActivityLogOrderByInputImpl>
      get copyWith => __$$ActivityLogOrderByInputImplCopyWithImpl<
          _$ActivityLogOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityLogOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ActivityLogOrderByInput implements ActivityLogOrderByInput {
  const factory _ActivityLogOrderByInput(
      {final SortOrder? id,
      final SortOrder? description,
      final SortOrder? actorId,
      final SortOrder? actorName,
      final SortOrder? actorImage,
      final SortOrder? consultantProfileId,
      final SortOrder? consultationId,
      final SortOrder? subscriptionId,
      final SortOrder? webinarId,
      final SortOrder? classId,
      final SortOrder? trialSessionId,
      final SortOrder? createdAt}) = _$ActivityLogOrderByInputImpl;

  factory _ActivityLogOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ActivityLogOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get description;
  @override
  SortOrder? get actorId;
  @override
  SortOrder? get actorName;
  @override
  SortOrder? get actorImage;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get consultationId;
  @override
  SortOrder? get subscriptionId;
  @override
  SortOrder? get webinarId;
  @override
  SortOrder? get classId;
  @override
  SortOrder? get trialSessionId;
  @override
  SortOrder? get createdAt;

  /// Create a copy of ActivityLogOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityLogOrderByInputImplCopyWith<_$ActivityLogOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
