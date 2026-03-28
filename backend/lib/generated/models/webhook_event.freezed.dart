// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webhook_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebhookEvent _$WebhookEventFromJson(Map<String, dynamic> json) {
  return _WebhookEvent.fromJson(json);
}

/// @nodoc
mixin _$WebhookEvent {
  String get id => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  Map<String, dynamic> get payload => throw _privateConstructorUsedError;
  String? get signature => throw _privateConstructorUsedError;
  bool get processed => throw _privateConstructorUsedError;
  DateTime? get processedAt => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  DateTime get receivedAt => throw _privateConstructorUsedError;

  /// Serializes this WebhookEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebhookEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebhookEventCopyWith<WebhookEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebhookEventCopyWith<$Res> {
  factory $WebhookEventCopyWith(
          WebhookEvent value, $Res Function(WebhookEvent) then) =
      _$WebhookEventCopyWithImpl<$Res, WebhookEvent>;
  @useResult
  $Res call(
      {String id,
      String provider,
      String eventId,
      String eventType,
      Map<String, dynamic> payload,
      String? signature,
      bool processed,
      DateTime? processedAt,
      String? error,
      DateTime receivedAt});
}

/// @nodoc
class _$WebhookEventCopyWithImpl<$Res, $Val extends WebhookEvent>
    implements $WebhookEventCopyWith<$Res> {
  _$WebhookEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebhookEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? provider = null,
    Object? eventId = null,
    Object? eventType = null,
    Object? payload = null,
    Object? signature = freezed,
    Object? processed = null,
    Object? processedAt = freezed,
    Object? error = freezed,
    Object? receivedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
      processed: null == processed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as bool,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedAt: null == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebhookEventImplCopyWith<$Res>
    implements $WebhookEventCopyWith<$Res> {
  factory _$$WebhookEventImplCopyWith(
          _$WebhookEventImpl value, $Res Function(_$WebhookEventImpl) then) =
      __$$WebhookEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String provider,
      String eventId,
      String eventType,
      Map<String, dynamic> payload,
      String? signature,
      bool processed,
      DateTime? processedAt,
      String? error,
      DateTime receivedAt});
}

/// @nodoc
class __$$WebhookEventImplCopyWithImpl<$Res>
    extends _$WebhookEventCopyWithImpl<$Res, _$WebhookEventImpl>
    implements _$$WebhookEventImplCopyWith<$Res> {
  __$$WebhookEventImplCopyWithImpl(
      _$WebhookEventImpl _value, $Res Function(_$WebhookEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebhookEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? provider = null,
    Object? eventId = null,
    Object? eventType = null,
    Object? payload = null,
    Object? signature = freezed,
    Object? processed = null,
    Object? processedAt = freezed,
    Object? error = freezed,
    Object? receivedAt = null,
  }) {
    return _then(_$WebhookEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
      processed: null == processed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as bool,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedAt: null == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebhookEventImpl implements _WebhookEvent {
  const _$WebhookEventImpl(
      {required this.id,
      required this.provider,
      required this.eventId,
      required this.eventType,
      required final Map<String, dynamic> payload,
      this.signature,
      this.processed = false,
      this.processedAt,
      this.error,
      required this.receivedAt})
      : _payload = payload;

  factory _$WebhookEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebhookEventImplFromJson(json);

  @override
  final String id;
  @override
  final String provider;
  @override
  final String eventId;
  @override
  final String eventType;
  final Map<String, dynamic> _payload;
  @override
  Map<String, dynamic> get payload {
    if (_payload is EqualUnmodifiableMapView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_payload);
  }

  @override
  final String? signature;
  @override
  @JsonKey()
  final bool processed;
  @override
  final DateTime? processedAt;
  @override
  final String? error;
  @override
  final DateTime receivedAt;

  @override
  String toString() {
    return 'WebhookEvent(id: $id, provider: $provider, eventId: $eventId, eventType: $eventType, payload: $payload, signature: $signature, processed: $processed, processedAt: $processedAt, error: $error, receivedAt: $receivedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebhookEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality().equals(other._payload, _payload) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.processed, processed) ||
                other.processed == processed) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.receivedAt, receivedAt) ||
                other.receivedAt == receivedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      provider,
      eventId,
      eventType,
      const DeepCollectionEquality().hash(_payload),
      signature,
      processed,
      processedAt,
      error,
      receivedAt);

  /// Create a copy of WebhookEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebhookEventImplCopyWith<_$WebhookEventImpl> get copyWith =>
      __$$WebhookEventImplCopyWithImpl<_$WebhookEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebhookEventImplToJson(
      this,
    );
  }
}

abstract class _WebhookEvent implements WebhookEvent {
  const factory _WebhookEvent(
      {required final String id,
      required final String provider,
      required final String eventId,
      required final String eventType,
      required final Map<String, dynamic> payload,
      final String? signature,
      final bool processed,
      final DateTime? processedAt,
      final String? error,
      required final DateTime receivedAt}) = _$WebhookEventImpl;

  factory _WebhookEvent.fromJson(Map<String, dynamic> json) =
      _$WebhookEventImpl.fromJson;

  @override
  String get id;
  @override
  String get provider;
  @override
  String get eventId;
  @override
  String get eventType;
  @override
  Map<String, dynamic> get payload;
  @override
  String? get signature;
  @override
  bool get processed;
  @override
  DateTime? get processedAt;
  @override
  String? get error;
  @override
  DateTime get receivedAt;

