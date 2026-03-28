// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_material.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlanMaterial _$PlanMaterialFromJson(Map<String, dynamic> json) {
  return _PlanMaterial.fromJson(json);
}

/// @nodoc
mixin _$PlanMaterial {
  String get id => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  String get originalName => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String get storagePath => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String? get consultationPlanId => throw _privateConstructorUsedError;
  String? get subscriptionPlanId => throw _privateConstructorUsedError;
  String? get webinarPlanId => throw _privateConstructorUsedError;
  String? get classPlanId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultationPlan? get consultationPlan => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  SubscriptionPlan? get subscriptionPlan => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  WebinarPlan? get webinarPlan => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ClassPlan? get classPlan => throw _privateConstructorUsedError;
  DateTime get uploadedAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PlanMaterial to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlanMaterial
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanMaterialCopyWith<PlanMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanMaterialCopyWith<$Res> {
  factory $PlanMaterialCopyWith(
          PlanMaterial value, $Res Function(PlanMaterial) then) =
      _$PlanMaterialCopyWithImpl<$Res, PlanMaterial>;
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
      int order,
      String? consultationPlanId,
      String? subscriptionPlanId,
      String? webinarPlanId,
      String? classPlanId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultationPlan? consultationPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SubscriptionPlan? subscriptionPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      WebinarPlan? webinarPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ClassPlan? classPlan,
      DateTime uploadedAt,
      DateTime updatedAt});

  $ConsultationPlanCopyWith<$Res>? get consultationPlan;
  $SubscriptionPlanCopyWith<$Res>? get subscriptionPlan;
  $WebinarPlanCopyWith<$Res>? get webinarPlan;
  $ClassPlanCopyWith<$Res>? get classPlan;
}

/// @nodoc
class _$PlanMaterialCopyWithImpl<$Res, $Val extends PlanMaterial>
    implements $PlanMaterialCopyWith<$Res> {
  _$PlanMaterialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanMaterial
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
    Object? order = null,
    Object? consultationPlanId = freezed,
    Object? subscriptionPlanId = freezed,
    Object? webinarPlanId = freezed,
    Object? classPlanId = freezed,
    Object? consultationPlan = freezed,
    Object? subscriptionPlan = freezed,
    Object? webinarPlan = freezed,
    Object? classPlan = freezed,
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
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      consultationPlan: freezed == consultationPlan
          ? _value.consultationPlan
          : consultationPlan // ignore: cast_nullable_to_non_nullable
              as ConsultationPlan?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlan?,
      webinarPlan: freezed == webinarPlan
          ? _value.webinarPlan
          : webinarPlan // ignore: cast_nullable_to_non_nullable
              as WebinarPlan?,
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlan?,
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

  /// Create a copy of PlanMaterial
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationPlanCopyWith<$Res>? get consultationPlan {
    if (_value.consultationPlan == null) {
      return null;
    }

    return $ConsultationPlanCopyWith<$Res>(_value.consultationPlan!, (value) {
      return _then(_value.copyWith(consultationPlan: value) as $Val);
    });
  }

  /// Create a copy of PlanMaterial
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionPlanCopyWith<$Res>? get subscriptionPlan {
    if (_value.subscriptionPlan == null) {
      return null;
    }

    return $SubscriptionPlanCopyWith<$Res>(_value.subscriptionPlan!, (value) {
      return _then(_value.copyWith(subscriptionPlan: value) as $Val);
    });
  }

  /// Create a copy of PlanMaterial
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarPlanCopyWith<$Res>? get webinarPlan {
    if (_value.webinarPlan == null) {
      return null;
    }

    return $WebinarPlanCopyWith<$Res>(_value.webinarPlan!, (value) {
      return _then(_value.copyWith(webinarPlan: value) as $Val);
    });
  }

  /// Create a copy of PlanMaterial
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
abstract class _$$PlanMaterialImplCopyWith<$Res>
    implements $PlanMaterialCopyWith<$Res> {
  factory _$$PlanMaterialImplCopyWith(
          _$PlanMaterialImpl value, $Res Function(_$PlanMaterialImpl) then) =
      __$$PlanMaterialImplCopyWithImpl<$Res>;
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
      int order,
      String? consultationPlanId,
      String? subscriptionPlanId,
      String? webinarPlanId,
      String? classPlanId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultationPlan? consultationPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SubscriptionPlan? subscriptionPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      WebinarPlan? webinarPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ClassPlan? classPlan,
      DateTime uploadedAt,
      DateTime updatedAt});

  @override
  $ConsultationPlanCopyWith<$Res>? get consultationPlan;
  @override
  $SubscriptionPlanCopyWith<$Res>? get subscriptionPlan;
  @override
  $WebinarPlanCopyWith<$Res>? get webinarPlan;
  @override
  $ClassPlanCopyWith<$Res>? get classPlan;
}

/// @nodoc
class __$$PlanMaterialImplCopyWithImpl<$Res>
    extends _$PlanMaterialCopyWithImpl<$Res, _$PlanMaterialImpl>
    implements _$$PlanMaterialImplCopyWith<$Res> {
  __$$PlanMaterialImplCopyWithImpl(
      _$PlanMaterialImpl _value, $Res Function(_$PlanMaterialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanMaterial
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
    Object? order = null,
    Object? consultationPlanId = freezed,
    Object? subscriptionPlanId = freezed,
    Object? webinarPlanId = freezed,
    Object? classPlanId = freezed,
    Object? consultationPlan = freezed,
    Object? subscriptionPlan = freezed,
    Object? webinarPlan = freezed,
    Object? classPlan = freezed,
    Object? uploadedAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PlanMaterialImpl(
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
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      consultationPlan: freezed == consultationPlan
          ? _value.consultationPlan
          : consultationPlan // ignore: cast_nullable_to_non_nullable
              as ConsultationPlan?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlan?,
      webinarPlan: freezed == webinarPlan
          ? _value.webinarPlan
          : webinarPlan // ignore: cast_nullable_to_non_nullable
              as WebinarPlan?,
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlan?,
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
class _$PlanMaterialImpl implements _PlanMaterial {
  const _$PlanMaterialImpl(
      {required this.id,
      required this.fileName,
      required this.originalName,
      required this.fileSize,
      required this.mimeType,
      required this.fileUrl,
      required this.storagePath,
      this.description,
      this.order = 0,
      this.consultationPlanId,
      this.subscriptionPlanId,
      this.webinarPlanId,
      this.classPlanId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultationPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.subscriptionPlan,
      @JsonKey(includeFromJson: false, includeToJson: false) this.webinarPlan,
      @JsonKey(includeFromJson: false, includeToJson: false) this.classPlan,
      required this.uploadedAt,
      required this.updatedAt});

  factory _$PlanMaterialImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanMaterialImplFromJson(json);

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
  final int order;
  @override
  final String? consultationPlanId;
  @override
  final String? subscriptionPlanId;
  @override
  final String? webinarPlanId;
  @override
  final String? classPlanId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultationPlan? consultationPlan;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final SubscriptionPlan? subscriptionPlan;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final WebinarPlan? webinarPlan;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ClassPlan? classPlan;
  @override
  final DateTime uploadedAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'PlanMaterial(id: $id, fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, description: $description, order: $order, consultationPlanId: $consultationPlanId, subscriptionPlanId: $subscriptionPlanId, webinarPlanId: $webinarPlanId, classPlanId: $classPlanId, consultationPlan: $consultationPlan, subscriptionPlan: $subscriptionPlan, webinarPlan: $webinarPlan, classPlan: $classPlan, uploadedAt: $uploadedAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanMaterialImpl &&
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
            (identical(other.order, order) || other.order == order) &&
            (identical(other.consultationPlanId, consultationPlanId) ||
                other.consultationPlanId == consultationPlanId) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
            (identical(other.webinarPlanId, webinarPlanId) ||
                other.webinarPlanId == webinarPlanId) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId) &&
            (identical(other.consultationPlan, consultationPlan) ||
                other.consultationPlan == consultationPlan) &&
            (identical(other.subscriptionPlan, subscriptionPlan) ||
                other.subscriptionPlan == subscriptionPlan) &&
            (identical(other.webinarPlan, webinarPlan) ||
                other.webinarPlan == webinarPlan) &&
            (identical(other.classPlan, classPlan) ||
                other.classPlan == classPlan) &&
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
        order,
        consultationPlanId,
        subscriptionPlanId,
        webinarPlanId,
        classPlanId,
        consultationPlan,
        subscriptionPlan,
        webinarPlan,
        classPlan,
        uploadedAt,
        updatedAt
      ]);

  /// Create a copy of PlanMaterial
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanMaterialImplCopyWith<_$PlanMaterialImpl> get copyWith =>
      __$$PlanMaterialImplCopyWithImpl<_$PlanMaterialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanMaterialImplToJson(
      this,
    );
  }
}

