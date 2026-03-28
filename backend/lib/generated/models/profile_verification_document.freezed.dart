// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_verification_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileVerificationDocument _$ProfileVerificationDocumentFromJson(
    Map<String, dynamic> json) {
  return _ProfileVerificationDocument.fromJson(json);
}

/// @nodoc
mixin _$ProfileVerificationDocument {
  String get id => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  String get originalName => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String get storagePath => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get isValid => throw _privateConstructorUsedError;
  String? get staffFeedback => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfileVerification? get verification =>
      throw _privateConstructorUsedError;
  String get verificationId => throw _privateConstructorUsedError;
  DateTime get uploadedAt => throw _privateConstructorUsedError;

  /// Serializes this ProfileVerificationDocument to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileVerificationDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileVerificationDocumentCopyWith<ProfileVerificationDocument>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileVerificationDocumentCopyWith<$Res> {
  factory $ProfileVerificationDocumentCopyWith(
          ProfileVerificationDocument value,
          $Res Function(ProfileVerificationDocument) then) =
      _$ProfileVerificationDocumentCopyWithImpl<$Res,
          ProfileVerificationDocument>;
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
      bool? isValid,
      String? staffFeedback,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfileVerification? verification,
      String verificationId,
      DateTime uploadedAt});

  $ConsultantProfileVerificationCopyWith<$Res>? get verification;
}

