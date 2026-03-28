// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetingSession _$MeetingSessionFromJson(Map<String, dynamic> json) {
  return _MeetingSession.fromJson(json);
}

/// @nodoc
mixin _$MeetingSession {
  String get id => throw _privateConstructorUsedError;
  String get streamCallId => throw _privateConstructorUsedError;
  Platform get platform => throw _privateConstructorUsedError;
  String? get passcode => throw _privateConstructorUsedError;
  List<String> get hostKeys => throw _privateConstructorUsedError;
  bool get isRecording => throw _privateConstructorUsedError;
  DateTime? get recordingStartedAt => throw _privateConstructorUsedError;
  String? get recordingStartedBy => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  String? get endedReason => throw _privateConstructorUsedError;
  List<Recording> get recordings => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  SlotOfAppointment? get slotOfAppointment =>
      throw _privateConstructorUsedError;
  String get slotOfAppointmentId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this MeetingSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingSessionCopyWith<MeetingSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingSessionCopyWith<$Res> {
  factory $MeetingSessionCopyWith(
          MeetingSession value, $Res Function(MeetingSession) then) =
      _$MeetingSessionCopyWithImpl<$Res, MeetingSession>;
  @useResult
  $Res call(
      {String id,
      String streamCallId,
      Platform platform,
      String? passcode,
      List<String> hostKeys,
      bool isRecording,
      DateTime? recordingStartedAt,
      String? recordingStartedBy,
      DateTime? endedAt,
      String? endedReason,
      List<Recording> recordings,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SlotOfAppointment? slotOfAppointment,
      String slotOfAppointmentId,
      DateTime createdAt,
      DateTime updatedAt});

  $SlotOfAppointmentCopyWith<$Res>? get slotOfAppointment;
}

/// @nodoc
class _$MeetingSessionCopyWithImpl<$Res, $Val extends MeetingSession>
    implements $MeetingSessionCopyWith<$Res> {
  _$MeetingSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streamCallId = null,
    Object? platform = null,
    Object? passcode = freezed,
    Object? hostKeys = null,
    Object? isRecording = null,
    Object? recordingStartedAt = freezed,
    Object? recordingStartedBy = freezed,
    Object? endedAt = freezed,
    Object? endedReason = freezed,
    Object? recordings = null,
    Object? slotOfAppointment = freezed,
    Object? slotOfAppointmentId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      streamCallId: null == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as Platform,
      passcode: freezed == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String?,
      hostKeys: null == hostKeys
          ? _value.hostKeys
          : hostKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      recordingStartedAt: freezed == recordingStartedAt
          ? _value.recordingStartedAt
          : recordingStartedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recordingStartedBy: freezed == recordingStartedBy
          ? _value.recordingStartedBy
          : recordingStartedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedReason: freezed == endedReason
          ? _value.endedReason
          : endedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      recordings: null == recordings
          ? _value.recordings
          : recordings // ignore: cast_nullable_to_non_nullable
              as List<Recording>,
      slotOfAppointment: freezed == slotOfAppointment
          ? _value.slotOfAppointment
          : slotOfAppointment // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointment?,
      slotOfAppointmentId: null == slotOfAppointmentId
          ? _value.slotOfAppointmentId
          : slotOfAppointmentId // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of MeetingSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotOfAppointmentCopyWith<$Res>? get slotOfAppointment {
    if (_value.slotOfAppointment == null) {
      return null;
    }

    return $SlotOfAppointmentCopyWith<$Res>(_value.slotOfAppointment!, (value) {
      return _then(_value.copyWith(slotOfAppointment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeetingSessionImplCopyWith<$Res>
    implements $MeetingSessionCopyWith<$Res> {
  factory _$$MeetingSessionImplCopyWith(_$MeetingSessionImpl value,
          $Res Function(_$MeetingSessionImpl) then) =
      __$$MeetingSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String streamCallId,
      Platform platform,
      String? passcode,
      List<String> hostKeys,
      bool isRecording,
      DateTime? recordingStartedAt,
      String? recordingStartedBy,
      DateTime? endedAt,
      String? endedReason,
      List<Recording> recordings,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SlotOfAppointment? slotOfAppointment,
      String slotOfAppointmentId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $SlotOfAppointmentCopyWith<$Res>? get slotOfAppointment;
}

/// @nodoc
class __$$MeetingSessionImplCopyWithImpl<$Res>
    extends _$MeetingSessionCopyWithImpl<$Res, _$MeetingSessionImpl>
    implements _$$MeetingSessionImplCopyWith<$Res> {
  __$$MeetingSessionImplCopyWithImpl(
      _$MeetingSessionImpl _value, $Res Function(_$MeetingSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streamCallId = null,
    Object? platform = null,
    Object? passcode = freezed,
    Object? hostKeys = null,
    Object? isRecording = null,
    Object? recordingStartedAt = freezed,
    Object? recordingStartedBy = freezed,
    Object? endedAt = freezed,
    Object? endedReason = freezed,
    Object? recordings = null,
    Object? slotOfAppointment = freezed,
    Object? slotOfAppointmentId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$MeetingSessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      streamCallId: null == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as Platform,
      passcode: freezed == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String?,
      hostKeys: null == hostKeys
          ? _value._hostKeys
          : hostKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      recordingStartedAt: freezed == recordingStartedAt
          ? _value.recordingStartedAt
          : recordingStartedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recordingStartedBy: freezed == recordingStartedBy
          ? _value.recordingStartedBy
          : recordingStartedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedReason: freezed == endedReason
          ? _value.endedReason
          : endedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      recordings: null == recordings
          ? _value._recordings
          : recordings // ignore: cast_nullable_to_non_nullable
              as List<Recording>,
      slotOfAppointment: freezed == slotOfAppointment
          ? _value.slotOfAppointment
          : slotOfAppointment // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointment?,
      slotOfAppointmentId: null == slotOfAppointmentId
          ? _value.slotOfAppointmentId
          : slotOfAppointmentId // ignore: cast_nullable_to_non_nullable
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
class _$MeetingSessionImpl implements _MeetingSession {
  const _$MeetingSessionImpl(
      {required this.id,
      required this.streamCallId,
      this.platform = Platform.stream,
      this.passcode,
      required final List<String> hostKeys,
      this.isRecording = false,
      this.recordingStartedAt,
      this.recordingStartedBy,
      this.endedAt,
      this.endedReason,
      required final List<Recording> recordings,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.slotOfAppointment,
      required this.slotOfAppointmentId,
      required this.createdAt,
      required this.updatedAt})
      : _hostKeys = hostKeys,
        _recordings = recordings;

  factory _$MeetingSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingSessionImplFromJson(json);

  @override
  final String id;
  @override
  final String streamCallId;
  @override
  @JsonKey()
  final Platform platform;
  @override
  final String? passcode;
  final List<String> _hostKeys;
  @override
  List<String> get hostKeys {
    if (_hostKeys is EqualUnmodifiableListView) return _hostKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hostKeys);
  }

  @override
  @JsonKey()
  final bool isRecording;
  @override
  final DateTime? recordingStartedAt;
  @override
  final String? recordingStartedBy;
  @override
  final DateTime? endedAt;
  @override
  final String? endedReason;
  final List<Recording> _recordings;
  @override
  List<Recording> get recordings {
    if (_recordings is EqualUnmodifiableListView) return _recordings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recordings);
  }

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final SlotOfAppointment? slotOfAppointment;
  @override
  final String slotOfAppointmentId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'MeetingSession(id: $id, streamCallId: $streamCallId, platform: $platform, passcode: $passcode, hostKeys: $hostKeys, isRecording: $isRecording, recordingStartedAt: $recordingStartedAt, recordingStartedBy: $recordingStartedBy, endedAt: $endedAt, endedReason: $endedReason, recordings: $recordings, slotOfAppointment: $slotOfAppointment, slotOfAppointmentId: $slotOfAppointmentId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streamCallId, streamCallId) ||
                other.streamCallId == streamCallId) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode) &&
            const DeepCollectionEquality().equals(other._hostKeys, _hostKeys) &&
            (identical(other.isRecording, isRecording) ||
                other.isRecording == isRecording) &&
            (identical(other.recordingStartedAt, recordingStartedAt) ||
                other.recordingStartedAt == recordingStartedAt) &&
            (identical(other.recordingStartedBy, recordingStartedBy) ||
                other.recordingStartedBy == recordingStartedBy) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.endedReason, endedReason) ||
                other.endedReason == endedReason) &&
            const DeepCollectionEquality()
                .equals(other._recordings, _recordings) &&
            (identical(other.slotOfAppointment, slotOfAppointment) ||
                other.slotOfAppointment == slotOfAppointment) &&
            (identical(other.slotOfAppointmentId, slotOfAppointmentId) ||
                other.slotOfAppointmentId == slotOfAppointmentId) &&
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
      streamCallId,
      platform,
      passcode,
      const DeepCollectionEquality().hash(_hostKeys),
      isRecording,
      recordingStartedAt,
      recordingStartedBy,
      endedAt,
      endedReason,
      const DeepCollectionEquality().hash(_recordings),
      slotOfAppointment,
      slotOfAppointmentId,
      createdAt,
      updatedAt);

  /// Create a copy of MeetingSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingSessionImplCopyWith<_$MeetingSessionImpl> get copyWith =>
      __$$MeetingSessionImplCopyWithImpl<_$MeetingSessionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingSessionImplToJson(
      this,
    );
  }
}

abstract class _MeetingSession implements MeetingSession {
  const factory _MeetingSession(
      {required final String id,
      required final String streamCallId,
      final Platform platform,
      final String? passcode,
      required final List<String> hostKeys,
      final bool isRecording,
      final DateTime? recordingStartedAt,
      final String? recordingStartedBy,
      final DateTime? endedAt,
      final String? endedReason,
      required final List<Recording> recordings,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final SlotOfAppointment? slotOfAppointment,
      required final String slotOfAppointmentId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$MeetingSessionImpl;

  factory _MeetingSession.fromJson(Map<String, dynamic> json) =
      _$MeetingSessionImpl.fromJson;

  @override
  String get id;
  @override
  String get streamCallId;
  @override
  Platform get platform;
  @override
  String? get passcode;
  @override
  List<String> get hostKeys;
  @override
  bool get isRecording;
  @override
  DateTime? get recordingStartedAt;
  @override
  String? get recordingStartedBy;
  @override
  DateTime? get endedAt;
  @override
  String? get endedReason;
  @override
  List<Recording> get recordings;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  SlotOfAppointment? get slotOfAppointment;
  @override
  String get slotOfAppointmentId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of MeetingSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingSessionImplCopyWith<_$MeetingSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateMeetingSessionInput _$CreateMeetingSessionInputFromJson(
    Map<String, dynamic> json) {
  return _CreateMeetingSessionInput.fromJson(json);
}

/// @nodoc
mixin _$CreateMeetingSessionInput {
  String get streamCallId => throw _privateConstructorUsedError;
  Platform get platform => throw _privateConstructorUsedError;
  String? get passcode => throw _privateConstructorUsedError;
  List<String> get hostKeys => throw _privateConstructorUsedError;
  bool? get isRecording => throw _privateConstructorUsedError;
  DateTime? get recordingStartedAt => throw _privateConstructorUsedError;
  String? get recordingStartedBy => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  String? get endedReason => throw _privateConstructorUsedError;
  String get slotOfAppointmentId => throw _privateConstructorUsedError;

  /// Serializes this CreateMeetingSessionInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateMeetingSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateMeetingSessionInputCopyWith<CreateMeetingSessionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMeetingSessionInputCopyWith<$Res> {
  factory $CreateMeetingSessionInputCopyWith(CreateMeetingSessionInput value,
          $Res Function(CreateMeetingSessionInput) then) =
      _$CreateMeetingSessionInputCopyWithImpl<$Res, CreateMeetingSessionInput>;
  @useResult
  $Res call(
      {String streamCallId,
      Platform platform,
      String? passcode,
      List<String> hostKeys,
      bool? isRecording,
      DateTime? recordingStartedAt,
      String? recordingStartedBy,
      DateTime? endedAt,
      String? endedReason,
      String slotOfAppointmentId});
}

/// @nodoc
class _$CreateMeetingSessionInputCopyWithImpl<$Res,
        $Val extends CreateMeetingSessionInput>
    implements $CreateMeetingSessionInputCopyWith<$Res> {
  _$CreateMeetingSessionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateMeetingSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamCallId = null,
    Object? platform = null,
    Object? passcode = freezed,
    Object? hostKeys = null,
    Object? isRecording = freezed,
    Object? recordingStartedAt = freezed,
    Object? recordingStartedBy = freezed,
    Object? endedAt = freezed,
    Object? endedReason = freezed,
    Object? slotOfAppointmentId = null,
  }) {
    return _then(_value.copyWith(
      streamCallId: null == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as Platform,
      passcode: freezed == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String?,
      hostKeys: null == hostKeys
          ? _value.hostKeys
          : hostKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isRecording: freezed == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool?,
      recordingStartedAt: freezed == recordingStartedAt
          ? _value.recordingStartedAt
          : recordingStartedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recordingStartedBy: freezed == recordingStartedBy
          ? _value.recordingStartedBy
          : recordingStartedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedReason: freezed == endedReason
          ? _value.endedReason
          : endedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      slotOfAppointmentId: null == slotOfAppointmentId
          ? _value.slotOfAppointmentId
          : slotOfAppointmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateMeetingSessionInputImplCopyWith<$Res>
    implements $CreateMeetingSessionInputCopyWith<$Res> {
  factory _$$CreateMeetingSessionInputImplCopyWith(
          _$CreateMeetingSessionInputImpl value,
          $Res Function(_$CreateMeetingSessionInputImpl) then) =
      __$$CreateMeetingSessionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String streamCallId,
      Platform platform,
      String? passcode,
      List<String> hostKeys,
      bool? isRecording,
      DateTime? recordingStartedAt,
      String? recordingStartedBy,
      DateTime? endedAt,
      String? endedReason,
      String slotOfAppointmentId});
}

/// @nodoc
class __$$CreateMeetingSessionInputImplCopyWithImpl<$Res>
    extends _$CreateMeetingSessionInputCopyWithImpl<$Res,
        _$CreateMeetingSessionInputImpl>
    implements _$$CreateMeetingSessionInputImplCopyWith<$Res> {
  __$$CreateMeetingSessionInputImplCopyWithImpl(
      _$CreateMeetingSessionInputImpl _value,
      $Res Function(_$CreateMeetingSessionInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateMeetingSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamCallId = null,
    Object? platform = null,
    Object? passcode = freezed,
    Object? hostKeys = null,
    Object? isRecording = freezed,
    Object? recordingStartedAt = freezed,
    Object? recordingStartedBy = freezed,
    Object? endedAt = freezed,
    Object? endedReason = freezed,
    Object? slotOfAppointmentId = null,
  }) {
    return _then(_$CreateMeetingSessionInputImpl(
      streamCallId: null == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as Platform,
      passcode: freezed == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String?,
      hostKeys: null == hostKeys
          ? _value._hostKeys
          : hostKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isRecording: freezed == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool?,
      recordingStartedAt: freezed == recordingStartedAt
          ? _value.recordingStartedAt
          : recordingStartedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recordingStartedBy: freezed == recordingStartedBy
          ? _value.recordingStartedBy
          : recordingStartedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedReason: freezed == endedReason
          ? _value.endedReason
          : endedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      slotOfAppointmentId: null == slotOfAppointmentId
          ? _value.slotOfAppointmentId
          : slotOfAppointmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateMeetingSessionInputImpl implements _CreateMeetingSessionInput {
  const _$CreateMeetingSessionInputImpl(
      {required this.streamCallId,
      this.platform = Platform.stream,
      this.passcode,
      required final List<String> hostKeys,
      this.isRecording = false,
      this.recordingStartedAt,
      this.recordingStartedBy,
      this.endedAt,
      this.endedReason,
      required this.slotOfAppointmentId})
      : _hostKeys = hostKeys;

  factory _$CreateMeetingSessionInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateMeetingSessionInputImplFromJson(json);

  @override
  final String streamCallId;
  @override
  @JsonKey()
  final Platform platform;
  @override
  final String? passcode;
  final List<String> _hostKeys;
  @override
  List<String> get hostKeys {
    if (_hostKeys is EqualUnmodifiableListView) return _hostKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hostKeys);
  }

  @override
  @JsonKey()
  final bool? isRecording;
  @override
  final DateTime? recordingStartedAt;
  @override
  final String? recordingStartedBy;
  @override
  final DateTime? endedAt;
  @override
  final String? endedReason;
  @override
  final String slotOfAppointmentId;

  @override
  String toString() {
    return 'CreateMeetingSessionInput(streamCallId: $streamCallId, platform: $platform, passcode: $passcode, hostKeys: $hostKeys, isRecording: $isRecording, recordingStartedAt: $recordingStartedAt, recordingStartedBy: $recordingStartedBy, endedAt: $endedAt, endedReason: $endedReason, slotOfAppointmentId: $slotOfAppointmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMeetingSessionInputImpl &&
            (identical(other.streamCallId, streamCallId) ||
                other.streamCallId == streamCallId) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode) &&
            const DeepCollectionEquality().equals(other._hostKeys, _hostKeys) &&
            (identical(other.isRecording, isRecording) ||
                other.isRecording == isRecording) &&
            (identical(other.recordingStartedAt, recordingStartedAt) ||
                other.recordingStartedAt == recordingStartedAt) &&
            (identical(other.recordingStartedBy, recordingStartedBy) ||
                other.recordingStartedBy == recordingStartedBy) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.endedReason, endedReason) ||
                other.endedReason == endedReason) &&
            (identical(other.slotOfAppointmentId, slotOfAppointmentId) ||
                other.slotOfAppointmentId == slotOfAppointmentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      streamCallId,
      platform,
      passcode,
      const DeepCollectionEquality().hash(_hostKeys),
      isRecording,
      recordingStartedAt,
      recordingStartedBy,
      endedAt,
      endedReason,
      slotOfAppointmentId);

  /// Create a copy of CreateMeetingSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMeetingSessionInputImplCopyWith<_$CreateMeetingSessionInputImpl>
      get copyWith => __$$CreateMeetingSessionInputImplCopyWithImpl<
          _$CreateMeetingSessionInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateMeetingSessionInputImplToJson(
      this,
    );
  }
}

abstract class _CreateMeetingSessionInput implements CreateMeetingSessionInput {
  const factory _CreateMeetingSessionInput(
          {required final String streamCallId,
          final Platform platform,
          final String? passcode,
          required final List<String> hostKeys,
          final bool? isRecording,
          final DateTime? recordingStartedAt,
          final String? recordingStartedBy,
          final DateTime? endedAt,
          final String? endedReason,
          required final String slotOfAppointmentId}) =
      _$CreateMeetingSessionInputImpl;

  factory _CreateMeetingSessionInput.fromJson(Map<String, dynamic> json) =
      _$CreateMeetingSessionInputImpl.fromJson;

  @override
  String get streamCallId;
  @override
  Platform get platform;
  @override
  String? get passcode;
  @override
  List<String> get hostKeys;
  @override
  bool? get isRecording;
  @override
  DateTime? get recordingStartedAt;
  @override
  String? get recordingStartedBy;
  @override
  DateTime? get endedAt;
  @override
  String? get endedReason;
  @override
  String get slotOfAppointmentId;

  /// Create a copy of CreateMeetingSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateMeetingSessionInputImplCopyWith<_$CreateMeetingSessionInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateMeetingSessionInput _$UpdateMeetingSessionInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateMeetingSessionInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateMeetingSessionInput {
  String? get streamCallId => throw _privateConstructorUsedError;
  Platform? get platform => throw _privateConstructorUsedError;
  String? get passcode => throw _privateConstructorUsedError;
  List<String>? get hostKeys => throw _privateConstructorUsedError;
  bool? get isRecording => throw _privateConstructorUsedError;
  DateTime? get recordingStartedAt => throw _privateConstructorUsedError;
  String? get recordingStartedBy => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  String? get endedReason => throw _privateConstructorUsedError;
  String? get slotOfAppointmentId => throw _privateConstructorUsedError;

  /// Serializes this UpdateMeetingSessionInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateMeetingSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateMeetingSessionInputCopyWith<UpdateMeetingSessionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMeetingSessionInputCopyWith<$Res> {
  factory $UpdateMeetingSessionInputCopyWith(UpdateMeetingSessionInput value,
          $Res Function(UpdateMeetingSessionInput) then) =
      _$UpdateMeetingSessionInputCopyWithImpl<$Res, UpdateMeetingSessionInput>;
  @useResult
  $Res call(
      {String? streamCallId,
      Platform? platform,
      String? passcode,
      List<String>? hostKeys,
      bool? isRecording,
      DateTime? recordingStartedAt,
      String? recordingStartedBy,
      DateTime? endedAt,
      String? endedReason,
      String? slotOfAppointmentId});
}

/// @nodoc
class _$UpdateMeetingSessionInputCopyWithImpl<$Res,
        $Val extends UpdateMeetingSessionInput>
    implements $UpdateMeetingSessionInputCopyWith<$Res> {
  _$UpdateMeetingSessionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateMeetingSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamCallId = freezed,
    Object? platform = freezed,
    Object? passcode = freezed,
    Object? hostKeys = freezed,
    Object? isRecording = freezed,
    Object? recordingStartedAt = freezed,
    Object? recordingStartedBy = freezed,
    Object? endedAt = freezed,
    Object? endedReason = freezed,
    Object? slotOfAppointmentId = freezed,
  }) {
    return _then(_value.copyWith(
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as Platform?,
      passcode: freezed == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String?,
      hostKeys: freezed == hostKeys
          ? _value.hostKeys
          : hostKeys // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isRecording: freezed == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool?,
      recordingStartedAt: freezed == recordingStartedAt
          ? _value.recordingStartedAt
          : recordingStartedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recordingStartedBy: freezed == recordingStartedBy
          ? _value.recordingStartedBy
          : recordingStartedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedReason: freezed == endedReason
          ? _value.endedReason
          : endedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      slotOfAppointmentId: freezed == slotOfAppointmentId
          ? _value.slotOfAppointmentId
          : slotOfAppointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateMeetingSessionInputImplCopyWith<$Res>
    implements $UpdateMeetingSessionInputCopyWith<$Res> {
  factory _$$UpdateMeetingSessionInputImplCopyWith(
          _$UpdateMeetingSessionInputImpl value,
          $Res Function(_$UpdateMeetingSessionInputImpl) then) =
      __$$UpdateMeetingSessionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? streamCallId,
      Platform? platform,
      String? passcode,
      List<String>? hostKeys,
      bool? isRecording,
      DateTime? recordingStartedAt,
      String? recordingStartedBy,
      DateTime? endedAt,
      String? endedReason,
      String? slotOfAppointmentId});
}

/// @nodoc
class __$$UpdateMeetingSessionInputImplCopyWithImpl<$Res>
    extends _$UpdateMeetingSessionInputCopyWithImpl<$Res,
        _$UpdateMeetingSessionInputImpl>
    implements _$$UpdateMeetingSessionInputImplCopyWith<$Res> {
  __$$UpdateMeetingSessionInputImplCopyWithImpl(
      _$UpdateMeetingSessionInputImpl _value,
      $Res Function(_$UpdateMeetingSessionInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateMeetingSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamCallId = freezed,
    Object? platform = freezed,
    Object? passcode = freezed,
    Object? hostKeys = freezed,
    Object? isRecording = freezed,
    Object? recordingStartedAt = freezed,
    Object? recordingStartedBy = freezed,
    Object? endedAt = freezed,
    Object? endedReason = freezed,
    Object? slotOfAppointmentId = freezed,
  }) {
    return _then(_$UpdateMeetingSessionInputImpl(
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as Platform?,
      passcode: freezed == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String?,
      hostKeys: freezed == hostKeys
          ? _value._hostKeys
          : hostKeys // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isRecording: freezed == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool?,
      recordingStartedAt: freezed == recordingStartedAt
          ? _value.recordingStartedAt
          : recordingStartedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recordingStartedBy: freezed == recordingStartedBy
          ? _value.recordingStartedBy
          : recordingStartedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedReason: freezed == endedReason
          ? _value.endedReason
          : endedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      slotOfAppointmentId: freezed == slotOfAppointmentId
          ? _value.slotOfAppointmentId
          : slotOfAppointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateMeetingSessionInputImpl implements _UpdateMeetingSessionInput {
  const _$UpdateMeetingSessionInputImpl(
      {this.streamCallId,
      this.platform,
      this.passcode,
      final List<String>? hostKeys,
      this.isRecording,
      this.recordingStartedAt,
      this.recordingStartedBy,
      this.endedAt,
      this.endedReason,
      this.slotOfAppointmentId})
      : _hostKeys = hostKeys;

  factory _$UpdateMeetingSessionInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateMeetingSessionInputImplFromJson(json);

  @override
  final String? streamCallId;
  @override
  final Platform? platform;
  @override
  final String? passcode;
  final List<String>? _hostKeys;
  @override
  List<String>? get hostKeys {
    final value = _hostKeys;
    if (value == null) return null;
    if (_hostKeys is EqualUnmodifiableListView) return _hostKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isRecording;
  @override
  final DateTime? recordingStartedAt;
  @override
  final String? recordingStartedBy;
  @override
  final DateTime? endedAt;
  @override
  final String? endedReason;
  @override
  final String? slotOfAppointmentId;

  @override
  String toString() {
    return 'UpdateMeetingSessionInput(streamCallId: $streamCallId, platform: $platform, passcode: $passcode, hostKeys: $hostKeys, isRecording: $isRecording, recordingStartedAt: $recordingStartedAt, recordingStartedBy: $recordingStartedBy, endedAt: $endedAt, endedReason: $endedReason, slotOfAppointmentId: $slotOfAppointmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMeetingSessionInputImpl &&
            (identical(other.streamCallId, streamCallId) ||
                other.streamCallId == streamCallId) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode) &&
            const DeepCollectionEquality().equals(other._hostKeys, _hostKeys) &&
            (identical(other.isRecording, isRecording) ||
                other.isRecording == isRecording) &&
            (identical(other.recordingStartedAt, recordingStartedAt) ||
                other.recordingStartedAt == recordingStartedAt) &&
            (identical(other.recordingStartedBy, recordingStartedBy) ||
                other.recordingStartedBy == recordingStartedBy) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.endedReason, endedReason) ||
                other.endedReason == endedReason) &&
            (identical(other.slotOfAppointmentId, slotOfAppointmentId) ||
                other.slotOfAppointmentId == slotOfAppointmentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      streamCallId,
      platform,
      passcode,
      const DeepCollectionEquality().hash(_hostKeys),
      isRecording,
      recordingStartedAt,
      recordingStartedBy,
      endedAt,
      endedReason,
      slotOfAppointmentId);

  /// Create a copy of UpdateMeetingSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMeetingSessionInputImplCopyWith<_$UpdateMeetingSessionInputImpl>
      get copyWith => __$$UpdateMeetingSessionInputImplCopyWithImpl<
          _$UpdateMeetingSessionInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateMeetingSessionInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateMeetingSessionInput implements UpdateMeetingSessionInput {
  const factory _UpdateMeetingSessionInput(
      {final String? streamCallId,
      final Platform? platform,
      final String? passcode,
      final List<String>? hostKeys,
      final bool? isRecording,
      final DateTime? recordingStartedAt,
      final String? recordingStartedBy,
      final DateTime? endedAt,
      final String? endedReason,
      final String? slotOfAppointmentId}) = _$UpdateMeetingSessionInputImpl;

  factory _UpdateMeetingSessionInput.fromJson(Map<String, dynamic> json) =
      _$UpdateMeetingSessionInputImpl.fromJson;

  @override
  String? get streamCallId;
  @override
  Platform? get platform;
  @override
  String? get passcode;
  @override
  List<String>? get hostKeys;
  @override
  bool? get isRecording;
  @override
  DateTime? get recordingStartedAt;
  @override
  String? get recordingStartedBy;
  @override
  DateTime? get endedAt;
  @override
  String? get endedReason;
  @override
  String? get slotOfAppointmentId;

  /// Create a copy of UpdateMeetingSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMeetingSessionInputImplCopyWith<_$UpdateMeetingSessionInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeetingSessionWhereUniqueInput _$MeetingSessionWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _MeetingSessionWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$MeetingSessionWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get streamCallId => throw _privateConstructorUsedError;
  String? get slotOfAppointmentId => throw _privateConstructorUsedError;

  /// Serializes this MeetingSessionWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingSessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingSessionWhereUniqueInputCopyWith<MeetingSessionWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingSessionWhereUniqueInputCopyWith<$Res> {
  factory $MeetingSessionWhereUniqueInputCopyWith(
          MeetingSessionWhereUniqueInput value,
          $Res Function(MeetingSessionWhereUniqueInput) then) =
      _$MeetingSessionWhereUniqueInputCopyWithImpl<$Res,
          MeetingSessionWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? streamCallId, String? slotOfAppointmentId});
}

/// @nodoc
class _$MeetingSessionWhereUniqueInputCopyWithImpl<$Res,
        $Val extends MeetingSessionWhereUniqueInput>
    implements $MeetingSessionWhereUniqueInputCopyWith<$Res> {
  _$MeetingSessionWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingSessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamCallId = freezed,
    Object? slotOfAppointmentId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as String?,
      slotOfAppointmentId: freezed == slotOfAppointmentId
          ? _value.slotOfAppointmentId
          : slotOfAppointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingSessionWhereUniqueInputImplCopyWith<$Res>
    implements $MeetingSessionWhereUniqueInputCopyWith<$Res> {
  factory _$$MeetingSessionWhereUniqueInputImplCopyWith(
          _$MeetingSessionWhereUniqueInputImpl value,
          $Res Function(_$MeetingSessionWhereUniqueInputImpl) then) =
      __$$MeetingSessionWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? streamCallId, String? slotOfAppointmentId});
}

/// @nodoc
class __$$MeetingSessionWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$MeetingSessionWhereUniqueInputCopyWithImpl<$Res,
        _$MeetingSessionWhereUniqueInputImpl>
    implements _$$MeetingSessionWhereUniqueInputImplCopyWith<$Res> {
  __$$MeetingSessionWhereUniqueInputImplCopyWithImpl(
      _$MeetingSessionWhereUniqueInputImpl _value,
      $Res Function(_$MeetingSessionWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingSessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamCallId = freezed,
    Object? slotOfAppointmentId = freezed,
  }) {
    return _then(_$MeetingSessionWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as String?,
      slotOfAppointmentId: freezed == slotOfAppointmentId
          ? _value.slotOfAppointmentId
          : slotOfAppointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingSessionWhereUniqueInputImpl
    implements _MeetingSessionWhereUniqueInput {
  const _$MeetingSessionWhereUniqueInputImpl(
      {this.id, this.streamCallId, this.slotOfAppointmentId});

  factory _$MeetingSessionWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeetingSessionWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? streamCallId;
  @override
  final String? slotOfAppointmentId;

  @override
  String toString() {
    return 'MeetingSessionWhereUniqueInput(id: $id, streamCallId: $streamCallId, slotOfAppointmentId: $slotOfAppointmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingSessionWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streamCallId, streamCallId) ||
                other.streamCallId == streamCallId) &&
            (identical(other.slotOfAppointmentId, slotOfAppointmentId) ||
                other.slotOfAppointmentId == slotOfAppointmentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, streamCallId, slotOfAppointmentId);

  /// Create a copy of MeetingSessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingSessionWhereUniqueInputImplCopyWith<
          _$MeetingSessionWhereUniqueInputImpl>
      get copyWith => __$$MeetingSessionWhereUniqueInputImplCopyWithImpl<
          _$MeetingSessionWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingSessionWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _MeetingSessionWhereUniqueInput
    implements MeetingSessionWhereUniqueInput {
  const factory _MeetingSessionWhereUniqueInput(
          {final String? id,
          final String? streamCallId,
          final String? slotOfAppointmentId}) =
      _$MeetingSessionWhereUniqueInputImpl;

  factory _MeetingSessionWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$MeetingSessionWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get streamCallId;
  @override
  String? get slotOfAppointmentId;

  /// Create a copy of MeetingSessionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingSessionWhereUniqueInputImplCopyWith<
          _$MeetingSessionWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeetingSessionWhereInput _$MeetingSessionWhereInputFromJson(
    Map<String, dynamic> json) {
  return _MeetingSessionWhereInput.fromJson(json);
}

/// @nodoc
mixin _$MeetingSessionWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get streamCallId => throw _privateConstructorUsedError;
  PlatformFilter? get platform => throw _privateConstructorUsedError;
  StringFilter? get passcode => throw _privateConstructorUsedError;
  StringListFilter? get hostKeys => throw _privateConstructorUsedError;
  BooleanFilter? get isRecording => throw _privateConstructorUsedError;
  DateTimeFilter? get recordingStartedAt => throw _privateConstructorUsedError;
  StringFilter? get recordingStartedBy => throw _privateConstructorUsedError;
  DateTimeFilter? get endedAt => throw _privateConstructorUsedError;
  StringFilter? get endedReason => throw _privateConstructorUsedError;

  /// Filter by slotOfAppointment relation
  SlotOfAppointmentRelationFilter? get slotOfAppointment =>
      throw _privateConstructorUsedError;
  StringFilter? get slotOfAppointmentId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<MeetingSessionWhereInput>? get AND => throw _privateConstructorUsedError;
  List<MeetingSessionWhereInput>? get OR => throw _privateConstructorUsedError;
  MeetingSessionWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this MeetingSessionWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingSessionWhereInputCopyWith<MeetingSessionWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingSessionWhereInputCopyWith<$Res> {
  factory $MeetingSessionWhereInputCopyWith(MeetingSessionWhereInput value,
          $Res Function(MeetingSessionWhereInput) then) =
      _$MeetingSessionWhereInputCopyWithImpl<$Res, MeetingSessionWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? streamCallId,
      PlatformFilter? platform,
      StringFilter? passcode,
      StringListFilter? hostKeys,
      BooleanFilter? isRecording,
      DateTimeFilter? recordingStartedAt,
      StringFilter? recordingStartedBy,
      DateTimeFilter? endedAt,
      StringFilter? endedReason,
      SlotOfAppointmentRelationFilter? slotOfAppointment,
      StringFilter? slotOfAppointmentId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<MeetingSessionWhereInput>? AND,
      List<MeetingSessionWhereInput>? OR,
      MeetingSessionWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get streamCallId;
  $PlatformFilterCopyWith<$Res>? get platform;
  $StringFilterCopyWith<$Res>? get passcode;
  $StringListFilterCopyWith<$Res>? get hostKeys;
  $BooleanFilterCopyWith<$Res>? get isRecording;
  $DateTimeFilterCopyWith<$Res>? get recordingStartedAt;
  $StringFilterCopyWith<$Res>? get recordingStartedBy;
  $DateTimeFilterCopyWith<$Res>? get endedAt;
  $StringFilterCopyWith<$Res>? get endedReason;
  $SlotOfAppointmentRelationFilterCopyWith<$Res>? get slotOfAppointment;
  $StringFilterCopyWith<$Res>? get slotOfAppointmentId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $MeetingSessionWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$MeetingSessionWhereInputCopyWithImpl<$Res,
        $Val extends MeetingSessionWhereInput>
    implements $MeetingSessionWhereInputCopyWith<$Res> {
  _$MeetingSessionWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamCallId = freezed,
    Object? platform = freezed,
    Object? passcode = freezed,
    Object? hostKeys = freezed,
    Object? isRecording = freezed,
    Object? recordingStartedAt = freezed,
    Object? recordingStartedBy = freezed,
    Object? endedAt = freezed,
    Object? endedReason = freezed,
    Object? slotOfAppointment = freezed,
    Object? slotOfAppointmentId = freezed,
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
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as PlatformFilter?,
      passcode: freezed == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      hostKeys: freezed == hostKeys
          ? _value.hostKeys
          : hostKeys // ignore: cast_nullable_to_non_nullable
              as StringListFilter?,
      isRecording: freezed == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      recordingStartedAt: freezed == recordingStartedAt
          ? _value.recordingStartedAt
          : recordingStartedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      recordingStartedBy: freezed == recordingStartedBy
          ? _value.recordingStartedBy
          : recordingStartedBy // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      endedReason: freezed == endedReason
          ? _value.endedReason
          : endedReason // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      slotOfAppointment: freezed == slotOfAppointment
          ? _value.slotOfAppointment
          : slotOfAppointment // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointmentRelationFilter?,
      slotOfAppointmentId: freezed == slotOfAppointmentId
          ? _value.slotOfAppointmentId
          : slotOfAppointmentId // ignore: cast_nullable_to_non_nullable
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
              as List<MeetingSessionWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<MeetingSessionWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as MeetingSessionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of MeetingSessionWhereInput
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

  /// Create a copy of MeetingSessionWhereInput
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

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlatformFilterCopyWith<$Res>? get platform {
    if (_value.platform == null) {
      return null;
    }

    return $PlatformFilterCopyWith<$Res>(_value.platform!, (value) {
      return _then(_value.copyWith(platform: value) as $Val);
    });
  }

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get passcode {
    if (_value.passcode == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.passcode!, (value) {
      return _then(_value.copyWith(passcode: value) as $Val);
    });
  }

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringListFilterCopyWith<$Res>? get hostKeys {
    if (_value.hostKeys == null) {
      return null;
    }

    return $StringListFilterCopyWith<$Res>(_value.hostKeys!, (value) {
      return _then(_value.copyWith(hostKeys: value) as $Val);
    });
  }

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isRecording {
    if (_value.isRecording == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isRecording!, (value) {
      return _then(_value.copyWith(isRecording: value) as $Val);
    });
  }

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get recordingStartedAt {
    if (_value.recordingStartedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.recordingStartedAt!, (value) {
      return _then(_value.copyWith(recordingStartedAt: value) as $Val);
    });
  }

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get recordingStartedBy {
    if (_value.recordingStartedBy == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.recordingStartedBy!, (value) {
      return _then(_value.copyWith(recordingStartedBy: value) as $Val);
    });
  }

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get endedAt {
    if (_value.endedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.endedAt!, (value) {
      return _then(_value.copyWith(endedAt: value) as $Val);
    });
  }

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get endedReason {
    if (_value.endedReason == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.endedReason!, (value) {
      return _then(_value.copyWith(endedReason: value) as $Val);
    });
  }

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SlotOfAppointmentRelationFilterCopyWith<$Res>? get slotOfAppointment {
    if (_value.slotOfAppointment == null) {
      return null;
    }

    return $SlotOfAppointmentRelationFilterCopyWith<$Res>(
        _value.slotOfAppointment!, (value) {
      return _then(_value.copyWith(slotOfAppointment: value) as $Val);
    });
  }

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get slotOfAppointmentId {
    if (_value.slotOfAppointmentId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.slotOfAppointmentId!, (value) {
      return _then(_value.copyWith(slotOfAppointmentId: value) as $Val);
    });
  }

  /// Create a copy of MeetingSessionWhereInput
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

  /// Create a copy of MeetingSessionWhereInput
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

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeetingSessionWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $MeetingSessionWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeetingSessionWhereInputImplCopyWith<$Res>
    implements $MeetingSessionWhereInputCopyWith<$Res> {
  factory _$$MeetingSessionWhereInputImplCopyWith(
          _$MeetingSessionWhereInputImpl value,
          $Res Function(_$MeetingSessionWhereInputImpl) then) =
      __$$MeetingSessionWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? streamCallId,
      PlatformFilter? platform,
      StringFilter? passcode,
      StringListFilter? hostKeys,
      BooleanFilter? isRecording,
      DateTimeFilter? recordingStartedAt,
      StringFilter? recordingStartedBy,
      DateTimeFilter? endedAt,
      StringFilter? endedReason,
      SlotOfAppointmentRelationFilter? slotOfAppointment,
      StringFilter? slotOfAppointmentId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<MeetingSessionWhereInput>? AND,
      List<MeetingSessionWhereInput>? OR,
      MeetingSessionWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get streamCallId;
  @override
  $PlatformFilterCopyWith<$Res>? get platform;
  @override
  $StringFilterCopyWith<$Res>? get passcode;
  @override
  $StringListFilterCopyWith<$Res>? get hostKeys;
  @override
  $BooleanFilterCopyWith<$Res>? get isRecording;
  @override
  $DateTimeFilterCopyWith<$Res>? get recordingStartedAt;
  @override
  $StringFilterCopyWith<$Res>? get recordingStartedBy;
  @override
  $DateTimeFilterCopyWith<$Res>? get endedAt;
  @override
  $StringFilterCopyWith<$Res>? get endedReason;
  @override
  $SlotOfAppointmentRelationFilterCopyWith<$Res>? get slotOfAppointment;
  @override
  $StringFilterCopyWith<$Res>? get slotOfAppointmentId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $MeetingSessionWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$MeetingSessionWhereInputImplCopyWithImpl<$Res>
    extends _$MeetingSessionWhereInputCopyWithImpl<$Res,
        _$MeetingSessionWhereInputImpl>
    implements _$$MeetingSessionWhereInputImplCopyWith<$Res> {
  __$$MeetingSessionWhereInputImplCopyWithImpl(
      _$MeetingSessionWhereInputImpl _value,
      $Res Function(_$MeetingSessionWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamCallId = freezed,
    Object? platform = freezed,
    Object? passcode = freezed,
    Object? hostKeys = freezed,
    Object? isRecording = freezed,
    Object? recordingStartedAt = freezed,
    Object? recordingStartedBy = freezed,
    Object? endedAt = freezed,
    Object? endedReason = freezed,
    Object? slotOfAppointment = freezed,
    Object? slotOfAppointmentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$MeetingSessionWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as PlatformFilter?,
      passcode: freezed == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      hostKeys: freezed == hostKeys
          ? _value.hostKeys
          : hostKeys // ignore: cast_nullable_to_non_nullable
              as StringListFilter?,
      isRecording: freezed == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      recordingStartedAt: freezed == recordingStartedAt
          ? _value.recordingStartedAt
          : recordingStartedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      recordingStartedBy: freezed == recordingStartedBy
          ? _value.recordingStartedBy
          : recordingStartedBy // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      endedReason: freezed == endedReason
          ? _value.endedReason
          : endedReason // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      slotOfAppointment: freezed == slotOfAppointment
          ? _value.slotOfAppointment
          : slotOfAppointment // ignore: cast_nullable_to_non_nullable
              as SlotOfAppointmentRelationFilter?,
      slotOfAppointmentId: freezed == slotOfAppointmentId
          ? _value.slotOfAppointmentId
          : slotOfAppointmentId // ignore: cast_nullable_to_non_nullable
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
              as List<MeetingSessionWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<MeetingSessionWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as MeetingSessionWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MeetingSessionWhereInputImpl implements _MeetingSessionWhereInput {
  const _$MeetingSessionWhereInputImpl(
      {this.id,
      this.streamCallId,
      this.platform,
      this.passcode,
      this.hostKeys,
      this.isRecording,
      this.recordingStartedAt,
      this.recordingStartedBy,
      this.endedAt,
      this.endedReason,
      this.slotOfAppointment,
      this.slotOfAppointmentId,
      this.createdAt,
      this.updatedAt,
      final List<MeetingSessionWhereInput>? AND,
      final List<MeetingSessionWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$MeetingSessionWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingSessionWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? streamCallId;
  @override
  final PlatformFilter? platform;
  @override
  final StringFilter? passcode;
  @override
  final StringListFilter? hostKeys;
  @override
  final BooleanFilter? isRecording;
  @override
  final DateTimeFilter? recordingStartedAt;
  @override
  final StringFilter? recordingStartedBy;
  @override
  final DateTimeFilter? endedAt;
  @override
  final StringFilter? endedReason;

  /// Filter by slotOfAppointment relation
  @override
  final SlotOfAppointmentRelationFilter? slotOfAppointment;
  @override
  final StringFilter? slotOfAppointmentId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<MeetingSessionWhereInput>? _AND;
  @override
  List<MeetingSessionWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MeetingSessionWhereInput>? _OR;
  @override
  List<MeetingSessionWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MeetingSessionWhereInput? NOT;

  @override
  String toString() {
    return 'MeetingSessionWhereInput(id: $id, streamCallId: $streamCallId, platform: $platform, passcode: $passcode, hostKeys: $hostKeys, isRecording: $isRecording, recordingStartedAt: $recordingStartedAt, recordingStartedBy: $recordingStartedBy, endedAt: $endedAt, endedReason: $endedReason, slotOfAppointment: $slotOfAppointment, slotOfAppointmentId: $slotOfAppointmentId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingSessionWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streamCallId, streamCallId) ||
                other.streamCallId == streamCallId) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode) &&
            (identical(other.hostKeys, hostKeys) ||
                other.hostKeys == hostKeys) &&
            (identical(other.isRecording, isRecording) ||
                other.isRecording == isRecording) &&
            (identical(other.recordingStartedAt, recordingStartedAt) ||
                other.recordingStartedAt == recordingStartedAt) &&
            (identical(other.recordingStartedBy, recordingStartedBy) ||
                other.recordingStartedBy == recordingStartedBy) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.endedReason, endedReason) ||
                other.endedReason == endedReason) &&
            (identical(other.slotOfAppointment, slotOfAppointment) ||
                other.slotOfAppointment == slotOfAppointment) &&
            (identical(other.slotOfAppointmentId, slotOfAppointmentId) ||
                other.slotOfAppointmentId == slotOfAppointmentId) &&
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
      streamCallId,
      platform,
      passcode,
      hostKeys,
      isRecording,
      recordingStartedAt,
      recordingStartedBy,
      endedAt,
      endedReason,
      slotOfAppointment,
      slotOfAppointmentId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingSessionWhereInputImplCopyWith<_$MeetingSessionWhereInputImpl>
      get copyWith => __$$MeetingSessionWhereInputImplCopyWithImpl<
          _$MeetingSessionWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingSessionWhereInputImplToJson(
      this,
    );
  }
}

abstract class _MeetingSessionWhereInput implements MeetingSessionWhereInput {
  const factory _MeetingSessionWhereInput(
      {final StringFilter? id,
      final StringFilter? streamCallId,
      final PlatformFilter? platform,
      final StringFilter? passcode,
      final StringListFilter? hostKeys,
      final BooleanFilter? isRecording,
      final DateTimeFilter? recordingStartedAt,
      final StringFilter? recordingStartedBy,
      final DateTimeFilter? endedAt,
      final StringFilter? endedReason,
      final SlotOfAppointmentRelationFilter? slotOfAppointment,
      final StringFilter? slotOfAppointmentId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<MeetingSessionWhereInput>? AND,
      final List<MeetingSessionWhereInput>? OR,
      final MeetingSessionWhereInput? NOT}) = _$MeetingSessionWhereInputImpl;

  factory _MeetingSessionWhereInput.fromJson(Map<String, dynamic> json) =
      _$MeetingSessionWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get streamCallId;
  @override
  PlatformFilter? get platform;
  @override
  StringFilter? get passcode;
  @override
  StringListFilter? get hostKeys;
  @override
  BooleanFilter? get isRecording;
  @override
  DateTimeFilter? get recordingStartedAt;
  @override
  StringFilter? get recordingStartedBy;
  @override
  DateTimeFilter? get endedAt;
  @override
  StringFilter? get endedReason;

  /// Filter by slotOfAppointment relation
  @override
  SlotOfAppointmentRelationFilter? get slotOfAppointment;
  @override
  StringFilter? get slotOfAppointmentId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<MeetingSessionWhereInput>? get AND;
  @override
  List<MeetingSessionWhereInput>? get OR;
  @override
  MeetingSessionWhereInput? get NOT;

  /// Create a copy of MeetingSessionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingSessionWhereInputImplCopyWith<_$MeetingSessionWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeetingSessionListRelationFilter _$MeetingSessionListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _MeetingSessionListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$MeetingSessionListRelationFilter {
  /// At least one related record matches
  MeetingSessionWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  MeetingSessionWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  MeetingSessionWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this MeetingSessionListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingSessionListRelationFilterCopyWith<MeetingSessionListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingSessionListRelationFilterCopyWith<$Res> {
  factory $MeetingSessionListRelationFilterCopyWith(
          MeetingSessionListRelationFilter value,
          $Res Function(MeetingSessionListRelationFilter) then) =
      _$MeetingSessionListRelationFilterCopyWithImpl<$Res,
          MeetingSessionListRelationFilter>;
  @useResult
  $Res call(
      {MeetingSessionWhereInput? some,
      MeetingSessionWhereInput? every,
      MeetingSessionWhereInput? none});

  $MeetingSessionWhereInputCopyWith<$Res>? get some;
  $MeetingSessionWhereInputCopyWith<$Res>? get every;
  $MeetingSessionWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$MeetingSessionListRelationFilterCopyWithImpl<$Res,
        $Val extends MeetingSessionListRelationFilter>
    implements $MeetingSessionListRelationFilterCopyWith<$Res> {
  _$MeetingSessionListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingSessionListRelationFilter
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
              as MeetingSessionWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as MeetingSessionWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as MeetingSessionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of MeetingSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeetingSessionWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $MeetingSessionWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of MeetingSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeetingSessionWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $MeetingSessionWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of MeetingSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeetingSessionWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $MeetingSessionWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeetingSessionListRelationFilterImplCopyWith<$Res>
    implements $MeetingSessionListRelationFilterCopyWith<$Res> {
  factory _$$MeetingSessionListRelationFilterImplCopyWith(
          _$MeetingSessionListRelationFilterImpl value,
          $Res Function(_$MeetingSessionListRelationFilterImpl) then) =
      __$$MeetingSessionListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MeetingSessionWhereInput? some,
      MeetingSessionWhereInput? every,
      MeetingSessionWhereInput? none});

  @override
  $MeetingSessionWhereInputCopyWith<$Res>? get some;
  @override
  $MeetingSessionWhereInputCopyWith<$Res>? get every;
  @override
  $MeetingSessionWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$MeetingSessionListRelationFilterImplCopyWithImpl<$Res>
    extends _$MeetingSessionListRelationFilterCopyWithImpl<$Res,
        _$MeetingSessionListRelationFilterImpl>
    implements _$$MeetingSessionListRelationFilterImplCopyWith<$Res> {
  __$$MeetingSessionListRelationFilterImplCopyWithImpl(
      _$MeetingSessionListRelationFilterImpl _value,
      $Res Function(_$MeetingSessionListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$MeetingSessionListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as MeetingSessionWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as MeetingSessionWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as MeetingSessionWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingSessionListRelationFilterImpl
    implements _MeetingSessionListRelationFilter {
  const _$MeetingSessionListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$MeetingSessionListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeetingSessionListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final MeetingSessionWhereInput? some;

  /// All related records match
  @override
  final MeetingSessionWhereInput? every;

  /// No related records match
  @override
  final MeetingSessionWhereInput? none;

  @override
  String toString() {
    return 'MeetingSessionListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingSessionListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of MeetingSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingSessionListRelationFilterImplCopyWith<
          _$MeetingSessionListRelationFilterImpl>
      get copyWith => __$$MeetingSessionListRelationFilterImplCopyWithImpl<
          _$MeetingSessionListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingSessionListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _MeetingSessionListRelationFilter
    implements MeetingSessionListRelationFilter {
  const factory _MeetingSessionListRelationFilter(
          {final MeetingSessionWhereInput? some,
          final MeetingSessionWhereInput? every,
          final MeetingSessionWhereInput? none}) =
      _$MeetingSessionListRelationFilterImpl;

  factory _MeetingSessionListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$MeetingSessionListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  MeetingSessionWhereInput? get some;

  /// All related records match
  @override
  MeetingSessionWhereInput? get every;

  /// No related records match
  @override
  MeetingSessionWhereInput? get none;

  /// Create a copy of MeetingSessionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingSessionListRelationFilterImplCopyWith<
          _$MeetingSessionListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeetingSessionRelationFilter _$MeetingSessionRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _MeetingSessionRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$MeetingSessionRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  MeetingSessionWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  MeetingSessionWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this MeetingSessionRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingSessionRelationFilterCopyWith<MeetingSessionRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingSessionRelationFilterCopyWith<$Res> {
  factory $MeetingSessionRelationFilterCopyWith(
          MeetingSessionRelationFilter value,
          $Res Function(MeetingSessionRelationFilter) then) =
      _$MeetingSessionRelationFilterCopyWithImpl<$Res,
          MeetingSessionRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') MeetingSessionWhereInput? is_,
      MeetingSessionWhereInput? isNot});

  $MeetingSessionWhereInputCopyWith<$Res>? get is_;
  $MeetingSessionWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$MeetingSessionRelationFilterCopyWithImpl<$Res,
        $Val extends MeetingSessionRelationFilter>
    implements $MeetingSessionRelationFilterCopyWith<$Res> {
  _$MeetingSessionRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingSessionRelationFilter
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
              as MeetingSessionWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as MeetingSessionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of MeetingSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeetingSessionWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $MeetingSessionWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of MeetingSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeetingSessionWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $MeetingSessionWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeetingSessionRelationFilterImplCopyWith<$Res>
    implements $MeetingSessionRelationFilterCopyWith<$Res> {
  factory _$$MeetingSessionRelationFilterImplCopyWith(
          _$MeetingSessionRelationFilterImpl value,
          $Res Function(_$MeetingSessionRelationFilterImpl) then) =
      __$$MeetingSessionRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') MeetingSessionWhereInput? is_,
      MeetingSessionWhereInput? isNot});

  @override
  $MeetingSessionWhereInputCopyWith<$Res>? get is_;
  @override
  $MeetingSessionWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$MeetingSessionRelationFilterImplCopyWithImpl<$Res>
    extends _$MeetingSessionRelationFilterCopyWithImpl<$Res,
        _$MeetingSessionRelationFilterImpl>
    implements _$$MeetingSessionRelationFilterImplCopyWith<$Res> {
  __$$MeetingSessionRelationFilterImplCopyWithImpl(
      _$MeetingSessionRelationFilterImpl _value,
      $Res Function(_$MeetingSessionRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$MeetingSessionRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as MeetingSessionWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as MeetingSessionWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingSessionRelationFilterImpl
    implements _MeetingSessionRelationFilter {
  const _$MeetingSessionRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$MeetingSessionRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeetingSessionRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final MeetingSessionWhereInput? is_;

  /// Related record does not match
  @override
  final MeetingSessionWhereInput? isNot;

  @override
  String toString() {
    return 'MeetingSessionRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingSessionRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of MeetingSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingSessionRelationFilterImplCopyWith<
          _$MeetingSessionRelationFilterImpl>
      get copyWith => __$$MeetingSessionRelationFilterImplCopyWithImpl<
          _$MeetingSessionRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingSessionRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _MeetingSessionRelationFilter
    implements MeetingSessionRelationFilter {
  const factory _MeetingSessionRelationFilter(
          {@JsonKey(name: 'is') final MeetingSessionWhereInput? is_,
          final MeetingSessionWhereInput? isNot}) =
      _$MeetingSessionRelationFilterImpl;

  factory _MeetingSessionRelationFilter.fromJson(Map<String, dynamic> json) =
      _$MeetingSessionRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  MeetingSessionWhereInput? get is_;

  /// Related record does not match
  @override
  MeetingSessionWhereInput? get isNot;

  /// Create a copy of MeetingSessionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingSessionRelationFilterImplCopyWith<
          _$MeetingSessionRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeetingSessionOrderByInput _$MeetingSessionOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _MeetingSessionOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$MeetingSessionOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get streamCallId => throw _privateConstructorUsedError;
  SortOrder? get passcode => throw _privateConstructorUsedError;
  SortOrder? get hostKeys => throw _privateConstructorUsedError;
  SortOrder? get isRecording => throw _privateConstructorUsedError;
  SortOrder? get recordingStartedAt => throw _privateConstructorUsedError;
  SortOrder? get recordingStartedBy => throw _privateConstructorUsedError;
  SortOrder? get endedAt => throw _privateConstructorUsedError;
  SortOrder? get endedReason => throw _privateConstructorUsedError;
  SortOrder? get slotOfAppointmentId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this MeetingSessionOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingSessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingSessionOrderByInputCopyWith<MeetingSessionOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingSessionOrderByInputCopyWith<$Res> {
  factory $MeetingSessionOrderByInputCopyWith(MeetingSessionOrderByInput value,
          $Res Function(MeetingSessionOrderByInput) then) =
      _$MeetingSessionOrderByInputCopyWithImpl<$Res,
          MeetingSessionOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? streamCallId,
      SortOrder? passcode,
      SortOrder? hostKeys,
      SortOrder? isRecording,
      SortOrder? recordingStartedAt,
      SortOrder? recordingStartedBy,
      SortOrder? endedAt,
      SortOrder? endedReason,
      SortOrder? slotOfAppointmentId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$MeetingSessionOrderByInputCopyWithImpl<$Res,
        $Val extends MeetingSessionOrderByInput>
    implements $MeetingSessionOrderByInputCopyWith<$Res> {
  _$MeetingSessionOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingSessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamCallId = freezed,
    Object? passcode = freezed,
    Object? hostKeys = freezed,
    Object? isRecording = freezed,
    Object? recordingStartedAt = freezed,
    Object? recordingStartedBy = freezed,
    Object? endedAt = freezed,
    Object? endedReason = freezed,
    Object? slotOfAppointmentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      passcode: freezed == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      hostKeys: freezed == hostKeys
          ? _value.hostKeys
          : hostKeys // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isRecording: freezed == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      recordingStartedAt: freezed == recordingStartedAt
          ? _value.recordingStartedAt
          : recordingStartedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      recordingStartedBy: freezed == recordingStartedBy
          ? _value.recordingStartedBy
          : recordingStartedBy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endedReason: freezed == endedReason
          ? _value.endedReason
          : endedReason // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      slotOfAppointmentId: freezed == slotOfAppointmentId
          ? _value.slotOfAppointmentId
          : slotOfAppointmentId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$MeetingSessionOrderByInputImplCopyWith<$Res>
    implements $MeetingSessionOrderByInputCopyWith<$Res> {
  factory _$$MeetingSessionOrderByInputImplCopyWith(
          _$MeetingSessionOrderByInputImpl value,
          $Res Function(_$MeetingSessionOrderByInputImpl) then) =
      __$$MeetingSessionOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? streamCallId,
      SortOrder? passcode,
      SortOrder? hostKeys,
      SortOrder? isRecording,
      SortOrder? recordingStartedAt,
      SortOrder? recordingStartedBy,
      SortOrder? endedAt,
      SortOrder? endedReason,
      SortOrder? slotOfAppointmentId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$MeetingSessionOrderByInputImplCopyWithImpl<$Res>
    extends _$MeetingSessionOrderByInputCopyWithImpl<$Res,
        _$MeetingSessionOrderByInputImpl>
    implements _$$MeetingSessionOrderByInputImplCopyWith<$Res> {
  __$$MeetingSessionOrderByInputImplCopyWithImpl(
      _$MeetingSessionOrderByInputImpl _value,
      $Res Function(_$MeetingSessionOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingSessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamCallId = freezed,
    Object? passcode = freezed,
    Object? hostKeys = freezed,
    Object? isRecording = freezed,
    Object? recordingStartedAt = freezed,
    Object? recordingStartedBy = freezed,
    Object? endedAt = freezed,
    Object? endedReason = freezed,
    Object? slotOfAppointmentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$MeetingSessionOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      streamCallId: freezed == streamCallId
          ? _value.streamCallId
          : streamCallId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      passcode: freezed == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      hostKeys: freezed == hostKeys
          ? _value.hostKeys
          : hostKeys // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isRecording: freezed == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      recordingStartedAt: freezed == recordingStartedAt
          ? _value.recordingStartedAt
          : recordingStartedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      recordingStartedBy: freezed == recordingStartedBy
          ? _value.recordingStartedBy
          : recordingStartedBy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endedReason: freezed == endedReason
          ? _value.endedReason
          : endedReason // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      slotOfAppointmentId: freezed == slotOfAppointmentId
          ? _value.slotOfAppointmentId
          : slotOfAppointmentId // ignore: cast_nullable_to_non_nullable
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
class _$MeetingSessionOrderByInputImpl implements _MeetingSessionOrderByInput {
  const _$MeetingSessionOrderByInputImpl(
      {this.id,
      this.streamCallId,
      this.passcode,
      this.hostKeys,
      this.isRecording,
      this.recordingStartedAt,
      this.recordingStartedBy,
      this.endedAt,
      this.endedReason,
      this.slotOfAppointmentId,
      this.createdAt,
      this.updatedAt});

  factory _$MeetingSessionOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeetingSessionOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? streamCallId;
  @override
  final SortOrder? passcode;
  @override
  final SortOrder? hostKeys;
  @override
  final SortOrder? isRecording;
  @override
  final SortOrder? recordingStartedAt;
  @override
  final SortOrder? recordingStartedBy;
  @override
  final SortOrder? endedAt;
  @override
  final SortOrder? endedReason;
  @override
  final SortOrder? slotOfAppointmentId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'MeetingSessionOrderByInput(id: $id, streamCallId: $streamCallId, passcode: $passcode, hostKeys: $hostKeys, isRecording: $isRecording, recordingStartedAt: $recordingStartedAt, recordingStartedBy: $recordingStartedBy, endedAt: $endedAt, endedReason: $endedReason, slotOfAppointmentId: $slotOfAppointmentId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingSessionOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streamCallId, streamCallId) ||
                other.streamCallId == streamCallId) &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode) &&
            (identical(other.hostKeys, hostKeys) ||
                other.hostKeys == hostKeys) &&
            (identical(other.isRecording, isRecording) ||
                other.isRecording == isRecording) &&
            (identical(other.recordingStartedAt, recordingStartedAt) ||
                other.recordingStartedAt == recordingStartedAt) &&
            (identical(other.recordingStartedBy, recordingStartedBy) ||
                other.recordingStartedBy == recordingStartedBy) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.endedReason, endedReason) ||
                other.endedReason == endedReason) &&
            (identical(other.slotOfAppointmentId, slotOfAppointmentId) ||
                other.slotOfAppointmentId == slotOfAppointmentId) &&
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
      streamCallId,
      passcode,
      hostKeys,
      isRecording,
      recordingStartedAt,
      recordingStartedBy,
      endedAt,
      endedReason,
      slotOfAppointmentId,
      createdAt,
      updatedAt);

  /// Create a copy of MeetingSessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingSessionOrderByInputImplCopyWith<_$MeetingSessionOrderByInputImpl>
      get copyWith => __$$MeetingSessionOrderByInputImplCopyWithImpl<
          _$MeetingSessionOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingSessionOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _MeetingSessionOrderByInput
    implements MeetingSessionOrderByInput {
  const factory _MeetingSessionOrderByInput(
      {final SortOrder? id,
      final SortOrder? streamCallId,
      final SortOrder? passcode,
      final SortOrder? hostKeys,
      final SortOrder? isRecording,
      final SortOrder? recordingStartedAt,
      final SortOrder? recordingStartedBy,
      final SortOrder? endedAt,
      final SortOrder? endedReason,
      final SortOrder? slotOfAppointmentId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$MeetingSessionOrderByInputImpl;

  factory _MeetingSessionOrderByInput.fromJson(Map<String, dynamic> json) =
      _$MeetingSessionOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get streamCallId;
  @override
  SortOrder? get passcode;
  @override
  SortOrder? get hostKeys;
  @override
  SortOrder? get isRecording;
  @override
  SortOrder? get recordingStartedAt;
  @override
  SortOrder? get recordingStartedBy;
  @override
  SortOrder? get endedAt;
  @override
  SortOrder? get endedReason;
  @override
  SortOrder? get slotOfAppointmentId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of MeetingSessionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingSessionOrderByInputImplCopyWith<_$MeetingSessionOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