  /// Create a copy of WebhookEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebhookEventImplCopyWith<_$WebhookEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateWebhookEventInput _$CreateWebhookEventInputFromJson(
    Map<String, dynamic> json) {
  return _CreateWebhookEventInput.fromJson(json);
}

/// @nodoc
mixin _$CreateWebhookEventInput {
  String get provider => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  Map<String, dynamic> get payload => throw _privateConstructorUsedError;
  String? get signature => throw _privateConstructorUsedError;
  bool? get processed => throw _privateConstructorUsedError;
  DateTime? get processedAt => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this CreateWebhookEventInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateWebhookEventInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateWebhookEventInputCopyWith<CreateWebhookEventInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWebhookEventInputCopyWith<$Res> {
  factory $CreateWebhookEventInputCopyWith(CreateWebhookEventInput value,
          $Res Function(CreateWebhookEventInput) then) =
      _$CreateWebhookEventInputCopyWithImpl<$Res, CreateWebhookEventInput>;
  @useResult
  $Res call(
      {String provider,
      String eventId,
      String eventType,
      Map<String, dynamic> payload,
      String? signature,
      bool? processed,
      DateTime? processedAt,
      String? error});
}

/// @nodoc
class _$CreateWebhookEventInputCopyWithImpl<$Res,
        $Val extends CreateWebhookEventInput>
    implements $CreateWebhookEventInputCopyWith<$Res> {
  _$CreateWebhookEventInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateWebhookEventInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? eventId = null,
    Object? eventType = null,
    Object? payload = null,
    Object? signature = freezed,
    Object? processed = freezed,
    Object? processedAt = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
      processed: freezed == processed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as bool?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateWebhookEventInputImplCopyWith<$Res>
    implements $CreateWebhookEventInputCopyWith<$Res> {
  factory _$$CreateWebhookEventInputImplCopyWith(
          _$CreateWebhookEventInputImpl value,
          $Res Function(_$CreateWebhookEventInputImpl) then) =
      __$$CreateWebhookEventInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String provider,
      String eventId,
      String eventType,
      Map<String, dynamic> payload,
      String? signature,
      bool? processed,
      DateTime? processedAt,
      String? error});
}