abstract class _PlanMaterial implements PlanMaterial {
  const factory _PlanMaterial(
      {required final String id,
      required final String fileName,
      required final String originalName,
      required final int fileSize,
      required final String mimeType,
      required final String fileUrl,
      required final String storagePath,
      final String? description,
      final int order,
      final String? consultationPlanId,
      final String? subscriptionPlanId,
      final String? webinarPlanId,
      final String? classPlanId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultationPlan? consultationPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final SubscriptionPlan? subscriptionPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final WebinarPlan? webinarPlan,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ClassPlan? classPlan,
      required final DateTime uploadedAt,
      required final DateTime updatedAt}) = _$PlanMaterialImpl;

  factory _PlanMaterial.fromJson(Map<String, dynamic> json) =
      _$PlanMaterialImpl.fromJson;

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
  int get order;
  @override
  String? get consultationPlanId;
  @override
  String? get subscriptionPlanId;
  @override
  String? get webinarPlanId;
  @override
  String? get classPlanId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultationPlan? get consultationPlan;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  SubscriptionPlan? get subscriptionPlan;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  WebinarPlan? get webinarPlan;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ClassPlan? get classPlan;
  @override
  DateTime get uploadedAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of PlanMaterial
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanMaterialImplCopyWith<_$PlanMaterialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatePlanMaterialInput _$CreatePlanMaterialInputFromJson(
    Map<String, dynamic> json) {
  return _CreatePlanMaterialInput.fromJson(json);
}

/// @nodoc
mixin _$CreatePlanMaterialInput {
  String get fileName => throw _privateConstructorUsedError;
  String get originalName => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String get storagePath => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  String? get consultationPlanId => throw _privateConstructorUsedError;
  String? get subscriptionPlanId => throw _privateConstructorUsedError;
  String? get webinarPlanId => throw _privateConstructorUsedError;
  String? get classPlanId => throw _privateConstructorUsedError;

  /// Serializes this CreatePlanMaterialInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatePlanMaterialInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatePlanMaterialInputCopyWith<CreatePlanMaterialInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePlanMaterialInputCopyWith<$Res> {
  factory $CreatePlanMaterialInputCopyWith(CreatePlanMaterialInput value,
          $Res Function(CreatePlanMaterialInput) then) =
      _$CreatePlanMaterialInputCopyWithImpl<$Res, CreatePlanMaterialInput>;
  @useResult
  $Res call(
      {String fileName,
      String originalName,
      int fileSize,
      String mimeType,
      String fileUrl,
      String storagePath,
      String? description,
      int? order,
      String? consultationPlanId,
      String? subscriptionPlanId,
      String? webinarPlanId,
      String? classPlanId});
}

/// @nodoc
class _$CreatePlanMaterialInputCopyWithImpl<$Res,
        $Val extends CreatePlanMaterialInput>
    implements $CreatePlanMaterialInputCopyWith<$Res> {
  _$CreatePlanMaterialInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePlanMaterialInput
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
    Object? order = freezed,
    Object? consultationPlanId = freezed,
    Object? subscriptionPlanId = freezed,
    Object? webinarPlanId = freezed,
    Object? classPlanId = freezed,
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePlanMaterialInputImplCopyWith<$Res>
    implements $CreatePlanMaterialInputCopyWith<$Res> {
  factory _$$CreatePlanMaterialInputImplCopyWith(
          _$CreatePlanMaterialInputImpl value,
          $Res Function(_$CreatePlanMaterialInputImpl) then) =
      __$$CreatePlanMaterialInputImplCopyWithImpl<$Res>;
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
      int? order,
      String? consultationPlanId,
      String? subscriptionPlanId,
      String? webinarPlanId,
      String? classPlanId});
}

