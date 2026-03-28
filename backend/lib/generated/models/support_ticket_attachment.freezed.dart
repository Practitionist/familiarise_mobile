// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupportTicketAttachment _$SupportTicketAttachmentFromJson(
    Map<String, dynamic> json) {
  return _SupportTicketAttachment.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketAttachment {
  String get id => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  String get originalName => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String get storagePath => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  SupportTicket? get ticket => throw _privateConstructorUsedError;
  String get ticketId => throw _privateConstructorUsedError;
  DateTime get uploadedAt => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketAttachment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketAttachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketAttachmentCopyWith<SupportTicketAttachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketAttachmentCopyWith<$Res> {
  factory $SupportTicketAttachmentCopyWith(SupportTicketAttachment value,
          $Res Function(SupportTicketAttachment) then) =
      _$SupportTicketAttachmentCopyWithImpl<$Res, SupportTicketAttachment>;
  @useResult
  $Res call(
      {String id,
      String fileName,
      String originalName,
      int fileSize,
      String mimeType,
      String fileUrl,
      String storagePath,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SupportTicket? ticket,
      String ticketId,
      DateTime uploadedAt});

  $SupportTicketCopyWith<$Res>? get ticket;
}

/// @nodoc
class _$SupportTicketAttachmentCopyWithImpl<$Res,
        $Val extends SupportTicketAttachment>
    implements $SupportTicketAttachmentCopyWith<$Res> {
  _$SupportTicketAttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketAttachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fileName = null,
    Object? originalName = null,
    Object? fileSize = null,
    Object? mimeType = null,
    Object? fileUrl = null,
    Object? storagePath = null,
    Object? ticket = freezed,
    Object? ticketId = null,
    Object? uploadedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      storagePath: null == storagePath
          ? _value.storagePath
          : storagePath // ignore: cast_nullable_to_non_nullable
              as String,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as SupportTicket?,
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      uploadedAt: null == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of SupportTicketAttachment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketCopyWith<$Res>? get ticket {
    if (_value.ticket == null) {
      return null;
    }

    return $SupportTicketCopyWith<$Res>(_value.ticket!, (value) {
      return _then(_value.copyWith(ticket: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportTicketAttachmentImplCopyWith<$Res>
    implements $SupportTicketAttachmentCopyWith<$Res> {
  factory _$$SupportTicketAttachmentImplCopyWith(
          _$SupportTicketAttachmentImpl value,
          $Res Function(_$SupportTicketAttachmentImpl) then) =
      __$$SupportTicketAttachmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String fileName,
      String originalName,
      int fileSize,
      String mimeType,
      String fileUrl,
      String storagePath,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SupportTicket? ticket,
      String ticketId,
      DateTime uploadedAt});

  @override
  $SupportTicketCopyWith<$Res>? get ticket;
}

/// @nodoc
class __$$SupportTicketAttachmentImplCopyWithImpl<$Res>
    extends _$SupportTicketAttachmentCopyWithImpl<$Res,
        _$SupportTicketAttachmentImpl>
    implements _$$SupportTicketAttachmentImplCopyWith<$Res> {
  __$$SupportTicketAttachmentImplCopyWithImpl(
      _$SupportTicketAttachmentImpl _value,
      $Res Function(_$SupportTicketAttachmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportTicketAttachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fileName = null,
    Object? originalName = null,
    Object? fileSize = null,
    Object? mimeType = null,
    Object? fileUrl = null,
    Object? storagePath = null,
    Object? ticket = freezed,
    Object? ticketId = null,
    Object? uploadedAt = null,
  }) {
    return _then(_$SupportTicketAttachmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      storagePath: null == storagePath
          ? _value.storagePath
          : storagePath // ignore: cast_nullable_to_non_nullable
              as String,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as SupportTicket?,
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      uploadedAt: null == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketAttachmentImpl implements _SupportTicketAttachment {
  const _$SupportTicketAttachmentImpl(
      {required this.id,
      required this.fileName,
      required this.originalName,
      required this.fileSize,
      required this.mimeType,
      required this.fileUrl,
      required this.storagePath,
      @JsonKey(includeFromJson: false, includeToJson: false) this.ticket,
      required this.ticketId,
      required this.uploadedAt});

  factory _$SupportTicketAttachmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketAttachmentImplFromJson(json);

  @override
  final String id;
  @override
  final String fileName;
  @override
  final String originalName;
  @override
  final int fileSize;
  @override
  final String mimeType;
  @override
  final String fileUrl;
  @override
  final String storagePath;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final SupportTicket? ticket;
  @override
  final String ticketId;
  @override
  final DateTime uploadedAt;

  @override
  String toString() {
    return 'SupportTicketAttachment(id: $id, fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, ticket: $ticket, ticketId: $ticketId, uploadedAt: $uploadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketAttachmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.storagePath, storagePath) ||
                other.storagePath == storagePath) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fileName, originalName,
      fileSize, mimeType, fileUrl, storagePath, ticket, ticketId, uploadedAt);

  /// Create a copy of SupportTicketAttachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketAttachmentImplCopyWith<_$SupportTicketAttachmentImpl>
      get copyWith => __$$SupportTicketAttachmentImplCopyWithImpl<
          _$SupportTicketAttachmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketAttachmentImplToJson(
      this,
    );
  }
}

abstract class _SupportTicketAttachment implements SupportTicketAttachment {
  const factory _SupportTicketAttachment(
      {required final String id,
      required final String fileName,
      required final String originalName,
      required final int fileSize,
      required final String mimeType,
      required final String fileUrl,
      required final String storagePath,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final SupportTicket? ticket,
      required final String ticketId,
      required final DateTime uploadedAt}) = _$SupportTicketAttachmentImpl;

  factory _SupportTicketAttachment.fromJson(Map<String, dynamic> json) =
      _$SupportTicketAttachmentImpl.fromJson;

  @override
  String get id;
  @override
  String get fileName;
  @override
  String get originalName;
  @override
  int get fileSize;
  @override
  String get mimeType;
  @override
  String get fileUrl;
  @override
  String get storagePath;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  SupportTicket? get ticket;
  @override
  String get ticketId;
  @override
  DateTime get uploadedAt;

  /// Create a copy of SupportTicketAttachment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketAttachmentImplCopyWith<_$SupportTicketAttachmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateSupportTicketAttachmentInput _$CreateSupportTicketAttachmentInputFromJson(
    Map<String, dynamic> json) {
  return _CreateSupportTicketAttachmentInput.fromJson(json);
}

/// @nodoc
mixin _$CreateSupportTicketAttachmentInput {
  String get fileName => throw _privateConstructorUsedError;
  String get originalName => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String get storagePath => throw _privateConstructorUsedError;
  String get ticketId => throw _privateConstructorUsedError;

  /// Serializes this CreateSupportTicketAttachmentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSupportTicketAttachmentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSupportTicketAttachmentInputCopyWith<
          CreateSupportTicketAttachmentInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSupportTicketAttachmentInputCopyWith<$Res> {
  factory $CreateSupportTicketAttachmentInputCopyWith(
          CreateSupportTicketAttachmentInput value,
          $Res Function(CreateSupportTicketAttachmentInput) then) =
      _$CreateSupportTicketAttachmentInputCopyWithImpl<$Res,
          CreateSupportTicketAttachmentInput>;
  @useResult
  $Res call(
      {String fileName,
      String originalName,
      int fileSize,
      String mimeType,
      String fileUrl,
      String storagePath,
      String ticketId});
}

/// @nodoc
class _$CreateSupportTicketAttachmentInputCopyWithImpl<$Res,
        $Val extends CreateSupportTicketAttachmentInput>
    implements $CreateSupportTicketAttachmentInputCopyWith<$Res> {
  _$CreateSupportTicketAttachmentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSupportTicketAttachmentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? originalName = null,
    Object? fileSize = null,
    Object? mimeType = null,
    Object? fileUrl = null,
    Object? storagePath = null,
    Object? ticketId = null,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      storagePath: null == storagePath
          ? _value.storagePath
          : storagePath // ignore: cast_nullable_to_non_nullable
              as String,
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSupportTicketAttachmentInputImplCopyWith<$Res>
    implements $CreateSupportTicketAttachmentInputCopyWith<$Res> {
  factory _$$CreateSupportTicketAttachmentInputImplCopyWith(
          _$CreateSupportTicketAttachmentInputImpl value,
          $Res Function(_$CreateSupportTicketAttachmentInputImpl) then) =
      __$$CreateSupportTicketAttachmentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fileName,
      String originalName,
      int fileSize,
      String mimeType,
      String fileUrl,
      String storagePath,
      String ticketId});
}

/// @nodoc
class __$$CreateSupportTicketAttachmentInputImplCopyWithImpl<$Res>
    extends _$CreateSupportTicketAttachmentInputCopyWithImpl<$Res,
        _$CreateSupportTicketAttachmentInputImpl>
    implements _$$CreateSupportTicketAttachmentInputImplCopyWith<$Res> {
  __$$CreateSupportTicketAttachmentInputImplCopyWithImpl(
      _$CreateSupportTicketAttachmentInputImpl _value,
      $Res Function(_$CreateSupportTicketAttachmentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSupportTicketAttachmentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? originalName = null,
    Object? fileSize = null,
    Object? mimeType = null,
    Object? fileUrl = null,
    Object? storagePath = null,
    Object? ticketId = null,
  }) {
    return _then(_$CreateSupportTicketAttachmentInputImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      storagePath: null == storagePath
          ? _value.storagePath
          : storagePath // ignore: cast_nullable_to_non_nullable
              as String,
      ticketId: null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSupportTicketAttachmentInputImpl
    implements _CreateSupportTicketAttachmentInput {
  const _$CreateSupportTicketAttachmentInputImpl(
      {required this.fileName,
      required this.originalName,
      required this.fileSize,
      required this.mimeType,
      required this.fileUrl,
      required this.storagePath,
      required this.ticketId});

  factory _$CreateSupportTicketAttachmentInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateSupportTicketAttachmentInputImplFromJson(json);

  @override
  final String fileName;
  @override
  final String originalName;
  @override
  final int fileSize;
  @override
  final String mimeType;
  @override
  final String fileUrl;
  @override
  final String storagePath;
  @override
  final String ticketId;

  @override
  String toString() {
    return 'CreateSupportTicketAttachmentInput(fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, ticketId: $ticketId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSupportTicketAttachmentInputImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.storagePath, storagePath) ||
                other.storagePath == storagePath) &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileName, originalName, fileSize,
      mimeType, fileUrl, storagePath, ticketId);

  /// Create a copy of CreateSupportTicketAttachmentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSupportTicketAttachmentInputImplCopyWith<
          _$CreateSupportTicketAttachmentInputImpl>
      get copyWith => __$$CreateSupportTicketAttachmentInputImplCopyWithImpl<
          _$CreateSupportTicketAttachmentInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSupportTicketAttachmentInputImplToJson(
      this,
    );
  }
}

abstract class _CreateSupportTicketAttachmentInput
    implements CreateSupportTicketAttachmentInput {
  const factory _CreateSupportTicketAttachmentInput(
          {required final String fileName,
          required final String originalName,
          required final int fileSize,
          required final String mimeType,
          required final String fileUrl,
          required final String storagePath,
          required final String ticketId}) =
      _$CreateSupportTicketAttachmentInputImpl;

  factory _CreateSupportTicketAttachmentInput.fromJson(
          Map<String, dynamic> json) =
      _$CreateSupportTicketAttachmentInputImpl.fromJson;

  @override
  String get fileName;
  @override
  String get originalName;
  @override
  int get fileSize;
  @override
  String get mimeType;
  @override
  String get fileUrl;
  @override
  String get storagePath;
  @override
  String get ticketId;

  /// Create a copy of CreateSupportTicketAttachmentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSupportTicketAttachmentInputImplCopyWith<
          _$CreateSupportTicketAttachmentInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateSupportTicketAttachmentInput _$UpdateSupportTicketAttachmentInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateSupportTicketAttachmentInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateSupportTicketAttachmentInput {
  String? get fileName => throw _privateConstructorUsedError;
  String? get originalName => throw _privateConstructorUsedError;
  int? get fileSize => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;
  String? get storagePath => throw _privateConstructorUsedError;
  String? get ticketId => throw _privateConstructorUsedError;

  /// Serializes this UpdateSupportTicketAttachmentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSupportTicketAttachmentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSupportTicketAttachmentInputCopyWith<
          UpdateSupportTicketAttachmentInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSupportTicketAttachmentInputCopyWith<$Res> {
  factory $UpdateSupportTicketAttachmentInputCopyWith(
          UpdateSupportTicketAttachmentInput value,
          $Res Function(UpdateSupportTicketAttachmentInput) then) =
      _$UpdateSupportTicketAttachmentInputCopyWithImpl<$Res,
          UpdateSupportTicketAttachmentInput>;
  @useResult
  $Res call(
      {String? fileName,
      String? originalName,
      int? fileSize,
      String? mimeType,
      String? fileUrl,
      String? storagePath,
      String? ticketId});
}

/// @nodoc
class _$UpdateSupportTicketAttachmentInputCopyWithImpl<$Res,
        $Val extends UpdateSupportTicketAttachmentInput>
    implements $UpdateSupportTicketAttachmentInputCopyWith<$Res> {
  _$UpdateSupportTicketAttachmentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSupportTicketAttachmentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? originalName = freezed,
    Object? fileSize = freezed,
    Object? mimeType = freezed,
    Object? fileUrl = freezed,
    Object? storagePath = freezed,
    Object? ticketId = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      storagePath: freezed == storagePath
          ? _value.storagePath
          : storagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketId: freezed == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSupportTicketAttachmentInputImplCopyWith<$Res>
    implements $UpdateSupportTicketAttachmentInputCopyWith<$Res> {
  factory _$$UpdateSupportTicketAttachmentInputImplCopyWith(
          _$UpdateSupportTicketAttachmentInputImpl value,
          $Res Function(_$UpdateSupportTicketAttachmentInputImpl) then) =
      __$$UpdateSupportTicketAttachmentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fileName,
      String? originalName,
      int? fileSize,
      String? mimeType,
      String? fileUrl,
      String? storagePath,
      String? ticketId});
}

/// @nodoc
class __$$UpdateSupportTicketAttachmentInputImplCopyWithImpl<$Res>
    extends _$UpdateSupportTicketAttachmentInputCopyWithImpl<$Res,
        _$UpdateSupportTicketAttachmentInputImpl>
    implements _$$UpdateSupportTicketAttachmentInputImplCopyWith<$Res> {
  __$$UpdateSupportTicketAttachmentInputImplCopyWithImpl(
      _$UpdateSupportTicketAttachmentInputImpl _value,
      $Res Function(_$UpdateSupportTicketAttachmentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSupportTicketAttachmentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? originalName = freezed,
    Object? fileSize = freezed,
    Object? mimeType = freezed,
    Object? fileUrl = freezed,
    Object? storagePath = freezed,
    Object? ticketId = freezed,
  }) {
    return _then(_$UpdateSupportTicketAttachmentInputImpl(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      storagePath: freezed == storagePath
          ? _value.storagePath
          : storagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketId: freezed == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSupportTicketAttachmentInputImpl
    implements _UpdateSupportTicketAttachmentInput {
  const _$UpdateSupportTicketAttachmentInputImpl(
      {this.fileName,
      this.originalName,
      this.fileSize,
      this.mimeType,
      this.fileUrl,
      this.storagePath,
      this.ticketId});

  factory _$UpdateSupportTicketAttachmentInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateSupportTicketAttachmentInputImplFromJson(json);

  @override
  final String? fileName;
  @override
  final String? originalName;
  @override
  final int? fileSize;
  @override
  final String? mimeType;
  @override
  final String? fileUrl;
  @override
  final String? storagePath;
  @override
  final String? ticketId;

  @override
  String toString() {
    return 'UpdateSupportTicketAttachmentInput(fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, ticketId: $ticketId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSupportTicketAttachmentInputImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.storagePath, storagePath) ||
                other.storagePath == storagePath) &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileName, originalName, fileSize,
      mimeType, fileUrl, storagePath, ticketId);

  /// Create a copy of UpdateSupportTicketAttachmentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSupportTicketAttachmentInputImplCopyWith<
          _$UpdateSupportTicketAttachmentInputImpl>
      get copyWith => __$$UpdateSupportTicketAttachmentInputImplCopyWithImpl<
          _$UpdateSupportTicketAttachmentInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSupportTicketAttachmentInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateSupportTicketAttachmentInput
    implements UpdateSupportTicketAttachmentInput {
  const factory _UpdateSupportTicketAttachmentInput(
      {final String? fileName,
      final String? originalName,
      final int? fileSize,
      final String? mimeType,
      final String? fileUrl,
      final String? storagePath,
      final String? ticketId}) = _$UpdateSupportTicketAttachmentInputImpl;

  factory _UpdateSupportTicketAttachmentInput.fromJson(
          Map<String, dynamic> json) =
      _$UpdateSupportTicketAttachmentInputImpl.fromJson;

  @override
  String? get fileName;
  @override
  String? get originalName;
  @override
  int? get fileSize;
  @override
  String? get mimeType;
  @override
  String? get fileUrl;
  @override
  String? get storagePath;
  @override
  String? get ticketId;

  /// Create a copy of UpdateSupportTicketAttachmentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSupportTicketAttachmentInputImplCopyWith<
          _$UpdateSupportTicketAttachmentInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportTicketAttachmentWhereUniqueInput
    _$SupportTicketAttachmentWhereUniqueInputFromJson(
        Map<String, dynamic> json) {
  return _SupportTicketAttachmentWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketAttachmentWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketAttachmentWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketAttachmentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketAttachmentWhereUniqueInputCopyWith<
          SupportTicketAttachmentWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketAttachmentWhereUniqueInputCopyWith<$Res> {
  factory $SupportTicketAttachmentWhereUniqueInputCopyWith(
          SupportTicketAttachmentWhereUniqueInput value,
          $Res Function(SupportTicketAttachmentWhereUniqueInput) then) =
      _$SupportTicketAttachmentWhereUniqueInputCopyWithImpl<$Res,
          SupportTicketAttachmentWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$SupportTicketAttachmentWhereUniqueInputCopyWithImpl<$Res,
        $Val extends SupportTicketAttachmentWhereUniqueInput>
    implements $SupportTicketAttachmentWhereUniqueInputCopyWith<$Res> {
  _$SupportTicketAttachmentWhereUniqueInputCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketAttachmentWhereUniqueInput
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
abstract class _$$SupportTicketAttachmentWhereUniqueInputImplCopyWith<$Res>
    implements $SupportTicketAttachmentWhereUniqueInputCopyWith<$Res> {
  factory _$$SupportTicketAttachmentWhereUniqueInputImplCopyWith(
          _$SupportTicketAttachmentWhereUniqueInputImpl value,
          $Res Function(_$SupportTicketAttachmentWhereUniqueInputImpl) then) =
      __$$SupportTicketAttachmentWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$SupportTicketAttachmentWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$SupportTicketAttachmentWhereUniqueInputCopyWithImpl<$Res,
        _$SupportTicketAttachmentWhereUniqueInputImpl>
    implements _$$SupportTicketAttachmentWhereUniqueInputImplCopyWith<$Res> {
  __$$SupportTicketAttachmentWhereUniqueInputImplCopyWithImpl(
      _$SupportTicketAttachmentWhereUniqueInputImpl _value,
      $Res Function(_$SupportTicketAttachmentWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportTicketAttachmentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$SupportTicketAttachmentWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketAttachmentWhereUniqueInputImpl
    implements _SupportTicketAttachmentWhereUniqueInput {
  const _$SupportTicketAttachmentWhereUniqueInputImpl({this.id});

  factory _$SupportTicketAttachmentWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportTicketAttachmentWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'SupportTicketAttachmentWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketAttachmentWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SupportTicketAttachmentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketAttachmentWhereUniqueInputImplCopyWith<
          _$SupportTicketAttachmentWhereUniqueInputImpl>
      get copyWith =>
          __$$SupportTicketAttachmentWhereUniqueInputImplCopyWithImpl<
              _$SupportTicketAttachmentWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketAttachmentWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _SupportTicketAttachmentWhereUniqueInput
    implements SupportTicketAttachmentWhereUniqueInput {
  const factory _SupportTicketAttachmentWhereUniqueInput({final String? id}) =
      _$SupportTicketAttachmentWhereUniqueInputImpl;

  factory _SupportTicketAttachmentWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$SupportTicketAttachmentWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of SupportTicketAttachmentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketAttachmentWhereUniqueInputImplCopyWith<
          _$SupportTicketAttachmentWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportTicketAttachmentWhereInput _$SupportTicketAttachmentWhereInputFromJson(
    Map<String, dynamic> json) {
  return _SupportTicketAttachmentWhereInput.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketAttachmentWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get fileName => throw _privateConstructorUsedError;
  StringFilter? get originalName => throw _privateConstructorUsedError;
  IntFilter? get fileSize => throw _privateConstructorUsedError;
  StringFilter? get mimeType => throw _privateConstructorUsedError;
  StringFilter? get fileUrl => throw _privateConstructorUsedError;
  StringFilter? get storagePath => throw _privateConstructorUsedError;

  /// Filter by ticket relation
  SupportTicketRelationFilter? get ticket => throw _privateConstructorUsedError;
  StringFilter? get ticketId => throw _privateConstructorUsedError;
  DateTimeFilter? get uploadedAt => throw _privateConstructorUsedError;
  List<SupportTicketAttachmentWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<SupportTicketAttachmentWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  SupportTicketAttachmentWhereInput? get NOT =>
      throw _privateConstructorUsedError;

  /// Serializes this SupportTicketAttachmentWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketAttachmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketAttachmentWhereInputCopyWith<SupportTicketAttachmentWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketAttachmentWhereInputCopyWith<$Res> {
  factory $SupportTicketAttachmentWhereInputCopyWith(
          SupportTicketAttachmentWhereInput value,
          $Res Function(SupportTicketAttachmentWhereInput) then) =
      _$SupportTicketAttachmentWhereInputCopyWithImpl<$Res,
          SupportTicketAttachmentWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? fileName,
      StringFilter? originalName,
      IntFilter? fileSize,
      StringFilter? mimeType,
      StringFilter? fileUrl,
      StringFilter? storagePath,
      SupportTicketRelationFilter? ticket,
      StringFilter? ticketId,
      DateTimeFilter? uploadedAt,
      List<SupportTicketAttachmentWhereInput>? AND,
      List<SupportTicketAttachmentWhereInput>? OR,
      SupportTicketAttachmentWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get fileName;
  $StringFilterCopyWith<$Res>? get originalName;
  $IntFilterCopyWith<$Res>? get fileSize;
  $StringFilterCopyWith<$Res>? get mimeType;
  $StringFilterCopyWith<$Res>? get fileUrl;
  $StringFilterCopyWith<$Res>? get storagePath;
  $SupportTicketRelationFilterCopyWith<$Res>? get ticket;
  $StringFilterCopyWith<$Res>? get ticketId;
  $DateTimeFilterCopyWith<$Res>? get uploadedAt;
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$SupportTicketAttachmentWhereInputCopyWithImpl<$Res,
        $Val extends SupportTicketAttachmentWhereInput>
    implements $SupportTicketAttachmentWhereInputCopyWith<$Res> {
  _$SupportTicketAttachmentWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketAttachmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? originalName = freezed,
    Object? fileSize = freezed,
    Object? mimeType = freezed,
    Object? fileUrl = freezed,
    Object? storagePath = freezed,
    Object? ticket = freezed,
    Object? ticketId = freezed,
    Object? uploadedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      storagePath: freezed == storagePath
          ? _value.storagePath
          : storagePath // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as SupportTicketRelationFilter?,
      ticketId: freezed == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<SupportTicketAttachmentWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SupportTicketAttachmentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SupportTicketAttachmentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SupportTicketAttachmentWhereInput
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

  /// Create a copy of SupportTicketAttachmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get fileName {
    if (_value.fileName == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.fileName!, (value) {
      return _then(_value.copyWith(fileName: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketAttachmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get originalName {
    if (_value.originalName == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.originalName!, (value) {
      return _then(_value.copyWith(originalName: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketAttachmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get fileSize {
    if (_value.fileSize == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.fileSize!, (value) {
      return _then(_value.copyWith(fileSize: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketAttachmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get mimeType {
    if (_value.mimeType == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.mimeType!, (value) {
      return _then(_value.copyWith(mimeType: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketAttachmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get fileUrl {
    if (_value.fileUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.fileUrl!, (value) {
      return _then(_value.copyWith(fileUrl: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketAttachmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get storagePath {
    if (_value.storagePath == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.storagePath!, (value) {
      return _then(_value.copyWith(storagePath: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketAttachmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketRelationFilterCopyWith<$Res>? get ticket {
    if (_value.ticket == null) {
      return null;
    }

    return $SupportTicketRelationFilterCopyWith<$Res>(_value.ticket!, (value) {
      return _then(_value.copyWith(ticket: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketAttachmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get ticketId {
    if (_value.ticketId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.ticketId!, (value) {
      return _then(_value.copyWith(ticketId: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketAttachmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get uploadedAt {
    if (_value.uploadedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.uploadedAt!, (value) {
      return _then(_value.copyWith(uploadedAt: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketAttachmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $SupportTicketAttachmentWhereInputCopyWith<$Res>(_value.NOT!,
        (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportTicketAttachmentWhereInputImplCopyWith<$Res>
    implements $SupportTicketAttachmentWhereInputCopyWith<$Res> {
  factory _$$SupportTicketAttachmentWhereInputImplCopyWith(
          _$SupportTicketAttachmentWhereInputImpl value,
          $Res Function(_$SupportTicketAttachmentWhereInputImpl) then) =
      __$$SupportTicketAttachmentWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? fileName,
      StringFilter? originalName,
      IntFilter? fileSize,
      StringFilter? mimeType,
      StringFilter? fileUrl,
      StringFilter? storagePath,
      SupportTicketRelationFilter? ticket,
      StringFilter? ticketId,
      DateTimeFilter? uploadedAt,
      List<SupportTicketAttachmentWhereInput>? AND,
      List<SupportTicketAttachmentWhereInput>? OR,
      SupportTicketAttachmentWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get fileName;
  @override
  $StringFilterCopyWith<$Res>? get originalName;
  @override
  $IntFilterCopyWith<$Res>? get fileSize;
  @override
  $StringFilterCopyWith<$Res>? get mimeType;
  @override
  $StringFilterCopyWith<$Res>? get fileUrl;
  @override
  $StringFilterCopyWith<$Res>? get storagePath;
  @override
  $SupportTicketRelationFilterCopyWith<$Res>? get ticket;
  @override
  $StringFilterCopyWith<$Res>? get ticketId;
  @override
  $DateTimeFilterCopyWith<$Res>? get uploadedAt;
  @override
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$SupportTicketAttachmentWhereInputImplCopyWithImpl<$Res>
    extends _$SupportTicketAttachmentWhereInputCopyWithImpl<$Res,
        _$SupportTicketAttachmentWhereInputImpl>
    implements _$$SupportTicketAttachmentWhereInputImplCopyWith<$Res> {
  __$$SupportTicketAttachmentWhereInputImplCopyWithImpl(
      _$SupportTicketAttachmentWhereInputImpl _value,
      $Res Function(_$SupportTicketAttachmentWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportTicketAttachmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? originalName = freezed,
    Object? fileSize = freezed,
    Object? mimeType = freezed,
    Object? fileUrl = freezed,
    Object? storagePath = freezed,
    Object? ticket = freezed,
    Object? ticketId = freezed,
    Object? uploadedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$SupportTicketAttachmentWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      storagePath: freezed == storagePath
          ? _value.storagePath
          : storagePath // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as SupportTicketRelationFilter?,
      ticketId: freezed == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<SupportTicketAttachmentWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SupportTicketAttachmentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SupportTicketAttachmentWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SupportTicketAttachmentWhereInputImpl
    implements _SupportTicketAttachmentWhereInput {
  const _$SupportTicketAttachmentWhereInputImpl(
      {this.id,
      this.fileName,
      this.originalName,
      this.fileSize,
      this.mimeType,
      this.fileUrl,
      this.storagePath,
      this.ticket,
      this.ticketId,
      this.uploadedAt,
      final List<SupportTicketAttachmentWhereInput>? AND,
      final List<SupportTicketAttachmentWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$SupportTicketAttachmentWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportTicketAttachmentWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? fileName;
  @override
  final StringFilter? originalName;
  @override
  final IntFilter? fileSize;
  @override
  final StringFilter? mimeType;
  @override
  final StringFilter? fileUrl;
  @override
  final StringFilter? storagePath;

  /// Filter by ticket relation
  @override
  final SupportTicketRelationFilter? ticket;
  @override
  final StringFilter? ticketId;
  @override
  final DateTimeFilter? uploadedAt;
  final List<SupportTicketAttachmentWhereInput>? _AND;
  @override
  List<SupportTicketAttachmentWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SupportTicketAttachmentWhereInput>? _OR;
  @override
  List<SupportTicketAttachmentWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SupportTicketAttachmentWhereInput? NOT;

  @override
  String toString() {
    return 'SupportTicketAttachmentWhereInput(id: $id, fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, ticket: $ticket, ticketId: $ticketId, uploadedAt: $uploadedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketAttachmentWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.storagePath, storagePath) ||
                other.storagePath == storagePath) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fileName,
      originalName,
      fileSize,
      mimeType,
      fileUrl,
      storagePath,
      ticket,
      ticketId,
      uploadedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of SupportTicketAttachmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketAttachmentWhereInputImplCopyWith<
          _$SupportTicketAttachmentWhereInputImpl>
      get copyWith => __$$SupportTicketAttachmentWhereInputImplCopyWithImpl<
          _$SupportTicketAttachmentWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketAttachmentWhereInputImplToJson(
      this,
    );
  }
}

abstract class _SupportTicketAttachmentWhereInput
    implements SupportTicketAttachmentWhereInput {
  const factory _SupportTicketAttachmentWhereInput(
          {final StringFilter? id,
          final StringFilter? fileName,
          final StringFilter? originalName,
          final IntFilter? fileSize,
          final StringFilter? mimeType,
          final StringFilter? fileUrl,
          final StringFilter? storagePath,
          final SupportTicketRelationFilter? ticket,
          final StringFilter? ticketId,
          final DateTimeFilter? uploadedAt,
          final List<SupportTicketAttachmentWhereInput>? AND,
          final List<SupportTicketAttachmentWhereInput>? OR,
          final SupportTicketAttachmentWhereInput? NOT}) =
      _$SupportTicketAttachmentWhereInputImpl;

  factory _SupportTicketAttachmentWhereInput.fromJson(
          Map<String, dynamic> json) =
      _$SupportTicketAttachmentWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get fileName;
  @override
  StringFilter? get originalName;
  @override
  IntFilter? get fileSize;
  @override
  StringFilter? get mimeType;
  @override
  StringFilter? get fileUrl;
  @override
  StringFilter? get storagePath;

  /// Filter by ticket relation
  @override
  SupportTicketRelationFilter? get ticket;
  @override
  StringFilter? get ticketId;
  @override
  DateTimeFilter? get uploadedAt;
  @override
  List<SupportTicketAttachmentWhereInput>? get AND;
  @override
  List<SupportTicketAttachmentWhereInput>? get OR;
  @override
  SupportTicketAttachmentWhereInput? get NOT;

  /// Create a copy of SupportTicketAttachmentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketAttachmentWhereInputImplCopyWith<
          _$SupportTicketAttachmentWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportTicketAttachmentListRelationFilter
    _$SupportTicketAttachmentListRelationFilterFromJson(
        Map<String, dynamic> json) {
  return _SupportTicketAttachmentListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketAttachmentListRelationFilter {
  /// At least one related record matches
  SupportTicketAttachmentWhereInput? get some =>
      throw _privateConstructorUsedError;

  /// All related records match
  SupportTicketAttachmentWhereInput? get every =>
      throw _privateConstructorUsedError;

  /// No related records match
  SupportTicketAttachmentWhereInput? get none =>
      throw _privateConstructorUsedError;

  /// Serializes this SupportTicketAttachmentListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketAttachmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketAttachmentListRelationFilterCopyWith<
          SupportTicketAttachmentListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketAttachmentListRelationFilterCopyWith<$Res> {
  factory $SupportTicketAttachmentListRelationFilterCopyWith(
          SupportTicketAttachmentListRelationFilter value,
          $Res Function(SupportTicketAttachmentListRelationFilter) then) =
      _$SupportTicketAttachmentListRelationFilterCopyWithImpl<$Res,
          SupportTicketAttachmentListRelationFilter>;
  @useResult
  $Res call(
      {SupportTicketAttachmentWhereInput? some,
      SupportTicketAttachmentWhereInput? every,
      SupportTicketAttachmentWhereInput? none});

  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get some;
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get every;
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$SupportTicketAttachmentListRelationFilterCopyWithImpl<$Res,
        $Val extends SupportTicketAttachmentListRelationFilter>
    implements $SupportTicketAttachmentListRelationFilterCopyWith<$Res> {
  _$SupportTicketAttachmentListRelationFilterCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketAttachmentListRelationFilter
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
              as SupportTicketAttachmentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SupportTicketAttachmentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SupportTicketAttachmentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SupportTicketAttachmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $SupportTicketAttachmentWhereInputCopyWith<$Res>(_value.some!,
        (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketAttachmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $SupportTicketAttachmentWhereInputCopyWith<$Res>(_value.every!,
        (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketAttachmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $SupportTicketAttachmentWhereInputCopyWith<$Res>(_value.none!,
        (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportTicketAttachmentListRelationFilterImplCopyWith<$Res>
    implements $SupportTicketAttachmentListRelationFilterCopyWith<$Res> {
  factory _$$SupportTicketAttachmentListRelationFilterImplCopyWith(
          _$SupportTicketAttachmentListRelationFilterImpl value,
          $Res Function(_$SupportTicketAttachmentListRelationFilterImpl) then) =
      __$$SupportTicketAttachmentListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SupportTicketAttachmentWhereInput? some,
      SupportTicketAttachmentWhereInput? every,
      SupportTicketAttachmentWhereInput? none});

  @override
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get some;
  @override
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get every;
  @override
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$SupportTicketAttachmentListRelationFilterImplCopyWithImpl<$Res>
    extends _$SupportTicketAttachmentListRelationFilterCopyWithImpl<$Res,
        _$SupportTicketAttachmentListRelationFilterImpl>
    implements _$$SupportTicketAttachmentListRelationFilterImplCopyWith<$Res> {
  __$$SupportTicketAttachmentListRelationFilterImplCopyWithImpl(
      _$SupportTicketAttachmentListRelationFilterImpl _value,
      $Res Function(_$SupportTicketAttachmentListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportTicketAttachmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$SupportTicketAttachmentListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as SupportTicketAttachmentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SupportTicketAttachmentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SupportTicketAttachmentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketAttachmentListRelationFilterImpl
    implements _SupportTicketAttachmentListRelationFilter {
  const _$SupportTicketAttachmentListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$SupportTicketAttachmentListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportTicketAttachmentListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final SupportTicketAttachmentWhereInput? some;

  /// All related records match
  @override
  final SupportTicketAttachmentWhereInput? every;

  /// No related records match
  @override
  final SupportTicketAttachmentWhereInput? none;

  @override
  String toString() {
    return 'SupportTicketAttachmentListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketAttachmentListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of SupportTicketAttachmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketAttachmentListRelationFilterImplCopyWith<
          _$SupportTicketAttachmentListRelationFilterImpl>
      get copyWith =>
          __$$SupportTicketAttachmentListRelationFilterImplCopyWithImpl<
                  _$SupportTicketAttachmentListRelationFilterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketAttachmentListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SupportTicketAttachmentListRelationFilter
    implements SupportTicketAttachmentListRelationFilter {
  const factory _SupportTicketAttachmentListRelationFilter(
          {final SupportTicketAttachmentWhereInput? some,
          final SupportTicketAttachmentWhereInput? every,
          final SupportTicketAttachmentWhereInput? none}) =
      _$SupportTicketAttachmentListRelationFilterImpl;

  factory _SupportTicketAttachmentListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$SupportTicketAttachmentListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  SupportTicketAttachmentWhereInput? get some;

  /// All related records match
  @override
  SupportTicketAttachmentWhereInput? get every;

  /// No related records match
  @override
  SupportTicketAttachmentWhereInput? get none;

  /// Create a copy of SupportTicketAttachmentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketAttachmentListRelationFilterImplCopyWith<
          _$SupportTicketAttachmentListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportTicketAttachmentRelationFilter
    _$SupportTicketAttachmentRelationFilterFromJson(Map<String, dynamic> json) {
  return _SupportTicketAttachmentRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketAttachmentRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  SupportTicketAttachmentWhereInput? get is_ =>
      throw _privateConstructorUsedError;

  /// Related record does not match
  SupportTicketAttachmentWhereInput? get isNot =>
      throw _privateConstructorUsedError;

  /// Serializes this SupportTicketAttachmentRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketAttachmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketAttachmentRelationFilterCopyWith<
          SupportTicketAttachmentRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketAttachmentRelationFilterCopyWith<$Res> {
  factory $SupportTicketAttachmentRelationFilterCopyWith(
          SupportTicketAttachmentRelationFilter value,
          $Res Function(SupportTicketAttachmentRelationFilter) then) =
      _$SupportTicketAttachmentRelationFilterCopyWithImpl<$Res,
          SupportTicketAttachmentRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SupportTicketAttachmentWhereInput? is_,
      SupportTicketAttachmentWhereInput? isNot});

  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get is_;
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$SupportTicketAttachmentRelationFilterCopyWithImpl<$Res,
        $Val extends SupportTicketAttachmentRelationFilter>
    implements $SupportTicketAttachmentRelationFilterCopyWith<$Res> {
  _$SupportTicketAttachmentRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketAttachmentRelationFilter
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
              as SupportTicketAttachmentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SupportTicketAttachmentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SupportTicketAttachmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $SupportTicketAttachmentWhereInputCopyWith<$Res>(_value.is_!,
        (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketAttachmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $SupportTicketAttachmentWhereInputCopyWith<$Res>(_value.isNot!,
        (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportTicketAttachmentRelationFilterImplCopyWith<$Res>
    implements $SupportTicketAttachmentRelationFilterCopyWith<$Res> {
  factory _$$SupportTicketAttachmentRelationFilterImplCopyWith(
          _$SupportTicketAttachmentRelationFilterImpl value,
          $Res Function(_$SupportTicketAttachmentRelationFilterImpl) then) =
      __$$SupportTicketAttachmentRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SupportTicketAttachmentWhereInput? is_,
      SupportTicketAttachmentWhereInput? isNot});

  @override
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get is_;
  @override
  $SupportTicketAttachmentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$SupportTicketAttachmentRelationFilterImplCopyWithImpl<$Res>
    extends _$SupportTicketAttachmentRelationFilterCopyWithImpl<$Res,
        _$SupportTicketAttachmentRelationFilterImpl>
    implements _$$SupportTicketAttachmentRelationFilterImplCopyWith<$Res> {
  __$$SupportTicketAttachmentRelationFilterImplCopyWithImpl(
      _$SupportTicketAttachmentRelationFilterImpl _value,
      $Res Function(_$SupportTicketAttachmentRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportTicketAttachmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$SupportTicketAttachmentRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as SupportTicketAttachmentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SupportTicketAttachmentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketAttachmentRelationFilterImpl
    implements _SupportTicketAttachmentRelationFilter {
  const _$SupportTicketAttachmentRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$SupportTicketAttachmentRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportTicketAttachmentRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final SupportTicketAttachmentWhereInput? is_;

  /// Related record does not match
  @override
  final SupportTicketAttachmentWhereInput? isNot;

  @override
  String toString() {
    return 'SupportTicketAttachmentRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketAttachmentRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of SupportTicketAttachmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketAttachmentRelationFilterImplCopyWith<
          _$SupportTicketAttachmentRelationFilterImpl>
      get copyWith => __$$SupportTicketAttachmentRelationFilterImplCopyWithImpl<
          _$SupportTicketAttachmentRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketAttachmentRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SupportTicketAttachmentRelationFilter
    implements SupportTicketAttachmentRelationFilter {
  const factory _SupportTicketAttachmentRelationFilter(
          {@JsonKey(name: 'is') final SupportTicketAttachmentWhereInput? is_,
          final SupportTicketAttachmentWhereInput? isNot}) =
      _$SupportTicketAttachmentRelationFilterImpl;

  factory _SupportTicketAttachmentRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$SupportTicketAttachmentRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  SupportTicketAttachmentWhereInput? get is_;

  /// Related record does not match
  @override
  SupportTicketAttachmentWhereInput? get isNot;

  /// Create a copy of SupportTicketAttachmentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketAttachmentRelationFilterImplCopyWith<
          _$SupportTicketAttachmentRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportTicketAttachmentOrderByInput
    _$SupportTicketAttachmentOrderByInputFromJson(Map<String, dynamic> json) {
  return _SupportTicketAttachmentOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketAttachmentOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get fileName => throw _privateConstructorUsedError;
  SortOrder? get originalName => throw _privateConstructorUsedError;
  SortOrder? get fileSize => throw _privateConstructorUsedError;
  SortOrder? get mimeType => throw _privateConstructorUsedError;
  SortOrder? get fileUrl => throw _privateConstructorUsedError;
  SortOrder? get storagePath => throw _privateConstructorUsedError;
  SortOrder? get ticketId => throw _privateConstructorUsedError;
  SortOrder? get uploadedAt => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketAttachmentOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketAttachmentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketAttachmentOrderByInputCopyWith<
          SupportTicketAttachmentOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketAttachmentOrderByInputCopyWith<$Res> {
  factory $SupportTicketAttachmentOrderByInputCopyWith(
          SupportTicketAttachmentOrderByInput value,
          $Res Function(SupportTicketAttachmentOrderByInput) then) =
      _$SupportTicketAttachmentOrderByInputCopyWithImpl<$Res,
          SupportTicketAttachmentOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? fileName,
      SortOrder? originalName,
      SortOrder? fileSize,
      SortOrder? mimeType,
      SortOrder? fileUrl,
      SortOrder? storagePath,
      SortOrder? ticketId,
      SortOrder? uploadedAt});
}

/// @nodoc
class _$SupportTicketAttachmentOrderByInputCopyWithImpl<$Res,
        $Val extends SupportTicketAttachmentOrderByInput>
    implements $SupportTicketAttachmentOrderByInputCopyWith<$Res> {
  _$SupportTicketAttachmentOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketAttachmentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? originalName = freezed,
    Object? fileSize = freezed,
    Object? mimeType = freezed,
    Object? fileUrl = freezed,
    Object? storagePath = freezed,
    Object? ticketId = freezed,
    Object? uploadedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      storagePath: freezed == storagePath
          ? _value.storagePath
          : storagePath // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      ticketId: freezed == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportTicketAttachmentOrderByInputImplCopyWith<$Res>
    implements $SupportTicketAttachmentOrderByInputCopyWith<$Res> {
  factory _$$SupportTicketAttachmentOrderByInputImplCopyWith(
          _$SupportTicketAttachmentOrderByInputImpl value,
          $Res Function(_$SupportTicketAttachmentOrderByInputImpl) then) =
      __$$SupportTicketAttachmentOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? fileName,
      SortOrder? originalName,
      SortOrder? fileSize,
      SortOrder? mimeType,
      SortOrder? fileUrl,
      SortOrder? storagePath,
      SortOrder? ticketId,
      SortOrder? uploadedAt});
}

/// @nodoc
class __$$SupportTicketAttachmentOrderByInputImplCopyWithImpl<$Res>
    extends _$SupportTicketAttachmentOrderByInputCopyWithImpl<$Res,
        _$SupportTicketAttachmentOrderByInputImpl>
    implements _$$SupportTicketAttachmentOrderByInputImplCopyWith<$Res> {
  __$$SupportTicketAttachmentOrderByInputImplCopyWithImpl(
      _$SupportTicketAttachmentOrderByInputImpl _value,
      $Res Function(_$SupportTicketAttachmentOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportTicketAttachmentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? originalName = freezed,
    Object? fileSize = freezed,
    Object? mimeType = freezed,
    Object? fileUrl = freezed,
    Object? storagePath = freezed,
    Object? ticketId = freezed,
    Object? uploadedAt = freezed,
  }) {
    return _then(_$SupportTicketAttachmentOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      storagePath: freezed == storagePath
          ? _value.storagePath
          : storagePath // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      ticketId: freezed == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketAttachmentOrderByInputImpl
    implements _SupportTicketAttachmentOrderByInput {
  const _$SupportTicketAttachmentOrderByInputImpl(
      {this.id,
      this.fileName,
      this.originalName,
      this.fileSize,
      this.mimeType,
      this.fileUrl,
      this.storagePath,
      this.ticketId,
      this.uploadedAt});

  factory _$SupportTicketAttachmentOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportTicketAttachmentOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? fileName;
  @override
  final SortOrder? originalName;
  @override
  final SortOrder? fileSize;
  @override
  final SortOrder? mimeType;
  @override
  final SortOrder? fileUrl;
  @override
  final SortOrder? storagePath;
  @override
  final SortOrder? ticketId;
  @override
  final SortOrder? uploadedAt;

  @override
  String toString() {
    return 'SupportTicketAttachmentOrderByInput(id: $id, fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, ticketId: $ticketId, uploadedAt: $uploadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketAttachmentOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.storagePath, storagePath) ||
                other.storagePath == storagePath) &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fileName, originalName,
      fileSize, mimeType, fileUrl, storagePath, ticketId, uploadedAt);

  /// Create a copy of SupportTicketAttachmentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketAttachmentOrderByInputImplCopyWith<
          _$SupportTicketAttachmentOrderByInputImpl>
      get copyWith => __$$SupportTicketAttachmentOrderByInputImplCopyWithImpl<
          _$SupportTicketAttachmentOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketAttachmentOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _SupportTicketAttachmentOrderByInput
    implements SupportTicketAttachmentOrderByInput {
  const factory _SupportTicketAttachmentOrderByInput(
      {final SortOrder? id,
      final SortOrder? fileName,
      final SortOrder? originalName,
      final SortOrder? fileSize,
      final SortOrder? mimeType,
      final SortOrder? fileUrl,
      final SortOrder? storagePath,
      final SortOrder? ticketId,
      final SortOrder? uploadedAt}) = _$SupportTicketAttachmentOrderByInputImpl;

  factory _SupportTicketAttachmentOrderByInput.fromJson(
          Map<String, dynamic> json) =
      _$SupportTicketAttachmentOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get fileName;
  @override
  SortOrder? get originalName;
  @override
  SortOrder? get fileSize;
  @override
  SortOrder? get mimeType;
  @override
  SortOrder? get fileUrl;
  @override
  SortOrder? get storagePath;
  @override
  SortOrder? get ticketId;
  @override
  SortOrder? get uploadedAt;

  /// Create a copy of SupportTicketAttachmentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketAttachmentOrderByInputImplCopyWith<
          _$SupportTicketAttachmentOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