/// @nodoc
class __$$CreateWebhookEventInputImplCopyWithImpl<$Res>
    extends _$CreateWebhookEventInputCopyWithImpl<$Res,
        _$CreateWebhookEventInputImpl>
    implements _$$CreateWebhookEventInputImplCopyWith<$Res> {
  __$$CreateWebhookEventInputImplCopyWithImpl(
      _$CreateWebhookEventInputImpl _value,
      $Res Function(_$CreateWebhookEventInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateWebhookEventInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? eventId = null,
    Object? eventType = null,
    Object? payload = null,
    Object? signature = freezed,
    Object? processed = freezed,
    Object? processedAt = freezed,
    Object? error = freezed,
  }) {
    return _then(_$CreateWebhookEventInputImpl(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
      processed: freezed == processed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as bool?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateWebhookEventInputImpl implements _CreateWebhookEventInput {
  const _$CreateWebhookEventInputImpl(
      {required this.provider,
      required this.eventId,
      required this.eventType,
      required final Map<String, dynamic> payload,
      this.signature,
      this.processed = false,
      this.processedAt,
      this.error})
      : _payload = payload;

  factory _$CreateWebhookEventInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateWebhookEventInputImplFromJson(json);

  @override
  final String provider;
  @override
  final String eventId;
  @override
  final String eventType;
  final Map<String, dynamic> _payload;
  @override
  Map<String, dynamic> get payload {
    if (_payload is EqualUnmodifiableMapView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_payload);
  }

  @override
  final String? signature;
  @override
  @JsonKey()
  final bool? processed;
  @override
  final DateTime? processedAt;
  @override
  final String? error;

  @override
  String toString() {
    return 'CreateWebhookEventInput(provider: $provider, eventId: $eventId, eventType: $eventType, payload: $payload, signature: $signature, processed: $processed, processedAt: $processedAt, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWebhookEventInputImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality().equals(other._payload, _payload) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.processed, processed) ||
                other.processed == processed) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      provider,
      eventId,
      eventType,
      const DeepCollectionEquality().hash(_payload),
      signature,
      processed,
      processedAt,
      error);

  /// Create a copy of CreateWebhookEventInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWebhookEventInputImplCopyWith<_$CreateWebhookEventInputImpl>
      get copyWith => __$$CreateWebhookEventInputImplCopyWithImpl<
          _$CreateWebhookEventInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateWebhookEventInputImplToJson(
      this,
    );
  }
}

abstract class _CreateWebhookEventInput implements CreateWebhookEventInput {
  const factory _CreateWebhookEventInput(
      {required final String provider,
      required final String eventId,
      required final String eventType,
      required final Map<String, dynamic> payload,
      final String? signature,
      final bool? processed,
      final DateTime? processedAt,
      final String? error}) = _$CreateWebhookEventInputImpl;

  factory _CreateWebhookEventInput.fromJson(Map<String, dynamic> json) =
      _$CreateWebhookEventInputImpl.fromJson;

  @override
  String get provider;
  @override
  String get eventId;
  @override
  String get eventType;
  @override
  Map<String, dynamic> get payload;
  @override
  String? get signature;
  @override
  bool? get processed;
  @override
  DateTime? get processedAt;
  @override
  String? get error;

  /// Create a copy of CreateWebhookEventInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateWebhookEventInputImplCopyWith<_$CreateWebhookEventInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateWebhookEventInput _$UpdateWebhookEventInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateWebhookEventInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateWebhookEventInput {
  String? get provider => throw _privateConstructorUsedError;
  String? get eventId => throw _privateConstructorUsedError;
  String? get eventType => throw _privateConstructorUsedError;
  Map<String, dynamic>? get payload => throw _privateConstructorUsedError;
  String? get signature => throw _privateConstructorUsedError;
  bool? get processed => throw _privateConstructorUsedError;
  DateTime? get processedAt => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this UpdateWebhookEventInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateWebhookEventInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateWebhookEventInputCopyWith<UpdateWebhookEventInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateWebhookEventInputCopyWith<$Res> {
  factory $UpdateWebhookEventInputCopyWith(UpdateWebhookEventInput value,
          $Res Function(UpdateWebhookEventInput) then) =
      _$UpdateWebhookEventInputCopyWithImpl<$Res, UpdateWebhookEventInput>;
  @useResult
  $Res call(
      {String? provider,
      String? eventId,
      String? eventType,
      Map<String, dynamic>? payload,
      String? signature,
      bool? processed,
      DateTime? processedAt,
      String? error});
}

/// @nodoc
class _$UpdateWebhookEventInputCopyWithImpl<$Res,
        $Val extends UpdateWebhookEventInput>
    implements $UpdateWebhookEventInputCopyWith<$Res> {
  _$UpdateWebhookEventInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateWebhookEventInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = freezed,
    Object? eventId = freezed,
    Object? eventType = freezed,
    Object? payload = freezed,
    Object? signature = freezed,
    Object? processed = freezed,
    Object? processedAt = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
      processed: freezed == processed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as bool?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateWebhookEventInputImplCopyWith<$Res>
    implements $UpdateWebhookEventInputCopyWith<$Res> {
  factory _$$UpdateWebhookEventInputImplCopyWith(
          _$UpdateWebhookEventInputImpl value,
          $Res Function(_$UpdateWebhookEventInputImpl) then) =
      __$$UpdateWebhookEventInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? provider,
      String? eventId,
      String? eventType,
      Map<String, dynamic>? payload,
      String? signature,
      bool? processed,
      DateTime? processedAt,
      String? error});
}

/// @nodoc
class __$$UpdateWebhookEventInputImplCopyWithImpl<$Res>
    extends _$UpdateWebhookEventInputCopyWithImpl<$Res,
        _$UpdateWebhookEventInputImpl>
    implements _$$UpdateWebhookEventInputImplCopyWith<$Res> {
  __$$UpdateWebhookEventInputImplCopyWithImpl(
      _$UpdateWebhookEventInputImpl _value,
      $Res Function(_$UpdateWebhookEventInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateWebhookEventInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = freezed,
    Object? eventId = freezed,
    Object? eventType = freezed,
    Object? payload = freezed,
    Object? signature = freezed,
    Object? processed = freezed,
    Object? processedAt = freezed,
    Object? error = freezed,
  }) {
    return _then(_$UpdateWebhookEventInputImpl(
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
      processed: freezed == processed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as bool?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateWebhookEventInputImpl implements _UpdateWebhookEventInput {
  const _$UpdateWebhookEventInputImpl(
      {this.provider,
      this.eventId,
      this.eventType,
      final Map<String, dynamic>? payload,
      this.signature,
      this.processed,
      this.processedAt,
      this.error})
      : _payload = payload;

  factory _$UpdateWebhookEventInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateWebhookEventInputImplFromJson(json);

  @override
  final String? provider;
  @override
  final String? eventId;
  @override
  final String? eventType;
  final Map<String, dynamic>? _payload;
  @override
  Map<String, dynamic>? get payload {
    final value = _payload;
    if (value == null) return null;
    if (_payload is EqualUnmodifiableMapView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? signature;
  @override
  final bool? processed;
  @override
  final DateTime? processedAt;
  @override
  final String? error;

  @override
  String toString() {
    return 'UpdateWebhookEventInput(provider: $provider, eventId: $eventId, eventType: $eventType, payload: $payload, signature: $signature, processed: $processed, processedAt: $processedAt, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWebhookEventInputImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality().equals(other._payload, _payload) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.processed, processed) ||
                other.processed == processed) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      provider,
      eventId,
      eventType,
      const DeepCollectionEquality().hash(_payload),
      signature,
      processed,
      processedAt,
      error);

  /// Create a copy of UpdateWebhookEventInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWebhookEventInputImplCopyWith<_$UpdateWebhookEventInputImpl>
      get copyWith => __$$UpdateWebhookEventInputImplCopyWithImpl<
          _$UpdateWebhookEventInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateWebhookEventInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateWebhookEventInput implements UpdateWebhookEventInput {
  const factory _UpdateWebhookEventInput(
      {final String? provider,
      final String? eventId,
      final String? eventType,
      final Map<String, dynamic>? payload,
      final String? signature,
      final bool? processed,
      final DateTime? processedAt,
      final String? error}) = _$UpdateWebhookEventInputImpl;

  factory _UpdateWebhookEventInput.fromJson(Map<String, dynamic> json) =
      _$UpdateWebhookEventInputImpl.fromJson;

  @override
  String? get provider;
  @override
  String? get eventId;
  @override
  String? get eventType;
  @override
  Map<String, dynamic>? get payload;
  @override
  String? get signature;
  @override
  bool? get processed;
  @override
  DateTime? get processedAt;
  @override
  String? get error;

  /// Create a copy of UpdateWebhookEventInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateWebhookEventInputImplCopyWith<_$UpdateWebhookEventInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebhookEventWhereUniqueInput _$WebhookEventWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _WebhookEventWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$WebhookEventWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get eventId => throw _privateConstructorUsedError;

  /// Serializes this WebhookEventWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebhookEventWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebhookEventWhereUniqueInputCopyWith<WebhookEventWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebhookEventWhereUniqueInputCopyWith<$Res> {
  factory $WebhookEventWhereUniqueInputCopyWith(
          WebhookEventWhereUniqueInput value,
          $Res Function(WebhookEventWhereUniqueInput) then) =
      _$WebhookEventWhereUniqueInputCopyWithImpl<$Res,
          WebhookEventWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? eventId});
}

/// @nodoc
class _$WebhookEventWhereUniqueInputCopyWithImpl<$Res,
        $Val extends WebhookEventWhereUniqueInput>
    implements $WebhookEventWhereUniqueInputCopyWith<$Res> {
  _$WebhookEventWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebhookEventWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebhookEventWhereUniqueInputImplCopyWith<$Res>
    implements $WebhookEventWhereUniqueInputCopyWith<$Res> {
  factory _$$WebhookEventWhereUniqueInputImplCopyWith(
          _$WebhookEventWhereUniqueInputImpl value,
          $Res Function(_$WebhookEventWhereUniqueInputImpl) then) =
      __$$WebhookEventWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? eventId});
}

/// @nodoc
class __$$WebhookEventWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$WebhookEventWhereUniqueInputCopyWithImpl<$Res,
        _$WebhookEventWhereUniqueInputImpl>
    implements _$$WebhookEventWhereUniqueInputImplCopyWith<$Res> {
  __$$WebhookEventWhereUniqueInputImplCopyWithImpl(
      _$WebhookEventWhereUniqueInputImpl _value,
      $Res Function(_$WebhookEventWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebhookEventWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = freezed,
  }) {
    return _then(_$WebhookEventWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebhookEventWhereUniqueInputImpl
    implements _WebhookEventWhereUniqueInput {
  const _$WebhookEventWhereUniqueInputImpl({this.id, this.eventId});

  factory _$WebhookEventWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebhookEventWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? eventId;

  @override
  String toString() {
    return 'WebhookEventWhereUniqueInput(id: $id, eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebhookEventWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, eventId);

  /// Create a copy of WebhookEventWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebhookEventWhereUniqueInputImplCopyWith<
          _$WebhookEventWhereUniqueInputImpl>
      get copyWith => __$$WebhookEventWhereUniqueInputImplCopyWithImpl<
          _$WebhookEventWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebhookEventWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _WebhookEventWhereUniqueInput
    implements WebhookEventWhereUniqueInput {
  const factory _WebhookEventWhereUniqueInput(
      {final String? id,
      final String? eventId}) = _$WebhookEventWhereUniqueInputImpl;

  factory _WebhookEventWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$WebhookEventWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get eventId;

  /// Create a copy of WebhookEventWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebhookEventWhereUniqueInputImplCopyWith<
          _$WebhookEventWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebhookEventWhereInput _$WebhookEventWhereInputFromJson(
    Map<String, dynamic> json) {
  return _WebhookEventWhereInput.fromJson(json);
}

/// @nodoc
mixin _$WebhookEventWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get provider => throw _privateConstructorUsedError;
  StringFilter? get eventId => throw _privateConstructorUsedError;
  StringFilter? get eventType => throw _privateConstructorUsedError;
  StringFilter? get signature => throw _privateConstructorUsedError;
  BooleanFilter? get processed => throw _privateConstructorUsedError;
  DateTimeFilter? get processedAt => throw _privateConstructorUsedError;
  StringFilter? get error => throw _privateConstructorUsedError;
  DateTimeFilter? get receivedAt => throw _privateConstructorUsedError;
  List<WebhookEventWhereInput>? get AND => throw _privateConstructorUsedError;
  List<WebhookEventWhereInput>? get OR => throw _privateConstructorUsedError;
  WebhookEventWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this WebhookEventWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebhookEventWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebhookEventWhereInputCopyWith<WebhookEventWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebhookEventWhereInputCopyWith<$Res> {
  factory $WebhookEventWhereInputCopyWith(WebhookEventWhereInput value,
          $Res Function(WebhookEventWhereInput) then) =
      _$WebhookEventWhereInputCopyWithImpl<$Res, WebhookEventWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? provider,
      StringFilter? eventId,
      StringFilter? eventType,
      StringFilter? signature,
      BooleanFilter? processed,
      DateTimeFilter? processedAt,
      StringFilter? error,
      DateTimeFilter? receivedAt,
      List<WebhookEventWhereInput>? AND,
      List<WebhookEventWhereInput>? OR,
      WebhookEventWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get provider;
  $StringFilterCopyWith<$Res>? get eventId;
  $StringFilterCopyWith<$Res>? get eventType;
  $StringFilterCopyWith<$Res>? get signature;
  $BooleanFilterCopyWith<$Res>? get processed;
  $DateTimeFilterCopyWith<$Res>? get processedAt;
  $StringFilterCopyWith<$Res>? get error;
  $DateTimeFilterCopyWith<$Res>? get receivedAt;
  $WebhookEventWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$WebhookEventWhereInputCopyWithImpl<$Res,
        $Val extends WebhookEventWhereInput>
    implements $WebhookEventWhereInputCopyWith<$Res> {
  _$WebhookEventWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebhookEventWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? provider = freezed,
    Object? eventId = freezed,
    Object? eventType = freezed,
    Object? signature = freezed,
    Object? processed = freezed,
    Object? processedAt = freezed,
    Object? error = freezed,
    Object? receivedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      processed: freezed == processed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      receivedAt: freezed == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<WebhookEventWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<WebhookEventWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as WebhookEventWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WebhookEventWhereInput
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

  /// Create a copy of WebhookEventWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get provider {
    if (_value.provider == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.provider!, (value) {
      return _then(_value.copyWith(provider: value) as $Val);
    });
  }

  /// Create a copy of WebhookEventWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get eventId {
    if (_value.eventId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.eventId!, (value) {
      return _then(_value.copyWith(eventId: value) as $Val);
    });
  }

  /// Create a copy of WebhookEventWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get eventType {
    if (_value.eventType == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.eventType!, (value) {
      return _then(_value.copyWith(eventType: value) as $Val);
    });
  }

  /// Create a copy of WebhookEventWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get signature {
    if (_value.signature == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.signature!, (value) {
      return _then(_value.copyWith(signature: value) as $Val);
    });
  }

  /// Create a copy of WebhookEventWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get processed {
    if (_value.processed == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.processed!, (value) {
      return _then(_value.copyWith(processed: value) as $Val);
    });
  }

  /// Create a copy of WebhookEventWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get processedAt {
    if (_value.processedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.processedAt!, (value) {
      return _then(_value.copyWith(processedAt: value) as $Val);
    });
  }

  /// Create a copy of WebhookEventWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }

  /// Create a copy of WebhookEventWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get receivedAt {
    if (_value.receivedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.receivedAt!, (value) {
      return _then(_value.copyWith(receivedAt: value) as $Val);
    });
  }

  /// Create a copy of WebhookEventWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebhookEventWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $WebhookEventWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebhookEventWhereInputImplCopyWith<$Res>
    implements $WebhookEventWhereInputCopyWith<$Res> {
  factory _$$WebhookEventWhereInputImplCopyWith(
          _$WebhookEventWhereInputImpl value,
          $Res Function(_$WebhookEventWhereInputImpl) then) =
      __$$WebhookEventWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? provider,
      StringFilter? eventId,
      StringFilter? eventType,
      StringFilter? signature,
      BooleanFilter? processed,
      DateTimeFilter? processedAt,
      StringFilter? error,
      DateTimeFilter? receivedAt,
      List<WebhookEventWhereInput>? AND,
      List<WebhookEventWhereInput>? OR,
      WebhookEventWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get provider;
  @override
  $StringFilterCopyWith<$Res>? get eventId;
  @override
  $StringFilterCopyWith<$Res>? get eventType;
  @override
  $StringFilterCopyWith<$Res>? get signature;
  @override
  $BooleanFilterCopyWith<$Res>? get processed;
  @override
  $DateTimeFilterCopyWith<$Res>? get processedAt;
  @override
  $StringFilterCopyWith<$Res>? get error;
  @override
  $DateTimeFilterCopyWith<$Res>? get receivedAt;
  @override
  $WebhookEventWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$WebhookEventWhereInputImplCopyWithImpl<$Res>
    extends _$WebhookEventWhereInputCopyWithImpl<$Res,
        _$WebhookEventWhereInputImpl>
    implements _$$WebhookEventWhereInputImplCopyWith<$Res> {
  __$$WebhookEventWhereInputImplCopyWithImpl(
      _$WebhookEventWhereInputImpl _value,
      $Res Function(_$WebhookEventWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebhookEventWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? provider = freezed,
    Object? eventId = freezed,
    Object? eventType = freezed,
    Object? signature = freezed,
    Object? processed = freezed,
    Object? processedAt = freezed,
    Object? error = freezed,
    Object? receivedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$WebhookEventWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      processed: freezed == processed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      receivedAt: freezed == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<WebhookEventWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<WebhookEventWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as WebhookEventWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WebhookEventWhereInputImpl implements _WebhookEventWhereInput {
  const _$WebhookEventWhereInputImpl(
      {this.id,
      this.provider,
      this.eventId,
      this.eventType,
      this.signature,
      this.processed,
      this.processedAt,
      this.error,
      this.receivedAt,
      final List<WebhookEventWhereInput>? AND,
      final List<WebhookEventWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$WebhookEventWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebhookEventWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? provider;
  @override
  final StringFilter? eventId;
  @override
  final StringFilter? eventType;
  @override
  final StringFilter? signature;
  @override
  final BooleanFilter? processed;
  @override
  final DateTimeFilter? processedAt;
  @override
  final StringFilter? error;
  @override
  final DateTimeFilter? receivedAt;
  final List<WebhookEventWhereInput>? _AND;
  @override
  List<WebhookEventWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WebhookEventWhereInput>? _OR;
  @override
  List<WebhookEventWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final WebhookEventWhereInput? NOT;

  @override
  String toString() {
    return 'WebhookEventWhereInput(id: $id, provider: $provider, eventId: $eventId, eventType: $eventType, signature: $signature, processed: $processed, processedAt: $processedAt, error: $error, receivedAt: $receivedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebhookEventWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.processed, processed) ||
                other.processed == processed) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.receivedAt, receivedAt) ||
                other.receivedAt == receivedAt) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      provider,
      eventId,
      eventType,
      signature,
      processed,
      processedAt,
      error,
      receivedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of WebhookEventWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebhookEventWhereInputImplCopyWith<_$WebhookEventWhereInputImpl>
      get copyWith => __$$WebhookEventWhereInputImplCopyWithImpl<
          _$WebhookEventWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebhookEventWhereInputImplToJson(
      this,
    );
  }
}

abstract class _WebhookEventWhereInput implements WebhookEventWhereInput {
  const factory _WebhookEventWhereInput(
      {final StringFilter? id,
      final StringFilter? provider,
      final StringFilter? eventId,
      final StringFilter? eventType,
      final StringFilter? signature,
      final BooleanFilter? processed,
      final DateTimeFilter? processedAt,
      final StringFilter? error,
      final DateTimeFilter? receivedAt,
      final List<WebhookEventWhereInput>? AND,
      final List<WebhookEventWhereInput>? OR,
      final WebhookEventWhereInput? NOT}) = _$WebhookEventWhereInputImpl;

  factory _WebhookEventWhereInput.fromJson(Map<String, dynamic> json) =
      _$WebhookEventWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get provider;
  @override
  StringFilter? get eventId;
  @override
  StringFilter? get eventType;
  @override
  StringFilter? get signature;
  @override
  BooleanFilter? get processed;
  @override
  DateTimeFilter? get processedAt;
  @override
  StringFilter? get error;
  @override
  DateTimeFilter? get receivedAt;
  @override
  List<WebhookEventWhereInput>? get AND;
  @override
  List<WebhookEventWhereInput>? get OR;
  @override
  WebhookEventWhereInput? get NOT;

  /// Create a copy of WebhookEventWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebhookEventWhereInputImplCopyWith<_$WebhookEventWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebhookEventListRelationFilter _$WebhookEventListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _WebhookEventListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$WebhookEventListRelationFilter {
  /// At least one related record matches
  WebhookEventWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  WebhookEventWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  WebhookEventWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this WebhookEventListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebhookEventListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebhookEventListRelationFilterCopyWith<WebhookEventListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebhookEventListRelationFilterCopyWith<$Res> {
  factory $WebhookEventListRelationFilterCopyWith(
          WebhookEventListRelationFilter value,
          $Res Function(WebhookEventListRelationFilter) then) =
      _$WebhookEventListRelationFilterCopyWithImpl<$Res,
          WebhookEventListRelationFilter>;
  @useResult
  $Res call(
      {WebhookEventWhereInput? some,
      WebhookEventWhereInput? every,
      WebhookEventWhereInput? none});

  $WebhookEventWhereInputCopyWith<$Res>? get some;
  $WebhookEventWhereInputCopyWith<$Res>? get every;
  $WebhookEventWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$WebhookEventListRelationFilterCopyWithImpl<$Res,
        $Val extends WebhookEventListRelationFilter>
    implements $WebhookEventListRelationFilterCopyWith<$Res> {
  _$WebhookEventListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebhookEventListRelationFilter
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
              as WebhookEventWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as WebhookEventWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as WebhookEventWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WebhookEventListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebhookEventWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $WebhookEventWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of WebhookEventListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebhookEventWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $WebhookEventWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of WebhookEventListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebhookEventWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $WebhookEventWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebhookEventListRelationFilterImplCopyWith<$Res>
    implements $WebhookEventListRelationFilterCopyWith<$Res> {
  factory _$$WebhookEventListRelationFilterImplCopyWith(
          _$WebhookEventListRelationFilterImpl value,
          $Res Function(_$WebhookEventListRelationFilterImpl) then) =
      __$$WebhookEventListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WebhookEventWhereInput? some,
      WebhookEventWhereInput? every,
      WebhookEventWhereInput? none});

  @override
  $WebhookEventWhereInputCopyWith<$Res>? get some;
  @override
  $WebhookEventWhereInputCopyWith<$Res>? get every;
  @override
  $WebhookEventWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$WebhookEventListRelationFilterImplCopyWithImpl<$Res>
    extends _$WebhookEventListRelationFilterCopyWithImpl<$Res,
        _$WebhookEventListRelationFilterImpl>
    implements _$$WebhookEventListRelationFilterImplCopyWith<$Res> {
  __$$WebhookEventListRelationFilterImplCopyWithImpl(
      _$WebhookEventListRelationFilterImpl _value,
      $Res Function(_$WebhookEventListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebhookEventListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$WebhookEventListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as WebhookEventWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as WebhookEventWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as WebhookEventWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebhookEventListRelationFilterImpl
    implements _WebhookEventListRelationFilter {
  const _$WebhookEventListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$WebhookEventListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebhookEventListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final WebhookEventWhereInput? some;

  /// All related records match
  @override
  final WebhookEventWhereInput? every;

  /// No related records match
  @override
  final WebhookEventWhereInput? none;

  @override
  String toString() {
    return 'WebhookEventListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebhookEventListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of WebhookEventListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebhookEventListRelationFilterImplCopyWith<
          _$WebhookEventListRelationFilterImpl>
      get copyWith => __$$WebhookEventListRelationFilterImplCopyWithImpl<
          _$WebhookEventListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebhookEventListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _WebhookEventListRelationFilter
    implements WebhookEventListRelationFilter {
  const factory _WebhookEventListRelationFilter(
          {final WebhookEventWhereInput? some,
          final WebhookEventWhereInput? every,
          final WebhookEventWhereInput? none}) =
      _$WebhookEventListRelationFilterImpl;

  factory _WebhookEventListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$WebhookEventListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  WebhookEventWhereInput? get some;

  /// All related records match
  @override
  WebhookEventWhereInput? get every;

  /// No related records match
  @override
  WebhookEventWhereInput? get none;

  /// Create a copy of WebhookEventListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebhookEventListRelationFilterImplCopyWith<
          _$WebhookEventListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebhookEventRelationFilter _$WebhookEventRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _WebhookEventRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$WebhookEventRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  WebhookEventWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  WebhookEventWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this WebhookEventRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebhookEventRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebhookEventRelationFilterCopyWith<WebhookEventRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebhookEventRelationFilterCopyWith<$Res> {
  factory $WebhookEventRelationFilterCopyWith(WebhookEventRelationFilter value,
          $Res Function(WebhookEventRelationFilter) then) =
      _$WebhookEventRelationFilterCopyWithImpl<$Res,
          WebhookEventRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') WebhookEventWhereInput? is_,
      WebhookEventWhereInput? isNot});

  $WebhookEventWhereInputCopyWith<$Res>? get is_;
  $WebhookEventWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$WebhookEventRelationFilterCopyWithImpl<$Res,
        $Val extends WebhookEventRelationFilter>
    implements $WebhookEventRelationFilterCopyWith<$Res> {
  _$WebhookEventRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebhookEventRelationFilter
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
              as WebhookEventWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as WebhookEventWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WebhookEventRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebhookEventWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $WebhookEventWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of WebhookEventRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebhookEventWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $WebhookEventWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebhookEventRelationFilterImplCopyWith<$Res>
    implements $WebhookEventRelationFilterCopyWith<$Res> {
  factory _$$WebhookEventRelationFilterImplCopyWith(
          _$WebhookEventRelationFilterImpl value,
          $Res Function(_$WebhookEventRelationFilterImpl) then) =
      __$$WebhookEventRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') WebhookEventWhereInput? is_,
      WebhookEventWhereInput? isNot});

  @override
  $WebhookEventWhereInputCopyWith<$Res>? get is_;
  @override
  $WebhookEventWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$WebhookEventRelationFilterImplCopyWithImpl<$Res>
    extends _$WebhookEventRelationFilterCopyWithImpl<$Res,
        _$WebhookEventRelationFilterImpl>
    implements _$$WebhookEventRelationFilterImplCopyWith<$Res> {
  __$$WebhookEventRelationFilterImplCopyWithImpl(
      _$WebhookEventRelationFilterImpl _value,
      $Res Function(_$WebhookEventRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebhookEventRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$WebhookEventRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as WebhookEventWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as WebhookEventWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebhookEventRelationFilterImpl implements _WebhookEventRelationFilter {
  const _$WebhookEventRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$WebhookEventRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebhookEventRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final WebhookEventWhereInput? is_;

  /// Related record does not match
  @override
  final WebhookEventWhereInput? isNot;

  @override
  String toString() {
    return 'WebhookEventRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebhookEventRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of WebhookEventRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebhookEventRelationFilterImplCopyWith<_$WebhookEventRelationFilterImpl>
      get copyWith => __$$WebhookEventRelationFilterImplCopyWithImpl<
          _$WebhookEventRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebhookEventRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _WebhookEventRelationFilter
    implements WebhookEventRelationFilter {
  const factory _WebhookEventRelationFilter(
      {@JsonKey(name: 'is') final WebhookEventWhereInput? is_,
      final WebhookEventWhereInput? isNot}) = _$WebhookEventRelationFilterImpl;

  factory _WebhookEventRelationFilter.fromJson(Map<String, dynamic> json) =
      _$WebhookEventRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  WebhookEventWhereInput? get is_;

  /// Related record does not match
  @override
  WebhookEventWhereInput? get isNot;

  /// Create a copy of WebhookEventRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebhookEventRelationFilterImplCopyWith<_$WebhookEventRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebhookEventOrderByInput _$WebhookEventOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _WebhookEventOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$WebhookEventOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get provider => throw _privateConstructorUsedError;
  SortOrder? get eventId => throw _privateConstructorUsedError;
  SortOrder? get eventType => throw _privateConstructorUsedError;
  SortOrder? get signature => throw _privateConstructorUsedError;
  SortOrder? get processed => throw _privateConstructorUsedError;
  SortOrder? get processedAt => throw _privateConstructorUsedError;
  SortOrder? get error => throw _privateConstructorUsedError;
  SortOrder? get receivedAt => throw _privateConstructorUsedError;

  /// Serializes this WebhookEventOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebhookEventOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebhookEventOrderByInputCopyWith<WebhookEventOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebhookEventOrderByInputCopyWith<$Res> {
  factory $WebhookEventOrderByInputCopyWith(WebhookEventOrderByInput value,
          $Res Function(WebhookEventOrderByInput) then) =
      _$WebhookEventOrderByInputCopyWithImpl<$Res, WebhookEventOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? provider,
      SortOrder? eventId,
      SortOrder? eventType,
      SortOrder? signature,
      SortOrder? processed,
      SortOrder? processedAt,
      SortOrder? error,
      SortOrder? receivedAt});
}

/// @nodoc
class _$WebhookEventOrderByInputCopyWithImpl<$Res,
        $Val extends WebhookEventOrderByInput>
    implements $WebhookEventOrderByInputCopyWith<$Res> {
  _$WebhookEventOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebhookEventOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? provider = freezed,
    Object? eventId = freezed,
    Object? eventType = freezed,
    Object? signature = freezed,
    Object? processed = freezed,
    Object? processedAt = freezed,
    Object? error = freezed,
    Object? receivedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      processed: freezed == processed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      receivedAt: freezed == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebhookEventOrderByInputImplCopyWith<$Res>
    implements $WebhookEventOrderByInputCopyWith<$Res> {
  factory _$$WebhookEventOrderByInputImplCopyWith(
          _$WebhookEventOrderByInputImpl value,
          $Res Function(_$WebhookEventOrderByInputImpl) then) =
      __$$WebhookEventOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? provider,
      SortOrder? eventId,
      SortOrder? eventType,
      SortOrder? signature,
      SortOrder? processed,
      SortOrder? processedAt,
      SortOrder? error,
      SortOrder? receivedAt});
}

/// @nodoc
class __$$WebhookEventOrderByInputImplCopyWithImpl<$Res>
    extends _$WebhookEventOrderByInputCopyWithImpl<$Res,
        _$WebhookEventOrderByInputImpl>
    implements _$$WebhookEventOrderByInputImplCopyWith<$Res> {
  __$$WebhookEventOrderByInputImplCopyWithImpl(
      _$WebhookEventOrderByInputImpl _value,
      $Res Function(_$WebhookEventOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebhookEventOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? provider = freezed,
    Object? eventId = freezed,
    Object? eventType = freezed,
    Object? signature = freezed,
    Object? processed = freezed,
    Object? processedAt = freezed,
    Object? error = freezed,
    Object? receivedAt = freezed,
  }) {
    return _then(_$WebhookEventOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      processed: freezed == processed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      receivedAt: freezed == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebhookEventOrderByInputImpl implements _WebhookEventOrderByInput {
  const _$WebhookEventOrderByInputImpl(
      {this.id,
      this.provider,
      this.eventId,
      this.eventType,
      this.signature,
      this.processed,
      this.processedAt,
      this.error,
      this.receivedAt});

  factory _$WebhookEventOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebhookEventOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? provider;
  @override
  final SortOrder? eventId;
  @override
  final SortOrder? eventType;
  @override
  final SortOrder? signature;
  @override
  final SortOrder? processed;
  @override
  final SortOrder? processedAt;
  @override
  final SortOrder? error;
  @override
  final SortOrder? receivedAt;

  @override
  String toString() {
    return 'WebhookEventOrderByInput(id: $id, provider: $provider, eventId: $eventId, eventType: $eventType, signature: $signature, processed: $processed, processedAt: $processedAt, error: $error, receivedAt: $receivedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebhookEventOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.processed, processed) ||
                other.processed == processed) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.receivedAt, receivedAt) ||
                other.receivedAt == receivedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, provider, eventId, eventType,
      signature, processed, processedAt, error, receivedAt);

  /// Create a copy of WebhookEventOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebhookEventOrderByInputImplCopyWith<_$WebhookEventOrderByInputImpl>
      get copyWith => __$$WebhookEventOrderByInputImplCopyWithImpl<
          _$WebhookEventOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebhookEventOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _WebhookEventOrderByInput implements WebhookEventOrderByInput {
  const factory _WebhookEventOrderByInput(
      {final SortOrder? id,
      final SortOrder? provider,
      final SortOrder? eventId,
      final SortOrder? eventType,
      final SortOrder? signature,
      final SortOrder? processed,
      final SortOrder? processedAt,
      final SortOrder? error,
      final SortOrder? receivedAt}) = _$WebhookEventOrderByInputImpl;

  factory _WebhookEventOrderByInput.fromJson(Map<String, dynamic> json) =
      _$WebhookEventOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get provider;
  @override
  SortOrder? get eventId;
  @override
  SortOrder? get eventType;
  @override
  SortOrder? get signature;
  @override
  SortOrder? get processed;
  @override
  SortOrder? get processedAt;
  @override
  SortOrder? get error;
  @override
  SortOrder? get receivedAt;

  /// Create a copy of WebhookEventOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebhookEventOrderByInputImplCopyWith<_$WebhookEventOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