/// @nodoc
class __$$CreatePlanMaterialInputImplCopyWithImpl<$Res>
    extends _$CreatePlanMaterialInputCopyWithImpl<$Res,
        _$CreatePlanMaterialInputImpl>
    implements _$$CreatePlanMaterialInputImplCopyWith<$Res> {
  __$$CreatePlanMaterialInputImplCopyWithImpl(
      _$CreatePlanMaterialInputImpl _value,
      $Res Function(_$CreatePlanMaterialInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePlanMaterialInput
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
    Object? order = freezed,
    Object? consultationPlanId = freezed,
    Object? subscriptionPlanId = freezed,
    Object? webinarPlanId = freezed,
    Object? classPlanId = freezed,
  }) {
    return _then(_$CreatePlanMaterialInputImpl(
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePlanMaterialInputImpl implements _CreatePlanMaterialInput {
  const _$CreatePlanMaterialInputImpl(
      {required this.fileName,
      required this.originalName,
      required this.fileSize,
      required this.mimeType,
      required this.fileUrl,
      required this.storagePath,
      this.description,
      this.order = 0,
      this.consultationPlanId,
      this.subscriptionPlanId,
      this.webinarPlanId,
      this.classPlanId});

  factory _$CreatePlanMaterialInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePlanMaterialInputImplFromJson(json);

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
  final int? order;
  @override
  final String? consultationPlanId;
  @override
  final String? subscriptionPlanId;
  @override
  final String? webinarPlanId;
  @override
  final String? classPlanId;

  @override
  String toString() {
    return 'CreatePlanMaterialInput(fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, description: $description, order: $order, consultationPlanId: $consultationPlanId, subscriptionPlanId: $subscriptionPlanId, webinarPlanId: $webinarPlanId, classPlanId: $classPlanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlanMaterialInputImpl &&
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
            (identical(other.order, order) || other.order == order) &&
            (identical(other.consultationPlanId, consultationPlanId) ||
                other.consultationPlanId == consultationPlanId) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
            (identical(other.webinarPlanId, webinarPlanId) ||
                other.webinarPlanId == webinarPlanId) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId));
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
      order,
      consultationPlanId,
      subscriptionPlanId,
      webinarPlanId,
      classPlanId);

  /// Create a copy of CreatePlanMaterialInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePlanMaterialInputImplCopyWith<_$CreatePlanMaterialInputImpl>
      get copyWith => __$$CreatePlanMaterialInputImplCopyWithImpl<
          _$CreatePlanMaterialInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePlanMaterialInputImplToJson(
      this,
    );
  }
}

abstract class _CreatePlanMaterialInput implements CreatePlanMaterialInput {
  const factory _CreatePlanMaterialInput(
      {required final String fileName,
      required final String originalName,
      required final int fileSize,
      required final String mimeType,
      required final String fileUrl,
      required final String storagePath,
      final String? description,
      final int? order,
      final String? consultationPlanId,
      final String? subscriptionPlanId,
      final String? webinarPlanId,
      final String? classPlanId}) = _$CreatePlanMaterialInputImpl;

  factory _CreatePlanMaterialInput.fromJson(Map<String, dynamic> json) =
      _$CreatePlanMaterialInputImpl.fromJson;

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
  int? get order;
  @override
  String? get consultationPlanId;
  @override
  String? get subscriptionPlanId;
  @override
  String? get webinarPlanId;
  @override
  String? get classPlanId;

  /// Create a copy of CreatePlanMaterialInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePlanMaterialInputImplCopyWith<_$CreatePlanMaterialInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdatePlanMaterialInput _$UpdatePlanMaterialInputFromJson(
    Map<String, dynamic> json) {
  return _UpdatePlanMaterialInput.fromJson(json);
}

/// @nodoc
mixin _$UpdatePlanMaterialInput {
  String? get fileName => throw _privateConstructorUsedError;
  String? get originalName => throw _privateConstructorUsedError;
  int? get fileSize => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;
  String? get storagePath => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  String? get consultationPlanId => throw _privateConstructorUsedError;
  String? get subscriptionPlanId => throw _privateConstructorUsedError;
  String? get webinarPlanId => throw _privateConstructorUsedError;
  String? get classPlanId => throw _privateConstructorUsedError;

  /// Serializes this UpdatePlanMaterialInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdatePlanMaterialInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatePlanMaterialInputCopyWith<UpdatePlanMaterialInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePlanMaterialInputCopyWith<$Res> {
  factory $UpdatePlanMaterialInputCopyWith(UpdatePlanMaterialInput value,
          $Res Function(UpdatePlanMaterialInput) then) =
      _$UpdatePlanMaterialInputCopyWithImpl<$Res, UpdatePlanMaterialInput>;
  @useResult
  $Res call(
      {String? fileName,
      String? originalName,
      int? fileSize,
      String? mimeType,
      String? fileUrl,
      String? storagePath,
      String? description,
      int? order,
      String? consultationPlanId,
      String? subscriptionPlanId,
      String? webinarPlanId,
      String? classPlanId});
}

/// @nodoc
class _$UpdatePlanMaterialInputCopyWithImpl<$Res,
        $Val extends UpdatePlanMaterialInput>
    implements $UpdatePlanMaterialInputCopyWith<$Res> {
  _$UpdatePlanMaterialInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatePlanMaterialInput
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
    Object? order = freezed,
    Object? consultationPlanId = freezed,
    Object? subscriptionPlanId = freezed,
    Object? webinarPlanId = freezed,
    Object? classPlanId = freezed,
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePlanMaterialInputImplCopyWith<$Res>
    implements $UpdatePlanMaterialInputCopyWith<$Res> {
  factory _$$UpdatePlanMaterialInputImplCopyWith(
          _$UpdatePlanMaterialInputImpl value,
          $Res Function(_$UpdatePlanMaterialInputImpl) then) =
      __$$UpdatePlanMaterialInputImplCopyWithImpl<$Res>;
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
      int? order,
      String? consultationPlanId,
      String? subscriptionPlanId,
      String? webinarPlanId,
      String? classPlanId});
}

