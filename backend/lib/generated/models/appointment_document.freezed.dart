// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppointmentDocument _$AppointmentDocumentFromJson(Map<String, dynamic> json) {
  return _AppointmentDocument.fromJson(json);
}

/// @nodoc
mixin _$AppointmentDocument {
  String get id => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  String get originalName => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String get storagePath => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DocumentReviewStatus get reviewStatus => throw _privateConstructorUsedError;
  String? get reviewNotes => throw _privateConstructorUsedError;
  DateTime? get reviewedAt => throw _privateConstructorUsedError;
  String? get reviewedBy => throw _privateConstructorUsedError;
  DocumentUploadRole get uploadedByRole => throw _privateConstructorUsedError;
  String? get responseToDocumentId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  AppointmentDocument? get responseToDocument =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<AppointmentDocument>? get responseDocuments =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Appointment? get appointment => throw _privateConstructorUsedError;
  String get appointmentId => throw _privateConstructorUsedError;
  DateTime get uploadedAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AppointmentDocument to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentDocumentCopyWith<AppointmentDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDocumentCopyWith<$Res> {
  factory $AppointmentDocumentCopyWith(
          AppointmentDocument value, $Res Function(AppointmentDocument) then) =
      _$AppointmentDocumentCopyWithImpl<$Res, AppointmentDocument>;
  @useResult
  $Res call(
      {String id,
      String fileName,
      String originalName,
      int fileSize,
      String mimeType,
      String fileUrl,
      String storagePath,
      String? description,
      DocumentReviewStatus reviewStatus,
      String? reviewNotes,
      DateTime? reviewedAt,
      String? reviewedBy,
      DocumentUploadRole uploadedByRole,
      String? responseToDocumentId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      AppointmentDocument? responseToDocument,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<AppointmentDocument>? responseDocuments,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Appointment? appointment,
      String appointmentId,
      DateTime uploadedAt,
      DateTime updatedAt});

  $AppointmentDocumentCopyWith<$Res>? get responseToDocument;
  $AppointmentCopyWith<$Res>? get appointment;
}

/// @nodoc
class _$AppointmentDocumentCopyWithImpl<$Res, $Val extends AppointmentDocument>
    implements $AppointmentDocumentCopyWith<$Res> {
  _$AppointmentDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentDocument
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
    Object? description = freezed,
    Object? reviewStatus = null,
    Object? reviewNotes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedBy = freezed,
    Object? uploadedByRole = null,
    Object? responseToDocumentId = freezed,
    Object? responseToDocument = freezed,
    Object? responseDocuments = freezed,
    Object? appointment = freezed,
    Object? appointmentId = null,
    Object? uploadedAt = null,
    Object? updatedAt = null,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewStatus: null == reviewStatus
          ? _value.reviewStatus
          : reviewStatus // ignore: cast_nullable_to_non_nullable
              as DocumentReviewStatus,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedByRole: null == uploadedByRole
          ? _value.uploadedByRole
          : uploadedByRole // ignore: cast_nullable_to_non_nullable
              as DocumentUploadRole,
      responseToDocumentId: freezed == responseToDocumentId
          ? _value.responseToDocumentId
          : responseToDocumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      responseToDocument: freezed == responseToDocument
          ? _value.responseToDocument
          : responseToDocument // ignore: cast_nullable_to_non_nullable
              as AppointmentDocument?,
      responseDocuments: freezed == responseDocuments
          ? _value.responseDocuments
          : responseDocuments // ignore: cast_nullable_to_non_nullable
              as List<AppointmentDocument>?,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      uploadedAt: null == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of AppointmentDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentDocumentCopyWith<$Res>? get responseToDocument {
    if (_value.responseToDocument == null) {
      return null;
    }

    return $AppointmentDocumentCopyWith<$Res>(_value.responseToDocument!,
        (value) {
      return _then(_value.copyWith(responseToDocument: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentCopyWith<$Res>? get appointment {
    if (_value.appointment == null) {
      return null;
    }

    return $AppointmentCopyWith<$Res>(_value.appointment!, (value) {
      return _then(_value.copyWith(appointment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentDocumentImplCopyWith<$Res>
    implements $AppointmentDocumentCopyWith<$Res> {
  factory _$$AppointmentDocumentImplCopyWith(_$AppointmentDocumentImpl value,
          $Res Function(_$AppointmentDocumentImpl) then) =
      __$$AppointmentDocumentImplCopyWithImpl<$Res>;
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
      String? description,
      DocumentReviewStatus reviewStatus,
      String? reviewNotes,
      DateTime? reviewedAt,
      String? reviewedBy,
      DocumentUploadRole uploadedByRole,
      String? responseToDocumentId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      AppointmentDocument? responseToDocument,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<AppointmentDocument>? responseDocuments,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Appointment? appointment,
      String appointmentId,
      DateTime uploadedAt,
      DateTime updatedAt});

  @override
  $AppointmentDocumentCopyWith<$Res>? get responseToDocument;
  @override
  $AppointmentCopyWith<$Res>? get appointment;
}

/// @nodoc
class __$$AppointmentDocumentImplCopyWithImpl<$Res>
    extends _$AppointmentDocumentCopyWithImpl<$Res, _$AppointmentDocumentImpl>
    implements _$$AppointmentDocumentImplCopyWith<$Res> {
  __$$AppointmentDocumentImplCopyWithImpl(_$AppointmentDocumentImpl _value,
      $Res Function(_$AppointmentDocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDocument
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
    Object? description = freezed,
    Object? reviewStatus = null,
    Object? reviewNotes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedBy = freezed,
    Object? uploadedByRole = null,
    Object? responseToDocumentId = freezed,
    Object? responseToDocument = freezed,
    Object? responseDocuments = freezed,
    Object? appointment = freezed,
    Object? appointmentId = null,
    Object? uploadedAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AppointmentDocumentImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewStatus: null == reviewStatus
          ? _value.reviewStatus
          : reviewStatus // ignore: cast_nullable_to_non_nullable
              as DocumentReviewStatus,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedByRole: null == uploadedByRole
          ? _value.uploadedByRole
          : uploadedByRole // ignore: cast_nullable_to_non_nullable
              as DocumentUploadRole,
      responseToDocumentId: freezed == responseToDocumentId
          ? _value.responseToDocumentId
          : responseToDocumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      responseToDocument: freezed == responseToDocument
          ? _value.responseToDocument
          : responseToDocument // ignore: cast_nullable_to_non_nullable
              as AppointmentDocument?,
      responseDocuments: freezed == responseDocuments
          ? _value._responseDocuments
          : responseDocuments // ignore: cast_nullable_to_non_nullable
              as List<AppointmentDocument>?,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      uploadedAt: null == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
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
class _$AppointmentDocumentImpl implements _AppointmentDocument {
  const _$AppointmentDocumentImpl(
      {required this.id,
      required this.fileName,
      required this.originalName,
      required this.fileSize,
      required this.mimeType,
      required this.fileUrl,
      required this.storagePath,
      this.description,
      this.reviewStatus = DocumentReviewStatus.pending,
      this.reviewNotes,
      this.reviewedAt,
      this.reviewedBy,
      this.uploadedByRole = DocumentUploadRole.consultee,
      this.responseToDocumentId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.responseToDocument,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<AppointmentDocument>? responseDocuments,
      @JsonKey(includeFromJson: false, includeToJson: false) this.appointment,
      required this.appointmentId,
      required this.uploadedAt,
      required this.updatedAt})
      : _responseDocuments = responseDocuments;

  factory _$AppointmentDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentDocumentImplFromJson(json);

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
  final String? description;
  @override
  @JsonKey()
  final DocumentReviewStatus reviewStatus;
  @override
  final String? reviewNotes;
  @override
  final DateTime? reviewedAt;
  @override
  final String? reviewedBy;
  @override
  @JsonKey()
  final DocumentUploadRole uploadedByRole;
  @override
  final String? responseToDocumentId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final AppointmentDocument? responseToDocument;
  final List<AppointmentDocument>? _responseDocuments;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<AppointmentDocument>? get responseDocuments {
    final value = _responseDocuments;
    if (value == null) return null;
    if (_responseDocuments is EqualUnmodifiableListView)
      return _responseDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Appointment? appointment;
  @override
  final String appointmentId;
  @override
  final DateTime uploadedAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'AppointmentDocument(id: $id, fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, description: $description, reviewStatus: $reviewStatus, reviewNotes: $reviewNotes, reviewedAt: $reviewedAt, reviewedBy: $reviewedBy, uploadedByRole: $uploadedByRole, responseToDocumentId: $responseToDocumentId, responseToDocument: $responseToDocument, responseDocuments: $responseDocuments, appointment: $appointment, appointmentId: $appointmentId, uploadedAt: $uploadedAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentDocumentImpl &&
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
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reviewStatus, reviewStatus) ||
                other.reviewStatus == reviewStatus) &&
            (identical(other.reviewNotes, reviewNotes) ||
                other.reviewNotes == reviewNotes) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.reviewedBy, reviewedBy) ||
                other.reviewedBy == reviewedBy) &&
            (identical(other.uploadedByRole, uploadedByRole) ||
                other.uploadedByRole == uploadedByRole) &&
            (identical(other.responseToDocumentId, responseToDocumentId) ||
                other.responseToDocumentId == responseToDocumentId) &&
            (identical(other.responseToDocument, responseToDocument) ||
                other.responseToDocument == responseToDocument) &&
            const DeepCollectionEquality()
                .equals(other._responseDocuments, _responseDocuments) &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        fileName,
        originalName,
        fileSize,
        mimeType,
        fileUrl,
        storagePath,
        description,
        reviewStatus,
        reviewNotes,
        reviewedAt,
        reviewedBy,
        uploadedByRole,
        responseToDocumentId,
        responseToDocument,
        const DeepCollectionEquality().hash(_responseDocuments),
        appointment,
        appointmentId,
        uploadedAt,
        updatedAt
      ]);

  /// Create a copy of AppointmentDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentDocumentImplCopyWith<_$AppointmentDocumentImpl> get copyWith =>
      __$$AppointmentDocumentImplCopyWithImpl<_$AppointmentDocumentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentDocumentImplToJson(
      this,
    );
  }
}

abstract class _AppointmentDocument implements AppointmentDocument {
  const factory _AppointmentDocument(
      {required final String id,
      required final String fileName,
      required final String originalName,
      required final int fileSize,
      required final String mimeType,
      required final String fileUrl,
      required final String storagePath,
      final String? description,
      final DocumentReviewStatus reviewStatus,
      final String? reviewNotes,
      final DateTime? reviewedAt,
      final String? reviewedBy,
      final DocumentUploadRole uploadedByRole,
      final String? responseToDocumentId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final AppointmentDocument? responseToDocument,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<AppointmentDocument>? responseDocuments,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Appointment? appointment,
      required final String appointmentId,
      required final DateTime uploadedAt,
      required final DateTime updatedAt}) = _$AppointmentDocumentImpl;

  factory _AppointmentDocument.fromJson(Map<String, dynamic> json) =
      _$AppointmentDocumentImpl.fromJson;

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
  String? get description;
  @override
  DocumentReviewStatus get reviewStatus;
  @override
  String? get reviewNotes;
  @override
  DateTime? get reviewedAt;
  @override
  String? get reviewedBy;
  @override
  DocumentUploadRole get uploadedByRole;
  @override
  String? get responseToDocumentId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  AppointmentDocument? get responseToDocument;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<AppointmentDocument>? get responseDocuments;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Appointment? get appointment;
  @override
  String get appointmentId;
  @override
  DateTime get uploadedAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of AppointmentDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentDocumentImplCopyWith<_$AppointmentDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateAppointmentDocumentInput _$CreateAppointmentDocumentInputFromJson(
    Map<String, dynamic> json) {
  return _CreateAppointmentDocumentInput.fromJson(json);
}

/// @nodoc
mixin _$CreateAppointmentDocumentInput {
  String get fileName => throw _privateConstructorUsedError;
  String get originalName => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String get storagePath => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DocumentReviewStatus get reviewStatus => throw _privateConstructorUsedError;
  String? get reviewNotes => throw _privateConstructorUsedError;
  DateTime? get reviewedAt => throw _privateConstructorUsedError;
  String? get reviewedBy => throw _privateConstructorUsedError;
  DocumentUploadRole get uploadedByRole => throw _privateConstructorUsedError;
  String? get responseToDocumentId => throw _privateConstructorUsedError;
  String get appointmentId => throw _privateConstructorUsedError;

  /// Serializes this CreateAppointmentDocumentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateAppointmentDocumentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateAppointmentDocumentInputCopyWith<CreateAppointmentDocumentInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAppointmentDocumentInputCopyWith<$Res> {
  factory $CreateAppointmentDocumentInputCopyWith(
          CreateAppointmentDocumentInput value,
          $Res Function(CreateAppointmentDocumentInput) then) =
      _$CreateAppointmentDocumentInputCopyWithImpl<$Res,
          CreateAppointmentDocumentInput>;
  @useResult
  $Res call(
      {String fileName,
      String originalName,
      int fileSize,
      String mimeType,
      String fileUrl,
      String storagePath,
      String? description,
      DocumentReviewStatus reviewStatus,
      String? reviewNotes,
      DateTime? reviewedAt,
      String? reviewedBy,
      DocumentUploadRole uploadedByRole,
      String? responseToDocumentId,
      String appointmentId});
}

/// @nodoc
class _$CreateAppointmentDocumentInputCopyWithImpl<$Res,
        $Val extends CreateAppointmentDocumentInput>
    implements $CreateAppointmentDocumentInputCopyWith<$Res> {
  _$CreateAppointmentDocumentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAppointmentDocumentInput
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
    Object? description = freezed,
    Object? reviewStatus = null,
    Object? reviewNotes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedBy = freezed,
    Object? uploadedByRole = null,
    Object? responseToDocumentId = freezed,
    Object? appointmentId = null,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewStatus: null == reviewStatus
          ? _value.reviewStatus
          : reviewStatus // ignore: cast_nullable_to_non_nullable
              as DocumentReviewStatus,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedByRole: null == uploadedByRole
          ? _value.uploadedByRole
          : uploadedByRole // ignore: cast_nullable_to_non_nullable
              as DocumentUploadRole,
      responseToDocumentId: freezed == responseToDocumentId
          ? _value.responseToDocumentId
          : responseToDocumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAppointmentDocumentInputImplCopyWith<$Res>
    implements $CreateAppointmentDocumentInputCopyWith<$Res> {
  factory _$$CreateAppointmentDocumentInputImplCopyWith(
          _$CreateAppointmentDocumentInputImpl value,
          $Res Function(_$CreateAppointmentDocumentInputImpl) then) =
      __$$CreateAppointmentDocumentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fileName,
      String originalName,
      int fileSize,
      String mimeType,
      String fileUrl,
      String storagePath,
      String? description,
      DocumentReviewStatus reviewStatus,
      String? reviewNotes,
      DateTime? reviewedAt,
      String? reviewedBy,
      DocumentUploadRole uploadedByRole,
      String? responseToDocumentId,
      String appointmentId});
}

/// @nodoc
class __$$CreateAppointmentDocumentInputImplCopyWithImpl<$Res>
    extends _$CreateAppointmentDocumentInputCopyWithImpl<$Res,
        _$CreateAppointmentDocumentInputImpl>
    implements _$$CreateAppointmentDocumentInputImplCopyWith<$Res> {
  __$$CreateAppointmentDocumentInputImplCopyWithImpl(
      _$CreateAppointmentDocumentInputImpl _value,
      $Res Function(_$CreateAppointmentDocumentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAppointmentDocumentInput
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
    Object? description = freezed,
    Object? reviewStatus = null,
    Object? reviewNotes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedBy = freezed,
    Object? uploadedByRole = null,
    Object? responseToDocumentId = freezed,
    Object? appointmentId = null,
  }) {
    return _then(_$CreateAppointmentDocumentInputImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewStatus: null == reviewStatus
          ? _value.reviewStatus
          : reviewStatus // ignore: cast_nullable_to_non_nullable
              as DocumentReviewStatus,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedByRole: null == uploadedByRole
          ? _value.uploadedByRole
          : uploadedByRole // ignore: cast_nullable_to_non_nullable
              as DocumentUploadRole,
      responseToDocumentId: freezed == responseToDocumentId
          ? _value.responseToDocumentId
          : responseToDocumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAppointmentDocumentInputImpl
    implements _CreateAppointmentDocumentInput {
  const _$CreateAppointmentDocumentInputImpl(
      {required this.fileName,
      required this.originalName,
      required this.fileSize,
      required this.mimeType,
      required this.fileUrl,
      required this.storagePath,
      this.description,
      this.reviewStatus = DocumentReviewStatus.pending,
      this.reviewNotes,
      this.reviewedAt,
      this.reviewedBy,
      this.uploadedByRole = DocumentUploadRole.consultee,
      this.responseToDocumentId,
      required this.appointmentId});

  factory _$CreateAppointmentDocumentInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateAppointmentDocumentInputImplFromJson(json);

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
  final String? description;
  @override
  @JsonKey()
  final DocumentReviewStatus reviewStatus;
  @override
  final String? reviewNotes;
  @override
  final DateTime? reviewedAt;
  @override
  final String? reviewedBy;
  @override
  @JsonKey()
  final DocumentUploadRole uploadedByRole;
  @override
  final String? responseToDocumentId;
  @override
  final String appointmentId;

  @override
  String toString() {
    return 'CreateAppointmentDocumentInput(fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, description: $description, reviewStatus: $reviewStatus, reviewNotes: $reviewNotes, reviewedAt: $reviewedAt, reviewedBy: $reviewedBy, uploadedByRole: $uploadedByRole, responseToDocumentId: $responseToDocumentId, appointmentId: $appointmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAppointmentDocumentInputImpl &&
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
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reviewStatus, reviewStatus) ||
                other.reviewStatus == reviewStatus) &&
            (identical(other.reviewNotes, reviewNotes) ||
                other.reviewNotes == reviewNotes) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.reviewedBy, reviewedBy) ||
                other.reviewedBy == reviewedBy) &&
            (identical(other.uploadedByRole, uploadedByRole) ||
                other.uploadedByRole == uploadedByRole) &&
            (identical(other.responseToDocumentId, responseToDocumentId) ||
                other.responseToDocumentId == responseToDocumentId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fileName,
      originalName,
      fileSize,
      mimeType,
      fileUrl,
      storagePath,
      description,
      reviewStatus,
      reviewNotes,
      reviewedAt,
      reviewedBy,
      uploadedByRole,
      responseToDocumentId,
      appointmentId);

  /// Create a copy of CreateAppointmentDocumentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAppointmentDocumentInputImplCopyWith<
          _$CreateAppointmentDocumentInputImpl>
      get copyWith => __$$CreateAppointmentDocumentInputImplCopyWithImpl<
          _$CreateAppointmentDocumentInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAppointmentDocumentInputImplToJson(
      this,
    );
  }
}

abstract class _CreateAppointmentDocumentInput
    implements CreateAppointmentDocumentInput {
  const factory _CreateAppointmentDocumentInput(
          {required final String fileName,
          required final String originalName,
          required final int fileSize,
          required final String mimeType,
          required final String fileUrl,
          required final String storagePath,
          final String? description,
          final DocumentReviewStatus reviewStatus,
          final String? reviewNotes,
          final DateTime? reviewedAt,
          final String? reviewedBy,
          final DocumentUploadRole uploadedByRole,
          final String? responseToDocumentId,
          required final String appointmentId}) =
      _$CreateAppointmentDocumentInputImpl;

  factory _CreateAppointmentDocumentInput.fromJson(Map<String, dynamic> json) =
      _$CreateAppointmentDocumentInputImpl.fromJson;

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
  String? get description;
  @override
  DocumentReviewStatus get reviewStatus;
  @override
  String? get reviewNotes;
  @override
  DateTime? get reviewedAt;
  @override
  String? get reviewedBy;
  @override
  DocumentUploadRole get uploadedByRole;
  @override
  String? get responseToDocumentId;
  @override
  String get appointmentId;

  /// Create a copy of CreateAppointmentDocumentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAppointmentDocumentInputImplCopyWith<
          _$CreateAppointmentDocumentInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateAppointmentDocumentInput _$UpdateAppointmentDocumentInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateAppointmentDocumentInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateAppointmentDocumentInput {
  String? get fileName => throw _privateConstructorUsedError;
  String? get originalName => throw _privateConstructorUsedError;
  int? get fileSize => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;
  String? get storagePath => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DocumentReviewStatus? get reviewStatus => throw _privateConstructorUsedError;
  String? get reviewNotes => throw _privateConstructorUsedError;
  DateTime? get reviewedAt => throw _privateConstructorUsedError;
  String? get reviewedBy => throw _privateConstructorUsedError;
  DocumentUploadRole? get uploadedByRole => throw _privateConstructorUsedError;
  String? get responseToDocumentId => throw _privateConstructorUsedError;
  String? get appointmentId => throw _privateConstructorUsedError;

  /// Serializes this UpdateAppointmentDocumentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateAppointmentDocumentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateAppointmentDocumentInputCopyWith<UpdateAppointmentDocumentInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAppointmentDocumentInputCopyWith<$Res> {
  factory $UpdateAppointmentDocumentInputCopyWith(
          UpdateAppointmentDocumentInput value,
          $Res Function(UpdateAppointmentDocumentInput) then) =
      _$UpdateAppointmentDocumentInputCopyWithImpl<$Res,
          UpdateAppointmentDocumentInput>;
  @useResult
  $Res call(
      {String? fileName,
      String? originalName,
      int? fileSize,
      String? mimeType,
      String? fileUrl,
      String? storagePath,
      String? description,
      DocumentReviewStatus? reviewStatus,
      String? reviewNotes,
      DateTime? reviewedAt,
      String? reviewedBy,
      DocumentUploadRole? uploadedByRole,
      String? responseToDocumentId,
      String? appointmentId});
}

/// @nodoc
class _$UpdateAppointmentDocumentInputCopyWithImpl<$Res,
        $Val extends UpdateAppointmentDocumentInput>
    implements $UpdateAppointmentDocumentInputCopyWith<$Res> {
  _$UpdateAppointmentDocumentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateAppointmentDocumentInput
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
    Object? description = freezed,
    Object? reviewStatus = freezed,
    Object? reviewNotes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedBy = freezed,
    Object? uploadedByRole = freezed,
    Object? responseToDocumentId = freezed,
    Object? appointmentId = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewStatus: freezed == reviewStatus
          ? _value.reviewStatus
          : reviewStatus // ignore: cast_nullable_to_non_nullable
              as DocumentReviewStatus?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedByRole: freezed == uploadedByRole
          ? _value.uploadedByRole
          : uploadedByRole // ignore: cast_nullable_to_non_nullable
              as DocumentUploadRole?,
      responseToDocumentId: freezed == responseToDocumentId
          ? _value.responseToDocumentId
          : responseToDocumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateAppointmentDocumentInputImplCopyWith<$Res>
    implements $UpdateAppointmentDocumentInputCopyWith<$Res> {
  factory _$$UpdateAppointmentDocumentInputImplCopyWith(
          _$UpdateAppointmentDocumentInputImpl value,
          $Res Function(_$UpdateAppointmentDocumentInputImpl) then) =
      __$$UpdateAppointmentDocumentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fileName,
      String? originalName,
      int? fileSize,
      String? mimeType,
      String? fileUrl,
      String? storagePath,
      String? description,
      DocumentReviewStatus? reviewStatus,
      String? reviewNotes,
      DateTime? reviewedAt,
      String? reviewedBy,
      DocumentUploadRole? uploadedByRole,
      String? responseToDocumentId,
      String? appointmentId});
}

/// @nodoc
class __$$UpdateAppointmentDocumentInputImplCopyWithImpl<$Res>
    extends _$UpdateAppointmentDocumentInputCopyWithImpl<$Res,
        _$UpdateAppointmentDocumentInputImpl>
    implements _$$UpdateAppointmentDocumentInputImplCopyWith<$Res> {
  __$$UpdateAppointmentDocumentInputImplCopyWithImpl(
      _$UpdateAppointmentDocumentInputImpl _value,
      $Res Function(_$UpdateAppointmentDocumentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateAppointmentDocumentInput
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
    Object? description = freezed,
    Object? reviewStatus = freezed,
    Object? reviewNotes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedBy = freezed,
    Object? uploadedByRole = freezed,
    Object? responseToDocumentId = freezed,
    Object? appointmentId = freezed,
  }) {
    return _then(_$UpdateAppointmentDocumentInputImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewStatus: freezed == reviewStatus
          ? _value.reviewStatus
          : reviewStatus // ignore: cast_nullable_to_non_nullable
              as DocumentReviewStatus?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedByRole: freezed == uploadedByRole
          ? _value.uploadedByRole
          : uploadedByRole // ignore: cast_nullable_to_non_nullable
              as DocumentUploadRole?,
      responseToDocumentId: freezed == responseToDocumentId
          ? _value.responseToDocumentId
          : responseToDocumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateAppointmentDocumentInputImpl
    implements _UpdateAppointmentDocumentInput {
  const _$UpdateAppointmentDocumentInputImpl(
      {this.fileName,
      this.originalName,
      this.fileSize,
      this.mimeType,
      this.fileUrl,
      this.storagePath,
      this.description,
      this.reviewStatus,
      this.reviewNotes,
      this.reviewedAt,
      this.reviewedBy,
      this.uploadedByRole,
      this.responseToDocumentId,
      this.appointmentId});

  factory _$UpdateAppointmentDocumentInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateAppointmentDocumentInputImplFromJson(json);

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
  final String? description;
  @override
  final DocumentReviewStatus? reviewStatus;
  @override
  final String? reviewNotes;
  @override
  final DateTime? reviewedAt;
  @override
  final String? reviewedBy;
  @override
  final DocumentUploadRole? uploadedByRole;
  @override
  final String? responseToDocumentId;
  @override
  final String? appointmentId;

  @override
  String toString() {
    return 'UpdateAppointmentDocumentInput(fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, description: $description, reviewStatus: $reviewStatus, reviewNotes: $reviewNotes, reviewedAt: $reviewedAt, reviewedBy: $reviewedBy, uploadedByRole: $uploadedByRole, responseToDocumentId: $responseToDocumentId, appointmentId: $appointmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppointmentDocumentInputImpl &&
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
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reviewStatus, reviewStatus) ||
                other.reviewStatus == reviewStatus) &&
            (identical(other.reviewNotes, reviewNotes) ||
                other.reviewNotes == reviewNotes) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.reviewedBy, reviewedBy) ||
                other.reviewedBy == reviewedBy) &&
            (identical(other.uploadedByRole, uploadedByRole) ||
                other.uploadedByRole == uploadedByRole) &&
            (identical(other.responseToDocumentId, responseToDocumentId) ||
                other.responseToDocumentId == responseToDocumentId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fileName,
      originalName,
      fileSize,
      mimeType,
      fileUrl,
      storagePath,
      description,
      reviewStatus,
      reviewNotes,
      reviewedAt,
      reviewedBy,
      uploadedByRole,
      responseToDocumentId,
      appointmentId);

  /// Create a copy of UpdateAppointmentDocumentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAppointmentDocumentInputImplCopyWith<
          _$UpdateAppointmentDocumentInputImpl>
      get copyWith => __$$UpdateAppointmentDocumentInputImplCopyWithImpl<
          _$UpdateAppointmentDocumentInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAppointmentDocumentInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateAppointmentDocumentInput
    implements UpdateAppointmentDocumentInput {
  const factory _UpdateAppointmentDocumentInput(
      {final String? fileName,
      final String? originalName,
      final int? fileSize,
      final String? mimeType,
      final String? fileUrl,
      final String? storagePath,
      final String? description,
      final DocumentReviewStatus? reviewStatus,
      final String? reviewNotes,
      final DateTime? reviewedAt,
      final String? reviewedBy,
      final DocumentUploadRole? uploadedByRole,
      final String? responseToDocumentId,
      final String? appointmentId}) = _$UpdateAppointmentDocumentInputImpl;

  factory _UpdateAppointmentDocumentInput.fromJson(Map<String, dynamic> json) =
      _$UpdateAppointmentDocumentInputImpl.fromJson;

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
  String? get description;
  @override
  DocumentReviewStatus? get reviewStatus;
  @override
  String? get reviewNotes;
  @override
  DateTime? get reviewedAt;
  @override
  String? get reviewedBy;
  @override
  DocumentUploadRole? get uploadedByRole;
  @override
  String? get responseToDocumentId;
  @override
  String? get appointmentId;

  /// Create a copy of UpdateAppointmentDocumentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAppointmentDocumentInputImplCopyWith<
          _$UpdateAppointmentDocumentInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppointmentDocumentWhereUniqueInput
    _$AppointmentDocumentWhereUniqueInputFromJson(Map<String, dynamic> json) {
  return _AppointmentDocumentWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$AppointmentDocumentWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this AppointmentDocumentWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentDocumentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentDocumentWhereUniqueInputCopyWith<
          AppointmentDocumentWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDocumentWhereUniqueInputCopyWith<$Res> {
  factory $AppointmentDocumentWhereUniqueInputCopyWith(
          AppointmentDocumentWhereUniqueInput value,
          $Res Function(AppointmentDocumentWhereUniqueInput) then) =
      _$AppointmentDocumentWhereUniqueInputCopyWithImpl<$Res,
          AppointmentDocumentWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$AppointmentDocumentWhereUniqueInputCopyWithImpl<$Res,
        $Val extends AppointmentDocumentWhereUniqueInput>
    implements $AppointmentDocumentWhereUniqueInputCopyWith<$Res> {
  _$AppointmentDocumentWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentDocumentWhereUniqueInput
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
abstract class _$$AppointmentDocumentWhereUniqueInputImplCopyWith<$Res>
    implements $AppointmentDocumentWhereUniqueInputCopyWith<$Res> {
  factory _$$AppointmentDocumentWhereUniqueInputImplCopyWith(
          _$AppointmentDocumentWhereUniqueInputImpl value,
          $Res Function(_$AppointmentDocumentWhereUniqueInputImpl) then) =
      __$$AppointmentDocumentWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$AppointmentDocumentWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$AppointmentDocumentWhereUniqueInputCopyWithImpl<$Res,
        _$AppointmentDocumentWhereUniqueInputImpl>
    implements _$$AppointmentDocumentWhereUniqueInputImplCopyWith<$Res> {
  __$$AppointmentDocumentWhereUniqueInputImplCopyWithImpl(
      _$AppointmentDocumentWhereUniqueInputImpl _value,
      $Res Function(_$AppointmentDocumentWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDocumentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$AppointmentDocumentWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentDocumentWhereUniqueInputImpl
    implements _AppointmentDocumentWhereUniqueInput {
  const _$AppointmentDocumentWhereUniqueInputImpl({this.id});

  factory _$AppointmentDocumentWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AppointmentDocumentWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'AppointmentDocumentWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentDocumentWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AppointmentDocumentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentDocumentWhereUniqueInputImplCopyWith<
          _$AppointmentDocumentWhereUniqueInputImpl>
      get copyWith => __$$AppointmentDocumentWhereUniqueInputImplCopyWithImpl<
          _$AppointmentDocumentWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentDocumentWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _AppointmentDocumentWhereUniqueInput
    implements AppointmentDocumentWhereUniqueInput {
  const factory _AppointmentDocumentWhereUniqueInput({final String? id}) =
      _$AppointmentDocumentWhereUniqueInputImpl;

  factory _AppointmentDocumentWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$AppointmentDocumentWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of AppointmentDocumentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentDocumentWhereUniqueInputImplCopyWith<
          _$AppointmentDocumentWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppointmentDocumentWhereInput _$AppointmentDocumentWhereInputFromJson(
    Map<String, dynamic> json) {
  return _AppointmentDocumentWhereInput.fromJson(json);
}

/// @nodoc
mixin _$AppointmentDocumentWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get fileName => throw _privateConstructorUsedError;
  StringFilter? get originalName => throw _privateConstructorUsedError;
  IntFilter? get fileSize => throw _privateConstructorUsedError;
  StringFilter? get mimeType => throw _privateConstructorUsedError;
  StringFilter? get fileUrl => throw _privateConstructorUsedError;
  StringFilter? get storagePath => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  DocumentReviewStatusFilter? get reviewStatus =>
      throw _privateConstructorUsedError;
  StringFilter? get reviewNotes => throw _privateConstructorUsedError;
  DateTimeFilter? get reviewedAt => throw _privateConstructorUsedError;
  StringFilter? get reviewedBy => throw _privateConstructorUsedError;
  DocumentUploadRoleFilter? get uploadedByRole =>
      throw _privateConstructorUsedError;
  StringFilter? get responseToDocumentId => throw _privateConstructorUsedError;

  /// Filter by responseToDocument relation
  AppointmentDocumentRelationFilter? get responseToDocument =>
      throw _privateConstructorUsedError;

  /// Filter by responseDocuments relation
  AppointmentDocumentListRelationFilter? get responseDocuments =>
      throw _privateConstructorUsedError;

  /// Filter by appointment relation
  AppointmentRelationFilter? get appointment =>
      throw _privateConstructorUsedError;
  StringFilter? get appointmentId => throw _privateConstructorUsedError;
  DateTimeFilter? get uploadedAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<AppointmentDocumentWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<AppointmentDocumentWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  AppointmentDocumentWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this AppointmentDocumentWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentDocumentWhereInputCopyWith<AppointmentDocumentWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDocumentWhereInputCopyWith<$Res> {
  factory $AppointmentDocumentWhereInputCopyWith(
          AppointmentDocumentWhereInput value,
          $Res Function(AppointmentDocumentWhereInput) then) =
      _$AppointmentDocumentWhereInputCopyWithImpl<$Res,
          AppointmentDocumentWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? fileName,
      StringFilter? originalName,
      IntFilter? fileSize,
      StringFilter? mimeType,
      StringFilter? fileUrl,
      StringFilter? storagePath,
      StringFilter? description,
      DocumentReviewStatusFilter? reviewStatus,
      StringFilter? reviewNotes,
      DateTimeFilter? reviewedAt,
      StringFilter? reviewedBy,
      DocumentUploadRoleFilter? uploadedByRole,
      StringFilter? responseToDocumentId,
      AppointmentDocumentRelationFilter? responseToDocument,
      AppointmentDocumentListRelationFilter? responseDocuments,
      AppointmentRelationFilter? appointment,
      StringFilter? appointmentId,
      DateTimeFilter? uploadedAt,
      DateTimeFilter? updatedAt,
      List<AppointmentDocumentWhereInput>? AND,
      List<AppointmentDocumentWhereInput>? OR,
      AppointmentDocumentWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get fileName;
  $StringFilterCopyWith<$Res>? get originalName;
  $IntFilterCopyWith<$Res>? get fileSize;
  $StringFilterCopyWith<$Res>? get mimeType;
  $StringFilterCopyWith<$Res>? get fileUrl;
  $StringFilterCopyWith<$Res>? get storagePath;
  $StringFilterCopyWith<$Res>? get description;
  $DocumentReviewStatusFilterCopyWith<$Res>? get reviewStatus;
  $StringFilterCopyWith<$Res>? get reviewNotes;
  $DateTimeFilterCopyWith<$Res>? get reviewedAt;
  $StringFilterCopyWith<$Res>? get reviewedBy;
  $DocumentUploadRoleFilterCopyWith<$Res>? get uploadedByRole;
  $StringFilterCopyWith<$Res>? get responseToDocumentId;
  $AppointmentDocumentRelationFilterCopyWith<$Res>? get responseToDocument;
  $AppointmentDocumentListRelationFilterCopyWith<$Res>? get responseDocuments;
  $AppointmentRelationFilterCopyWith<$Res>? get appointment;
  $StringFilterCopyWith<$Res>? get appointmentId;
  $DateTimeFilterCopyWith<$Res>? get uploadedAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $AppointmentDocumentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$AppointmentDocumentWhereInputCopyWithImpl<$Res,
        $Val extends AppointmentDocumentWhereInput>
    implements $AppointmentDocumentWhereInputCopyWith<$Res> {
  _$AppointmentDocumentWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentDocumentWhereInput
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
    Object? description = freezed,
    Object? reviewStatus = freezed,
    Object? reviewNotes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedBy = freezed,
    Object? uploadedByRole = freezed,
    Object? responseToDocumentId = freezed,
    Object? responseToDocument = freezed,
    Object? responseDocuments = freezed,
    Object? appointment = freezed,
    Object? appointmentId = freezed,
    Object? uploadedAt = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reviewStatus: freezed == reviewStatus
          ? _value.reviewStatus
          : reviewStatus // ignore: cast_nullable_to_non_nullable
              as DocumentReviewStatusFilter?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      uploadedByRole: freezed == uploadedByRole
          ? _value.uploadedByRole
          : uploadedByRole // ignore: cast_nullable_to_non_nullable
              as DocumentUploadRoleFilter?,
      responseToDocumentId: freezed == responseToDocumentId
          ? _value.responseToDocumentId
          : responseToDocumentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      responseToDocument: freezed == responseToDocument
          ? _value.responseToDocument
          : responseToDocument // ignore: cast_nullable_to_non_nullable
              as AppointmentDocumentRelationFilter?,
      responseDocuments: freezed == responseDocuments
          ? _value.responseDocuments
          : responseDocuments // ignore: cast_nullable_to_non_nullable
              as AppointmentDocumentListRelationFilter?,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentRelationFilter?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<AppointmentDocumentWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<AppointmentDocumentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as AppointmentDocumentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AppointmentDocumentWhereInput
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

  /// Create a copy of AppointmentDocumentWhereInput
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

  /// Create a copy of AppointmentDocumentWhereInput
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

  /// Create a copy of AppointmentDocumentWhereInput
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

  /// Create a copy of AppointmentDocumentWhereInput
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

  /// Create a copy of AppointmentDocumentWhereInput
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

  /// Create a copy of AppointmentDocumentWhereInput
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

  /// Create a copy of AppointmentDocumentWhereInput
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

  /// Create a copy of AppointmentDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentReviewStatusFilterCopyWith<$Res>? get reviewStatus {
    if (_value.reviewStatus == null) {
      return null;
    }

    return $DocumentReviewStatusFilterCopyWith<$Res>(_value.reviewStatus!,
        (value) {
      return _then(_value.copyWith(reviewStatus: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get reviewNotes {
    if (_value.reviewNotes == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.reviewNotes!, (value) {
      return _then(_value.copyWith(reviewNotes: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get reviewedAt {
    if (_value.reviewedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.reviewedAt!, (value) {
      return _then(_value.copyWith(reviewedAt: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get reviewedBy {
    if (_value.reviewedBy == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.reviewedBy!, (value) {
      return _then(_value.copyWith(reviewedBy: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentUploadRoleFilterCopyWith<$Res>? get uploadedByRole {
    if (_value.uploadedByRole == null) {
      return null;
    }

    return $DocumentUploadRoleFilterCopyWith<$Res>(_value.uploadedByRole!,
        (value) {
      return _then(_value.copyWith(uploadedByRole: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get responseToDocumentId {
    if (_value.responseToDocumentId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.responseToDocumentId!, (value) {
      return _then(_value.copyWith(responseToDocumentId: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentDocumentRelationFilterCopyWith<$Res>? get responseToDocument {
    if (_value.responseToDocument == null) {
      return null;
    }

    return $AppointmentDocumentRelationFilterCopyWith<$Res>(
        _value.responseToDocument!, (value) {
      return _then(_value.copyWith(responseToDocument: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentDocumentListRelationFilterCopyWith<$Res>? get responseDocuments {
    if (_value.responseDocuments == null) {
      return null;
    }

    return $AppointmentDocumentListRelationFilterCopyWith<$Res>(
        _value.responseDocuments!, (value) {
      return _then(_value.copyWith(responseDocuments: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentRelationFilterCopyWith<$Res>? get appointment {
    if (_value.appointment == null) {
      return null;
    }

    return $AppointmentRelationFilterCopyWith<$Res>(_value.appointment!,
        (value) {
      return _then(_value.copyWith(appointment: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get appointmentId {
    if (_value.appointmentId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.appointmentId!, (value) {
      return _then(_value.copyWith(appointmentId: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDocumentWhereInput
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

  /// Create a copy of AppointmentDocumentWhereInput
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

  /// Create a copy of AppointmentDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentDocumentWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $AppointmentDocumentWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentDocumentWhereInputImplCopyWith<$Res>
    implements $AppointmentDocumentWhereInputCopyWith<$Res> {
  factory _$$AppointmentDocumentWhereInputImplCopyWith(
          _$AppointmentDocumentWhereInputImpl value,
          $Res Function(_$AppointmentDocumentWhereInputImpl) then) =
      __$$AppointmentDocumentWhereInputImplCopyWithImpl<$Res>;
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
      StringFilter? description,
      DocumentReviewStatusFilter? reviewStatus,
      StringFilter? reviewNotes,
      DateTimeFilter? reviewedAt,
      StringFilter? reviewedBy,
      DocumentUploadRoleFilter? uploadedByRole,
      StringFilter? responseToDocumentId,
      AppointmentDocumentRelationFilter? responseToDocument,
      AppointmentDocumentListRelationFilter? responseDocuments,
      AppointmentRelationFilter? appointment,
      StringFilter? appointmentId,
      DateTimeFilter? uploadedAt,
      DateTimeFilter? updatedAt,
      List<AppointmentDocumentWhereInput>? AND,
      List<AppointmentDocumentWhereInput>? OR,
      AppointmentDocumentWhereInput? NOT});

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
  $StringFilterCopyWith<$Res>? get description;
  @override
  $DocumentReviewStatusFilterCopyWith<$Res>? get reviewStatus;
  @override
  $StringFilterCopyWith<$Res>? get reviewNotes;
  @override
  $DateTimeFilterCopyWith<$Res>? get reviewedAt;
  @override
  $StringFilterCopyWith<$Res>? get reviewedBy;
  @override
  $DocumentUploadRoleFilterCopyWith<$Res>? get uploadedByRole;
  @override
  $StringFilterCopyWith<$Res>? get responseToDocumentId;
  @override
  $AppointmentDocumentRelationFilterCopyWith<$Res>? get responseToDocument;
  @override
  $AppointmentDocumentListRelationFilterCopyWith<$Res>? get responseDocuments;
  @override
  $AppointmentRelationFilterCopyWith<$Res>? get appointment;
  @override
  $StringFilterCopyWith<$Res>? get appointmentId;
  @override
  $DateTimeFilterCopyWith<$Res>? get uploadedAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $AppointmentDocumentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$AppointmentDocumentWhereInputImplCopyWithImpl<$Res>
    extends _$AppointmentDocumentWhereInputCopyWithImpl<$Res,
        _$AppointmentDocumentWhereInputImpl>
    implements _$$AppointmentDocumentWhereInputImplCopyWith<$Res> {
  __$$AppointmentDocumentWhereInputImplCopyWithImpl(
      _$AppointmentDocumentWhereInputImpl _value,
      $Res Function(_$AppointmentDocumentWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDocumentWhereInput
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
    Object? description = freezed,
    Object? reviewStatus = freezed,
    Object? reviewNotes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedBy = freezed,
    Object? uploadedByRole = freezed,
    Object? responseToDocumentId = freezed,
    Object? responseToDocument = freezed,
    Object? responseDocuments = freezed,
    Object? appointment = freezed,
    Object? appointmentId = freezed,
    Object? uploadedAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$AppointmentDocumentWhereInputImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reviewStatus: freezed == reviewStatus
          ? _value.reviewStatus
          : reviewStatus // ignore: cast_nullable_to_non_nullable
              as DocumentReviewStatusFilter?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      uploadedByRole: freezed == uploadedByRole
          ? _value.uploadedByRole
          : uploadedByRole // ignore: cast_nullable_to_non_nullable
              as DocumentUploadRoleFilter?,
      responseToDocumentId: freezed == responseToDocumentId
          ? _value.responseToDocumentId
          : responseToDocumentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      responseToDocument: freezed == responseToDocument
          ? _value.responseToDocument
          : responseToDocument // ignore: cast_nullable_to_non_nullable
              as AppointmentDocumentRelationFilter?,
      responseDocuments: freezed == responseDocuments
          ? _value.responseDocuments
          : responseDocuments // ignore: cast_nullable_to_non_nullable
              as AppointmentDocumentListRelationFilter?,
      appointment: freezed == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as AppointmentRelationFilter?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<AppointmentDocumentWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<AppointmentDocumentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as AppointmentDocumentWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AppointmentDocumentWhereInputImpl
    implements _AppointmentDocumentWhereInput {
  const _$AppointmentDocumentWhereInputImpl(
      {this.id,
      this.fileName,
      this.originalName,
      this.fileSize,
      this.mimeType,
      this.fileUrl,
      this.storagePath,
      this.description,
      this.reviewStatus,
      this.reviewNotes,
      this.reviewedAt,
      this.reviewedBy,
      this.uploadedByRole,
      this.responseToDocumentId,
      this.responseToDocument,
      this.responseDocuments,
      this.appointment,
      this.appointmentId,
      this.uploadedAt,
      this.updatedAt,
      final List<AppointmentDocumentWhereInput>? AND,
      final List<AppointmentDocumentWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$AppointmentDocumentWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AppointmentDocumentWhereInputImplFromJson(json);

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
  @override
  final StringFilter? description;
  @override
  final DocumentReviewStatusFilter? reviewStatus;
  @override
  final StringFilter? reviewNotes;
  @override
  final DateTimeFilter? reviewedAt;
  @override
  final StringFilter? reviewedBy;
  @override
  final DocumentUploadRoleFilter? uploadedByRole;
  @override
  final StringFilter? responseToDocumentId;

  /// Filter by responseToDocument relation
  @override
  final AppointmentDocumentRelationFilter? responseToDocument;

  /// Filter by responseDocuments relation
  @override
  final AppointmentDocumentListRelationFilter? responseDocuments;

  /// Filter by appointment relation
  @override
  final AppointmentRelationFilter? appointment;
  @override
  final StringFilter? appointmentId;
  @override
  final DateTimeFilter? uploadedAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<AppointmentDocumentWhereInput>? _AND;
  @override
  List<AppointmentDocumentWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AppointmentDocumentWhereInput>? _OR;
  @override
  List<AppointmentDocumentWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AppointmentDocumentWhereInput? NOT;

  @override
  String toString() {
    return 'AppointmentDocumentWhereInput(id: $id, fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, description: $description, reviewStatus: $reviewStatus, reviewNotes: $reviewNotes, reviewedAt: $reviewedAt, reviewedBy: $reviewedBy, uploadedByRole: $uploadedByRole, responseToDocumentId: $responseToDocumentId, responseToDocument: $responseToDocument, responseDocuments: $responseDocuments, appointment: $appointment, appointmentId: $appointmentId, uploadedAt: $uploadedAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentDocumentWhereInputImpl &&
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
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reviewStatus, reviewStatus) ||
                other.reviewStatus == reviewStatus) &&
            (identical(other.reviewNotes, reviewNotes) ||
                other.reviewNotes == reviewNotes) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.reviewedBy, reviewedBy) ||
                other.reviewedBy == reviewedBy) &&
            (identical(other.uploadedByRole, uploadedByRole) ||
                other.uploadedByRole == uploadedByRole) &&
            (identical(other.responseToDocumentId, responseToDocumentId) ||
                other.responseToDocumentId == responseToDocumentId) &&
            (identical(other.responseToDocument, responseToDocument) ||
                other.responseToDocument == responseToDocument) &&
            (identical(other.responseDocuments, responseDocuments) ||
                other.responseDocuments == responseDocuments) &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt) &&
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
        fileName,
        originalName,
        fileSize,
        mimeType,
        fileUrl,
        storagePath,
        description,
        reviewStatus,
        reviewNotes,
        reviewedAt,
        reviewedBy,
        uploadedByRole,
        responseToDocumentId,
        responseToDocument,
        responseDocuments,
        appointment,
        appointmentId,
        uploadedAt,
        updatedAt,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of AppointmentDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentDocumentWhereInputImplCopyWith<
          _$AppointmentDocumentWhereInputImpl>
      get copyWith => __$$AppointmentDocumentWhereInputImplCopyWithImpl<
          _$AppointmentDocumentWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentDocumentWhereInputImplToJson(
      this,
    );
  }
}

abstract class _AppointmentDocumentWhereInput
    implements AppointmentDocumentWhereInput {
  const factory _AppointmentDocumentWhereInput(
          {final StringFilter? id,
          final StringFilter? fileName,
          final StringFilter? originalName,
          final IntFilter? fileSize,
          final StringFilter? mimeType,
          final StringFilter? fileUrl,
          final StringFilter? storagePath,
          final StringFilter? description,
          final DocumentReviewStatusFilter? reviewStatus,
          final StringFilter? reviewNotes,
          final DateTimeFilter? reviewedAt,
          final StringFilter? reviewedBy,
          final DocumentUploadRoleFilter? uploadedByRole,
          final StringFilter? responseToDocumentId,
          final AppointmentDocumentRelationFilter? responseToDocument,
          final AppointmentDocumentListRelationFilter? responseDocuments,
          final AppointmentRelationFilter? appointment,
          final StringFilter? appointmentId,
          final DateTimeFilter? uploadedAt,
          final DateTimeFilter? updatedAt,
          final List<AppointmentDocumentWhereInput>? AND,
          final List<AppointmentDocumentWhereInput>? OR,
          final AppointmentDocumentWhereInput? NOT}) =
      _$AppointmentDocumentWhereInputImpl;

  factory _AppointmentDocumentWhereInput.fromJson(Map<String, dynamic> json) =
      _$AppointmentDocumentWhereInputImpl.fromJson;

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
  @override
  StringFilter? get description;
  @override
  DocumentReviewStatusFilter? get reviewStatus;
  @override
  StringFilter? get reviewNotes;
  @override
  DateTimeFilter? get reviewedAt;
  @override
  StringFilter? get reviewedBy;
  @override
  DocumentUploadRoleFilter? get uploadedByRole;
  @override
  StringFilter? get responseToDocumentId;

  /// Filter by responseToDocument relation
  @override
  AppointmentDocumentRelationFilter? get responseToDocument;

  /// Filter by responseDocuments relation
  @override
  AppointmentDocumentListRelationFilter? get responseDocuments;

  /// Filter by appointment relation
  @override
  AppointmentRelationFilter? get appointment;
  @override
  StringFilter? get appointmentId;
  @override
  DateTimeFilter? get uploadedAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<AppointmentDocumentWhereInput>? get AND;
  @override
  List<AppointmentDocumentWhereInput>? get OR;
  @override
  AppointmentDocumentWhereInput? get NOT;

  /// Create a copy of AppointmentDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentDocumentWhereInputImplCopyWith<
          _$AppointmentDocumentWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppointmentDocumentListRelationFilter
    _$AppointmentDocumentListRelationFilterFromJson(Map<String, dynamic> json) {
  return _AppointmentDocumentListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$AppointmentDocumentListRelationFilter {
  /// At least one related record matches
  AppointmentDocumentWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  AppointmentDocumentWhereInput? get every =>
      throw _privateConstructorUsedError;

  /// No related records match
  AppointmentDocumentWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this AppointmentDocumentListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentDocumentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentDocumentListRelationFilterCopyWith<
          AppointmentDocumentListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDocumentListRelationFilterCopyWith<$Res> {
  factory $AppointmentDocumentListRelationFilterCopyWith(
          AppointmentDocumentListRelationFilter value,
          $Res Function(AppointmentDocumentListRelationFilter) then) =
      _$AppointmentDocumentListRelationFilterCopyWithImpl<$Res,
          AppointmentDocumentListRelationFilter>;
  @useResult
  $Res call(
      {AppointmentDocumentWhereInput? some,
      AppointmentDocumentWhereInput? every,
      AppointmentDocumentWhereInput? none});

  $AppointmentDocumentWhereInputCopyWith<$Res>? get some;
  $AppointmentDocumentWhereInputCopyWith<$Res>? get every;
  $AppointmentDocumentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$AppointmentDocumentListRelationFilterCopyWithImpl<$Res,
        $Val extends AppointmentDocumentListRelationFilter>
    implements $AppointmentDocumentListRelationFilterCopyWith<$Res> {
  _$AppointmentDocumentListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentDocumentListRelationFilter
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
              as AppointmentDocumentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as AppointmentDocumentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as AppointmentDocumentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AppointmentDocumentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentDocumentWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $AppointmentDocumentWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDocumentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentDocumentWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $AppointmentDocumentWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDocumentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentDocumentWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $AppointmentDocumentWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentDocumentListRelationFilterImplCopyWith<$Res>
    implements $AppointmentDocumentListRelationFilterCopyWith<$Res> {
  factory _$$AppointmentDocumentListRelationFilterImplCopyWith(
          _$AppointmentDocumentListRelationFilterImpl value,
          $Res Function(_$AppointmentDocumentListRelationFilterImpl) then) =
      __$$AppointmentDocumentListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppointmentDocumentWhereInput? some,
      AppointmentDocumentWhereInput? every,
      AppointmentDocumentWhereInput? none});

  @override
  $AppointmentDocumentWhereInputCopyWith<$Res>? get some;
  @override
  $AppointmentDocumentWhereInputCopyWith<$Res>? get every;
  @override
  $AppointmentDocumentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$AppointmentDocumentListRelationFilterImplCopyWithImpl<$Res>
    extends _$AppointmentDocumentListRelationFilterCopyWithImpl<$Res,
        _$AppointmentDocumentListRelationFilterImpl>
    implements _$$AppointmentDocumentListRelationFilterImplCopyWith<$Res> {
  __$$AppointmentDocumentListRelationFilterImplCopyWithImpl(
      _$AppointmentDocumentListRelationFilterImpl _value,
      $Res Function(_$AppointmentDocumentListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDocumentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$AppointmentDocumentListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as AppointmentDocumentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as AppointmentDocumentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as AppointmentDocumentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentDocumentListRelationFilterImpl
    implements _AppointmentDocumentListRelationFilter {
  const _$AppointmentDocumentListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$AppointmentDocumentListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AppointmentDocumentListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final AppointmentDocumentWhereInput? some;

  /// All related records match
  @override
  final AppointmentDocumentWhereInput? every;

  /// No related records match
  @override
  final AppointmentDocumentWhereInput? none;

  @override
  String toString() {
    return 'AppointmentDocumentListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentDocumentListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of AppointmentDocumentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentDocumentListRelationFilterImplCopyWith<
          _$AppointmentDocumentListRelationFilterImpl>
      get copyWith => __$$AppointmentDocumentListRelationFilterImplCopyWithImpl<
          _$AppointmentDocumentListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentDocumentListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _AppointmentDocumentListRelationFilter
    implements AppointmentDocumentListRelationFilter {
  const factory _AppointmentDocumentListRelationFilter(
          {final AppointmentDocumentWhereInput? some,
          final AppointmentDocumentWhereInput? every,
          final AppointmentDocumentWhereInput? none}) =
      _$AppointmentDocumentListRelationFilterImpl;

  factory _AppointmentDocumentListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$AppointmentDocumentListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  AppointmentDocumentWhereInput? get some;

  /// All related records match
  @override
  AppointmentDocumentWhereInput? get every;

  /// No related records match
  @override
  AppointmentDocumentWhereInput? get none;

  /// Create a copy of AppointmentDocumentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentDocumentListRelationFilterImplCopyWith<
          _$AppointmentDocumentListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppointmentDocumentRelationFilter _$AppointmentDocumentRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _AppointmentDocumentRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$AppointmentDocumentRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  AppointmentDocumentWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  AppointmentDocumentWhereInput? get isNot =>
      throw _privateConstructorUsedError;

  /// Serializes this AppointmentDocumentRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentDocumentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentDocumentRelationFilterCopyWith<AppointmentDocumentRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDocumentRelationFilterCopyWith<$Res> {
  factory $AppointmentDocumentRelationFilterCopyWith(
          AppointmentDocumentRelationFilter value,
          $Res Function(AppointmentDocumentRelationFilter) then) =
      _$AppointmentDocumentRelationFilterCopyWithImpl<$Res,
          AppointmentDocumentRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') AppointmentDocumentWhereInput? is_,
      AppointmentDocumentWhereInput? isNot});

  $AppointmentDocumentWhereInputCopyWith<$Res>? get is_;
  $AppointmentDocumentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$AppointmentDocumentRelationFilterCopyWithImpl<$Res,
        $Val extends AppointmentDocumentRelationFilter>
    implements $AppointmentDocumentRelationFilterCopyWith<$Res> {
  _$AppointmentDocumentRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentDocumentRelationFilter
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
              as AppointmentDocumentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as AppointmentDocumentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AppointmentDocumentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentDocumentWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $AppointmentDocumentWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of AppointmentDocumentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentDocumentWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $AppointmentDocumentWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentDocumentRelationFilterImplCopyWith<$Res>
    implements $AppointmentDocumentRelationFilterCopyWith<$Res> {
  factory _$$AppointmentDocumentRelationFilterImplCopyWith(
          _$AppointmentDocumentRelationFilterImpl value,
          $Res Function(_$AppointmentDocumentRelationFilterImpl) then) =
      __$$AppointmentDocumentRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') AppointmentDocumentWhereInput? is_,
      AppointmentDocumentWhereInput? isNot});

  @override
  $AppointmentDocumentWhereInputCopyWith<$Res>? get is_;
  @override
  $AppointmentDocumentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$AppointmentDocumentRelationFilterImplCopyWithImpl<$Res>
    extends _$AppointmentDocumentRelationFilterCopyWithImpl<$Res,
        _$AppointmentDocumentRelationFilterImpl>
    implements _$$AppointmentDocumentRelationFilterImplCopyWith<$Res> {
  __$$AppointmentDocumentRelationFilterImplCopyWithImpl(
      _$AppointmentDocumentRelationFilterImpl _value,
      $Res Function(_$AppointmentDocumentRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDocumentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$AppointmentDocumentRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as AppointmentDocumentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as AppointmentDocumentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentDocumentRelationFilterImpl
    implements _AppointmentDocumentRelationFilter {
  const _$AppointmentDocumentRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$AppointmentDocumentRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AppointmentDocumentRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final AppointmentDocumentWhereInput? is_;

  /// Related record does not match
  @override
  final AppointmentDocumentWhereInput? isNot;

  @override
  String toString() {
    return 'AppointmentDocumentRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentDocumentRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of AppointmentDocumentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentDocumentRelationFilterImplCopyWith<
          _$AppointmentDocumentRelationFilterImpl>
      get copyWith => __$$AppointmentDocumentRelationFilterImplCopyWithImpl<
          _$AppointmentDocumentRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentDocumentRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _AppointmentDocumentRelationFilter
    implements AppointmentDocumentRelationFilter {
  const factory _AppointmentDocumentRelationFilter(
          {@JsonKey(name: 'is') final AppointmentDocumentWhereInput? is_,
          final AppointmentDocumentWhereInput? isNot}) =
      _$AppointmentDocumentRelationFilterImpl;

  factory _AppointmentDocumentRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$AppointmentDocumentRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  AppointmentDocumentWhereInput? get is_;

  /// Related record does not match
  @override
  AppointmentDocumentWhereInput? get isNot;

  /// Create a copy of AppointmentDocumentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentDocumentRelationFilterImplCopyWith<
          _$AppointmentDocumentRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppointmentDocumentOrderByInput _$AppointmentDocumentOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _AppointmentDocumentOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$AppointmentDocumentOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get fileName => throw _privateConstructorUsedError;
  SortOrder? get originalName => throw _privateConstructorUsedError;
  SortOrder? get fileSize => throw _privateConstructorUsedError;
  SortOrder? get mimeType => throw _privateConstructorUsedError;
  SortOrder? get fileUrl => throw _privateConstructorUsedError;
  SortOrder? get storagePath => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get reviewNotes => throw _privateConstructorUsedError;
  SortOrder? get reviewedAt => throw _privateConstructorUsedError;
  SortOrder? get reviewedBy => throw _privateConstructorUsedError;
  SortOrder? get responseToDocumentId => throw _privateConstructorUsedError;
  SortOrder? get appointmentId => throw _privateConstructorUsedError;
  SortOrder? get uploadedAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AppointmentDocumentOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentDocumentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentDocumentOrderByInputCopyWith<AppointmentDocumentOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDocumentOrderByInputCopyWith<$Res> {
  factory $AppointmentDocumentOrderByInputCopyWith(
          AppointmentDocumentOrderByInput value,
          $Res Function(AppointmentDocumentOrderByInput) then) =
      _$AppointmentDocumentOrderByInputCopyWithImpl<$Res,
          AppointmentDocumentOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? fileName,
      SortOrder? originalName,
      SortOrder? fileSize,
      SortOrder? mimeType,
      SortOrder? fileUrl,
      SortOrder? storagePath,
      SortOrder? description,
      SortOrder? reviewNotes,
      SortOrder? reviewedAt,
      SortOrder? reviewedBy,
      SortOrder? responseToDocumentId,
      SortOrder? appointmentId,
      SortOrder? uploadedAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$AppointmentDocumentOrderByInputCopyWithImpl<$Res,
        $Val extends AppointmentDocumentOrderByInput>
    implements $AppointmentDocumentOrderByInputCopyWith<$Res> {
  _$AppointmentDocumentOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentDocumentOrderByInput
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
    Object? description = freezed,
    Object? reviewNotes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedBy = freezed,
    Object? responseToDocumentId = freezed,
    Object? appointmentId = freezed,
    Object? uploadedAt = freezed,
    Object? updatedAt = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      responseToDocumentId: freezed == responseToDocumentId
          ? _value.responseToDocumentId
          : responseToDocumentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentDocumentOrderByInputImplCopyWith<$Res>
    implements $AppointmentDocumentOrderByInputCopyWith<$Res> {
  factory _$$AppointmentDocumentOrderByInputImplCopyWith(
          _$AppointmentDocumentOrderByInputImpl value,
          $Res Function(_$AppointmentDocumentOrderByInputImpl) then) =
      __$$AppointmentDocumentOrderByInputImplCopyWithImpl<$Res>;
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
      SortOrder? description,
      SortOrder? reviewNotes,
      SortOrder? reviewedAt,
      SortOrder? reviewedBy,
      SortOrder? responseToDocumentId,
      SortOrder? appointmentId,
      SortOrder? uploadedAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$AppointmentDocumentOrderByInputImplCopyWithImpl<$Res>
    extends _$AppointmentDocumentOrderByInputCopyWithImpl<$Res,
        _$AppointmentDocumentOrderByInputImpl>
    implements _$$AppointmentDocumentOrderByInputImplCopyWith<$Res> {
  __$$AppointmentDocumentOrderByInputImplCopyWithImpl(
      _$AppointmentDocumentOrderByInputImpl _value,
      $Res Function(_$AppointmentDocumentOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppointmentDocumentOrderByInput
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
    Object? description = freezed,
    Object? reviewNotes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedBy = freezed,
    Object? responseToDocumentId = freezed,
    Object? appointmentId = freezed,
    Object? uploadedAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AppointmentDocumentOrderByInputImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewedBy: freezed == reviewedBy
          ? _value.reviewedBy
          : reviewedBy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      responseToDocumentId: freezed == responseToDocumentId
          ? _value.responseToDocumentId
          : responseToDocumentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
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
class _$AppointmentDocumentOrderByInputImpl
    implements _AppointmentDocumentOrderByInput {
  const _$AppointmentDocumentOrderByInputImpl(
      {this.id,
      this.fileName,
      this.originalName,
      this.fileSize,
      this.mimeType,
      this.fileUrl,
      this.storagePath,
      this.description,
      this.reviewNotes,
      this.reviewedAt,
      this.reviewedBy,
      this.responseToDocumentId,
      this.appointmentId,
      this.uploadedAt,
      this.updatedAt});

  factory _$AppointmentDocumentOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AppointmentDocumentOrderByInputImplFromJson(json);

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
  final SortOrder? description;
  @override
  final SortOrder? reviewNotes;
  @override
  final SortOrder? reviewedAt;
  @override
  final SortOrder? reviewedBy;
  @override
  final SortOrder? responseToDocumentId;
  @override
  final SortOrder? appointmentId;
  @override
  final SortOrder? uploadedAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'AppointmentDocumentOrderByInput(id: $id, fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, description: $description, reviewNotes: $reviewNotes, reviewedAt: $reviewedAt, reviewedBy: $reviewedBy, responseToDocumentId: $responseToDocumentId, appointmentId: $appointmentId, uploadedAt: $uploadedAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentDocumentOrderByInputImpl &&
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
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reviewNotes, reviewNotes) ||
                other.reviewNotes == reviewNotes) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.reviewedBy, reviewedBy) ||
                other.reviewedBy == reviewedBy) &&
            (identical(other.responseToDocumentId, responseToDocumentId) ||
                other.responseToDocumentId == responseToDocumentId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
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
      description,
      reviewNotes,
      reviewedAt,
      reviewedBy,
      responseToDocumentId,
      appointmentId,
      uploadedAt,
      updatedAt);

  /// Create a copy of AppointmentDocumentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentDocumentOrderByInputImplCopyWith<
          _$AppointmentDocumentOrderByInputImpl>
      get copyWith => __$$AppointmentDocumentOrderByInputImplCopyWithImpl<
          _$AppointmentDocumentOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentDocumentOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _AppointmentDocumentOrderByInput
    implements AppointmentDocumentOrderByInput {
  const factory _AppointmentDocumentOrderByInput(
      {final SortOrder? id,
      final SortOrder? fileName,
      final SortOrder? originalName,
      final SortOrder? fileSize,
      final SortOrder? mimeType,
      final SortOrder? fileUrl,
      final SortOrder? storagePath,
      final SortOrder? description,
      final SortOrder? reviewNotes,
      final SortOrder? reviewedAt,
      final SortOrder? reviewedBy,
      final SortOrder? responseToDocumentId,
      final SortOrder? appointmentId,
      final SortOrder? uploadedAt,
      final SortOrder? updatedAt}) = _$AppointmentDocumentOrderByInputImpl;

  factory _AppointmentDocumentOrderByInput.fromJson(Map<String, dynamic> json) =
      _$AppointmentDocumentOrderByInputImpl.fromJson;

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
  SortOrder? get description;
  @override
  SortOrder? get reviewNotes;
  @override
  SortOrder? get reviewedAt;
  @override
  SortOrder? get reviewedBy;
  @override
  SortOrder? get responseToDocumentId;
  @override
  SortOrder? get appointmentId;
  @override
  SortOrder? get uploadedAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of AppointmentDocumentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentDocumentOrderByInputImplCopyWith<
          _$AppointmentDocumentOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