/// @nodoc
class _$ProfileVerificationDocumentCopyWithImpl<$Res,
        $Val extends ProfileVerificationDocument>
    implements $ProfileVerificationDocumentCopyWith<$Res> {
  _$ProfileVerificationDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileVerificationDocument
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
    Object? isValid = freezed,
    Object? staffFeedback = freezed,
    Object? verification = freezed,
    Object? verificationId = null,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      staffFeedback: freezed == staffFeedback
          ? _value.staffFeedback
          : staffFeedback // ignore: cast_nullable_to_non_nullable
              as String?,
      verification: freezed == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileVerification?,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      uploadedAt: null == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of ProfileVerificationDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileVerificationCopyWith<$Res>? get verification {
    if (_value.verification == null) {
      return null;
    }

    return $ConsultantProfileVerificationCopyWith<$Res>(_value.verification!,
        (value) {
      return _then(_value.copyWith(verification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileVerificationDocumentImplCopyWith<$Res>
    implements $ProfileVerificationDocumentCopyWith<$Res> {
  factory _$$ProfileVerificationDocumentImplCopyWith(
          _$ProfileVerificationDocumentImpl value,
          $Res Function(_$ProfileVerificationDocumentImpl) then) =
      __$$ProfileVerificationDocumentImplCopyWithImpl<$Res>;
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
      bool? isValid,
      String? staffFeedback,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfileVerification? verification,
      String verificationId,
      DateTime uploadedAt});

  @override
  $ConsultantProfileVerificationCopyWith<$Res>? get verification;
}

/// @nodoc
class __$$ProfileVerificationDocumentImplCopyWithImpl<$Res>
    extends _$ProfileVerificationDocumentCopyWithImpl<$Res,
        _$ProfileVerificationDocumentImpl>
    implements _$$ProfileVerificationDocumentImplCopyWith<$Res> {
  __$$ProfileVerificationDocumentImplCopyWithImpl(
      _$ProfileVerificationDocumentImpl _value,
      $Res Function(_$ProfileVerificationDocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileVerificationDocument
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
    Object? isValid = freezed,
    Object? staffFeedback = freezed,
    Object? verification = freezed,
    Object? verificationId = null,
    Object? uploadedAt = null,
  }) {
    return _then(_$ProfileVerificationDocumentImpl(
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
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      staffFeedback: freezed == staffFeedback
          ? _value.staffFeedback
          : staffFeedback // ignore: cast_nullable_to_non_nullable
              as String?,
      verification: freezed == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileVerification?,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
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
class _$ProfileVerificationDocumentImpl
    implements _ProfileVerificationDocument {
  const _$ProfileVerificationDocumentImpl(
      {required this.id,
      required this.fileName,
      required this.originalName,
      required this.fileSize,
      required this.mimeType,
      required this.fileUrl,
      required this.storagePath,
      this.description,
      this.isValid,
      this.staffFeedback,
      @JsonKey(includeFromJson: false, includeToJson: false) this.verification,
      required this.verificationId,
      required this.uploadedAt});

  factory _$ProfileVerificationDocumentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProfileVerificationDocumentImplFromJson(json);

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
  final bool? isValid;
  @override
  final String? staffFeedback;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfileVerification? verification;
  @override
  final String verificationId;
  @override
  final DateTime uploadedAt;

  @override
  String toString() {
    return 'ProfileVerificationDocument(id: $id, fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, description: $description, isValid: $isValid, staffFeedback: $staffFeedback, verification: $verification, verificationId: $verificationId, uploadedAt: $uploadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileVerificationDocumentImpl &&
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
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.staffFeedback, staffFeedback) ||
                other.staffFeedback == staffFeedback) &&
            (identical(other.verification, verification) ||
                other.verification == verification) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
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
      isValid,
      staffFeedback,
      verification,
      verificationId,
      uploadedAt);

  /// Create a copy of ProfileVerificationDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileVerificationDocumentImplCopyWith<_$ProfileVerificationDocumentImpl>
      get copyWith => __$$ProfileVerificationDocumentImplCopyWithImpl<
          _$ProfileVerificationDocumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileVerificationDocumentImplToJson(
      this,
    );
  }
}

abstract class _ProfileVerificationDocument
    implements ProfileVerificationDocument {
  const factory _ProfileVerificationDocument(
      {required final String id,
      required final String fileName,
      required final String originalName,
      required final int fileSize,
      required final String mimeType,
      required final String fileUrl,
      required final String storagePath,
      final String? description,
      final bool? isValid,
      final String? staffFeedback,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfileVerification? verification,
      required final String verificationId,
      required final DateTime uploadedAt}) = _$ProfileVerificationDocumentImpl;

  factory _ProfileVerificationDocument.fromJson(Map<String, dynamic> json) =
      _$ProfileVerificationDocumentImpl.fromJson;

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
  bool? get isValid;
  @override
  String? get staffFeedback;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfileVerification? get verification;
  @override
  String get verificationId;
  @override
  DateTime get uploadedAt;

  /// Create a copy of ProfileVerificationDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileVerificationDocumentImplCopyWith<_$ProfileVerificationDocumentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateProfileVerificationDocumentInput
    _$CreateProfileVerificationDocumentInputFromJson(
        Map<String, dynamic> json) {
  return _CreateProfileVerificationDocumentInput.fromJson(json);
}

/// @nodoc
mixin _$CreateProfileVerificationDocumentInput {
  String get fileName => throw _privateConstructorUsedError;
  String get originalName => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String get storagePath => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get isValid => throw _privateConstructorUsedError;
  String? get staffFeedback => throw _privateConstructorUsedError;
  String get verificationId => throw _privateConstructorUsedError;

  /// Serializes this CreateProfileVerificationDocumentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateProfileVerificationDocumentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateProfileVerificationDocumentInputCopyWith<
          CreateProfileVerificationDocumentInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProfileVerificationDocumentInputCopyWith<$Res> {
  factory $CreateProfileVerificationDocumentInputCopyWith(
          CreateProfileVerificationDocumentInput value,
          $Res Function(CreateProfileVerificationDocumentInput) then) =
      _$CreateProfileVerificationDocumentInputCopyWithImpl<$Res,
          CreateProfileVerificationDocumentInput>;
  @useResult
  $Res call(
      {String fileName,
      String originalName,
      int fileSize,
      String mimeType,
      String fileUrl,
      String storagePath,
      String? description,
      bool? isValid,
      String? staffFeedback,
      String verificationId});
}

/// @nodoc
class _$CreateProfileVerificationDocumentInputCopyWithImpl<$Res,
        $Val extends CreateProfileVerificationDocumentInput>
    implements $CreateProfileVerificationDocumentInputCopyWith<$Res> {
  _$CreateProfileVerificationDocumentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateProfileVerificationDocumentInput
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
    Object? isValid = freezed,
    Object? staffFeedback = freezed,
    Object? verificationId = null,
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
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      staffFeedback: freezed == staffFeedback
          ? _value.staffFeedback
          : staffFeedback // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateProfileVerificationDocumentInputImplCopyWith<$Res>
    implements $CreateProfileVerificationDocumentInputCopyWith<$Res> {
  factory _$$CreateProfileVerificationDocumentInputImplCopyWith(
          _$CreateProfileVerificationDocumentInputImpl value,
          $Res Function(_$CreateProfileVerificationDocumentInputImpl) then) =
      __$$CreateProfileVerificationDocumentInputImplCopyWithImpl<$Res>;
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
      bool? isValid,
      String? staffFeedback,
      String verificationId});
}

/// @nodoc
class __$$CreateProfileVerificationDocumentInputImplCopyWithImpl<$Res>
    extends _$CreateProfileVerificationDocumentInputCopyWithImpl<$Res,
        _$CreateProfileVerificationDocumentInputImpl>
    implements _$$CreateProfileVerificationDocumentInputImplCopyWith<$Res> {
  __$$CreateProfileVerificationDocumentInputImplCopyWithImpl(
      _$CreateProfileVerificationDocumentInputImpl _value,
      $Res Function(_$CreateProfileVerificationDocumentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateProfileVerificationDocumentInput
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
    Object? isValid = freezed,
    Object? staffFeedback = freezed,
    Object? verificationId = null,
  }) {
    return _then(_$CreateProfileVerificationDocumentInputImpl(
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
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      staffFeedback: freezed == staffFeedback
          ? _value.staffFeedback
          : staffFeedback // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateProfileVerificationDocumentInputImpl
    implements _CreateProfileVerificationDocumentInput {
  const _$CreateProfileVerificationDocumentInputImpl(
      {required this.fileName,
      required this.originalName,
      required this.fileSize,
      required this.mimeType,
      required this.fileUrl,
      required this.storagePath,
      this.description,
      this.isValid,
      this.staffFeedback,
      required this.verificationId});

  factory _$CreateProfileVerificationDocumentInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateProfileVerificationDocumentInputImplFromJson(json);

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
  final bool? isValid;
  @override
  final String? staffFeedback;
  @override
  final String verificationId;

  @override
  String toString() {
    return 'CreateProfileVerificationDocumentInput(fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, description: $description, isValid: $isValid, staffFeedback: $staffFeedback, verificationId: $verificationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProfileVerificationDocumentInputImpl &&
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
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.staffFeedback, staffFeedback) ||
                other.staffFeedback == staffFeedback) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId));
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
      isValid,
      staffFeedback,
      verificationId);

  /// Create a copy of CreateProfileVerificationDocumentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProfileVerificationDocumentInputImplCopyWith<
          _$CreateProfileVerificationDocumentInputImpl>
      get copyWith =>
          __$$CreateProfileVerificationDocumentInputImplCopyWithImpl<
              _$CreateProfileVerificationDocumentInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProfileVerificationDocumentInputImplToJson(
      this,
    );
  }
}

abstract class _CreateProfileVerificationDocumentInput
    implements CreateProfileVerificationDocumentInput {
  const factory _CreateProfileVerificationDocumentInput(
          {required final String fileName,
          required final String originalName,
          required final int fileSize,
          required final String mimeType,
          required final String fileUrl,
          required final String storagePath,
          final String? description,
          final bool? isValid,
          final String? staffFeedback,
          required final String verificationId}) =
      _$CreateProfileVerificationDocumentInputImpl;

  factory _CreateProfileVerificationDocumentInput.fromJson(
          Map<String, dynamic> json) =
      _$CreateProfileVerificationDocumentInputImpl.fromJson;

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
  bool? get isValid;
  @override
  String? get staffFeedback;
  @override
  String get verificationId;

  /// Create a copy of CreateProfileVerificationDocumentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateProfileVerificationDocumentInputImplCopyWith<
          _$CreateProfileVerificationDocumentInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateProfileVerificationDocumentInput
    _$UpdateProfileVerificationDocumentInputFromJson(
        Map<String, dynamic> json) {
  return _UpdateProfileVerificationDocumentInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateProfileVerificationDocumentInput {
  String? get fileName => throw _privateConstructorUsedError;
  String? get originalName => throw _privateConstructorUsedError;
  int? get fileSize => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;
  String? get storagePath => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get isValid => throw _privateConstructorUsedError;
  String? get staffFeedback => throw _privateConstructorUsedError;
  String? get verificationId => throw _privateConstructorUsedError;

  /// Serializes this UpdateProfileVerificationDocumentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateProfileVerificationDocumentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateProfileVerificationDocumentInputCopyWith<
          UpdateProfileVerificationDocumentInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileVerificationDocumentInputCopyWith<$Res> {
  factory $UpdateProfileVerificationDocumentInputCopyWith(
          UpdateProfileVerificationDocumentInput value,
          $Res Function(UpdateProfileVerificationDocumentInput) then) =
      _$UpdateProfileVerificationDocumentInputCopyWithImpl<$Res,
          UpdateProfileVerificationDocumentInput>;
  @useResult
  $Res call(
      {String? fileName,
      String? originalName,
      int? fileSize,
      String? mimeType,
      String? fileUrl,
      String? storagePath,
      String? description,
      bool? isValid,
      String? staffFeedback,
      String? verificationId});
}

/// @nodoc
class _$UpdateProfileVerificationDocumentInputCopyWithImpl<$Res,
        $Val extends UpdateProfileVerificationDocumentInput>
    implements $UpdateProfileVerificationDocumentInputCopyWith<$Res> {
  _$UpdateProfileVerificationDocumentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateProfileVerificationDocumentInput
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
    Object? isValid = freezed,
    Object? staffFeedback = freezed,
    Object? verificationId = freezed,
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
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      staffFeedback: freezed == staffFeedback
          ? _value.staffFeedback
          : staffFeedback // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileVerificationDocumentInputImplCopyWith<$Res>
    implements $UpdateProfileVerificationDocumentInputCopyWith<$Res> {
  factory _$$UpdateProfileVerificationDocumentInputImplCopyWith(
          _$UpdateProfileVerificationDocumentInputImpl value,
          $Res Function(_$UpdateProfileVerificationDocumentInputImpl) then) =
      __$$UpdateProfileVerificationDocumentInputImplCopyWithImpl<$Res>;
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
      bool? isValid,
      String? staffFeedback,
      String? verificationId});
}

/// @nodoc
class __$$UpdateProfileVerificationDocumentInputImplCopyWithImpl<$Res>
    extends _$UpdateProfileVerificationDocumentInputCopyWithImpl<$Res,
        _$UpdateProfileVerificationDocumentInputImpl>
    implements _$$UpdateProfileVerificationDocumentInputImplCopyWith<$Res> {
  __$$UpdateProfileVerificationDocumentInputImplCopyWithImpl(
      _$UpdateProfileVerificationDocumentInputImpl _value,
      $Res Function(_$UpdateProfileVerificationDocumentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProfileVerificationDocumentInput
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
    Object? isValid = freezed,
    Object? staffFeedback = freezed,
    Object? verificationId = freezed,
  }) {
    return _then(_$UpdateProfileVerificationDocumentInputImpl(
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
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      staffFeedback: freezed == staffFeedback
          ? _value.staffFeedback
          : staffFeedback // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProfileVerificationDocumentInputImpl
    implements _UpdateProfileVerificationDocumentInput {
  const _$UpdateProfileVerificationDocumentInputImpl(
      {this.fileName,
      this.originalName,
      this.fileSize,
      this.mimeType,
      this.fileUrl,
      this.storagePath,
      this.description,
      this.isValid,
      this.staffFeedback,
      this.verificationId});

  factory _$UpdateProfileVerificationDocumentInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateProfileVerificationDocumentInputImplFromJson(json);

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
  final bool? isValid;
  @override
  final String? staffFeedback;
  @override
  final String? verificationId;

  @override
  String toString() {
    return 'UpdateProfileVerificationDocumentInput(fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, description: $description, isValid: $isValid, staffFeedback: $staffFeedback, verificationId: $verificationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileVerificationDocumentInputImpl &&
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
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.staffFeedback, staffFeedback) ||
                other.staffFeedback == staffFeedback) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId));
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
      isValid,
      staffFeedback,
      verificationId);

  /// Create a copy of UpdateProfileVerificationDocumentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileVerificationDocumentInputImplCopyWith<
          _$UpdateProfileVerificationDocumentInputImpl>
      get copyWith =>
          __$$UpdateProfileVerificationDocumentInputImplCopyWithImpl<
              _$UpdateProfileVerificationDocumentInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProfileVerificationDocumentInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateProfileVerificationDocumentInput
    implements UpdateProfileVerificationDocumentInput {
  const factory _UpdateProfileVerificationDocumentInput(
          {final String? fileName,
          final String? originalName,
          final int? fileSize,
          final String? mimeType,
          final String? fileUrl,
          final String? storagePath,
          final String? description,
          final bool? isValid,
          final String? staffFeedback,
          final String? verificationId}) =
      _$UpdateProfileVerificationDocumentInputImpl;

  factory _UpdateProfileVerificationDocumentInput.fromJson(
          Map<String, dynamic> json) =
      _$UpdateProfileVerificationDocumentInputImpl.fromJson;

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
  bool? get isValid;
  @override
  String? get staffFeedback;
  @override
  String? get verificationId;

  /// Create a copy of UpdateProfileVerificationDocumentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileVerificationDocumentInputImplCopyWith<
          _$UpdateProfileVerificationDocumentInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileVerificationDocumentWhereUniqueInput
    _$ProfileVerificationDocumentWhereUniqueInputFromJson(
        Map<String, dynamic> json) {
  return _ProfileVerificationDocumentWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ProfileVerificationDocumentWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ProfileVerificationDocumentWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileVerificationDocumentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileVerificationDocumentWhereUniqueInputCopyWith<
          ProfileVerificationDocumentWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileVerificationDocumentWhereUniqueInputCopyWith<$Res> {
  factory $ProfileVerificationDocumentWhereUniqueInputCopyWith(
          ProfileVerificationDocumentWhereUniqueInput value,
          $Res Function(ProfileVerificationDocumentWhereUniqueInput) then) =
      _$ProfileVerificationDocumentWhereUniqueInputCopyWithImpl<$Res,
          ProfileVerificationDocumentWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ProfileVerificationDocumentWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ProfileVerificationDocumentWhereUniqueInput>
    implements $ProfileVerificationDocumentWhereUniqueInputCopyWith<$Res> {
  _$ProfileVerificationDocumentWhereUniqueInputCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileVerificationDocumentWhereUniqueInput
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
abstract class _$$ProfileVerificationDocumentWhereUniqueInputImplCopyWith<$Res>
    implements $ProfileVerificationDocumentWhereUniqueInputCopyWith<$Res> {
  factory _$$ProfileVerificationDocumentWhereUniqueInputImplCopyWith(
          _$ProfileVerificationDocumentWhereUniqueInputImpl value,
          $Res Function(_$ProfileVerificationDocumentWhereUniqueInputImpl)
              then) =
      __$$ProfileVerificationDocumentWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$ProfileVerificationDocumentWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ProfileVerificationDocumentWhereUniqueInputCopyWithImpl<$Res,
        _$ProfileVerificationDocumentWhereUniqueInputImpl>
    implements
        _$$ProfileVerificationDocumentWhereUniqueInputImplCopyWith<$Res> {
  __$$ProfileVerificationDocumentWhereUniqueInputImplCopyWithImpl(
      _$ProfileVerificationDocumentWhereUniqueInputImpl _value,
      $Res Function(_$ProfileVerificationDocumentWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileVerificationDocumentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ProfileVerificationDocumentWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileVerificationDocumentWhereUniqueInputImpl
    implements _ProfileVerificationDocumentWhereUniqueInput {
  const _$ProfileVerificationDocumentWhereUniqueInputImpl({this.id});

  factory _$ProfileVerificationDocumentWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProfileVerificationDocumentWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'ProfileVerificationDocumentWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileVerificationDocumentWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ProfileVerificationDocumentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileVerificationDocumentWhereUniqueInputImplCopyWith<
          _$ProfileVerificationDocumentWhereUniqueInputImpl>
      get copyWith =>
          __$$ProfileVerificationDocumentWhereUniqueInputImplCopyWithImpl<
                  _$ProfileVerificationDocumentWhereUniqueInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileVerificationDocumentWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ProfileVerificationDocumentWhereUniqueInput
    implements ProfileVerificationDocumentWhereUniqueInput {
  const factory _ProfileVerificationDocumentWhereUniqueInput(
      {final String? id}) = _$ProfileVerificationDocumentWhereUniqueInputImpl;

  factory _ProfileVerificationDocumentWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$ProfileVerificationDocumentWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of ProfileVerificationDocumentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileVerificationDocumentWhereUniqueInputImplCopyWith<
          _$ProfileVerificationDocumentWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileVerificationDocumentWhereInput
    _$ProfileVerificationDocumentWhereInputFromJson(Map<String, dynamic> json) {
  return _ProfileVerificationDocumentWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ProfileVerificationDocumentWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get fileName => throw _privateConstructorUsedError;
  StringFilter? get originalName => throw _privateConstructorUsedError;
  IntFilter? get fileSize => throw _privateConstructorUsedError;
  StringFilter? get mimeType => throw _privateConstructorUsedError;
  StringFilter? get fileUrl => throw _privateConstructorUsedError;
  StringFilter? get storagePath => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  BooleanFilter? get isValid => throw _privateConstructorUsedError;
  StringFilter? get staffFeedback => throw _privateConstructorUsedError;

  /// Filter by verification relation
  ConsultantProfileVerificationRelationFilter? get verification =>
      throw _privateConstructorUsedError;
  StringFilter? get verificationId => throw _privateConstructorUsedError;
  DateTimeFilter? get uploadedAt => throw _privateConstructorUsedError;
  List<ProfileVerificationDocumentWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<ProfileVerificationDocumentWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  ProfileVerificationDocumentWhereInput? get NOT =>
      throw _privateConstructorUsedError;

  /// Serializes this ProfileVerificationDocumentWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileVerificationDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileVerificationDocumentWhereInputCopyWith<
          ProfileVerificationDocumentWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileVerificationDocumentWhereInputCopyWith<$Res> {
  factory $ProfileVerificationDocumentWhereInputCopyWith(
          ProfileVerificationDocumentWhereInput value,
          $Res Function(ProfileVerificationDocumentWhereInput) then) =
      _$ProfileVerificationDocumentWhereInputCopyWithImpl<$Res,
          ProfileVerificationDocumentWhereInput>;
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
      BooleanFilter? isValid,
      StringFilter? staffFeedback,
      ConsultantProfileVerificationRelationFilter? verification,
      StringFilter? verificationId,
      DateTimeFilter? uploadedAt,
      List<ProfileVerificationDocumentWhereInput>? AND,
      List<ProfileVerificationDocumentWhereInput>? OR,
      ProfileVerificationDocumentWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get fileName;
  $StringFilterCopyWith<$Res>? get originalName;
  $IntFilterCopyWith<$Res>? get fileSize;
  $StringFilterCopyWith<$Res>? get mimeType;
  $StringFilterCopyWith<$Res>? get fileUrl;
  $StringFilterCopyWith<$Res>? get storagePath;
  $StringFilterCopyWith<$Res>? get description;
  $BooleanFilterCopyWith<$Res>? get isValid;
  $StringFilterCopyWith<$Res>? get staffFeedback;
  $ConsultantProfileVerificationRelationFilterCopyWith<$Res>? get verification;
  $StringFilterCopyWith<$Res>? get verificationId;
  $DateTimeFilterCopyWith<$Res>? get uploadedAt;
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ProfileVerificationDocumentWhereInputCopyWithImpl<$Res,
        $Val extends ProfileVerificationDocumentWhereInput>
    implements $ProfileVerificationDocumentWhereInputCopyWith<$Res> {
  _$ProfileVerificationDocumentWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileVerificationDocumentWhereInput
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
    Object? isValid = freezed,
    Object? staffFeedback = freezed,
    Object? verification = freezed,
    Object? verificationId = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      staffFeedback: freezed == staffFeedback
          ? _value.staffFeedback
          : staffFeedback // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      verification: freezed == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileVerificationRelationFilter?,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<ProfileVerificationDocumentWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ProfileVerificationDocumentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationDocumentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ProfileVerificationDocumentWhereInput
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

  /// Create a copy of ProfileVerificationDocumentWhereInput
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

  /// Create a copy of ProfileVerificationDocumentWhereInput
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

  /// Create a copy of ProfileVerificationDocumentWhereInput
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

  /// Create a copy of ProfileVerificationDocumentWhereInput
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

  /// Create a copy of ProfileVerificationDocumentWhereInput
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

  /// Create a copy of ProfileVerificationDocumentWhereInput
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

  /// Create a copy of ProfileVerificationDocumentWhereInput
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

  /// Create a copy of ProfileVerificationDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isValid {
    if (_value.isValid == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isValid!, (value) {
      return _then(_value.copyWith(isValid: value) as $Val);
    });
  }

  /// Create a copy of ProfileVerificationDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get staffFeedback {
    if (_value.staffFeedback == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.staffFeedback!, (value) {
      return _then(_value.copyWith(staffFeedback: value) as $Val);
    });
  }

  /// Create a copy of ProfileVerificationDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileVerificationRelationFilterCopyWith<$Res>? get verification {
    if (_value.verification == null) {
      return null;
    }

    return $ConsultantProfileVerificationRelationFilterCopyWith<$Res>(
        _value.verification!, (value) {
      return _then(_value.copyWith(verification: value) as $Val);
    });
  }

  /// Create a copy of ProfileVerificationDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get verificationId {
    if (_value.verificationId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.verificationId!, (value) {
      return _then(_value.copyWith(verificationId: value) as $Val);
    });
  }

  /// Create a copy of ProfileVerificationDocumentWhereInput
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

  /// Create a copy of ProfileVerificationDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ProfileVerificationDocumentWhereInputCopyWith<$Res>(_value.NOT!,
        (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileVerificationDocumentWhereInputImplCopyWith<$Res>
    implements $ProfileVerificationDocumentWhereInputCopyWith<$Res> {
  factory _$$ProfileVerificationDocumentWhereInputImplCopyWith(
          _$ProfileVerificationDocumentWhereInputImpl value,
          $Res Function(_$ProfileVerificationDocumentWhereInputImpl) then) =
      __$$ProfileVerificationDocumentWhereInputImplCopyWithImpl<$Res>;
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
      BooleanFilter? isValid,
      StringFilter? staffFeedback,
      ConsultantProfileVerificationRelationFilter? verification,
      StringFilter? verificationId,
      DateTimeFilter? uploadedAt,
      List<ProfileVerificationDocumentWhereInput>? AND,
      List<ProfileVerificationDocumentWhereInput>? OR,
      ProfileVerificationDocumentWhereInput? NOT});

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
  $BooleanFilterCopyWith<$Res>? get isValid;
  @override
  $StringFilterCopyWith<$Res>? get staffFeedback;
  @override
  $ConsultantProfileVerificationRelationFilterCopyWith<$Res>? get verification;
  @override
  $StringFilterCopyWith<$Res>? get verificationId;
  @override
  $DateTimeFilterCopyWith<$Res>? get uploadedAt;
  @override
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ProfileVerificationDocumentWhereInputImplCopyWithImpl<$Res>
    extends _$ProfileVerificationDocumentWhereInputCopyWithImpl<$Res,
        _$ProfileVerificationDocumentWhereInputImpl>
    implements _$$ProfileVerificationDocumentWhereInputImplCopyWith<$Res> {
  __$$ProfileVerificationDocumentWhereInputImplCopyWithImpl(
      _$ProfileVerificationDocumentWhereInputImpl _value,
      $Res Function(_$ProfileVerificationDocumentWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileVerificationDocumentWhereInput
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
    Object? isValid = freezed,
    Object? staffFeedback = freezed,
    Object? verification = freezed,
    Object? verificationId = freezed,
    Object? uploadedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ProfileVerificationDocumentWhereInputImpl(
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
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      staffFeedback: freezed == staffFeedback
          ? _value.staffFeedback
          : staffFeedback // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      verification: freezed == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileVerificationRelationFilter?,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<ProfileVerificationDocumentWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ProfileVerificationDocumentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationDocumentWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProfileVerificationDocumentWhereInputImpl
    implements _ProfileVerificationDocumentWhereInput {
  const _$ProfileVerificationDocumentWhereInputImpl(
      {this.id,
      this.fileName,
      this.originalName,
      this.fileSize,
      this.mimeType,
      this.fileUrl,
      this.storagePath,
      this.description,
      this.isValid,
      this.staffFeedback,
      this.verification,
      this.verificationId,
      this.uploadedAt,
      final List<ProfileVerificationDocumentWhereInput>? AND,
      final List<ProfileVerificationDocumentWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ProfileVerificationDocumentWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProfileVerificationDocumentWhereInputImplFromJson(json);

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
  final BooleanFilter? isValid;
  @override
  final StringFilter? staffFeedback;

  /// Filter by verification relation
  @override
  final ConsultantProfileVerificationRelationFilter? verification;
  @override
  final StringFilter? verificationId;
  @override
  final DateTimeFilter? uploadedAt;
  final List<ProfileVerificationDocumentWhereInput>? _AND;
  @override
  List<ProfileVerificationDocumentWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProfileVerificationDocumentWhereInput>? _OR;
  @override
  List<ProfileVerificationDocumentWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ProfileVerificationDocumentWhereInput? NOT;

  @override
  String toString() {
    return 'ProfileVerificationDocumentWhereInput(id: $id, fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, description: $description, isValid: $isValid, staffFeedback: $staffFeedback, verification: $verification, verificationId: $verificationId, uploadedAt: $uploadedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileVerificationDocumentWhereInputImpl &&
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
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.staffFeedback, staffFeedback) ||
                other.staffFeedback == staffFeedback) &&
            (identical(other.verification, verification) ||
                other.verification == verification) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
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
      description,
      isValid,
      staffFeedback,
      verification,
      verificationId,
      uploadedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of ProfileVerificationDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileVerificationDocumentWhereInputImplCopyWith<
          _$ProfileVerificationDocumentWhereInputImpl>
      get copyWith => __$$ProfileVerificationDocumentWhereInputImplCopyWithImpl<
          _$ProfileVerificationDocumentWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileVerificationDocumentWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ProfileVerificationDocumentWhereInput
    implements ProfileVerificationDocumentWhereInput {
  const factory _ProfileVerificationDocumentWhereInput(
          {final StringFilter? id,
          final StringFilter? fileName,
          final StringFilter? originalName,
          final IntFilter? fileSize,
          final StringFilter? mimeType,
          final StringFilter? fileUrl,
          final StringFilter? storagePath,
          final StringFilter? description,
          final BooleanFilter? isValid,
          final StringFilter? staffFeedback,
          final ConsultantProfileVerificationRelationFilter? verification,
          final StringFilter? verificationId,
          final DateTimeFilter? uploadedAt,
          final List<ProfileVerificationDocumentWhereInput>? AND,
          final List<ProfileVerificationDocumentWhereInput>? OR,
          final ProfileVerificationDocumentWhereInput? NOT}) =
      _$ProfileVerificationDocumentWhereInputImpl;

  factory _ProfileVerificationDocumentWhereInput.fromJson(
          Map<String, dynamic> json) =
      _$ProfileVerificationDocumentWhereInputImpl.fromJson;

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
  BooleanFilter? get isValid;
  @override
  StringFilter? get staffFeedback;

  /// Filter by verification relation
  @override
  ConsultantProfileVerificationRelationFilter? get verification;
  @override
  StringFilter? get verificationId;
  @override
  DateTimeFilter? get uploadedAt;
  @override
  List<ProfileVerificationDocumentWhereInput>? get AND;
  @override
  List<ProfileVerificationDocumentWhereInput>? get OR;
  @override
  ProfileVerificationDocumentWhereInput? get NOT;

  /// Create a copy of ProfileVerificationDocumentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileVerificationDocumentWhereInputImplCopyWith<
          _$ProfileVerificationDocumentWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileVerificationDocumentListRelationFilter
    _$ProfileVerificationDocumentListRelationFilterFromJson(
        Map<String, dynamic> json) {
  return _ProfileVerificationDocumentListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ProfileVerificationDocumentListRelationFilter {
  /// At least one related record matches
  ProfileVerificationDocumentWhereInput? get some =>
      throw _privateConstructorUsedError;

  /// All related records match
  ProfileVerificationDocumentWhereInput? get every =>
      throw _privateConstructorUsedError;

  /// No related records match
  ProfileVerificationDocumentWhereInput? get none =>
      throw _privateConstructorUsedError;

  /// Serializes this ProfileVerificationDocumentListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileVerificationDocumentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileVerificationDocumentListRelationFilterCopyWith<
          ProfileVerificationDocumentListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileVerificationDocumentListRelationFilterCopyWith<$Res> {
  factory $ProfileVerificationDocumentListRelationFilterCopyWith(
          ProfileVerificationDocumentListRelationFilter value,
          $Res Function(ProfileVerificationDocumentListRelationFilter) then) =
      _$ProfileVerificationDocumentListRelationFilterCopyWithImpl<$Res,
          ProfileVerificationDocumentListRelationFilter>;
  @useResult
  $Res call(
      {ProfileVerificationDocumentWhereInput? some,
      ProfileVerificationDocumentWhereInput? every,
      ProfileVerificationDocumentWhereInput? none});

  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get some;
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get every;
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ProfileVerificationDocumentListRelationFilterCopyWithImpl<$Res,
        $Val extends ProfileVerificationDocumentListRelationFilter>
    implements $ProfileVerificationDocumentListRelationFilterCopyWith<$Res> {
  _$ProfileVerificationDocumentListRelationFilterCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileVerificationDocumentListRelationFilter
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
              as ProfileVerificationDocumentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationDocumentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationDocumentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ProfileVerificationDocumentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ProfileVerificationDocumentWhereInputCopyWith<$Res>(_value.some!,
        (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ProfileVerificationDocumentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ProfileVerificationDocumentWhereInputCopyWith<$Res>(_value.every!,
        (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ProfileVerificationDocumentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ProfileVerificationDocumentWhereInputCopyWith<$Res>(_value.none!,
        (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileVerificationDocumentListRelationFilterImplCopyWith<
        $Res>
    implements $ProfileVerificationDocumentListRelationFilterCopyWith<$Res> {
  factory _$$ProfileVerificationDocumentListRelationFilterImplCopyWith(
          _$ProfileVerificationDocumentListRelationFilterImpl value,
          $Res Function(_$ProfileVerificationDocumentListRelationFilterImpl)
              then) =
      __$$ProfileVerificationDocumentListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileVerificationDocumentWhereInput? some,
      ProfileVerificationDocumentWhereInput? every,
      ProfileVerificationDocumentWhereInput? none});

  @override
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get some;
  @override
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get every;
  @override
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ProfileVerificationDocumentListRelationFilterImplCopyWithImpl<$Res>
    extends _$ProfileVerificationDocumentListRelationFilterCopyWithImpl<$Res,
        _$ProfileVerificationDocumentListRelationFilterImpl>
    implements
        _$$ProfileVerificationDocumentListRelationFilterImplCopyWith<$Res> {
  __$$ProfileVerificationDocumentListRelationFilterImplCopyWithImpl(
      _$ProfileVerificationDocumentListRelationFilterImpl _value,
      $Res Function(_$ProfileVerificationDocumentListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileVerificationDocumentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ProfileVerificationDocumentListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationDocumentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationDocumentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationDocumentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileVerificationDocumentListRelationFilterImpl
    implements _ProfileVerificationDocumentListRelationFilter {
  const _$ProfileVerificationDocumentListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ProfileVerificationDocumentListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProfileVerificationDocumentListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ProfileVerificationDocumentWhereInput? some;

  /// All related records match
  @override
  final ProfileVerificationDocumentWhereInput? every;

  /// No related records match
  @override
  final ProfileVerificationDocumentWhereInput? none;

  @override
  String toString() {
    return 'ProfileVerificationDocumentListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileVerificationDocumentListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ProfileVerificationDocumentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileVerificationDocumentListRelationFilterImplCopyWith<
          _$ProfileVerificationDocumentListRelationFilterImpl>
      get copyWith =>
          __$$ProfileVerificationDocumentListRelationFilterImplCopyWithImpl<
                  _$ProfileVerificationDocumentListRelationFilterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileVerificationDocumentListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ProfileVerificationDocumentListRelationFilter
    implements ProfileVerificationDocumentListRelationFilter {
  const factory _ProfileVerificationDocumentListRelationFilter(
          {final ProfileVerificationDocumentWhereInput? some,
          final ProfileVerificationDocumentWhereInput? every,
          final ProfileVerificationDocumentWhereInput? none}) =
      _$ProfileVerificationDocumentListRelationFilterImpl;

  factory _ProfileVerificationDocumentListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ProfileVerificationDocumentListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ProfileVerificationDocumentWhereInput? get some;

  /// All related records match
  @override
  ProfileVerificationDocumentWhereInput? get every;

  /// No related records match
  @override
  ProfileVerificationDocumentWhereInput? get none;

  /// Create a copy of ProfileVerificationDocumentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileVerificationDocumentListRelationFilterImplCopyWith<
          _$ProfileVerificationDocumentListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileVerificationDocumentRelationFilter
    _$ProfileVerificationDocumentRelationFilterFromJson(
        Map<String, dynamic> json) {
  return _ProfileVerificationDocumentRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ProfileVerificationDocumentRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ProfileVerificationDocumentWhereInput? get is_ =>
      throw _privateConstructorUsedError;

  /// Related record does not match
  ProfileVerificationDocumentWhereInput? get isNot =>
      throw _privateConstructorUsedError;

  /// Serializes this ProfileVerificationDocumentRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileVerificationDocumentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileVerificationDocumentRelationFilterCopyWith<
          ProfileVerificationDocumentRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileVerificationDocumentRelationFilterCopyWith<$Res> {
  factory $ProfileVerificationDocumentRelationFilterCopyWith(
          ProfileVerificationDocumentRelationFilter value,
          $Res Function(ProfileVerificationDocumentRelationFilter) then) =
      _$ProfileVerificationDocumentRelationFilterCopyWithImpl<$Res,
          ProfileVerificationDocumentRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ProfileVerificationDocumentWhereInput? is_,
      ProfileVerificationDocumentWhereInput? isNot});

  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get is_;
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ProfileVerificationDocumentRelationFilterCopyWithImpl<$Res,
        $Val extends ProfileVerificationDocumentRelationFilter>
    implements $ProfileVerificationDocumentRelationFilterCopyWith<$Res> {
  _$ProfileVerificationDocumentRelationFilterCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileVerificationDocumentRelationFilter
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
              as ProfileVerificationDocumentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationDocumentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ProfileVerificationDocumentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ProfileVerificationDocumentWhereInputCopyWith<$Res>(_value.is_!,
        (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ProfileVerificationDocumentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ProfileVerificationDocumentWhereInputCopyWith<$Res>(_value.isNot!,
        (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileVerificationDocumentRelationFilterImplCopyWith<$Res>
    implements $ProfileVerificationDocumentRelationFilterCopyWith<$Res> {
  factory _$$ProfileVerificationDocumentRelationFilterImplCopyWith(
          _$ProfileVerificationDocumentRelationFilterImpl value,
          $Res Function(_$ProfileVerificationDocumentRelationFilterImpl) then) =
      __$$ProfileVerificationDocumentRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ProfileVerificationDocumentWhereInput? is_,
      ProfileVerificationDocumentWhereInput? isNot});

  @override
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get is_;
  @override
  $ProfileVerificationDocumentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ProfileVerificationDocumentRelationFilterImplCopyWithImpl<$Res>
    extends _$ProfileVerificationDocumentRelationFilterCopyWithImpl<$Res,
        _$ProfileVerificationDocumentRelationFilterImpl>
    implements _$$ProfileVerificationDocumentRelationFilterImplCopyWith<$Res> {
  __$$ProfileVerificationDocumentRelationFilterImplCopyWithImpl(
      _$ProfileVerificationDocumentRelationFilterImpl _value,
      $Res Function(_$ProfileVerificationDocumentRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileVerificationDocumentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ProfileVerificationDocumentRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationDocumentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationDocumentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileVerificationDocumentRelationFilterImpl
    implements _ProfileVerificationDocumentRelationFilter {
  const _$ProfileVerificationDocumentRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ProfileVerificationDocumentRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProfileVerificationDocumentRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ProfileVerificationDocumentWhereInput? is_;

  /// Related record does not match
  @override
  final ProfileVerificationDocumentWhereInput? isNot;

  @override
  String toString() {
    return 'ProfileVerificationDocumentRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileVerificationDocumentRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ProfileVerificationDocumentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileVerificationDocumentRelationFilterImplCopyWith<
          _$ProfileVerificationDocumentRelationFilterImpl>
      get copyWith =>
          __$$ProfileVerificationDocumentRelationFilterImplCopyWithImpl<
                  _$ProfileVerificationDocumentRelationFilterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileVerificationDocumentRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ProfileVerificationDocumentRelationFilter
    implements ProfileVerificationDocumentRelationFilter {
  const factory _ProfileVerificationDocumentRelationFilter(
      {@JsonKey(name: 'is') final ProfileVerificationDocumentWhereInput? is_,
      final ProfileVerificationDocumentWhereInput?
          isNot}) = _$ProfileVerificationDocumentRelationFilterImpl;

  factory _ProfileVerificationDocumentRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ProfileVerificationDocumentRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ProfileVerificationDocumentWhereInput? get is_;

  /// Related record does not match
  @override
  ProfileVerificationDocumentWhereInput? get isNot;

  /// Create a copy of ProfileVerificationDocumentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileVerificationDocumentRelationFilterImplCopyWith<
          _$ProfileVerificationDocumentRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileVerificationDocumentOrderByInput
    _$ProfileVerificationDocumentOrderByInputFromJson(
        Map<String, dynamic> json) {
  return _ProfileVerificationDocumentOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ProfileVerificationDocumentOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get fileName => throw _privateConstructorUsedError;
  SortOrder? get originalName => throw _privateConstructorUsedError;
  SortOrder? get fileSize => throw _privateConstructorUsedError;
  SortOrder? get mimeType => throw _privateConstructorUsedError;
  SortOrder? get fileUrl => throw _privateConstructorUsedError;
  SortOrder? get storagePath => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get isValid => throw _privateConstructorUsedError;
  SortOrder? get staffFeedback => throw _privateConstructorUsedError;
  SortOrder? get verificationId => throw _privateConstructorUsedError;
  SortOrder? get uploadedAt => throw _privateConstructorUsedError;

  /// Serializes this ProfileVerificationDocumentOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileVerificationDocumentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileVerificationDocumentOrderByInputCopyWith<
          ProfileVerificationDocumentOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileVerificationDocumentOrderByInputCopyWith<$Res> {
  factory $ProfileVerificationDocumentOrderByInputCopyWith(
          ProfileVerificationDocumentOrderByInput value,
          $Res Function(ProfileVerificationDocumentOrderByInput) then) =
      _$ProfileVerificationDocumentOrderByInputCopyWithImpl<$Res,
          ProfileVerificationDocumentOrderByInput>;
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
      SortOrder? isValid,
      SortOrder? staffFeedback,
      SortOrder? verificationId,
      SortOrder? uploadedAt});
}

/// @nodoc
class _$ProfileVerificationDocumentOrderByInputCopyWithImpl<$Res,
        $Val extends ProfileVerificationDocumentOrderByInput>
    implements $ProfileVerificationDocumentOrderByInputCopyWith<$Res> {
  _$ProfileVerificationDocumentOrderByInputCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileVerificationDocumentOrderByInput
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
    Object? isValid = freezed,
    Object? staffFeedback = freezed,
    Object? verificationId = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      staffFeedback: freezed == staffFeedback
          ? _value.staffFeedback
          : staffFeedback // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileVerificationDocumentOrderByInputImplCopyWith<$Res>
    implements $ProfileVerificationDocumentOrderByInputCopyWith<$Res> {
  factory _$$ProfileVerificationDocumentOrderByInputImplCopyWith(
          _$ProfileVerificationDocumentOrderByInputImpl value,
          $Res Function(_$ProfileVerificationDocumentOrderByInputImpl) then) =
      __$$ProfileVerificationDocumentOrderByInputImplCopyWithImpl<$Res>;
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
      SortOrder? isValid,
      SortOrder? staffFeedback,
      SortOrder? verificationId,
      SortOrder? uploadedAt});
}

/// @nodoc
class __$$ProfileVerificationDocumentOrderByInputImplCopyWithImpl<$Res>
    extends _$ProfileVerificationDocumentOrderByInputCopyWithImpl<$Res,
        _$ProfileVerificationDocumentOrderByInputImpl>
    implements _$$ProfileVerificationDocumentOrderByInputImplCopyWith<$Res> {
  __$$ProfileVerificationDocumentOrderByInputImplCopyWithImpl(
      _$ProfileVerificationDocumentOrderByInputImpl _value,
      $Res Function(_$ProfileVerificationDocumentOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileVerificationDocumentOrderByInput
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
    Object? isValid = freezed,
    Object? staffFeedback = freezed,
    Object? verificationId = freezed,
    Object? uploadedAt = freezed,
  }) {
    return _then(_$ProfileVerificationDocumentOrderByInputImpl(
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
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      staffFeedback: freezed == staffFeedback
          ? _value.staffFeedback
          : staffFeedback // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
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
class _$ProfileVerificationDocumentOrderByInputImpl
    implements _ProfileVerificationDocumentOrderByInput {
  const _$ProfileVerificationDocumentOrderByInputImpl(
      {this.id,
      this.fileName,
      this.originalName,
      this.fileSize,
      this.mimeType,
      this.fileUrl,
      this.storagePath,
      this.description,
      this.isValid,
      this.staffFeedback,
      this.verificationId,
      this.uploadedAt});

  factory _$ProfileVerificationDocumentOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProfileVerificationDocumentOrderByInputImplFromJson(json);

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
  final SortOrder? isValid;
  @override
  final SortOrder? staffFeedback;
  @override
  final SortOrder? verificationId;
  @override
  final SortOrder? uploadedAt;

  @override
  String toString() {
    return 'ProfileVerificationDocumentOrderByInput(id: $id, fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, description: $description, isValid: $isValid, staffFeedback: $staffFeedback, verificationId: $verificationId, uploadedAt: $uploadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileVerificationDocumentOrderByInputImpl &&
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
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.staffFeedback, staffFeedback) ||
                other.staffFeedback == staffFeedback) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
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
      isValid,
      staffFeedback,
      verificationId,
      uploadedAt);

  /// Create a copy of ProfileVerificationDocumentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileVerificationDocumentOrderByInputImplCopyWith<
          _$ProfileVerificationDocumentOrderByInputImpl>
      get copyWith =>
          __$$ProfileVerificationDocumentOrderByInputImplCopyWithImpl<
              _$ProfileVerificationDocumentOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileVerificationDocumentOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ProfileVerificationDocumentOrderByInput
    implements ProfileVerificationDocumentOrderByInput {
  const factory _ProfileVerificationDocumentOrderByInput(
          {final SortOrder? id,
          final SortOrder? fileName,
          final SortOrder? originalName,
          final SortOrder? fileSize,
          final SortOrder? mimeType,
          final SortOrder? fileUrl,
          final SortOrder? storagePath,
          final SortOrder? description,
          final SortOrder? isValid,
          final SortOrder? staffFeedback,
          final SortOrder? verificationId,
          final SortOrder? uploadedAt}) =
      _$ProfileVerificationDocumentOrderByInputImpl;

  factory _ProfileVerificationDocumentOrderByInput.fromJson(
          Map<String, dynamic> json) =
      _$ProfileVerificationDocumentOrderByInputImpl.fromJson;

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
  SortOrder? get isValid;
  @override
  SortOrder? get staffFeedback;
  @override
  SortOrder? get verificationId;
  @override
  SortOrder? get uploadedAt;

  /// Create a copy of ProfileVerificationDocumentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileVerificationDocumentOrderByInputImplCopyWith<
          _$ProfileVerificationDocumentOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