/// @nodoc
class __$$UpdatePlanMaterialInputImplCopyWithImpl<$Res>
    extends _$UpdatePlanMaterialInputCopyWithImpl<$Res,
        _$UpdatePlanMaterialInputImpl>
    implements _$$UpdatePlanMaterialInputImplCopyWith<$Res> {
  __$$UpdatePlanMaterialInputImplCopyWithImpl(
      _$UpdatePlanMaterialInputImpl _value,
      $Res Function(_$UpdatePlanMaterialInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatePlanMaterialInput
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
    Object? order = freezed,
    Object? consultationPlanId = freezed,
    Object? subscriptionPlanId = freezed,
    Object? webinarPlanId = freezed,
    Object? classPlanId = freezed,
  }) {
    return _then(_$UpdatePlanMaterialInputImpl(
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePlanMaterialInputImpl implements _UpdatePlanMaterialInput {
  const _$UpdatePlanMaterialInputImpl(
      {this.fileName,
      this.originalName,
      this.fileSize,
      this.mimeType,
      this.fileUrl,
      this.storagePath,
      this.description,
      this.order,
      this.consultationPlanId,
      this.subscriptionPlanId,
      this.webinarPlanId,
      this.classPlanId});

  factory _$UpdatePlanMaterialInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePlanMaterialInputImplFromJson(json);

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
  final int? order;
  @override
  final String? consultationPlanId;
  @override
  final String? subscriptionPlanId;
  @override
  final String? webinarPlanId;
  @override
  final String? classPlanId;

  @override
  String toString() {
    return 'UpdatePlanMaterialInput(fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, description: $description, order: $order, consultationPlanId: $consultationPlanId, subscriptionPlanId: $subscriptionPlanId, webinarPlanId: $webinarPlanId, classPlanId: $classPlanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePlanMaterialInputImpl &&
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
            (identical(other.order, order) || other.order == order) &&
            (identical(other.consultationPlanId, consultationPlanId) ||
                other.consultationPlanId == consultationPlanId) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
            (identical(other.webinarPlanId, webinarPlanId) ||
                other.webinarPlanId == webinarPlanId) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId));
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
      order,
      consultationPlanId,
      subscriptionPlanId,
      webinarPlanId,
      classPlanId);

  /// Create a copy of UpdatePlanMaterialInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePlanMaterialInputImplCopyWith<_$UpdatePlanMaterialInputImpl>
      get copyWith => __$$UpdatePlanMaterialInputImplCopyWithImpl<
          _$UpdatePlanMaterialInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePlanMaterialInputImplToJson(
      this,
    );
  }
}

abstract class _UpdatePlanMaterialInput implements UpdatePlanMaterialInput {
  const factory _UpdatePlanMaterialInput(
      {final String? fileName,
      final String? originalName,
      final int? fileSize,
      final String? mimeType,
      final String? fileUrl,
      final String? storagePath,
      final String? description,
      final int? order,
      final String? consultationPlanId,
      final String? subscriptionPlanId,
      final String? webinarPlanId,
      final String? classPlanId}) = _$UpdatePlanMaterialInputImpl;

  factory _UpdatePlanMaterialInput.fromJson(Map<String, dynamic> json) =
      _$UpdatePlanMaterialInputImpl.fromJson;

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
  int? get order;
  @override
  String? get consultationPlanId;
  @override
  String? get subscriptionPlanId;
  @override
  String? get webinarPlanId;
  @override
  String? get classPlanId;

  /// Create a copy of UpdatePlanMaterialInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePlanMaterialInputImplCopyWith<_$UpdatePlanMaterialInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PlanMaterialWhereUniqueInput _$PlanMaterialWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _PlanMaterialWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$PlanMaterialWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this PlanMaterialWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlanMaterialWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanMaterialWhereUniqueInputCopyWith<PlanMaterialWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanMaterialWhereUniqueInputCopyWith<$Res> {
  factory $PlanMaterialWhereUniqueInputCopyWith(
          PlanMaterialWhereUniqueInput value,
          $Res Function(PlanMaterialWhereUniqueInput) then) =
      _$PlanMaterialWhereUniqueInputCopyWithImpl<$Res,
          PlanMaterialWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$PlanMaterialWhereUniqueInputCopyWithImpl<$Res,
        $Val extends PlanMaterialWhereUniqueInput>
    implements $PlanMaterialWhereUniqueInputCopyWith<$Res> {
  _$PlanMaterialWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanMaterialWhereUniqueInput
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
abstract class _$$PlanMaterialWhereUniqueInputImplCopyWith<$Res>
    implements $PlanMaterialWhereUniqueInputCopyWith<$Res> {
  factory _$$PlanMaterialWhereUniqueInputImplCopyWith(
          _$PlanMaterialWhereUniqueInputImpl value,
          $Res Function(_$PlanMaterialWhereUniqueInputImpl) then) =
      __$$PlanMaterialWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$PlanMaterialWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$PlanMaterialWhereUniqueInputCopyWithImpl<$Res,
        _$PlanMaterialWhereUniqueInputImpl>
    implements _$$PlanMaterialWhereUniqueInputImplCopyWith<$Res> {
  __$$PlanMaterialWhereUniqueInputImplCopyWithImpl(
      _$PlanMaterialWhereUniqueInputImpl _value,
      $Res Function(_$PlanMaterialWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanMaterialWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$PlanMaterialWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanMaterialWhereUniqueInputImpl
    implements _PlanMaterialWhereUniqueInput {
  const _$PlanMaterialWhereUniqueInputImpl({this.id});

  factory _$PlanMaterialWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PlanMaterialWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'PlanMaterialWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanMaterialWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of PlanMaterialWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanMaterialWhereUniqueInputImplCopyWith<
          _$PlanMaterialWhereUniqueInputImpl>
      get copyWith => __$$PlanMaterialWhereUniqueInputImplCopyWithImpl<
          _$PlanMaterialWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanMaterialWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _PlanMaterialWhereUniqueInput
    implements PlanMaterialWhereUniqueInput {
  const factory _PlanMaterialWhereUniqueInput({final String? id}) =
      _$PlanMaterialWhereUniqueInputImpl;

  factory _PlanMaterialWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$PlanMaterialWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of PlanMaterialWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanMaterialWhereUniqueInputImplCopyWith<
          _$PlanMaterialWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PlanMaterialWhereInput _$PlanMaterialWhereInputFromJson(
    Map<String, dynamic> json) {
  return _PlanMaterialWhereInput.fromJson(json);
}

/// @nodoc
mixin _$PlanMaterialWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get fileName => throw _privateConstructorUsedError;
  StringFilter? get originalName => throw _privateConstructorUsedError;
  IntFilter? get fileSize => throw _privateConstructorUsedError;
  StringFilter? get mimeType => throw _privateConstructorUsedError;
  StringFilter? get fileUrl => throw _privateConstructorUsedError;
  StringFilter? get storagePath => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  IntFilter? get order => throw _privateConstructorUsedError;
  StringFilter? get consultationPlanId => throw _privateConstructorUsedError;
  StringFilter? get subscriptionPlanId => throw _privateConstructorUsedError;
  StringFilter? get webinarPlanId => throw _privateConstructorUsedError;
  StringFilter? get classPlanId => throw _privateConstructorUsedError;

  /// Filter by consultationPlan relation
  ConsultationPlanRelationFilter? get consultationPlan =>
      throw _privateConstructorUsedError;

  /// Filter by subscriptionPlan relation
  SubscriptionPlanRelationFilter? get subscriptionPlan =>
      throw _privateConstructorUsedError;

  /// Filter by webinarPlan relation
  WebinarPlanRelationFilter? get webinarPlan =>
      throw _privateConstructorUsedError;

  /// Filter by classPlan relation
  ClassPlanRelationFilter? get classPlan => throw _privateConstructorUsedError;
  DateTimeFilter? get uploadedAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<PlanMaterialWhereInput>? get AND => throw _privateConstructorUsedError;
  List<PlanMaterialWhereInput>? get OR => throw _privateConstructorUsedError;
  PlanMaterialWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this PlanMaterialWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlanMaterialWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanMaterialWhereInputCopyWith<PlanMaterialWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanMaterialWhereInputCopyWith<$Res> {
  factory $PlanMaterialWhereInputCopyWith(PlanMaterialWhereInput value,
          $Res Function(PlanMaterialWhereInput) then) =
      _$PlanMaterialWhereInputCopyWithImpl<$Res, PlanMaterialWhereInput>;
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
      IntFilter? order,
      StringFilter? consultationPlanId,
      StringFilter? subscriptionPlanId,
      StringFilter? webinarPlanId,
      StringFilter? classPlanId,
      ConsultationPlanRelationFilter? consultationPlan,
      SubscriptionPlanRelationFilter? subscriptionPlan,
      WebinarPlanRelationFilter? webinarPlan,
      ClassPlanRelationFilter? classPlan,
      DateTimeFilter? uploadedAt,
      DateTimeFilter? updatedAt,
      List<PlanMaterialWhereInput>? AND,
      List<PlanMaterialWhereInput>? OR,
      PlanMaterialWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get fileName;
  $StringFilterCopyWith<$Res>? get originalName;
  $IntFilterCopyWith<$Res>? get fileSize;
  $StringFilterCopyWith<$Res>? get mimeType;
  $StringFilterCopyWith<$Res>? get fileUrl;
  $StringFilterCopyWith<$Res>? get storagePath;
  $StringFilterCopyWith<$Res>? get description;
  $IntFilterCopyWith<$Res>? get order;
  $StringFilterCopyWith<$Res>? get consultationPlanId;
  $StringFilterCopyWith<$Res>? get subscriptionPlanId;
  $StringFilterCopyWith<$Res>? get webinarPlanId;
  $StringFilterCopyWith<$Res>? get classPlanId;
  $ConsultationPlanRelationFilterCopyWith<$Res>? get consultationPlan;
  $SubscriptionPlanRelationFilterCopyWith<$Res>? get subscriptionPlan;
  $WebinarPlanRelationFilterCopyWith<$Res>? get webinarPlan;
  $ClassPlanRelationFilterCopyWith<$Res>? get classPlan;
  $DateTimeFilterCopyWith<$Res>? get uploadedAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $PlanMaterialWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$PlanMaterialWhereInputCopyWithImpl<$Res,
        $Val extends PlanMaterialWhereInput>
    implements $PlanMaterialWhereInputCopyWith<$Res> {
  _$PlanMaterialWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanMaterialWhereInput
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
    Object? order = freezed,
    Object? consultationPlanId = freezed,
    Object? subscriptionPlanId = freezed,
    Object? webinarPlanId = freezed,
    Object? classPlanId = freezed,
    Object? consultationPlan = freezed,
    Object? subscriptionPlan = freezed,
    Object? webinarPlan = freezed,
    Object? classPlan = freezed,
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultationPlan: freezed == consultationPlan
          ? _value.consultationPlan
          : consultationPlan // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanRelationFilter?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanRelationFilter?,
      webinarPlan: freezed == webinarPlan
          ? _value.webinarPlan
          : webinarPlan // ignore: cast_nullable_to_non_nullable
              as WebinarPlanRelationFilter?,
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlanRelationFilter?,
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
              as List<PlanMaterialWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<PlanMaterialWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as PlanMaterialWhereInput?,
    ) as $Val);
  }

  /// Create a copy of PlanMaterialWhereInput
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

  /// Create a copy of PlanMaterialWhereInput
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

  /// Create a copy of PlanMaterialWhereInput
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

  /// Create a copy of PlanMaterialWhereInput
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

  /// Create a copy of PlanMaterialWhereInput
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

  /// Create a copy of PlanMaterialWhereInput
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

  /// Create a copy of PlanMaterialWhereInput
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

  /// Create a copy of PlanMaterialWhereInput
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

  /// Create a copy of PlanMaterialWhereInput
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

  /// Create a copy of PlanMaterialWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get consultationPlanId {
    if (_value.consultationPlanId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.consultationPlanId!, (value) {
      return _then(_value.copyWith(consultationPlanId: value) as $Val);
    });
  }

  /// Create a copy of PlanMaterialWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get subscriptionPlanId {
    if (_value.subscriptionPlanId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.subscriptionPlanId!, (value) {
      return _then(_value.copyWith(subscriptionPlanId: value) as $Val);
    });
  }

  /// Create a copy of PlanMaterialWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get webinarPlanId {
    if (_value.webinarPlanId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.webinarPlanId!, (value) {
      return _then(_value.copyWith(webinarPlanId: value) as $Val);
    });
  }

  /// Create a copy of PlanMaterialWhereInput
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

  /// Create a copy of PlanMaterialWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationPlanRelationFilterCopyWith<$Res>? get consultationPlan {
    if (_value.consultationPlan == null) {
      return null;
    }

    return $ConsultationPlanRelationFilterCopyWith<$Res>(
        _value.consultationPlan!, (value) {
      return _then(_value.copyWith(consultationPlan: value) as $Val);
    });
  }

  /// Create a copy of PlanMaterialWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionPlanRelationFilterCopyWith<$Res>? get subscriptionPlan {
    if (_value.subscriptionPlan == null) {
      return null;
    }

    return $SubscriptionPlanRelationFilterCopyWith<$Res>(
        _value.subscriptionPlan!, (value) {
      return _then(_value.copyWith(subscriptionPlan: value) as $Val);
    });
  }

  /// Create a copy of PlanMaterialWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarPlanRelationFilterCopyWith<$Res>? get webinarPlan {
    if (_value.webinarPlan == null) {
      return null;
    }

    return $WebinarPlanRelationFilterCopyWith<$Res>(_value.webinarPlan!,
        (value) {
      return _then(_value.copyWith(webinarPlan: value) as $Val);
    });
  }

  /// Create a copy of PlanMaterialWhereInput
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

  /// Create a copy of PlanMaterialWhereInput
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

  /// Create a copy of PlanMaterialWhereInput
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

  /// Create a copy of PlanMaterialWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanMaterialWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $PlanMaterialWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlanMaterialWhereInputImplCopyWith<$Res>
    implements $PlanMaterialWhereInputCopyWith<$Res> {
  factory _$$PlanMaterialWhereInputImplCopyWith(
          _$PlanMaterialWhereInputImpl value,
          $Res Function(_$PlanMaterialWhereInputImpl) then) =
      __$$PlanMaterialWhereInputImplCopyWithImpl<$Res>;
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
      IntFilter? order,
      StringFilter? consultationPlanId,
      StringFilter? subscriptionPlanId,
      StringFilter? webinarPlanId,
      StringFilter? classPlanId,
      ConsultationPlanRelationFilter? consultationPlan,
      SubscriptionPlanRelationFilter? subscriptionPlan,
      WebinarPlanRelationFilter? webinarPlan,
      ClassPlanRelationFilter? classPlan,
      DateTimeFilter? uploadedAt,
      DateTimeFilter? updatedAt,
      List<PlanMaterialWhereInput>? AND,
      List<PlanMaterialWhereInput>? OR,
      PlanMaterialWhereInput? NOT});

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
  $IntFilterCopyWith<$Res>? get order;
  @override
  $StringFilterCopyWith<$Res>? get consultationPlanId;
  @override
  $StringFilterCopyWith<$Res>? get subscriptionPlanId;
  @override
  $StringFilterCopyWith<$Res>? get webinarPlanId;
  @override
  $StringFilterCopyWith<$Res>? get classPlanId;
  @override
  $ConsultationPlanRelationFilterCopyWith<$Res>? get consultationPlan;
  @override
  $SubscriptionPlanRelationFilterCopyWith<$Res>? get subscriptionPlan;
  @override
  $WebinarPlanRelationFilterCopyWith<$Res>? get webinarPlan;
  @override
  $ClassPlanRelationFilterCopyWith<$Res>? get classPlan;
  @override
  $DateTimeFilterCopyWith<$Res>? get uploadedAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $PlanMaterialWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$PlanMaterialWhereInputImplCopyWithImpl<$Res>
    extends _$PlanMaterialWhereInputCopyWithImpl<$Res,
        _$PlanMaterialWhereInputImpl>
    implements _$$PlanMaterialWhereInputImplCopyWith<$Res> {
  __$$PlanMaterialWhereInputImplCopyWithImpl(
      _$PlanMaterialWhereInputImpl _value,
      $Res Function(_$PlanMaterialWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanMaterialWhereInput
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
    Object? order = freezed,
    Object? consultationPlanId = freezed,
    Object? subscriptionPlanId = freezed,
    Object? webinarPlanId = freezed,
    Object? classPlanId = freezed,
    Object? consultationPlan = freezed,
    Object? subscriptionPlan = freezed,
    Object? webinarPlan = freezed,
    Object? classPlan = freezed,
    Object? uploadedAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$PlanMaterialWhereInputImpl(
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultationPlan: freezed == consultationPlan
          ? _value.consultationPlan
          : consultationPlan // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanRelationFilter?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanRelationFilter?,
      webinarPlan: freezed == webinarPlan
          ? _value.webinarPlan
          : webinarPlan // ignore: cast_nullable_to_non_nullable
              as WebinarPlanRelationFilter?,
      classPlan: freezed == classPlan
          ? _value.classPlan
          : classPlan // ignore: cast_nullable_to_non_nullable
              as ClassPlanRelationFilter?,
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
              as List<PlanMaterialWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<PlanMaterialWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as PlanMaterialWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PlanMaterialWhereInputImpl implements _PlanMaterialWhereInput {
  const _$PlanMaterialWhereInputImpl(
      {this.id,
      this.fileName,
      this.originalName,
      this.fileSize,
      this.mimeType,
      this.fileUrl,
      this.storagePath,
      this.description,
      this.order,
      this.consultationPlanId,
      this.subscriptionPlanId,
      this.webinarPlanId,
      this.classPlanId,
      this.consultationPlan,
      this.subscriptionPlan,
      this.webinarPlan,
      this.classPlan,
      this.uploadedAt,
      this.updatedAt,
      final List<PlanMaterialWhereInput>? AND,
      final List<PlanMaterialWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$PlanMaterialWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanMaterialWhereInputImplFromJson(json);

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
  final IntFilter? order;
  @override
  final StringFilter? consultationPlanId;
  @override
  final StringFilter? subscriptionPlanId;
  @override
  final StringFilter? webinarPlanId;
  @override
  final StringFilter? classPlanId;

  /// Filter by consultationPlan relation
  @override
  final ConsultationPlanRelationFilter? consultationPlan;

  /// Filter by subscriptionPlan relation
  @override
  final SubscriptionPlanRelationFilter? subscriptionPlan;

  /// Filter by webinarPlan relation
  @override
  final WebinarPlanRelationFilter? webinarPlan;

  /// Filter by classPlan relation
  @override
  final ClassPlanRelationFilter? classPlan;
  @override
  final DateTimeFilter? uploadedAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<PlanMaterialWhereInput>? _AND;
  @override
  List<PlanMaterialWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PlanMaterialWhereInput>? _OR;
  @override
  List<PlanMaterialWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PlanMaterialWhereInput? NOT;

  @override
  String toString() {
    return 'PlanMaterialWhereInput(id: $id, fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, description: $description, order: $order, consultationPlanId: $consultationPlanId, subscriptionPlanId: $subscriptionPlanId, webinarPlanId: $webinarPlanId, classPlanId: $classPlanId, consultationPlan: $consultationPlan, subscriptionPlan: $subscriptionPlan, webinarPlan: $webinarPlan, classPlan: $classPlan, uploadedAt: $uploadedAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanMaterialWhereInputImpl &&
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
            (identical(other.order, order) || other.order == order) &&
            (identical(other.consultationPlanId, consultationPlanId) ||
                other.consultationPlanId == consultationPlanId) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
            (identical(other.webinarPlanId, webinarPlanId) ||
                other.webinarPlanId == webinarPlanId) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId) &&
            (identical(other.consultationPlan, consultationPlan) ||
                other.consultationPlan == consultationPlan) &&
            (identical(other.subscriptionPlan, subscriptionPlan) ||
                other.subscriptionPlan == subscriptionPlan) &&
            (identical(other.webinarPlan, webinarPlan) ||
                other.webinarPlan == webinarPlan) &&
            (identical(other.classPlan, classPlan) ||
                other.classPlan == classPlan) &&
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
        order,
        consultationPlanId,
        subscriptionPlanId,
        webinarPlanId,
        classPlanId,
        consultationPlan,
        subscriptionPlan,
        webinarPlan,
        classPlan,
        uploadedAt,
        updatedAt,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of PlanMaterialWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanMaterialWhereInputImplCopyWith<_$PlanMaterialWhereInputImpl>
      get copyWith => __$$PlanMaterialWhereInputImplCopyWithImpl<
          _$PlanMaterialWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanMaterialWhereInputImplToJson(
      this,
    );
  }
}

abstract class _PlanMaterialWhereInput implements PlanMaterialWhereInput {
  const factory _PlanMaterialWhereInput(
      {final StringFilter? id,
      final StringFilter? fileName,
      final StringFilter? originalName,
      final IntFilter? fileSize,
      final StringFilter? mimeType,
      final StringFilter? fileUrl,
      final StringFilter? storagePath,
      final StringFilter? description,
      final IntFilter? order,
      final StringFilter? consultationPlanId,
      final StringFilter? subscriptionPlanId,
      final StringFilter? webinarPlanId,
      final StringFilter? classPlanId,
      final ConsultationPlanRelationFilter? consultationPlan,
      final SubscriptionPlanRelationFilter? subscriptionPlan,
      final WebinarPlanRelationFilter? webinarPlan,
      final ClassPlanRelationFilter? classPlan,
      final DateTimeFilter? uploadedAt,
      final DateTimeFilter? updatedAt,
      final List<PlanMaterialWhereInput>? AND,
      final List<PlanMaterialWhereInput>? OR,
      final PlanMaterialWhereInput? NOT}) = _$PlanMaterialWhereInputImpl;

  factory _PlanMaterialWhereInput.fromJson(Map<String, dynamic> json) =
      _$PlanMaterialWhereInputImpl.fromJson;

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
  IntFilter? get order;
  @override
  StringFilter? get consultationPlanId;
  @override
  StringFilter? get subscriptionPlanId;
  @override
  StringFilter? get webinarPlanId;
  @override
  StringFilter? get classPlanId;

  /// Filter by consultationPlan relation
  @override
  ConsultationPlanRelationFilter? get consultationPlan;

  /// Filter by subscriptionPlan relation
  @override
  SubscriptionPlanRelationFilter? get subscriptionPlan;

  /// Filter by webinarPlan relation
  @override
  WebinarPlanRelationFilter? get webinarPlan;

  /// Filter by classPlan relation
  @override
  ClassPlanRelationFilter? get classPlan;
  @override
  DateTimeFilter? get uploadedAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<PlanMaterialWhereInput>? get AND;
  @override
  List<PlanMaterialWhereInput>? get OR;
  @override
  PlanMaterialWhereInput? get NOT;

  /// Create a copy of PlanMaterialWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanMaterialWhereInputImplCopyWith<_$PlanMaterialWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PlanMaterialListRelationFilter _$PlanMaterialListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _PlanMaterialListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$PlanMaterialListRelationFilter {
  /// At least one related record matches
  PlanMaterialWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  PlanMaterialWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  PlanMaterialWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this PlanMaterialListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlanMaterialListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanMaterialListRelationFilterCopyWith<PlanMaterialListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanMaterialListRelationFilterCopyWith<$Res> {
  factory $PlanMaterialListRelationFilterCopyWith(
          PlanMaterialListRelationFilter value,
          $Res Function(PlanMaterialListRelationFilter) then) =
      _$PlanMaterialListRelationFilterCopyWithImpl<$Res,
          PlanMaterialListRelationFilter>;
  @useResult
  $Res call(
      {PlanMaterialWhereInput? some,
      PlanMaterialWhereInput? every,
      PlanMaterialWhereInput? none});

  $PlanMaterialWhereInputCopyWith<$Res>? get some;
  $PlanMaterialWhereInputCopyWith<$Res>? get every;
  $PlanMaterialWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$PlanMaterialListRelationFilterCopyWithImpl<$Res,
        $Val extends PlanMaterialListRelationFilter>
    implements $PlanMaterialListRelationFilterCopyWith<$Res> {
  _$PlanMaterialListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanMaterialListRelationFilter
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
              as PlanMaterialWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as PlanMaterialWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as PlanMaterialWhereInput?,
    ) as $Val);
  }

  /// Create a copy of PlanMaterialListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanMaterialWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $PlanMaterialWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of PlanMaterialListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanMaterialWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $PlanMaterialWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of PlanMaterialListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanMaterialWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $PlanMaterialWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlanMaterialListRelationFilterImplCopyWith<$Res>
    implements $PlanMaterialListRelationFilterCopyWith<$Res> {
  factory _$$PlanMaterialListRelationFilterImplCopyWith(
          _$PlanMaterialListRelationFilterImpl value,
          $Res Function(_$PlanMaterialListRelationFilterImpl) then) =
      __$$PlanMaterialListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlanMaterialWhereInput? some,
      PlanMaterialWhereInput? every,
      PlanMaterialWhereInput? none});

  @override
  $PlanMaterialWhereInputCopyWith<$Res>? get some;
  @override
  $PlanMaterialWhereInputCopyWith<$Res>? get every;
  @override
  $PlanMaterialWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$PlanMaterialListRelationFilterImplCopyWithImpl<$Res>
    extends _$PlanMaterialListRelationFilterCopyWithImpl<$Res,
        _$PlanMaterialListRelationFilterImpl>
    implements _$$PlanMaterialListRelationFilterImplCopyWith<$Res> {
  __$$PlanMaterialListRelationFilterImplCopyWithImpl(
      _$PlanMaterialListRelationFilterImpl _value,
      $Res Function(_$PlanMaterialListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanMaterialListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$PlanMaterialListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as PlanMaterialWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as PlanMaterialWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as PlanMaterialWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanMaterialListRelationFilterImpl
    implements _PlanMaterialListRelationFilter {
  const _$PlanMaterialListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$PlanMaterialListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PlanMaterialListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final PlanMaterialWhereInput? some;

  /// All related records match
  @override
  final PlanMaterialWhereInput? every;

  /// No related records match
  @override
  final PlanMaterialWhereInput? none;

  @override
  String toString() {
    return 'PlanMaterialListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanMaterialListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of PlanMaterialListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanMaterialListRelationFilterImplCopyWith<
          _$PlanMaterialListRelationFilterImpl>
      get copyWith => __$$PlanMaterialListRelationFilterImplCopyWithImpl<
          _$PlanMaterialListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanMaterialListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _PlanMaterialListRelationFilter
    implements PlanMaterialListRelationFilter {
  const factory _PlanMaterialListRelationFilter(
          {final PlanMaterialWhereInput? some,
          final PlanMaterialWhereInput? every,
          final PlanMaterialWhereInput? none}) =
      _$PlanMaterialListRelationFilterImpl;

  factory _PlanMaterialListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$PlanMaterialListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  PlanMaterialWhereInput? get some;

  /// All related records match
  @override
  PlanMaterialWhereInput? get every;

  /// No related records match
  @override
  PlanMaterialWhereInput? get none;

  /// Create a copy of PlanMaterialListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanMaterialListRelationFilterImplCopyWith<
          _$PlanMaterialListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PlanMaterialRelationFilter _$PlanMaterialRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _PlanMaterialRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$PlanMaterialRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  PlanMaterialWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  PlanMaterialWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this PlanMaterialRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlanMaterialRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanMaterialRelationFilterCopyWith<PlanMaterialRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanMaterialRelationFilterCopyWith<$Res> {
  factory $PlanMaterialRelationFilterCopyWith(PlanMaterialRelationFilter value,
          $Res Function(PlanMaterialRelationFilter) then) =
      _$PlanMaterialRelationFilterCopyWithImpl<$Res,
          PlanMaterialRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') PlanMaterialWhereInput? is_,
      PlanMaterialWhereInput? isNot});

  $PlanMaterialWhereInputCopyWith<$Res>? get is_;
  $PlanMaterialWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$PlanMaterialRelationFilterCopyWithImpl<$Res,
        $Val extends PlanMaterialRelationFilter>
    implements $PlanMaterialRelationFilterCopyWith<$Res> {
  _$PlanMaterialRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanMaterialRelationFilter
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
              as PlanMaterialWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as PlanMaterialWhereInput?,
    ) as $Val);
  }

  /// Create a copy of PlanMaterialRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanMaterialWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $PlanMaterialWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of PlanMaterialRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanMaterialWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $PlanMaterialWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlanMaterialRelationFilterImplCopyWith<$Res>
    implements $PlanMaterialRelationFilterCopyWith<$Res> {
  factory _$$PlanMaterialRelationFilterImplCopyWith(
          _$PlanMaterialRelationFilterImpl value,
          $Res Function(_$PlanMaterialRelationFilterImpl) then) =
      __$$PlanMaterialRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') PlanMaterialWhereInput? is_,
      PlanMaterialWhereInput? isNot});

  @override
  $PlanMaterialWhereInputCopyWith<$Res>? get is_;
  @override
  $PlanMaterialWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$PlanMaterialRelationFilterImplCopyWithImpl<$Res>
    extends _$PlanMaterialRelationFilterCopyWithImpl<$Res,
        _$PlanMaterialRelationFilterImpl>
    implements _$$PlanMaterialRelationFilterImplCopyWith<$Res> {
  __$$PlanMaterialRelationFilterImplCopyWithImpl(
      _$PlanMaterialRelationFilterImpl _value,
      $Res Function(_$PlanMaterialRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanMaterialRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$PlanMaterialRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as PlanMaterialWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as PlanMaterialWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanMaterialRelationFilterImpl implements _PlanMaterialRelationFilter {
  const _$PlanMaterialRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$PlanMaterialRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PlanMaterialRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final PlanMaterialWhereInput? is_;

  /// Related record does not match
  @override
  final PlanMaterialWhereInput? isNot;

  @override
  String toString() {
    return 'PlanMaterialRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanMaterialRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of PlanMaterialRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanMaterialRelationFilterImplCopyWith<_$PlanMaterialRelationFilterImpl>
      get copyWith => __$$PlanMaterialRelationFilterImplCopyWithImpl<
          _$PlanMaterialRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanMaterialRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _PlanMaterialRelationFilter
    implements PlanMaterialRelationFilter {
  const factory _PlanMaterialRelationFilter(
      {@JsonKey(name: 'is') final PlanMaterialWhereInput? is_,
      final PlanMaterialWhereInput? isNot}) = _$PlanMaterialRelationFilterImpl;

  factory _PlanMaterialRelationFilter.fromJson(Map<String, dynamic> json) =
      _$PlanMaterialRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  PlanMaterialWhereInput? get is_;

  /// Related record does not match
  @override
  PlanMaterialWhereInput? get isNot;

  /// Create a copy of PlanMaterialRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanMaterialRelationFilterImplCopyWith<_$PlanMaterialRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PlanMaterialOrderByInput _$PlanMaterialOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _PlanMaterialOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$PlanMaterialOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get fileName => throw _privateConstructorUsedError;
  SortOrder? get originalName => throw _privateConstructorUsedError;
  SortOrder? get fileSize => throw _privateConstructorUsedError;
  SortOrder? get mimeType => throw _privateConstructorUsedError;
  SortOrder? get fileUrl => throw _privateConstructorUsedError;
  SortOrder? get storagePath => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get order => throw _privateConstructorUsedError;
  SortOrder? get consultationPlanId => throw _privateConstructorUsedError;
  SortOrder? get subscriptionPlanId => throw _privateConstructorUsedError;
  SortOrder? get webinarPlanId => throw _privateConstructorUsedError;
  SortOrder? get classPlanId => throw _privateConstructorUsedError;
  SortOrder? get uploadedAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PlanMaterialOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlanMaterialOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanMaterialOrderByInputCopyWith<PlanMaterialOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanMaterialOrderByInputCopyWith<$Res> {
  factory $PlanMaterialOrderByInputCopyWith(PlanMaterialOrderByInput value,
          $Res Function(PlanMaterialOrderByInput) then) =
      _$PlanMaterialOrderByInputCopyWithImpl<$Res, PlanMaterialOrderByInput>;
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
      SortOrder? order,
      SortOrder? consultationPlanId,
      SortOrder? subscriptionPlanId,
      SortOrder? webinarPlanId,
      SortOrder? classPlanId,
      SortOrder? uploadedAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$PlanMaterialOrderByInputCopyWithImpl<$Res,
        $Val extends PlanMaterialOrderByInput>
    implements $PlanMaterialOrderByInputCopyWith<$Res> {
  _$PlanMaterialOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanMaterialOrderByInput
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
    Object? order = freezed,
    Object? consultationPlanId = freezed,
    Object? subscriptionPlanId = freezed,
    Object? webinarPlanId = freezed,
    Object? classPlanId = freezed,
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PlanMaterialOrderByInputImplCopyWith<$Res>
    implements $PlanMaterialOrderByInputCopyWith<$Res> {
  factory _$$PlanMaterialOrderByInputImplCopyWith(
          _$PlanMaterialOrderByInputImpl value,
          $Res Function(_$PlanMaterialOrderByInputImpl) then) =
      __$$PlanMaterialOrderByInputImplCopyWithImpl<$Res>;
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
      SortOrder? order,
      SortOrder? consultationPlanId,
      SortOrder? subscriptionPlanId,
      SortOrder? webinarPlanId,
      SortOrder? classPlanId,
      SortOrder? uploadedAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$PlanMaterialOrderByInputImplCopyWithImpl<$Res>
    extends _$PlanMaterialOrderByInputCopyWithImpl<$Res,
        _$PlanMaterialOrderByInputImpl>
    implements _$$PlanMaterialOrderByInputImplCopyWith<$Res> {
  __$$PlanMaterialOrderByInputImplCopyWithImpl(
      _$PlanMaterialOrderByInputImpl _value,
      $Res Function(_$PlanMaterialOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanMaterialOrderByInput
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
    Object? order = freezed,
    Object? consultationPlanId = freezed,
    Object? subscriptionPlanId = freezed,
    Object? webinarPlanId = freezed,
    Object? classPlanId = freezed,
    Object? uploadedAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PlanMaterialOrderByInputImpl(
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultationPlanId: freezed == consultationPlanId
          ? _value.consultationPlanId
          : consultationPlanId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      webinarPlanId: freezed == webinarPlanId
          ? _value.webinarPlanId
          : webinarPlanId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      classPlanId: freezed == classPlanId
          ? _value.classPlanId
          : classPlanId // ignore: cast_nullable_to_non_nullable
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
class _$PlanMaterialOrderByInputImpl implements _PlanMaterialOrderByInput {
  const _$PlanMaterialOrderByInputImpl(
      {this.id,
      this.fileName,
      this.originalName,
      this.fileSize,
      this.mimeType,
      this.fileUrl,
      this.storagePath,
      this.description,
      this.order,
      this.consultationPlanId,
      this.subscriptionPlanId,
      this.webinarPlanId,
      this.classPlanId,
      this.uploadedAt,
      this.updatedAt});

  factory _$PlanMaterialOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanMaterialOrderByInputImplFromJson(json);

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
  final SortOrder? order;
  @override
  final SortOrder? consultationPlanId;
  @override
  final SortOrder? subscriptionPlanId;
  @override
  final SortOrder? webinarPlanId;
  @override
  final SortOrder? classPlanId;
  @override
  final SortOrder? uploadedAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'PlanMaterialOrderByInput(id: $id, fileName: $fileName, originalName: $originalName, fileSize: $fileSize, mimeType: $mimeType, fileUrl: $fileUrl, storagePath: $storagePath, description: $description, order: $order, consultationPlanId: $consultationPlanId, subscriptionPlanId: $subscriptionPlanId, webinarPlanId: $webinarPlanId, classPlanId: $classPlanId, uploadedAt: $uploadedAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanMaterialOrderByInputImpl &&
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
            (identical(other.order, order) || other.order == order) &&
            (identical(other.consultationPlanId, consultationPlanId) ||
                other.consultationPlanId == consultationPlanId) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
            (identical(other.webinarPlanId, webinarPlanId) ||
                other.webinarPlanId == webinarPlanId) &&
            (identical(other.classPlanId, classPlanId) ||
                other.classPlanId == classPlanId) &&
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
      order,
      consultationPlanId,
      subscriptionPlanId,
      webinarPlanId,
      classPlanId,
      uploadedAt,
      updatedAt);

  /// Create a copy of PlanMaterialOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanMaterialOrderByInputImplCopyWith<_$PlanMaterialOrderByInputImpl>
      get copyWith => __$$PlanMaterialOrderByInputImplCopyWithImpl<
          _$PlanMaterialOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanMaterialOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _PlanMaterialOrderByInput implements PlanMaterialOrderByInput {
  const factory _PlanMaterialOrderByInput(
      {final SortOrder? id,
      final SortOrder? fileName,
      final SortOrder? originalName,
      final SortOrder? fileSize,
      final SortOrder? mimeType,
      final SortOrder? fileUrl,
      final SortOrder? storagePath,
      final SortOrder? description,
      final SortOrder? order,
      final SortOrder? consultationPlanId,
      final SortOrder? subscriptionPlanId,
      final SortOrder? webinarPlanId,
      final SortOrder? classPlanId,
      final SortOrder? uploadedAt,
      final SortOrder? updatedAt}) = _$PlanMaterialOrderByInputImpl;

  factory _PlanMaterialOrderByInput.fromJson(Map<String, dynamic> json) =
      _$PlanMaterialOrderByInputImpl.fromJson;

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
  SortOrder? get order;
  @override
  SortOrder? get consultationPlanId;
  @override
  SortOrder? get subscriptionPlanId;
  @override
  SortOrder? get webinarPlanId;
  @override
  SortOrder? get classPlanId;
  @override
  SortOrder? get uploadedAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of PlanMaterialOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanMaterialOrderByInputImplCopyWith<_$PlanMaterialOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
