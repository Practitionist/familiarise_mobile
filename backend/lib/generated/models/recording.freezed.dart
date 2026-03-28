// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recording.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Recording _$RecordingFromJson(Map<String, dynamic> json) {
  return _Recording.fromJson(json);
}

/// @nodoc
mixin _$Recording {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get recordingUrl => throw _privateConstructorUsedError;
  int get durationInMinutes => throw _privateConstructorUsedError;
  DateTime get recordedAt => throw _privateConstructorUsedError;
  String? get streamRecordingId => throw _privateConstructorUsedError;
  String? get streamCallId => throw _privateConstructorUsedError;
  RecordingStorageType get storageType => throw _privateConstructorUsedError;
  RecordingStatus get status => throw _privateConstructorUsedError;
  String? get supabaseUrl => throw _privateConstructorUsedError;
  String? get supabasePath => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  BigInt? get fileSize => throw _privateConstructorUsedError;
  String? get codec => throw _privateConstructorUsedError;
  String? get resolution => throw _privateConstructorUsedError;
  String? get previewClipUrl => throw _privateConstructorUsedError;
  int? get previewClipDuration => throw _privateConstructorUsedError;
  DateTime? get streamUrlExpiresAt => throw _privateConstructorUsedError;
  DateTime? get transferredAt => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  MeetingSession? get meetingSession => throw _privateConstructorUsedError;
  String get meetingSessionId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Recording to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Recording
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordingCopyWith<Recording> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordingCopyWith<$Res> {
  factory $RecordingCopyWith(Recording value, $Res Function(Recording) then) =
      _$RecordingCopyWithImpl<$Res, Recording>;
  @useResult
  $Res call(
      {String id,
      String title,
      String recordingUrl,
      int durationInMinutes,
      DateTime recordedAt,
      String? streamRecordingId,
      String? streamCallId,
      RecordingStorageType storageType,
      RecordingStatus status,
      String? supabaseUrl,
      String? supabasePath,
      String? thumbnailUrl,
      BigInt? fileSize,
      String? codec,
      String? resolution,
      String? previewClipUrl,
      int? previewClipDuration,
      DateTime? streamUrlExpiresAt,
      DateTime? transferredAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      MeetingSession? meetingSession,
      String meetingSessionId,
      DateTime createdAt,
      DateTime updatedAt});

  $MeetingSessionCopyWith<$Res>? get meetingSession;
}

/// @nodoc
class _$RecordingCopyWithImpl<$Res, $Val extends Recording>
    implements $RecordingCopyWith<$Res> {
  _$RecordingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Recording
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? recordingUrl = null,
    Object? durationInMinutes = null,
    Object? recordedAt = null,
    Object? streamRecordingId = freezed,
    Object? streamCallId = freezed,
    Object? storageType = null,
    Object? status = null,
    Object? supabaseUrl = freezed,
    Object? supabasePath = freezed,
    Object? thumbnailUrl = freezed,
    Object? fileSize = freezed,
    Object? codec = freezed,
    Object? resolution = freezed,
    Object? previewClipUrl = freezed,
    Object? previewClipDuration = freezed,
    Object? streamUrlExpiresAt = freezed,
    Object? transferredAt = freezed,
    Object? meetingSession = freezed,
    Object? meetingSessionId = null,
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
      recordingUrl: null == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as String,
      durationInMinutes: null == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      recordedAt: null == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      streamRecordingId: freezed == streamRecordingId
          ? _value.streamRecordingId
          : streamRecordingId // ignore: cast_nullable_to_non_nullable
              as String?,
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as String?,
      storageType: null == storageType
          ? _value.storageType
          : storageType // ignore: cast_nullable_to_non_nullable
              as RecordingStorageType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordingStatus,
      supabaseUrl: freezed == supabaseUrl
          ? _value.supabaseUrl
          : supabaseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      supabasePath: freezed == supabasePath
          ? _value.supabasePath
          : supabasePath // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      previewClipUrl: freezed == previewClipUrl
          ? _value.previewClipUrl
          : previewClipUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewClipDuration: freezed == previewClipDuration
          ? _value.previewClipDuration
          : previewClipDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      streamUrlExpiresAt: freezed == streamUrlExpiresAt
          ? _value.streamUrlExpiresAt
          : streamUrlExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transferredAt: freezed == transferredAt
          ? _value.transferredAt
          : transferredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meetingSession: freezed == meetingSession
          ? _value.meetingSession
          : meetingSession // ignore: cast_nullable_to_non_nullable
              as MeetingSession?,
      meetingSessionId: null == meetingSessionId
          ? _value.meetingSessionId
          : meetingSessionId // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of Recording
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeetingSessionCopyWith<$Res>? get meetingSession {
    if (_value.meetingSession == null) {
      return null;
    }

    return $MeetingSessionCopyWith<$Res>(_value.meetingSession!, (value) {
      return _then(_value.copyWith(meetingSession: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecordingImplCopyWith<$Res>
    implements $RecordingCopyWith<$Res> {
  factory _$$RecordingImplCopyWith(
          _$RecordingImpl value, $Res Function(_$RecordingImpl) then) =
      __$$RecordingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String recordingUrl,
      int durationInMinutes,
      DateTime recordedAt,
      String? streamRecordingId,
      String? streamCallId,
      RecordingStorageType storageType,
      RecordingStatus status,
      String? supabaseUrl,
      String? supabasePath,
      String? thumbnailUrl,
      BigInt? fileSize,
      String? codec,
      String? resolution,
      String? previewClipUrl,
      int? previewClipDuration,
      DateTime? streamUrlExpiresAt,
      DateTime? transferredAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      MeetingSession? meetingSession,
      String meetingSessionId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $MeetingSessionCopyWith<$Res>? get meetingSession;
}

/// @nodoc
class __$$RecordingImplCopyWithImpl<$Res>
    extends _$RecordingCopyWithImpl<$Res, _$RecordingImpl>
    implements _$$RecordingImplCopyWith<$Res> {
  __$$RecordingImplCopyWithImpl(
      _$RecordingImpl _value, $Res Function(_$RecordingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Recording
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? recordingUrl = null,
    Object? durationInMinutes = null,
    Object? recordedAt = null,
    Object? streamRecordingId = freezed,
    Object? streamCallId = freezed,
    Object? storageType = null,
    Object? status = null,
    Object? supabaseUrl = freezed,
    Object? supabasePath = freezed,
    Object? thumbnailUrl = freezed,
    Object? fileSize = freezed,
    Object? codec = freezed,
    Object? resolution = freezed,
    Object? previewClipUrl = freezed,
    Object? previewClipDuration = freezed,
    Object? streamUrlExpiresAt = freezed,
    Object? transferredAt = freezed,
    Object? meetingSession = freezed,
    Object? meetingSessionId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$RecordingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      recordingUrl: null == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as String,
      durationInMinutes: null == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      recordedAt: null == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      streamRecordingId: freezed == streamRecordingId
          ? _value.streamRecordingId
          : streamRecordingId // ignore: cast_nullable_to_non_nullable
              as String?,
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as String?,
      storageType: null == storageType
          ? _value.storageType
          : storageType // ignore: cast_nullable_to_non_nullable
              as RecordingStorageType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordingStatus,
      supabaseUrl: freezed == supabaseUrl
          ? _value.supabaseUrl
          : supabaseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      supabasePath: freezed == supabasePath
          ? _value.supabasePath
          : supabasePath // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      previewClipUrl: freezed == previewClipUrl
          ? _value.previewClipUrl
          : previewClipUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewClipDuration: freezed == previewClipDuration
          ? _value.previewClipDuration
          : previewClipDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      streamUrlExpiresAt: freezed == streamUrlExpiresAt
          ? _value.streamUrlExpiresAt
          : streamUrlExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transferredAt: freezed == transferredAt
          ? _value.transferredAt
          : transferredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meetingSession: freezed == meetingSession
          ? _value.meetingSession
          : meetingSession // ignore: cast_nullable_to_non_nullable
              as MeetingSession?,
      meetingSessionId: null == meetingSessionId
          ? _value.meetingSessionId
          : meetingSessionId // ignore: cast_nullable_to_non_nullable
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
class _$RecordingImpl implements _Recording {
  const _$RecordingImpl(
      {required this.id,
      required this.title,
      required this.recordingUrl,
      required this.durationInMinutes,
      required this.recordedAt,
      this.streamRecordingId,
      this.streamCallId,
      this.storageType = RecordingStorageType.streamS3,
      this.status = RecordingStatus.ready,
      this.supabaseUrl,
      this.supabasePath,
      this.thumbnailUrl,
      this.fileSize,
      this.codec,
      this.resolution,
      this.previewClipUrl,
      this.previewClipDuration,
      this.streamUrlExpiresAt,
      this.transferredAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.meetingSession,
      required this.meetingSessionId,
      required this.createdAt,
      required this.updatedAt});

  factory _$RecordingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordingImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String recordingUrl;
  @override
  final int durationInMinutes;
  @override
  final DateTime recordedAt;
  @override
  final String? streamRecordingId;
  @override
  final String? streamCallId;
  @override
  @JsonKey()
  final RecordingStorageType storageType;
  @override
  @JsonKey()
  final RecordingStatus status;
  @override
  final String? supabaseUrl;
  @override
  final String? supabasePath;
  @override
  final String? thumbnailUrl;
  @override
  final BigInt? fileSize;
  @override
  final String? codec;
  @override
  final String? resolution;
  @override
  final String? previewClipUrl;
  @override
  final int? previewClipDuration;
  @override
  final DateTime? streamUrlExpiresAt;
  @override
  final DateTime? transferredAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final MeetingSession? meetingSession;
  @override
  final String meetingSessionId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Recording(id: $id, title: $title, recordingUrl: $recordingUrl, durationInMinutes: $durationInMinutes, recordedAt: $recordedAt, streamRecordingId: $streamRecordingId, streamCallId: $streamCallId, storageType: $storageType, status: $status, supabaseUrl: $supabaseUrl, supabasePath: $supabasePath, thumbnailUrl: $thumbnailUrl, fileSize: $fileSize, codec: $codec, resolution: $resolution, previewClipUrl: $previewClipUrl, previewClipDuration: $previewClipDuration, streamUrlExpiresAt: $streamUrlExpiresAt, transferredAt: $transferredAt, meetingSession: $meetingSession, meetingSessionId: $meetingSessionId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.recordingUrl, recordingUrl) ||
                other.recordingUrl == recordingUrl) &&
            (identical(other.durationInMinutes, durationInMinutes) ||
                other.durationInMinutes == durationInMinutes) &&
            (identical(other.recordedAt, recordedAt) ||
                other.recordedAt == recordedAt) &&
            (identical(other.streamRecordingId, streamRecordingId) ||
                other.streamRecordingId == streamRecordingId) &&
            (identical(other.streamCallId, streamCallId) ||
                other.streamCallId == streamCallId) &&
            (identical(other.storageType, storageType) ||
                other.storageType == storageType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.supabaseUrl, supabaseUrl) ||
                other.supabaseUrl == supabaseUrl) &&
            (identical(other.supabasePath, supabasePath) ||
                other.supabasePath == supabasePath) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.codec, codec) || other.codec == codec) &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.previewClipUrl, previewClipUrl) ||
                other.previewClipUrl == previewClipUrl) &&
            (identical(other.previewClipDuration, previewClipDuration) ||
                other.previewClipDuration == previewClipDuration) &&
            (identical(other.streamUrlExpiresAt, streamUrlExpiresAt) ||
                other.streamUrlExpiresAt == streamUrlExpiresAt) &&
            (identical(other.transferredAt, transferredAt) ||
                other.transferredAt == transferredAt) &&
            (identical(other.meetingSession, meetingSession) ||
                other.meetingSession == meetingSession) &&
            (identical(other.meetingSessionId, meetingSessionId) ||
                other.meetingSessionId == meetingSessionId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        recordingUrl,
        durationInMinutes,
        recordedAt,
        streamRecordingId,
        streamCallId,
        storageType,
        status,
        supabaseUrl,
        supabasePath,
        thumbnailUrl,
        fileSize,
        codec,
        resolution,
        previewClipUrl,
        previewClipDuration,
        streamUrlExpiresAt,
        transferredAt,
        meetingSession,
        meetingSessionId,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of Recording
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordingImplCopyWith<_$RecordingImpl> get copyWith =>
      __$$RecordingImplCopyWithImpl<_$RecordingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordingImplToJson(
      this,
    );
  }
}

abstract class _Recording implements Recording {
  const factory _Recording(
      {required final String id,
      required final String title,
      required final String recordingUrl,
      required final int durationInMinutes,
      required final DateTime recordedAt,
      final String? streamRecordingId,
      final String? streamCallId,
      final RecordingStorageType storageType,
      final RecordingStatus status,
      final String? supabaseUrl,
      final String? supabasePath,
      final String? thumbnailUrl,
      final BigInt? fileSize,
      final String? codec,
      final String? resolution,
      final String? previewClipUrl,
      final int? previewClipDuration,
      final DateTime? streamUrlExpiresAt,
      final DateTime? transferredAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final MeetingSession? meetingSession,
      required final String meetingSessionId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$RecordingImpl;

  factory _Recording.fromJson(Map<String, dynamic> json) =
      _$RecordingImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get recordingUrl;
  @override
  int get durationInMinutes;
  @override
  DateTime get recordedAt;
  @override
  String? get streamRecordingId;
  @override
  String? get streamCallId;
  @override
  RecordingStorageType get storageType;
  @override
  RecordingStatus get status;
  @override
  String? get supabaseUrl;
  @override
  String? get supabasePath;
  @override
  String? get thumbnailUrl;
  @override
  BigInt? get fileSize;
  @override
  String? get codec;
  @override
  String? get resolution;
  @override
  String? get previewClipUrl;
  @override
  int? get previewClipDuration;
  @override
  DateTime? get streamUrlExpiresAt;
  @override
  DateTime? get transferredAt;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  MeetingSession? get meetingSession;
  @override
  String get meetingSessionId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Recording
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordingImplCopyWith<_$RecordingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateRecordingInput _$CreateRecordingInputFromJson(Map<String, dynamic> json) {
  return _CreateRecordingInput.fromJson(json);
}

/// @nodoc
mixin _$CreateRecordingInput {
  String get title => throw _privateConstructorUsedError;
  String get recordingUrl => throw _privateConstructorUsedError;
  int get durationInMinutes => throw _privateConstructorUsedError;
  DateTime get recordedAt => throw _privateConstructorUsedError;
  String? get streamRecordingId => throw _privateConstructorUsedError;
  String? get streamCallId => throw _privateConstructorUsedError;
  RecordingStorageType get storageType => throw _privateConstructorUsedError;
  RecordingStatus get status => throw _privateConstructorUsedError;
  String? get supabaseUrl => throw _privateConstructorUsedError;
  String? get supabasePath => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  BigInt? get fileSize => throw _privateConstructorUsedError;
  String? get codec => throw _privateConstructorUsedError;
  String? get resolution => throw _privateConstructorUsedError;
  String? get previewClipUrl => throw _privateConstructorUsedError;
  int? get previewClipDuration => throw _privateConstructorUsedError;
  DateTime? get streamUrlExpiresAt => throw _privateConstructorUsedError;
  DateTime? get transferredAt => throw _privateConstructorUsedError;
  String get meetingSessionId => throw _privateConstructorUsedError;

  /// Serializes this CreateRecordingInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateRecordingInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateRecordingInputCopyWith<CreateRecordingInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRecordingInputCopyWith<$Res> {
  factory $CreateRecordingInputCopyWith(CreateRecordingInput value,
          $Res Function(CreateRecordingInput) then) =
      _$CreateRecordingInputCopyWithImpl<$Res, CreateRecordingInput>;
  @useResult
  $Res call(
      {String title,
      String recordingUrl,
      int durationInMinutes,
      DateTime recordedAt,
      String? streamRecordingId,
      String? streamCallId,
      RecordingStorageType storageType,
      RecordingStatus status,
      String? supabaseUrl,
      String? supabasePath,
      String? thumbnailUrl,
      BigInt? fileSize,
      String? codec,
      String? resolution,
      String? previewClipUrl,
      int? previewClipDuration,
      DateTime? streamUrlExpiresAt,
      DateTime? transferredAt,
      String meetingSessionId});
}

/// @nodoc
class _$CreateRecordingInputCopyWithImpl<$Res,
        $Val extends CreateRecordingInput>
    implements $CreateRecordingInputCopyWith<$Res> {
  _$CreateRecordingInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateRecordingInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? recordingUrl = null,
    Object? durationInMinutes = null,
    Object? recordedAt = null,
    Object? streamRecordingId = freezed,
    Object? streamCallId = freezed,
    Object? storageType = null,
    Object? status = null,
    Object? supabaseUrl = freezed,
    Object? supabasePath = freezed,
    Object? thumbnailUrl = freezed,
    Object? fileSize = freezed,
    Object? codec = freezed,
    Object? resolution = freezed,
    Object? previewClipUrl = freezed,
    Object? previewClipDuration = freezed,
    Object? streamUrlExpiresAt = freezed,
    Object? transferredAt = freezed,
    Object? meetingSessionId = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      recordingUrl: null == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as String,
      durationInMinutes: null == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      recordedAt: null == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      streamRecordingId: freezed == streamRecordingId
          ? _value.streamRecordingId
          : streamRecordingId // ignore: cast_nullable_to_non_nullable
              as String?,
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as String?,
      storageType: null == storageType
          ? _value.storageType
          : storageType // ignore: cast_nullable_to_non_nullable
              as RecordingStorageType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordingStatus,
      supabaseUrl: freezed == supabaseUrl
          ? _value.supabaseUrl
          : supabaseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      supabasePath: freezed == supabasePath
          ? _value.supabasePath
          : supabasePath // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      previewClipUrl: freezed == previewClipUrl
          ? _value.previewClipUrl
          : previewClipUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewClipDuration: freezed == previewClipDuration
          ? _value.previewClipDuration
          : previewClipDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      streamUrlExpiresAt: freezed == streamUrlExpiresAt
          ? _value.streamUrlExpiresAt
          : streamUrlExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transferredAt: freezed == transferredAt
          ? _value.transferredAt
          : transferredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meetingSessionId: null == meetingSessionId
          ? _value.meetingSessionId
          : meetingSessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateRecordingInputImplCopyWith<$Res>
    implements $CreateRecordingInputCopyWith<$Res> {
  factory _$$CreateRecordingInputImplCopyWith(_$CreateRecordingInputImpl value,
          $Res Function(_$CreateRecordingInputImpl) then) =
      __$$CreateRecordingInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String recordingUrl,
      int durationInMinutes,
      DateTime recordedAt,
      String? streamRecordingId,
      String? streamCallId,
      RecordingStorageType storageType,
      RecordingStatus status,
      String? supabaseUrl,
      String? supabasePath,
      String? thumbnailUrl,
      BigInt? fileSize,
      String? codec,
      String? resolution,
      String? previewClipUrl,
      int? previewClipDuration,
      DateTime? streamUrlExpiresAt,
      DateTime? transferredAt,
      String meetingSessionId});
}

/// @nodoc
class __$$CreateRecordingInputImplCopyWithImpl<$Res>
    extends _$CreateRecordingInputCopyWithImpl<$Res, _$CreateRecordingInputImpl>
    implements _$$CreateRecordingInputImplCopyWith<$Res> {
  __$$CreateRecordingInputImplCopyWithImpl(_$CreateRecordingInputImpl _value,
      $Res Function(_$CreateRecordingInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateRecordingInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? recordingUrl = null,
    Object? durationInMinutes = null,
    Object? recordedAt = null,
    Object? streamRecordingId = freezed,
    Object? streamCallId = freezed,
    Object? storageType = null,
    Object? status = null,
    Object? supabaseUrl = freezed,
    Object? supabasePath = freezed,
    Object? thumbnailUrl = freezed,
    Object? fileSize = freezed,
    Object? codec = freezed,
    Object? resolution = freezed,
    Object? previewClipUrl = freezed,
    Object? previewClipDuration = freezed,
    Object? streamUrlExpiresAt = freezed,
    Object? transferredAt = freezed,
    Object? meetingSessionId = null,
  }) {
    return _then(_$CreateRecordingInputImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      recordingUrl: null == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as String,
      durationInMinutes: null == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      recordedAt: null == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      streamRecordingId: freezed == streamRecordingId
          ? _value.streamRecordingId
          : streamRecordingId // ignore: cast_nullable_to_non_nullable
              as String?,
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as String?,
      storageType: null == storageType
          ? _value.storageType
          : storageType // ignore: cast_nullable_to_non_nullable
              as RecordingStorageType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordingStatus,
      supabaseUrl: freezed == supabaseUrl
          ? _value.supabaseUrl
          : supabaseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      supabasePath: freezed == supabasePath
          ? _value.supabasePath
          : supabasePath // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      previewClipUrl: freezed == previewClipUrl
          ? _value.previewClipUrl
          : previewClipUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewClipDuration: freezed == previewClipDuration
          ? _value.previewClipDuration
          : previewClipDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      streamUrlExpiresAt: freezed == streamUrlExpiresAt
          ? _value.streamUrlExpiresAt
          : streamUrlExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transferredAt: freezed == transferredAt
          ? _value.transferredAt
          : transferredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meetingSessionId: null == meetingSessionId
          ? _value.meetingSessionId
          : meetingSessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateRecordingInputImpl implements _CreateRecordingInput {
  const _$CreateRecordingInputImpl(
      {required this.title,
      required this.recordingUrl,
      required this.durationInMinutes,
      required this.recordedAt,
      this.streamRecordingId,
      this.streamCallId,
      this.storageType = RecordingStorageType.streamS3,
      this.status = RecordingStatus.ready,
      this.supabaseUrl,
      this.supabasePath,
      this.thumbnailUrl,
      this.fileSize,
      this.codec,
      this.resolution,
      this.previewClipUrl,
      this.previewClipDuration,
      this.streamUrlExpiresAt,
      this.transferredAt,
      required this.meetingSessionId});

  factory _$CreateRecordingInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateRecordingInputImplFromJson(json);

  @override
  final String title;
  @override
  final String recordingUrl;
  @override
  final int durationInMinutes;
  @override
  final DateTime recordedAt;
  @override
  final String? streamRecordingId;
  @override
  final String? streamCallId;
  @override
  @JsonKey()
  final RecordingStorageType storageType;
  @override
  @JsonKey()
  final RecordingStatus status;
  @override
  final String? supabaseUrl;
  @override
  final String? supabasePath;
  @override
  final String? thumbnailUrl;
  @override
  final BigInt? fileSize;
  @override
  final String? codec;
  @override
  final String? resolution;
  @override
  final String? previewClipUrl;
  @override
  final int? previewClipDuration;
  @override
  final DateTime? streamUrlExpiresAt;
  @override
  final DateTime? transferredAt;
  @override
  final String meetingSessionId;

  @override
  String toString() {
    return 'CreateRecordingInput(title: $title, recordingUrl: $recordingUrl, durationInMinutes: $durationInMinutes, recordedAt: $recordedAt, streamRecordingId: $streamRecordingId, streamCallId: $streamCallId, storageType: $storageType, status: $status, supabaseUrl: $supabaseUrl, supabasePath: $supabasePath, thumbnailUrl: $thumbnailUrl, fileSize: $fileSize, codec: $codec, resolution: $resolution, previewClipUrl: $previewClipUrl, previewClipDuration: $previewClipDuration, streamUrlExpiresAt: $streamUrlExpiresAt, transferredAt: $transferredAt, meetingSessionId: $meetingSessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRecordingInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.recordingUrl, recordingUrl) ||
                other.recordingUrl == recordingUrl) &&
            (identical(other.durationInMinutes, durationInMinutes) ||
                other.durationInMinutes == durationInMinutes) &&
            (identical(other.recordedAt, recordedAt) ||
                other.recordedAt == recordedAt) &&
            (identical(other.streamRecordingId, streamRecordingId) ||
                other.streamRecordingId == streamRecordingId) &&
            (identical(other.streamCallId, streamCallId) ||
                other.streamCallId == streamCallId) &&
            (identical(other.storageType, storageType) ||
                other.storageType == storageType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.supabaseUrl, supabaseUrl) ||
                other.supabaseUrl == supabaseUrl) &&
            (identical(other.supabasePath, supabasePath) ||
                other.supabasePath == supabasePath) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.codec, codec) || other.codec == codec) &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.previewClipUrl, previewClipUrl) ||
                other.previewClipUrl == previewClipUrl) &&
            (identical(other.previewClipDuration, previewClipDuration) ||
                other.previewClipDuration == previewClipDuration) &&
            (identical(other.streamUrlExpiresAt, streamUrlExpiresAt) ||
                other.streamUrlExpiresAt == streamUrlExpiresAt) &&
            (identical(other.transferredAt, transferredAt) ||
                other.transferredAt == transferredAt) &&
            (identical(other.meetingSessionId, meetingSessionId) ||
                other.meetingSessionId == meetingSessionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        title,
        recordingUrl,
        durationInMinutes,
        recordedAt,
        streamRecordingId,
        streamCallId,
        storageType,
        status,
        supabaseUrl,
        supabasePath,
        thumbnailUrl,
        fileSize,
        codec,
        resolution,
        previewClipUrl,
        previewClipDuration,
        streamUrlExpiresAt,
        transferredAt,
        meetingSessionId
      ]);

  /// Create a copy of CreateRecordingInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRecordingInputImplCopyWith<_$CreateRecordingInputImpl>
      get copyWith =>
          __$$CreateRecordingInputImplCopyWithImpl<_$CreateRecordingInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRecordingInputImplToJson(
      this,
    );
  }
}

abstract class _CreateRecordingInput implements CreateRecordingInput {
  const factory _CreateRecordingInput(
      {required final String title,
      required final String recordingUrl,
      required final int durationInMinutes,
      required final DateTime recordedAt,
      final String? streamRecordingId,
      final String? streamCallId,
      final RecordingStorageType storageType,
      final RecordingStatus status,
      final String? supabaseUrl,
      final String? supabasePath,
      final String? thumbnailUrl,
      final BigInt? fileSize,
      final String? codec,
      final String? resolution,
      final String? previewClipUrl,
      final int? previewClipDuration,
      final DateTime? streamUrlExpiresAt,
      final DateTime? transferredAt,
      required final String meetingSessionId}) = _$CreateRecordingInputImpl;

  factory _CreateRecordingInput.fromJson(Map<String, dynamic> json) =
      _$CreateRecordingInputImpl.fromJson;

  @override
  String get title;
  @override
  String get recordingUrl;
  @override
  int get durationInMinutes;
  @override
  DateTime get recordedAt;
  @override
  String? get streamRecordingId;
  @override
  String? get streamCallId;
  @override
  RecordingStorageType get storageType;
  @override
  RecordingStatus get status;
  @override
  String? get supabaseUrl;
  @override
  String? get supabasePath;
  @override
  String? get thumbnailUrl;
  @override
  BigInt? get fileSize;
  @override
  String? get codec;
  @override
  String? get resolution;
  @override
  String? get previewClipUrl;
  @override
  int? get previewClipDuration;
  @override
  DateTime? get streamUrlExpiresAt;
  @override
  DateTime? get transferredAt;
  @override
  String get meetingSessionId;

  /// Create a copy of CreateRecordingInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateRecordingInputImplCopyWith<_$CreateRecordingInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateRecordingInput _$UpdateRecordingInputFromJson(Map<String, dynamic> json) {
  return _UpdateRecordingInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateRecordingInput {
  String? get title => throw _privateConstructorUsedError;
  String? get recordingUrl => throw _privateConstructorUsedError;
  int? get durationInMinutes => throw _privateConstructorUsedError;
  DateTime? get recordedAt => throw _privateConstructorUsedError;
  String? get streamRecordingId => throw _privateConstructorUsedError;
  String? get streamCallId => throw _privateConstructorUsedError;
  RecordingStorageType? get storageType => throw _privateConstructorUsedError;
  RecordingStatus? get status => throw _privateConstructorUsedError;
  String? get supabaseUrl => throw _privateConstructorUsedError;
  String? get supabasePath => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  BigInt? get fileSize => throw _privateConstructorUsedError;
  String? get codec => throw _privateConstructorUsedError;
  String? get resolution => throw _privateConstructorUsedError;
  String? get previewClipUrl => throw _privateConstructorUsedError;
  int? get previewClipDuration => throw _privateConstructorUsedError;
  DateTime? get streamUrlExpiresAt => throw _privateConstructorUsedError;
  DateTime? get transferredAt => throw _privateConstructorUsedError;
  String? get meetingSessionId => throw _privateConstructorUsedError;

  /// Serializes this UpdateRecordingInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateRecordingInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateRecordingInputCopyWith<UpdateRecordingInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateRecordingInputCopyWith<$Res> {
  factory $UpdateRecordingInputCopyWith(UpdateRecordingInput value,
          $Res Function(UpdateRecordingInput) then) =
      _$UpdateRecordingInputCopyWithImpl<$Res, UpdateRecordingInput>;
  @useResult
  $Res call(
      {String? title,
      String? recordingUrl,
      int? durationInMinutes,
      DateTime? recordedAt,
      String? streamRecordingId,
      String? streamCallId,
      RecordingStorageType? storageType,
      RecordingStatus? status,
      String? supabaseUrl,
      String? supabasePath,
      String? thumbnailUrl,
      BigInt? fileSize,
      String? codec,
      String? resolution,
      String? previewClipUrl,
      int? previewClipDuration,
      DateTime? streamUrlExpiresAt,
      DateTime? transferredAt,
      String? meetingSessionId});
}

/// @nodoc
class _$UpdateRecordingInputCopyWithImpl<$Res,
        $Val extends UpdateRecordingInput>
    implements $UpdateRecordingInputCopyWith<$Res> {
  _$UpdateRecordingInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateRecordingInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? recordingUrl = freezed,
    Object? durationInMinutes = freezed,
    Object? recordedAt = freezed,
    Object? streamRecordingId = freezed,
    Object? streamCallId = freezed,
    Object? storageType = freezed,
    Object? status = freezed,
    Object? supabaseUrl = freezed,
    Object? supabasePath = freezed,
    Object? thumbnailUrl = freezed,
    Object? fileSize = freezed,
    Object? codec = freezed,
    Object? resolution = freezed,
    Object? previewClipUrl = freezed,
    Object? previewClipDuration = freezed,
    Object? streamUrlExpiresAt = freezed,
    Object? transferredAt = freezed,
    Object? meetingSessionId = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      recordingUrl: freezed == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInMinutes: freezed == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      recordedAt: freezed == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      streamRecordingId: freezed == streamRecordingId
          ? _value.streamRecordingId
          : streamRecordingId // ignore: cast_nullable_to_non_nullable
              as String?,
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as String?,
      storageType: freezed == storageType
          ? _value.storageType
          : storageType // ignore: cast_nullable_to_non_nullable
              as RecordingStorageType?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordingStatus?,
      supabaseUrl: freezed == supabaseUrl
          ? _value.supabaseUrl
          : supabaseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      supabasePath: freezed == supabasePath
          ? _value.supabasePath
          : supabasePath // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      previewClipUrl: freezed == previewClipUrl
          ? _value.previewClipUrl
          : previewClipUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewClipDuration: freezed == previewClipDuration
          ? _value.previewClipDuration
          : previewClipDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      streamUrlExpiresAt: freezed == streamUrlExpiresAt
          ? _value.streamUrlExpiresAt
          : streamUrlExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transferredAt: freezed == transferredAt
          ? _value.transferredAt
          : transferredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meetingSessionId: freezed == meetingSessionId
          ? _value.meetingSessionId
          : meetingSessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateRecordingInputImplCopyWith<$Res>
    implements $UpdateRecordingInputCopyWith<$Res> {
  factory _$$UpdateRecordingInputImplCopyWith(_$UpdateRecordingInputImpl value,
          $Res Function(_$UpdateRecordingInputImpl) then) =
      __$$UpdateRecordingInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? recordingUrl,
      int? durationInMinutes,
      DateTime? recordedAt,
      String? streamRecordingId,
      String? streamCallId,
      RecordingStorageType? storageType,
      RecordingStatus? status,
      String? supabaseUrl,
      String? supabasePath,
      String? thumbnailUrl,
      BigInt? fileSize,
      String? codec,
      String? resolution,
      String? previewClipUrl,
      int? previewClipDuration,
      DateTime? streamUrlExpiresAt,
      DateTime? transferredAt,
      String? meetingSessionId});
}

/// @nodoc
class __$$UpdateRecordingInputImplCopyWithImpl<$Res>
    extends _$UpdateRecordingInputCopyWithImpl<$Res, _$UpdateRecordingInputImpl>
    implements _$$UpdateRecordingInputImplCopyWith<$Res> {
  __$$UpdateRecordingInputImplCopyWithImpl(_$UpdateRecordingInputImpl _value,
      $Res Function(_$UpdateRecordingInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateRecordingInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? recordingUrl = freezed,
    Object? durationInMinutes = freezed,
    Object? recordedAt = freezed,
    Object? streamRecordingId = freezed,
    Object? streamCallId = freezed,
    Object? storageType = freezed,
    Object? status = freezed,
    Object? supabaseUrl = freezed,
    Object? supabasePath = freezed,
    Object? thumbnailUrl = freezed,
    Object? fileSize = freezed,
    Object? codec = freezed,
    Object? resolution = freezed,
    Object? previewClipUrl = freezed,
    Object? previewClipDuration = freezed,
    Object? streamUrlExpiresAt = freezed,
    Object? transferredAt = freezed,
    Object? meetingSessionId = freezed,
  }) {
    return _then(_$UpdateRecordingInputImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      recordingUrl: freezed == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInMinutes: freezed == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      recordedAt: freezed == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      streamRecordingId: freezed == streamRecordingId
          ? _value.streamRecordingId
          : streamRecordingId // ignore: cast_nullable_to_non_nullable
              as String?,
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as String?,
      storageType: freezed == storageType
          ? _value.storageType
          : storageType // ignore: cast_nullable_to_non_nullable
              as RecordingStorageType?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordingStatus?,
      supabaseUrl: freezed == supabaseUrl
          ? _value.supabaseUrl
          : supabaseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      supabasePath: freezed == supabasePath
          ? _value.supabasePath
          : supabasePath // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String?,
      previewClipUrl: freezed == previewClipUrl
          ? _value.previewClipUrl
          : previewClipUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewClipDuration: freezed == previewClipDuration
          ? _value.previewClipDuration
          : previewClipDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      streamUrlExpiresAt: freezed == streamUrlExpiresAt
          ? _value.streamUrlExpiresAt
          : streamUrlExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transferredAt: freezed == transferredAt
          ? _value.transferredAt
          : transferredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meetingSessionId: freezed == meetingSessionId
          ? _value.meetingSessionId
          : meetingSessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateRecordingInputImpl implements _UpdateRecordingInput {
  const _$UpdateRecordingInputImpl(
      {this.title,
      this.recordingUrl,
      this.durationInMinutes,
      this.recordedAt,
      this.streamRecordingId,
      this.streamCallId,
      this.storageType,
      this.status,
      this.supabaseUrl,
      this.supabasePath,
      this.thumbnailUrl,
      this.fileSize,
      this.codec,
      this.resolution,
      this.previewClipUrl,
      this.previewClipDuration,
      this.streamUrlExpiresAt,
      this.transferredAt,
      this.meetingSessionId});

  factory _$UpdateRecordingInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateRecordingInputImplFromJson(json);

  @override
  final String? title;
  @override
  final String? recordingUrl;
  @override
  final int? durationInMinutes;
  @override
  final DateTime? recordedAt;
  @override
  final String? streamRecordingId;
  @override
  final String? streamCallId;
  @override
  final RecordingStorageType? storageType;
  @override
  final RecordingStatus? status;
  @override
  final String? supabaseUrl;
  @override
  final String? supabasePath;
  @override
  final String? thumbnailUrl;
  @override
  final BigInt? fileSize;
  @override
  final String? codec;
  @override
  final String? resolution;
  @override
  final String? previewClipUrl;
  @override
  final int? previewClipDuration;
  @override
  final DateTime? streamUrlExpiresAt;
  @override
  final DateTime? transferredAt;
  @override
  final String? meetingSessionId;

  @override
  String toString() {
    return 'UpdateRecordingInput(title: $title, recordingUrl: $recordingUrl, durationInMinutes: $durationInMinutes, recordedAt: $recordedAt, streamRecordingId: $streamRecordingId, streamCallId: $streamCallId, storageType: $storageType, status: $status, supabaseUrl: $supabaseUrl, supabasePath: $supabasePath, thumbnailUrl: $thumbnailUrl, fileSize: $fileSize, codec: $codec, resolution: $resolution, previewClipUrl: $previewClipUrl, previewClipDuration: $previewClipDuration, streamUrlExpiresAt: $streamUrlExpiresAt, transferredAt: $transferredAt, meetingSessionId: $meetingSessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRecordingInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.recordingUrl, recordingUrl) ||
                other.recordingUrl == recordingUrl) &&
            (identical(other.durationInMinutes, durationInMinutes) ||
                other.durationInMinutes == durationInMinutes) &&
            (identical(other.recordedAt, recordedAt) ||
                other.recordedAt == recordedAt) &&
            (identical(other.streamRecordingId, streamRecordingId) ||
                other.streamRecordingId == streamRecordingId) &&
            (identical(other.streamCallId, streamCallId) ||
                other.streamCallId == streamCallId) &&
            (identical(other.storageType, storageType) ||
                other.storageType == storageType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.supabaseUrl, supabaseUrl) ||
                other.supabaseUrl == supabaseUrl) &&
            (identical(other.supabasePath, supabasePath) ||
                other.supabasePath == supabasePath) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.codec, codec) || other.codec == codec) &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.previewClipUrl, previewClipUrl) ||
                other.previewClipUrl == previewClipUrl) &&
            (identical(other.previewClipDuration, previewClipDuration) ||
                other.previewClipDuration == previewClipDuration) &&
            (identical(other.streamUrlExpiresAt, streamUrlExpiresAt) ||
                other.streamUrlExpiresAt == streamUrlExpiresAt) &&
            (identical(other.transferredAt, transferredAt) ||
                other.transferredAt == transferredAt) &&
            (identical(other.meetingSessionId, meetingSessionId) ||
                other.meetingSessionId == meetingSessionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        title,
        recordingUrl,
        durationInMinutes,
        recordedAt,
        streamRecordingId,
        streamCallId,
        storageType,
        status,
        supabaseUrl,
        supabasePath,
        thumbnailUrl,
        fileSize,
        codec,
        resolution,
        previewClipUrl,
        previewClipDuration,
        streamUrlExpiresAt,
        transferredAt,
        meetingSessionId
      ]);

  /// Create a copy of UpdateRecordingInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRecordingInputImplCopyWith<_$UpdateRecordingInputImpl>
      get copyWith =>
          __$$UpdateRecordingInputImplCopyWithImpl<_$UpdateRecordingInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateRecordingInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateRecordingInput implements UpdateRecordingInput {
  const factory _UpdateRecordingInput(
      {final String? title,
      final String? recordingUrl,
      final int? durationInMinutes,
      final DateTime? recordedAt,
      final String? streamRecordingId,
      final String? streamCallId,
      final RecordingStorageType? storageType,
      final RecordingStatus? status,
      final String? supabaseUrl,
      final String? supabasePath,
      final String? thumbnailUrl,
      final BigInt? fileSize,
      final String? codec,
      final String? resolution,
      final String? previewClipUrl,
      final int? previewClipDuration,
      final DateTime? streamUrlExpiresAt,
      final DateTime? transferredAt,
      final String? meetingSessionId}) = _$UpdateRecordingInputImpl;

  factory _UpdateRecordingInput.fromJson(Map<String, dynamic> json) =
      _$UpdateRecordingInputImpl.fromJson;

  @override
  String? get title;
  @override
  String? get recordingUrl;
  @override
  int? get durationInMinutes;
  @override
  DateTime? get recordedAt;
  @override
  String? get streamRecordingId;
  @override
  String? get streamCallId;
  @override
  RecordingStorageType? get storageType;
  @override
  RecordingStatus? get status;
  @override
  String? get supabaseUrl;
  @override
  String? get supabasePath;
  @override
  String? get thumbnailUrl;
  @override
  BigInt? get fileSize;
  @override
  String? get codec;
  @override
  String? get resolution;
  @override
  String? get previewClipUrl;
  @override
  int? get previewClipDuration;
  @override
  DateTime? get streamUrlExpiresAt;
  @override
  DateTime? get transferredAt;
  @override
  String? get meetingSessionId;

  /// Create a copy of UpdateRecordingInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRecordingInputImplCopyWith<_$UpdateRecordingInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecordingWhereUniqueInput _$RecordingWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _RecordingWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$RecordingWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get streamRecordingId => throw _privateConstructorUsedError;

  /// Serializes this RecordingWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecordingWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordingWhereUniqueInputCopyWith<RecordingWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordingWhereUniqueInputCopyWith<$Res> {
  factory $RecordingWhereUniqueInputCopyWith(RecordingWhereUniqueInput value,
          $Res Function(RecordingWhereUniqueInput) then) =
      _$RecordingWhereUniqueInputCopyWithImpl<$Res, RecordingWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? streamRecordingId});
}

/// @nodoc
class _$RecordingWhereUniqueInputCopyWithImpl<$Res,
        $Val extends RecordingWhereUniqueInput>
    implements $RecordingWhereUniqueInputCopyWith<$Res> {
  _$RecordingWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordingWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamRecordingId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      streamRecordingId: freezed == streamRecordingId
          ? _value.streamRecordingId
          : streamRecordingId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordingWhereUniqueInputImplCopyWith<$Res>
    implements $RecordingWhereUniqueInputCopyWith<$Res> {
  factory _$$RecordingWhereUniqueInputImplCopyWith(
          _$RecordingWhereUniqueInputImpl value,
          $Res Function(_$RecordingWhereUniqueInputImpl) then) =
      __$$RecordingWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? streamRecordingId});
}

/// @nodoc
class __$$RecordingWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$RecordingWhereUniqueInputCopyWithImpl<$Res,
        _$RecordingWhereUniqueInputImpl>
    implements _$$RecordingWhereUniqueInputImplCopyWith<$Res> {
  __$$RecordingWhereUniqueInputImplCopyWithImpl(
      _$RecordingWhereUniqueInputImpl _value,
      $Res Function(_$RecordingWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamRecordingId = freezed,
  }) {
    return _then(_$RecordingWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      streamRecordingId: freezed == streamRecordingId
          ? _value.streamRecordingId
          : streamRecordingId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordingWhereUniqueInputImpl implements _RecordingWhereUniqueInput {
  const _$RecordingWhereUniqueInputImpl({this.id, this.streamRecordingId});

  factory _$RecordingWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordingWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? streamRecordingId;

  @override
  String toString() {
    return 'RecordingWhereUniqueInput(id: $id, streamRecordingId: $streamRecordingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streamRecordingId, streamRecordingId) ||
                other.streamRecordingId == streamRecordingId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, streamRecordingId);

  /// Create a copy of RecordingWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordingWhereUniqueInputImplCopyWith<_$RecordingWhereUniqueInputImpl>
      get copyWith => __$$RecordingWhereUniqueInputImplCopyWithImpl<
          _$RecordingWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordingWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _RecordingWhereUniqueInput implements RecordingWhereUniqueInput {
  const factory _RecordingWhereUniqueInput(
      {final String? id,
      final String? streamRecordingId}) = _$RecordingWhereUniqueInputImpl;

  factory _RecordingWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$RecordingWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get streamRecordingId;

  /// Create a copy of RecordingWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordingWhereUniqueInputImplCopyWith<_$RecordingWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecordingWhereInput _$RecordingWhereInputFromJson(Map<String, dynamic> json) {
  return _RecordingWhereInput.fromJson(json);
}

/// @nodoc
mixin _$RecordingWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get title => throw _privateConstructorUsedError;
  StringFilter? get recordingUrl => throw _privateConstructorUsedError;
  IntFilter? get durationInMinutes => throw _privateConstructorUsedError;
  DateTimeFilter? get recordedAt => throw _privateConstructorUsedError;
  StringFilter? get streamRecordingId => throw _privateConstructorUsedError;
  StringFilter? get streamCallId => throw _privateConstructorUsedError;
  RecordingStorageTypeFilter? get storageType =>
      throw _privateConstructorUsedError;
  RecordingStatusFilter? get status => throw _privateConstructorUsedError;
  StringFilter? get supabaseUrl => throw _privateConstructorUsedError;
  StringFilter? get supabasePath => throw _privateConstructorUsedError;
  StringFilter? get thumbnailUrl => throw _privateConstructorUsedError;
  StringFilter? get codec => throw _privateConstructorUsedError;
  StringFilter? get resolution => throw _privateConstructorUsedError;
  StringFilter? get previewClipUrl => throw _privateConstructorUsedError;
  IntFilter? get previewClipDuration => throw _privateConstructorUsedError;
  DateTimeFilter? get streamUrlExpiresAt => throw _privateConstructorUsedError;
  DateTimeFilter? get transferredAt => throw _privateConstructorUsedError;

  /// Filter by meetingSession relation
  MeetingSessionRelationFilter? get meetingSession =>
      throw _privateConstructorUsedError;
  StringFilter? get meetingSessionId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<RecordingWhereInput>? get AND => throw _privateConstructorUsedError;
  List<RecordingWhereInput>? get OR => throw _privateConstructorUsedError;
  RecordingWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this RecordingWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordingWhereInputCopyWith<RecordingWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordingWhereInputCopyWith<$Res> {
  factory $RecordingWhereInputCopyWith(
          RecordingWhereInput value, $Res Function(RecordingWhereInput) then) =
      _$RecordingWhereInputCopyWithImpl<$Res, RecordingWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? recordingUrl,
      IntFilter? durationInMinutes,
      DateTimeFilter? recordedAt,
      StringFilter? streamRecordingId,
      StringFilter? streamCallId,
      RecordingStorageTypeFilter? storageType,
      RecordingStatusFilter? status,
      StringFilter? supabaseUrl,
      StringFilter? supabasePath,
      StringFilter? thumbnailUrl,
      StringFilter? codec,
      StringFilter? resolution,
      StringFilter? previewClipUrl,
      IntFilter? previewClipDuration,
      DateTimeFilter? streamUrlExpiresAt,
      DateTimeFilter? transferredAt,
      MeetingSessionRelationFilter? meetingSession,
      StringFilter? meetingSessionId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<RecordingWhereInput>? AND,
      List<RecordingWhereInput>? OR,
      RecordingWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get title;
  $StringFilterCopyWith<$Res>? get recordingUrl;
  $IntFilterCopyWith<$Res>? get durationInMinutes;
  $DateTimeFilterCopyWith<$Res>? get recordedAt;
  $StringFilterCopyWith<$Res>? get streamRecordingId;
  $StringFilterCopyWith<$Res>? get streamCallId;
  $RecordingStorageTypeFilterCopyWith<$Res>? get storageType;
  $RecordingStatusFilterCopyWith<$Res>? get status;
  $StringFilterCopyWith<$Res>? get supabaseUrl;
  $StringFilterCopyWith<$Res>? get supabasePath;
  $StringFilterCopyWith<$Res>? get thumbnailUrl;
  $StringFilterCopyWith<$Res>? get codec;
  $StringFilterCopyWith<$Res>? get resolution;
  $StringFilterCopyWith<$Res>? get previewClipUrl;
  $IntFilterCopyWith<$Res>? get previewClipDuration;
  $DateTimeFilterCopyWith<$Res>? get streamUrlExpiresAt;
  $DateTimeFilterCopyWith<$Res>? get transferredAt;
  $MeetingSessionRelationFilterCopyWith<$Res>? get meetingSession;
  $StringFilterCopyWith<$Res>? get meetingSessionId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $RecordingWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$RecordingWhereInputCopyWithImpl<$Res, $Val extends RecordingWhereInput>
    implements $RecordingWhereInputCopyWith<$Res> {
  _$RecordingWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? recordingUrl = freezed,
    Object? durationInMinutes = freezed,
    Object? recordedAt = freezed,
    Object? streamRecordingId = freezed,
    Object? streamCallId = freezed,
    Object? storageType = freezed,
    Object? status = freezed,
    Object? supabaseUrl = freezed,
    Object? supabasePath = freezed,
    Object? thumbnailUrl = freezed,
    Object? codec = freezed,
    Object? resolution = freezed,
    Object? previewClipUrl = freezed,
    Object? previewClipDuration = freezed,
    Object? streamUrlExpiresAt = freezed,
    Object? transferredAt = freezed,
    Object? meetingSession = freezed,
    Object? meetingSessionId = freezed,
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
      recordingUrl: freezed == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      durationInMinutes: freezed == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      recordedAt: freezed == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      streamRecordingId: freezed == streamRecordingId
          ? _value.streamRecordingId
          : streamRecordingId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      storageType: freezed == storageType
          ? _value.storageType
          : storageType // ignore: cast_nullable_to_non_nullable
              as RecordingStorageTypeFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordingStatusFilter?,
      supabaseUrl: freezed == supabaseUrl
          ? _value.supabaseUrl
          : supabaseUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      supabasePath: freezed == supabasePath
          ? _value.supabasePath
          : supabasePath // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      previewClipUrl: freezed == previewClipUrl
          ? _value.previewClipUrl
          : previewClipUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      previewClipDuration: freezed == previewClipDuration
          ? _value.previewClipDuration
          : previewClipDuration // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      streamUrlExpiresAt: freezed == streamUrlExpiresAt
          ? _value.streamUrlExpiresAt
          : streamUrlExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      transferredAt: freezed == transferredAt
          ? _value.transferredAt
          : transferredAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      meetingSession: freezed == meetingSession
          ? _value.meetingSession
          : meetingSession // ignore: cast_nullable_to_non_nullable
              as MeetingSessionRelationFilter?,
      meetingSessionId: freezed == meetingSessionId
          ? _value.meetingSessionId
          : meetingSessionId // ignore: cast_nullable_to_non_nullable
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
              as List<RecordingWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<RecordingWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as RecordingWhereInput?,
    ) as $Val);
  }

  /// Create a copy of RecordingWhereInput
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

  /// Create a copy of RecordingWhereInput
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

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get recordingUrl {
    if (_value.recordingUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.recordingUrl!, (value) {
      return _then(_value.copyWith(recordingUrl: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get durationInMinutes {
    if (_value.durationInMinutes == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.durationInMinutes!, (value) {
      return _then(_value.copyWith(durationInMinutes: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get recordedAt {
    if (_value.recordedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.recordedAt!, (value) {
      return _then(_value.copyWith(recordedAt: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get streamRecordingId {
    if (_value.streamRecordingId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.streamRecordingId!, (value) {
      return _then(_value.copyWith(streamRecordingId: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get streamCallId {
    if (_value.streamCallId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.streamCallId!, (value) {
      return _then(_value.copyWith(streamCallId: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordingStorageTypeFilterCopyWith<$Res>? get storageType {
    if (_value.storageType == null) {
      return null;
    }

    return $RecordingStorageTypeFilterCopyWith<$Res>(_value.storageType!,
        (value) {
      return _then(_value.copyWith(storageType: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordingStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $RecordingStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get supabaseUrl {
    if (_value.supabaseUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.supabaseUrl!, (value) {
      return _then(_value.copyWith(supabaseUrl: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get supabasePath {
    if (_value.supabasePath == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.supabasePath!, (value) {
      return _then(_value.copyWith(supabasePath: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get thumbnailUrl {
    if (_value.thumbnailUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.thumbnailUrl!, (value) {
      return _then(_value.copyWith(thumbnailUrl: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get codec {
    if (_value.codec == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.codec!, (value) {
      return _then(_value.copyWith(codec: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get resolution {
    if (_value.resolution == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.resolution!, (value) {
      return _then(_value.copyWith(resolution: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get previewClipUrl {
    if (_value.previewClipUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.previewClipUrl!, (value) {
      return _then(_value.copyWith(previewClipUrl: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get previewClipDuration {
    if (_value.previewClipDuration == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.previewClipDuration!, (value) {
      return _then(_value.copyWith(previewClipDuration: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get streamUrlExpiresAt {
    if (_value.streamUrlExpiresAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.streamUrlExpiresAt!, (value) {
      return _then(_value.copyWith(streamUrlExpiresAt: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get transferredAt {
    if (_value.transferredAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.transferredAt!, (value) {
      return _then(_value.copyWith(transferredAt: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeetingSessionRelationFilterCopyWith<$Res>? get meetingSession {
    if (_value.meetingSession == null) {
      return null;
    }

    return $MeetingSessionRelationFilterCopyWith<$Res>(_value.meetingSession!,
        (value) {
      return _then(_value.copyWith(meetingSession: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get meetingSessionId {
    if (_value.meetingSessionId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.meetingSessionId!, (value) {
      return _then(_value.copyWith(meetingSessionId: value) as $Val);
    });
  }

  /// Create a copy of RecordingWhereInput
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

  /// Create a copy of RecordingWhereInput
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

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordingWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $RecordingWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecordingWhereInputImplCopyWith<$Res>
    implements $RecordingWhereInputCopyWith<$Res> {
  factory _$$RecordingWhereInputImplCopyWith(_$RecordingWhereInputImpl value,
          $Res Function(_$RecordingWhereInputImpl) then) =
      __$$RecordingWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? recordingUrl,
      IntFilter? durationInMinutes,
      DateTimeFilter? recordedAt,
      StringFilter? streamRecordingId,
      StringFilter? streamCallId,
      RecordingStorageTypeFilter? storageType,
      RecordingStatusFilter? status,
      StringFilter? supabaseUrl,
      StringFilter? supabasePath,
      StringFilter? thumbnailUrl,
      StringFilter? codec,
      StringFilter? resolution,
      StringFilter? previewClipUrl,
      IntFilter? previewClipDuration,
      DateTimeFilter? streamUrlExpiresAt,
      DateTimeFilter? transferredAt,
      MeetingSessionRelationFilter? meetingSession,
      StringFilter? meetingSessionId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<RecordingWhereInput>? AND,
      List<RecordingWhereInput>? OR,
      RecordingWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get title;
  @override
  $StringFilterCopyWith<$Res>? get recordingUrl;
  @override
  $IntFilterCopyWith<$Res>? get durationInMinutes;
  @override
  $DateTimeFilterCopyWith<$Res>? get recordedAt;
  @override
  $StringFilterCopyWith<$Res>? get streamRecordingId;
  @override
  $StringFilterCopyWith<$Res>? get streamCallId;
  @override
  $RecordingStorageTypeFilterCopyWith<$Res>? get storageType;
  @override
  $RecordingStatusFilterCopyWith<$Res>? get status;
  @override
  $StringFilterCopyWith<$Res>? get supabaseUrl;
  @override
  $StringFilterCopyWith<$Res>? get supabasePath;
  @override
  $StringFilterCopyWith<$Res>? get thumbnailUrl;
  @override
  $StringFilterCopyWith<$Res>? get codec;
  @override
  $StringFilterCopyWith<$Res>? get resolution;
  @override
  $StringFilterCopyWith<$Res>? get previewClipUrl;
  @override
  $IntFilterCopyWith<$Res>? get previewClipDuration;
  @override
  $DateTimeFilterCopyWith<$Res>? get streamUrlExpiresAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get transferredAt;
  @override
  $MeetingSessionRelationFilterCopyWith<$Res>? get meetingSession;
  @override
  $StringFilterCopyWith<$Res>? get meetingSessionId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $RecordingWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$RecordingWhereInputImplCopyWithImpl<$Res>
    extends _$RecordingWhereInputCopyWithImpl<$Res, _$RecordingWhereInputImpl>
    implements _$$RecordingWhereInputImplCopyWith<$Res> {
  __$$RecordingWhereInputImplCopyWithImpl(_$RecordingWhereInputImpl _value,
      $Res Function(_$RecordingWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? recordingUrl = freezed,
    Object? durationInMinutes = freezed,
    Object? recordedAt = freezed,
    Object? streamRecordingId = freezed,
    Object? streamCallId = freezed,
    Object? storageType = freezed,
    Object? status = freezed,
    Object? supabaseUrl = freezed,
    Object? supabasePath = freezed,
    Object? thumbnailUrl = freezed,
    Object? codec = freezed,
    Object? resolution = freezed,
    Object? previewClipUrl = freezed,
    Object? previewClipDuration = freezed,
    Object? streamUrlExpiresAt = freezed,
    Object? transferredAt = freezed,
    Object? meetingSession = freezed,
    Object? meetingSessionId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$RecordingWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      recordingUrl: freezed == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      durationInMinutes: freezed == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      recordedAt: freezed == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      streamRecordingId: freezed == streamRecordingId
          ? _value.streamRecordingId
          : streamRecordingId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      storageType: freezed == storageType
          ? _value.storageType
          : storageType // ignore: cast_nullable_to_non_nullable
              as RecordingStorageTypeFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordingStatusFilter?,
      supabaseUrl: freezed == supabaseUrl
          ? _value.supabaseUrl
          : supabaseUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      supabasePath: freezed == supabasePath
          ? _value.supabasePath
          : supabasePath // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      previewClipUrl: freezed == previewClipUrl
          ? _value.previewClipUrl
          : previewClipUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      previewClipDuration: freezed == previewClipDuration
          ? _value.previewClipDuration
          : previewClipDuration // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      streamUrlExpiresAt: freezed == streamUrlExpiresAt
          ? _value.streamUrlExpiresAt
          : streamUrlExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      transferredAt: freezed == transferredAt
          ? _value.transferredAt
          : transferredAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      meetingSession: freezed == meetingSession
          ? _value.meetingSession
          : meetingSession // ignore: cast_nullable_to_non_nullable
              as MeetingSessionRelationFilter?,
      meetingSessionId: freezed == meetingSessionId
          ? _value.meetingSessionId
          : meetingSessionId // ignore: cast_nullable_to_non_nullable
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
              as List<RecordingWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<RecordingWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as RecordingWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$RecordingWhereInputImpl implements _RecordingWhereInput {
  const _$RecordingWhereInputImpl(
      {this.id,
      this.title,
      this.recordingUrl,
      this.durationInMinutes,
      this.recordedAt,
      this.streamRecordingId,
      this.streamCallId,
      this.storageType,
      this.status,
      this.supabaseUrl,
      this.supabasePath,
      this.thumbnailUrl,
      this.codec,
      this.resolution,
      this.previewClipUrl,
      this.previewClipDuration,
      this.streamUrlExpiresAt,
      this.transferredAt,
      this.meetingSession,
      this.meetingSessionId,
      this.createdAt,
      this.updatedAt,
      final List<RecordingWhereInput>? AND,
      final List<RecordingWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$RecordingWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordingWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? title;
  @override
  final StringFilter? recordingUrl;
  @override
  final IntFilter? durationInMinutes;
  @override
  final DateTimeFilter? recordedAt;
  @override
  final StringFilter? streamRecordingId;
  @override
  final StringFilter? streamCallId;
  @override
  final RecordingStorageTypeFilter? storageType;
  @override
  final RecordingStatusFilter? status;
  @override
  final StringFilter? supabaseUrl;
  @override
  final StringFilter? supabasePath;
  @override
  final StringFilter? thumbnailUrl;
  @override
  final StringFilter? codec;
  @override
  final StringFilter? resolution;
  @override
  final StringFilter? previewClipUrl;
  @override
  final IntFilter? previewClipDuration;
  @override
  final DateTimeFilter? streamUrlExpiresAt;
  @override
  final DateTimeFilter? transferredAt;

  /// Filter by meetingSession relation
  @override
  final MeetingSessionRelationFilter? meetingSession;
  @override
  final StringFilter? meetingSessionId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<RecordingWhereInput>? _AND;
  @override
  List<RecordingWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RecordingWhereInput>? _OR;
  @override
  List<RecordingWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final RecordingWhereInput? NOT;

  @override
  String toString() {
    return 'RecordingWhereInput(id: $id, title: $title, recordingUrl: $recordingUrl, durationInMinutes: $durationInMinutes, recordedAt: $recordedAt, streamRecordingId: $streamRecordingId, streamCallId: $streamCallId, storageType: $storageType, status: $status, supabaseUrl: $supabaseUrl, supabasePath: $supabasePath, thumbnailUrl: $thumbnailUrl, codec: $codec, resolution: $resolution, previewClipUrl: $previewClipUrl, previewClipDuration: $previewClipDuration, streamUrlExpiresAt: $streamUrlExpiresAt, transferredAt: $transferredAt, meetingSession: $meetingSession, meetingSessionId: $meetingSessionId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.recordingUrl, recordingUrl) ||
                other.recordingUrl == recordingUrl) &&
            (identical(other.durationInMinutes, durationInMinutes) ||
                other.durationInMinutes == durationInMinutes) &&
            (identical(other.recordedAt, recordedAt) ||
                other.recordedAt == recordedAt) &&
            (identical(other.streamRecordingId, streamRecordingId) ||
                other.streamRecordingId == streamRecordingId) &&
            (identical(other.streamCallId, streamCallId) ||
                other.streamCallId == streamCallId) &&
            (identical(other.storageType, storageType) ||
                other.storageType == storageType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.supabaseUrl, supabaseUrl) ||
                other.supabaseUrl == supabaseUrl) &&
            (identical(other.supabasePath, supabasePath) ||
                other.supabasePath == supabasePath) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.codec, codec) || other.codec == codec) &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.previewClipUrl, previewClipUrl) ||
                other.previewClipUrl == previewClipUrl) &&
            (identical(other.previewClipDuration, previewClipDuration) ||
                other.previewClipDuration == previewClipDuration) &&
            (identical(other.streamUrlExpiresAt, streamUrlExpiresAt) ||
                other.streamUrlExpiresAt == streamUrlExpiresAt) &&
            (identical(other.transferredAt, transferredAt) ||
                other.transferredAt == transferredAt) &&
            (identical(other.meetingSession, meetingSession) ||
                other.meetingSession == meetingSession) &&
            (identical(other.meetingSessionId, meetingSessionId) ||
                other.meetingSessionId == meetingSessionId) &&
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
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        recordingUrl,
        durationInMinutes,
        recordedAt,
        streamRecordingId,
        streamCallId,
        storageType,
        status,
        supabaseUrl,
        supabasePath,
        thumbnailUrl,
        codec,
        resolution,
        previewClipUrl,
        previewClipDuration,
        streamUrlExpiresAt,
        transferredAt,
        meetingSession,
        meetingSessionId,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordingWhereInputImplCopyWith<_$RecordingWhereInputImpl> get copyWith =>
      __$$RecordingWhereInputImplCopyWithImpl<_$RecordingWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordingWhereInputImplToJson(
      this,
    );
  }
}

abstract class _RecordingWhereInput implements RecordingWhereInput {
  const factory _RecordingWhereInput(
      {final StringFilter? id,
      final StringFilter? title,
      final StringFilter? recordingUrl,
      final IntFilter? durationInMinutes,
      final DateTimeFilter? recordedAt,
      final StringFilter? streamRecordingId,
      final StringFilter? streamCallId,
      final RecordingStorageTypeFilter? storageType,
      final RecordingStatusFilter? status,
      final StringFilter? supabaseUrl,
      final StringFilter? supabasePath,
      final StringFilter? thumbnailUrl,
      final StringFilter? codec,
      final StringFilter? resolution,
      final StringFilter? previewClipUrl,
      final IntFilter? previewClipDuration,
      final DateTimeFilter? streamUrlExpiresAt,
      final DateTimeFilter? transferredAt,
      final MeetingSessionRelationFilter? meetingSession,
      final StringFilter? meetingSessionId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<RecordingWhereInput>? AND,
      final List<RecordingWhereInput>? OR,
      final RecordingWhereInput? NOT}) = _$RecordingWhereInputImpl;

  factory _RecordingWhereInput.fromJson(Map<String, dynamic> json) =
      _$RecordingWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get title;
  @override
  StringFilter? get recordingUrl;
  @override
  IntFilter? get durationInMinutes;
  @override
  DateTimeFilter? get recordedAt;
  @override
  StringFilter? get streamRecordingId;
  @override
  StringFilter? get streamCallId;
  @override
  RecordingStorageTypeFilter? get storageType;
  @override
  RecordingStatusFilter? get status;
  @override
  StringFilter? get supabaseUrl;
  @override
  StringFilter? get supabasePath;
  @override
  StringFilter? get thumbnailUrl;
  @override
  StringFilter? get codec;
  @override
  StringFilter? get resolution;
  @override
  StringFilter? get previewClipUrl;
  @override
  IntFilter? get previewClipDuration;
  @override
  DateTimeFilter? get streamUrlExpiresAt;
  @override
  DateTimeFilter? get transferredAt;

  /// Filter by meetingSession relation
  @override
  MeetingSessionRelationFilter? get meetingSession;
  @override
  StringFilter? get meetingSessionId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<RecordingWhereInput>? get AND;
  @override
  List<RecordingWhereInput>? get OR;
  @override
  RecordingWhereInput? get NOT;

  /// Create a copy of RecordingWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordingWhereInputImplCopyWith<_$RecordingWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecordingListRelationFilter _$RecordingListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _RecordingListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$RecordingListRelationFilter {
  /// At least one related record matches
  RecordingWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  RecordingWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  RecordingWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this RecordingListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecordingListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordingListRelationFilterCopyWith<RecordingListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordingListRelationFilterCopyWith<$Res> {
  factory $RecordingListRelationFilterCopyWith(
          RecordingListRelationFilter value,
          $Res Function(RecordingListRelationFilter) then) =
      _$RecordingListRelationFilterCopyWithImpl<$Res,
          RecordingListRelationFilter>;
  @useResult
  $Res call(
      {RecordingWhereInput? some,
      RecordingWhereInput? every,
      RecordingWhereInput? none});

  $RecordingWhereInputCopyWith<$Res>? get some;
  $RecordingWhereInputCopyWith<$Res>? get every;
  $RecordingWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$RecordingListRelationFilterCopyWithImpl<$Res,
        $Val extends RecordingListRelationFilter>
    implements $RecordingListRelationFilterCopyWith<$Res> {
  _$RecordingListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordingListRelationFilter
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
              as RecordingWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as RecordingWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as RecordingWhereInput?,
    ) as $Val);
  }

  /// Create a copy of RecordingListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordingWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $RecordingWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of RecordingListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordingWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $RecordingWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of RecordingListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordingWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $RecordingWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecordingListRelationFilterImplCopyWith<$Res>
    implements $RecordingListRelationFilterCopyWith<$Res> {
  factory _$$RecordingListRelationFilterImplCopyWith(
          _$RecordingListRelationFilterImpl value,
          $Res Function(_$RecordingListRelationFilterImpl) then) =
      __$$RecordingListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RecordingWhereInput? some,
      RecordingWhereInput? every,
      RecordingWhereInput? none});

  @override
  $RecordingWhereInputCopyWith<$Res>? get some;
  @override
  $RecordingWhereInputCopyWith<$Res>? get every;
  @override
  $RecordingWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$RecordingListRelationFilterImplCopyWithImpl<$Res>
    extends _$RecordingListRelationFilterCopyWithImpl<$Res,
        _$RecordingListRelationFilterImpl>
    implements _$$RecordingListRelationFilterImplCopyWith<$Res> {
  __$$RecordingListRelationFilterImplCopyWithImpl(
      _$RecordingListRelationFilterImpl _value,
      $Res Function(_$RecordingListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$RecordingListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as RecordingWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as RecordingWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as RecordingWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordingListRelationFilterImpl
    implements _RecordingListRelationFilter {
  const _$RecordingListRelationFilterImpl({this.some, this.every, this.none});

  factory _$RecordingListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RecordingListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final RecordingWhereInput? some;

  /// All related records match
  @override
  final RecordingWhereInput? every;

  /// No related records match
  @override
  final RecordingWhereInput? none;

  @override
  String toString() {
    return 'RecordingListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of RecordingListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordingListRelationFilterImplCopyWith<_$RecordingListRelationFilterImpl>
      get copyWith => __$$RecordingListRelationFilterImplCopyWithImpl<
          _$RecordingListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordingListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _RecordingListRelationFilter
    implements RecordingListRelationFilter {
  const factory _RecordingListRelationFilter(
      {final RecordingWhereInput? some,
      final RecordingWhereInput? every,
      final RecordingWhereInput? none}) = _$RecordingListRelationFilterImpl;

  factory _RecordingListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$RecordingListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  RecordingWhereInput? get some;

  /// All related records match
  @override
  RecordingWhereInput? get every;

  /// No related records match
  @override
  RecordingWhereInput? get none;

  /// Create a copy of RecordingListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordingListRelationFilterImplCopyWith<_$RecordingListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecordingRelationFilter _$RecordingRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _RecordingRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$RecordingRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  RecordingWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  RecordingWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this RecordingRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecordingRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordingRelationFilterCopyWith<RecordingRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordingRelationFilterCopyWith<$Res> {
  factory $RecordingRelationFilterCopyWith(RecordingRelationFilter value,
          $Res Function(RecordingRelationFilter) then) =
      _$RecordingRelationFilterCopyWithImpl<$Res, RecordingRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') RecordingWhereInput? is_,
      RecordingWhereInput? isNot});

  $RecordingWhereInputCopyWith<$Res>? get is_;
  $RecordingWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$RecordingRelationFilterCopyWithImpl<$Res,
        $Val extends RecordingRelationFilter>
    implements $RecordingRelationFilterCopyWith<$Res> {
  _$RecordingRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordingRelationFilter
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
              as RecordingWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as RecordingWhereInput?,
    ) as $Val);
  }

  /// Create a copy of RecordingRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordingWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $RecordingWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of RecordingRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordingWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $RecordingWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecordingRelationFilterImplCopyWith<$Res>
    implements $RecordingRelationFilterCopyWith<$Res> {
  factory _$$RecordingRelationFilterImplCopyWith(
          _$RecordingRelationFilterImpl value,
          $Res Function(_$RecordingRelationFilterImpl) then) =
      __$$RecordingRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') RecordingWhereInput? is_,
      RecordingWhereInput? isNot});

  @override
  $RecordingWhereInputCopyWith<$Res>? get is_;
  @override
  $RecordingWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$RecordingRelationFilterImplCopyWithImpl<$Res>
    extends _$RecordingRelationFilterCopyWithImpl<$Res,
        _$RecordingRelationFilterImpl>
    implements _$$RecordingRelationFilterImplCopyWith<$Res> {
  __$$RecordingRelationFilterImplCopyWithImpl(
      _$RecordingRelationFilterImpl _value,
      $Res Function(_$RecordingRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$RecordingRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as RecordingWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as RecordingWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordingRelationFilterImpl implements _RecordingRelationFilter {
  const _$RecordingRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$RecordingRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordingRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final RecordingWhereInput? is_;

  /// Related record does not match
  @override
  final RecordingWhereInput? isNot;

  @override
  String toString() {
    return 'RecordingRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of RecordingRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordingRelationFilterImplCopyWith<_$RecordingRelationFilterImpl>
      get copyWith => __$$RecordingRelationFilterImplCopyWithImpl<
          _$RecordingRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordingRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _RecordingRelationFilter implements RecordingRelationFilter {
  const factory _RecordingRelationFilter(
      {@JsonKey(name: 'is') final RecordingWhereInput? is_,
      final RecordingWhereInput? isNot}) = _$RecordingRelationFilterImpl;

  factory _RecordingRelationFilter.fromJson(Map<String, dynamic> json) =
      _$RecordingRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  RecordingWhereInput? get is_;

  /// Related record does not match
  @override
  RecordingWhereInput? get isNot;

  /// Create a copy of RecordingRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordingRelationFilterImplCopyWith<_$RecordingRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecordingOrderByInput _$RecordingOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _RecordingOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$RecordingOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get title => throw _privateConstructorUsedError;
  SortOrder? get recordingUrl => throw _privateConstructorUsedError;
  SortOrder? get durationInMinutes => throw _privateConstructorUsedError;
  SortOrder? get recordedAt => throw _privateConstructorUsedError;
  SortOrder? get streamRecordingId => throw _privateConstructorUsedError;
  SortOrder? get streamCallId => throw _privateConstructorUsedError;
  SortOrder? get supabaseUrl => throw _privateConstructorUsedError;
  SortOrder? get supabasePath => throw _privateConstructorUsedError;
  SortOrder? get thumbnailUrl => throw _privateConstructorUsedError;
  SortOrder? get codec => throw _privateConstructorUsedError;
  SortOrder? get resolution => throw _privateConstructorUsedError;
  SortOrder? get previewClipUrl => throw _privateConstructorUsedError;
  SortOrder? get previewClipDuration => throw _privateConstructorUsedError;
  SortOrder? get streamUrlExpiresAt => throw _privateConstructorUsedError;
  SortOrder? get transferredAt => throw _privateConstructorUsedError;
  SortOrder? get meetingSessionId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this RecordingOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecordingOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordingOrderByInputCopyWith<RecordingOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordingOrderByInputCopyWith<$Res> {
  factory $RecordingOrderByInputCopyWith(RecordingOrderByInput value,
          $Res Function(RecordingOrderByInput) then) =
      _$RecordingOrderByInputCopyWithImpl<$Res, RecordingOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? recordingUrl,
      SortOrder? durationInMinutes,
      SortOrder? recordedAt,
      SortOrder? streamRecordingId,
      SortOrder? streamCallId,
      SortOrder? supabaseUrl,
      SortOrder? supabasePath,
      SortOrder? thumbnailUrl,
      SortOrder? codec,
      SortOrder? resolution,
      SortOrder? previewClipUrl,
      SortOrder? previewClipDuration,
      SortOrder? streamUrlExpiresAt,
      SortOrder? transferredAt,
      SortOrder? meetingSessionId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$RecordingOrderByInputCopyWithImpl<$Res,
        $Val extends RecordingOrderByInput>
    implements $RecordingOrderByInputCopyWith<$Res> {
  _$RecordingOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordingOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? recordingUrl = freezed,
    Object? durationInMinutes = freezed,
    Object? recordedAt = freezed,
    Object? streamRecordingId = freezed,
    Object? streamCallId = freezed,
    Object? supabaseUrl = freezed,
    Object? supabasePath = freezed,
    Object? thumbnailUrl = freezed,
    Object? codec = freezed,
    Object? resolution = freezed,
    Object? previewClipUrl = freezed,
    Object? previewClipDuration = freezed,
    Object? streamUrlExpiresAt = freezed,
    Object? transferredAt = freezed,
    Object? meetingSessionId = freezed,
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
      recordingUrl: freezed == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      durationInMinutes: freezed == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      recordedAt: freezed == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      streamRecordingId: freezed == streamRecordingId
          ? _value.streamRecordingId
          : streamRecordingId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      supabaseUrl: freezed == supabaseUrl
          ? _value.supabaseUrl
          : supabaseUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      supabasePath: freezed == supabasePath
          ? _value.supabasePath
          : supabasePath // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      previewClipUrl: freezed == previewClipUrl
          ? _value.previewClipUrl
          : previewClipUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      previewClipDuration: freezed == previewClipDuration
          ? _value.previewClipDuration
          : previewClipDuration // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      streamUrlExpiresAt: freezed == streamUrlExpiresAt
          ? _value.streamUrlExpiresAt
          : streamUrlExpiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      transferredAt: freezed == transferredAt
          ? _value.transferredAt
          : transferredAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      meetingSessionId: freezed == meetingSessionId
          ? _value.meetingSessionId
          : meetingSessionId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RecordingOrderByInputImplCopyWith<$Res>
    implements $RecordingOrderByInputCopyWith<$Res> {
  factory _$$RecordingOrderByInputImplCopyWith(
          _$RecordingOrderByInputImpl value,
          $Res Function(_$RecordingOrderByInputImpl) then) =
      __$$RecordingOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? recordingUrl,
      SortOrder? durationInMinutes,
      SortOrder? recordedAt,
      SortOrder? streamRecordingId,
      SortOrder? streamCallId,
      SortOrder? supabaseUrl,
      SortOrder? supabasePath,
      SortOrder? thumbnailUrl,
      SortOrder? codec,
      SortOrder? resolution,
      SortOrder? previewClipUrl,
      SortOrder? previewClipDuration,
      SortOrder? streamUrlExpiresAt,
      SortOrder? transferredAt,
      SortOrder? meetingSessionId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$RecordingOrderByInputImplCopyWithImpl<$Res>
    extends _$RecordingOrderByInputCopyWithImpl<$Res,
        _$RecordingOrderByInputImpl>
    implements _$$RecordingOrderByInputImplCopyWith<$Res> {
  __$$RecordingOrderByInputImplCopyWithImpl(_$RecordingOrderByInputImpl _value,
      $Res Function(_$RecordingOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? recordingUrl = freezed,
    Object? durationInMinutes = freezed,
    Object? recordedAt = freezed,
    Object? streamRecordingId = freezed,
    Object? streamCallId = freezed,
    Object? supabaseUrl = freezed,
    Object? supabasePath = freezed,
    Object? thumbnailUrl = freezed,
    Object? codec = freezed,
    Object? resolution = freezed,
    Object? previewClipUrl = freezed,
    Object? previewClipDuration = freezed,
    Object? streamUrlExpiresAt = freezed,
    Object? transferredAt = freezed,
    Object? meetingSessionId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$RecordingOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      recordingUrl: freezed == recordingUrl
          ? _value.recordingUrl
          : recordingUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      durationInMinutes: freezed == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      recordedAt: freezed == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      streamRecordingId: freezed == streamRecordingId
          ? _value.streamRecordingId
          : streamRecordingId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      supabaseUrl: freezed == supabaseUrl
          ? _value.supabaseUrl
          : supabaseUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      supabasePath: freezed == supabasePath
          ? _value.supabasePath
          : supabasePath // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      previewClipUrl: freezed == previewClipUrl
          ? _value.previewClipUrl
          : previewClipUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      previewClipDuration: freezed == previewClipDuration
          ? _value.previewClipDuration
          : previewClipDuration // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      streamUrlExpiresAt: freezed == streamUrlExpiresAt
          ? _value.streamUrlExpiresAt
          : streamUrlExpiresAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      transferredAt: freezed == transferredAt
          ? _value.transferredAt
          : transferredAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      meetingSessionId: freezed == meetingSessionId
          ? _value.meetingSessionId
          : meetingSessionId // ignore: cast_nullable_to_non_nullable
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
class _$RecordingOrderByInputImpl implements _RecordingOrderByInput {
  const _$RecordingOrderByInputImpl(
      {this.id,
      this.title,
      this.recordingUrl,
      this.durationInMinutes,
      this.recordedAt,
      this.streamRecordingId,
      this.streamCallId,
      this.supabaseUrl,
      this.supabasePath,
      this.thumbnailUrl,
      this.codec,
      this.resolution,
      this.previewClipUrl,
      this.previewClipDuration,
      this.streamUrlExpiresAt,
      this.transferredAt,
      this.meetingSessionId,
      this.createdAt,
      this.updatedAt});

  factory _$RecordingOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordingOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? title;
  @override
  final SortOrder? recordingUrl;
  @override
  final SortOrder? durationInMinutes;
  @override
  final SortOrder? recordedAt;
  @override
  final SortOrder? streamRecordingId;
  @override
  final SortOrder? streamCallId;
  @override
  final SortOrder? supabaseUrl;
  @override
  final SortOrder? supabasePath;
  @override
  final SortOrder? thumbnailUrl;
  @override
  final SortOrder? codec;
  @override
  final SortOrder? resolution;
  @override
  final SortOrder? previewClipUrl;
  @override
  final SortOrder? previewClipDuration;
  @override
  final SortOrder? streamUrlExpiresAt;
  @override
  final SortOrder? transferredAt;
  @override
  final SortOrder? meetingSessionId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'RecordingOrderByInput(id: $id, title: $title, recordingUrl: $recordingUrl, durationInMinutes: $durationInMinutes, recordedAt: $recordedAt, streamRecordingId: $streamRecordingId, streamCallId: $streamCallId, supabaseUrl: $supabaseUrl, supabasePath: $supabasePath, thumbnailUrl: $thumbnailUrl, codec: $codec, resolution: $resolution, previewClipUrl: $previewClipUrl, previewClipDuration: $previewClipDuration, streamUrlExpiresAt: $streamUrlExpiresAt, transferredAt: $transferredAt, meetingSessionId: $meetingSessionId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.recordingUrl, recordingUrl) ||
                other.recordingUrl == recordingUrl) &&
            (identical(other.durationInMinutes, durationInMinutes) ||
                other.durationInMinutes == durationInMinutes) &&
            (identical(other.recordedAt, recordedAt) ||
                other.recordedAt == recordedAt) &&
            (identical(other.streamRecordingId, streamRecordingId) ||
                other.streamRecordingId == streamRecordingId) &&
            (identical(other.streamCallId, streamCallId) ||
                other.streamCallId == streamCallId) &&
            (identical(other.supabaseUrl, supabaseUrl) ||
                other.supabaseUrl == supabaseUrl) &&
            (identical(other.supabasePath, supabasePath) ||
                other.supabasePath == supabasePath) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.codec, codec) || other.codec == codec) &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.previewClipUrl, previewClipUrl) ||
                other.previewClipUrl == previewClipUrl) &&
            (identical(other.previewClipDuration, previewClipDuration) ||
                other.previewClipDuration == previewClipDuration) &&
            (identical(other.streamUrlExpiresAt, streamUrlExpiresAt) ||
                other.streamUrlExpiresAt == streamUrlExpiresAt) &&
            (identical(other.transferredAt, transferredAt) ||
                other.transferredAt == transferredAt) &&
            (identical(other.meetingSessionId, meetingSessionId) ||
                other.meetingSessionId == meetingSessionId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        recordingUrl,
        durationInMinutes,
        recordedAt,
        streamRecordingId,
        streamCallId,
        supabaseUrl,
        supabasePath,
        thumbnailUrl,
        codec,
        resolution,
        previewClipUrl,
        previewClipDuration,
        streamUrlExpiresAt,
        transferredAt,
        meetingSessionId,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of RecordingOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordingOrderByInputImplCopyWith<_$RecordingOrderByInputImpl>
      get copyWith => __$$RecordingOrderByInputImplCopyWithImpl<
          _$RecordingOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordingOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _RecordingOrderByInput implements RecordingOrderByInput {
  const factory _RecordingOrderByInput(
      {final SortOrder? id,
      final SortOrder? title,
      final SortOrder? recordingUrl,
      final SortOrder? durationInMinutes,
      final SortOrder? recordedAt,
      final SortOrder? streamRecordingId,
      final SortOrder? streamCallId,
      final SortOrder? supabaseUrl,
      final SortOrder? supabasePath,
      final SortOrder? thumbnailUrl,
      final SortOrder? codec,
      final SortOrder? resolution,
      final SortOrder? previewClipUrl,
      final SortOrder? previewClipDuration,
      final SortOrder? streamUrlExpiresAt,
      final SortOrder? transferredAt,
      final SortOrder? meetingSessionId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$RecordingOrderByInputImpl;

  factory _RecordingOrderByInput.fromJson(Map<String, dynamic> json) =
      _$RecordingOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get title;
  @override
  SortOrder? get recordingUrl;
  @override
  SortOrder? get durationInMinutes;
  @override
  SortOrder? get recordedAt;
  @override
  SortOrder? get streamRecordingId;
  @override
  SortOrder? get streamCallId;
  @override
  SortOrder? get supabaseUrl;
  @override
  SortOrder? get supabasePath;
  @override
  SortOrder? get thumbnailUrl;
  @override
  SortOrder? get codec;
  @override
  SortOrder? get resolution;
  @override
  SortOrder? get previewClipUrl;
  @override
  SortOrder? get previewClipDuration;
  @override
  SortOrder? get streamUrlExpiresAt;
  @override
  SortOrder? get transferredAt;
  @override
  SortOrder? get meetingSessionId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of RecordingOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordingOrderByInputImplCopyWith<_$RecordingOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
