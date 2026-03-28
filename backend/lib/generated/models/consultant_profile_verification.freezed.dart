// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultant_profile_verification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsultantProfileVerification _$ConsultantProfileVerificationFromJson(
    Map<String, dynamic> json) {
  return _ConsultantProfileVerification.fromJson(json);
}

/// @nodoc
mixin _$ConsultantProfileVerification {
  String get id => throw _privateConstructorUsedError;
  ProfileVerificationStatus get status => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;
  DateTime get submittedAt => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get reviewedAt => throw _privateConstructorUsedError;
  String? get reviewedById => throw _privateConstructorUsedError;
  String? get reviewNotes => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  String? get feedbackDetails => throw _privateConstructorUsedError;
  List<ProfileVerificationDocument> get documents =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConsultantProfileVerification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantProfileVerification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantProfileVerificationCopyWith<ConsultantProfileVerification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantProfileVerificationCopyWith<$Res> {
  factory $ConsultantProfileVerificationCopyWith(
          ConsultantProfileVerification value,
          $Res Function(ConsultantProfileVerification) then) =
      _$ConsultantProfileVerificationCopyWithImpl<$Res,
          ConsultantProfileVerification>;
  @useResult
  $Res call(
      {String id,
      ProfileVerificationStatus status,
      String consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      DateTime submittedAt,
      String? notes,
      DateTime? reviewedAt,
      String? reviewedById,
      String? reviewNotes,
      String? rejectionReason,
      String? feedbackDetails,
      List<ProfileVerificationDocument> documents,
      DateTime createdAt,
      DateTime updatedAt});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class _$ConsultantProfileVerificationCopyWithImpl<$Res,
        $Val extends ConsultantProfileVerification>
    implements $ConsultantProfileVerificationCopyWith<$Res> {
  _$ConsultantProfileVerificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantProfileVerification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? consultantProfileId = null,
    Object? consultantProfile = freezed,
    Object? submittedAt = null,
    Object? notes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedById = freezed,
    Object? reviewNotes = freezed,
    Object? rejectionReason = freezed,
    Object? feedbackDetails = freezed,
    Object? documents = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatus,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      submittedAt: null == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedById: freezed == reviewedById
          ? _value.reviewedById
          : reviewedById // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackDetails: freezed == feedbackDetails
          ? _value.feedbackDetails
          : feedbackDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<ProfileVerificationDocument>,
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

  /// Create a copy of ConsultantProfileVerification
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
abstract class _$$ConsultantProfileVerificationImplCopyWith<$Res>
    implements $ConsultantProfileVerificationCopyWith<$Res> {
  factory _$$ConsultantProfileVerificationImplCopyWith(
          _$ConsultantProfileVerificationImpl value,
          $Res Function(_$ConsultantProfileVerificationImpl) then) =
      __$$ConsultantProfileVerificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ProfileVerificationStatus status,
      String consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      DateTime submittedAt,
      String? notes,
      DateTime? reviewedAt,
      String? reviewedById,
      String? reviewNotes,
      String? rejectionReason,
      String? feedbackDetails,
      List<ProfileVerificationDocument> documents,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class __$$ConsultantProfileVerificationImplCopyWithImpl<$Res>
    extends _$ConsultantProfileVerificationCopyWithImpl<$Res,
        _$ConsultantProfileVerificationImpl>
    implements _$$ConsultantProfileVerificationImplCopyWith<$Res> {
  __$$ConsultantProfileVerificationImplCopyWithImpl(
      _$ConsultantProfileVerificationImpl _value,
      $Res Function(_$ConsultantProfileVerificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantProfileVerification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? consultantProfileId = null,
    Object? consultantProfile = freezed,
    Object? submittedAt = null,
    Object? notes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedById = freezed,
    Object? reviewNotes = freezed,
    Object? rejectionReason = freezed,
    Object? feedbackDetails = freezed,
    Object? documents = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ConsultantProfileVerificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatus,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      submittedAt: null == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedById: freezed == reviewedById
          ? _value.reviewedById
          : reviewedById // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackDetails: freezed == feedbackDetails
          ? _value.feedbackDetails
          : feedbackDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<ProfileVerificationDocument>,
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
class _$ConsultantProfileVerificationImpl
    implements _ConsultantProfileVerification {
  const _$ConsultantProfileVerificationImpl(
      {required this.id,
      this.status = ProfileVerificationStatus.pending,
      required this.consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      required this.submittedAt,
      this.notes,
      this.reviewedAt,
      this.reviewedById,
      this.reviewNotes,
      this.rejectionReason,
      this.feedbackDetails,
      required final List<ProfileVerificationDocument> documents,
      required this.createdAt,
      required this.updatedAt})
      : _documents = documents;

  factory _$ConsultantProfileVerificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantProfileVerificationImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final ProfileVerificationStatus status;
  @override
  final String consultantProfileId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? consultantProfile;
  @override
  final DateTime submittedAt;
  @override
  final String? notes;
  @override
  final DateTime? reviewedAt;
  @override
  final String? reviewedById;
  @override
  final String? reviewNotes;
  @override
  final String? rejectionReason;
  @override
  final String? feedbackDetails;
  final List<ProfileVerificationDocument> _documents;
  @override
  List<ProfileVerificationDocument> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ConsultantProfileVerification(id: $id, status: $status, consultantProfileId: $consultantProfileId, consultantProfile: $consultantProfile, submittedAt: $submittedAt, notes: $notes, reviewedAt: $reviewedAt, reviewedById: $reviewedById, reviewNotes: $reviewNotes, rejectionReason: $rejectionReason, feedbackDetails: $feedbackDetails, documents: $documents, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantProfileVerificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.reviewedById, reviewedById) ||
                other.reviewedById == reviewedById) &&
            (identical(other.reviewNotes, reviewNotes) ||
                other.reviewNotes == reviewNotes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.feedbackDetails, feedbackDetails) ||
                other.feedbackDetails == feedbackDetails) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
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
      status,
      consultantProfileId,
      consultantProfile,
      submittedAt,
      notes,
      reviewedAt,
      reviewedById,
      reviewNotes,
      rejectionReason,
      feedbackDetails,
      const DeepCollectionEquality().hash(_documents),
      createdAt,
      updatedAt);

  /// Create a copy of ConsultantProfileVerification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantProfileVerificationImplCopyWith<
          _$ConsultantProfileVerificationImpl>
      get copyWith => __$$ConsultantProfileVerificationImplCopyWithImpl<
          _$ConsultantProfileVerificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantProfileVerificationImplToJson(
      this,
    );
  }
}

abstract class _ConsultantProfileVerification
    implements ConsultantProfileVerification {
  const factory _ConsultantProfileVerification(
      {required final String id,
      final ProfileVerificationStatus status,
      required final String consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? consultantProfile,
      required final DateTime submittedAt,
      final String? notes,
      final DateTime? reviewedAt,
      final String? reviewedById,
      final String? reviewNotes,
      final String? rejectionReason,
      final String? feedbackDetails,
      required final List<ProfileVerificationDocument> documents,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ConsultantProfileVerificationImpl;

  factory _ConsultantProfileVerification.fromJson(Map<String, dynamic> json) =
      _$ConsultantProfileVerificationImpl.fromJson;

  @override
  String get id;
  @override
  ProfileVerificationStatus get status;
  @override
  String get consultantProfileId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile;
  @override
  DateTime get submittedAt;
  @override
  String? get notes;
  @override
  DateTime? get reviewedAt;
  @override
  String? get reviewedById;
  @override
  String? get reviewNotes;
  @override
  String? get rejectionReason;
  @override
  String? get feedbackDetails;
  @override
  List<ProfileVerificationDocument> get documents;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ConsultantProfileVerification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantProfileVerificationImplCopyWith<
          _$ConsultantProfileVerificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateConsultantProfileVerificationInput
    _$CreateConsultantProfileVerificationInputFromJson(
        Map<String, dynamic> json) {
  return _CreateConsultantProfileVerificationInput.fromJson(json);
}

/// @nodoc
mixin _$CreateConsultantProfileVerificationInput {
  ProfileVerificationStatus get status => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get reviewedAt => throw _privateConstructorUsedError;
  String? get reviewedById => throw _privateConstructorUsedError;
  String? get reviewNotes => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  String? get feedbackDetails => throw _privateConstructorUsedError;

  /// Serializes this CreateConsultantProfileVerificationInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateConsultantProfileVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateConsultantProfileVerificationInputCopyWith<
          CreateConsultantProfileVerificationInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateConsultantProfileVerificationInputCopyWith<$Res> {
  factory $CreateConsultantProfileVerificationInputCopyWith(
          CreateConsultantProfileVerificationInput value,
          $Res Function(CreateConsultantProfileVerificationInput) then) =
      _$CreateConsultantProfileVerificationInputCopyWithImpl<$Res,
          CreateConsultantProfileVerificationInput>;
  @useResult
  $Res call(
      {ProfileVerificationStatus status,
      String consultantProfileId,
      String? notes,
      DateTime? reviewedAt,
      String? reviewedById,
      String? reviewNotes,
      String? rejectionReason,
      String? feedbackDetails});
}

/// @nodoc
class _$CreateConsultantProfileVerificationInputCopyWithImpl<$Res,
        $Val extends CreateConsultantProfileVerificationInput>
    implements $CreateConsultantProfileVerificationInputCopyWith<$Res> {
  _$CreateConsultantProfileVerificationInputCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateConsultantProfileVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? consultantProfileId = null,
    Object? notes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedById = freezed,
    Object? reviewNotes = freezed,
    Object? rejectionReason = freezed,
    Object? feedbackDetails = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatus,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedById: freezed == reviewedById
          ? _value.reviewedById
          : reviewedById // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackDetails: freezed == feedbackDetails
          ? _value.feedbackDetails
          : feedbackDetails // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateConsultantProfileVerificationInputImplCopyWith<$Res>
    implements $CreateConsultantProfileVerificationInputCopyWith<$Res> {
  factory _$$CreateConsultantProfileVerificationInputImplCopyWith(
          _$CreateConsultantProfileVerificationInputImpl value,
          $Res Function(_$CreateConsultantProfileVerificationInputImpl) then) =
      __$$CreateConsultantProfileVerificationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileVerificationStatus status,
      String consultantProfileId,
      String? notes,
      DateTime? reviewedAt,
      String? reviewedById,
      String? reviewNotes,
      String? rejectionReason,
      String? feedbackDetails});
}

/// @nodoc
class __$$CreateConsultantProfileVerificationInputImplCopyWithImpl<$Res>
    extends _$CreateConsultantProfileVerificationInputCopyWithImpl<$Res,
        _$CreateConsultantProfileVerificationInputImpl>
    implements _$$CreateConsultantProfileVerificationInputImplCopyWith<$Res> {
  __$$CreateConsultantProfileVerificationInputImplCopyWithImpl(
      _$CreateConsultantProfileVerificationInputImpl _value,
      $Res Function(_$CreateConsultantProfileVerificationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateConsultantProfileVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? consultantProfileId = null,
    Object? notes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedById = freezed,
    Object? reviewNotes = freezed,
    Object? rejectionReason = freezed,
    Object? feedbackDetails = freezed,
  }) {
    return _then(_$CreateConsultantProfileVerificationInputImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatus,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedById: freezed == reviewedById
          ? _value.reviewedById
          : reviewedById // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackDetails: freezed == feedbackDetails
          ? _value.feedbackDetails
          : feedbackDetails // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateConsultantProfileVerificationInputImpl
    implements _CreateConsultantProfileVerificationInput {
  const _$CreateConsultantProfileVerificationInputImpl(
      {this.status = ProfileVerificationStatus.pending,
      required this.consultantProfileId,
      this.notes,
      this.reviewedAt,
      this.reviewedById,
      this.reviewNotes,
      this.rejectionReason,
      this.feedbackDetails});

  factory _$CreateConsultantProfileVerificationInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateConsultantProfileVerificationInputImplFromJson(json);

  @override
  @JsonKey()
  final ProfileVerificationStatus status;
  @override
  final String consultantProfileId;
  @override
  final String? notes;
  @override
  final DateTime? reviewedAt;
  @override
  final String? reviewedById;
  @override
  final String? reviewNotes;
  @override
  final String? rejectionReason;
  @override
  final String? feedbackDetails;

  @override
  String toString() {
    return 'CreateConsultantProfileVerificationInput(status: $status, consultantProfileId: $consultantProfileId, notes: $notes, reviewedAt: $reviewedAt, reviewedById: $reviewedById, reviewNotes: $reviewNotes, rejectionReason: $rejectionReason, feedbackDetails: $feedbackDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateConsultantProfileVerificationInputImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.reviewedById, reviewedById) ||
                other.reviewedById == reviewedById) &&
            (identical(other.reviewNotes, reviewNotes) ||
                other.reviewNotes == reviewNotes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.feedbackDetails, feedbackDetails) ||
                other.feedbackDetails == feedbackDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      consultantProfileId,
      notes,
      reviewedAt,
      reviewedById,
      reviewNotes,
      rejectionReason,
      feedbackDetails);

  /// Create a copy of CreateConsultantProfileVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateConsultantProfileVerificationInputImplCopyWith<
          _$CreateConsultantProfileVerificationInputImpl>
      get copyWith =>
          __$$CreateConsultantProfileVerificationInputImplCopyWithImpl<
              _$CreateConsultantProfileVerificationInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateConsultantProfileVerificationInputImplToJson(
      this,
    );
  }
}

abstract class _CreateConsultantProfileVerificationInput
    implements CreateConsultantProfileVerificationInput {
  const factory _CreateConsultantProfileVerificationInput(
          {final ProfileVerificationStatus status,
          required final String consultantProfileId,
          final String? notes,
          final DateTime? reviewedAt,
          final String? reviewedById,
          final String? reviewNotes,
          final String? rejectionReason,
          final String? feedbackDetails}) =
      _$CreateConsultantProfileVerificationInputImpl;

  factory _CreateConsultantProfileVerificationInput.fromJson(
          Map<String, dynamic> json) =
      _$CreateConsultantProfileVerificationInputImpl.fromJson;

  @override
  ProfileVerificationStatus get status;
  @override
  String get consultantProfileId;
  @override
  String? get notes;
  @override
  DateTime? get reviewedAt;
  @override
  String? get reviewedById;
  @override
  String? get reviewNotes;
  @override
  String? get rejectionReason;
  @override
  String? get feedbackDetails;

  /// Create a copy of CreateConsultantProfileVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateConsultantProfileVerificationInputImplCopyWith<
          _$CreateConsultantProfileVerificationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateConsultantProfileVerificationInput
    _$UpdateConsultantProfileVerificationInputFromJson(
        Map<String, dynamic> json) {
  return _UpdateConsultantProfileVerificationInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateConsultantProfileVerificationInput {
  ProfileVerificationStatus? get status => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get reviewedAt => throw _privateConstructorUsedError;
  String? get reviewedById => throw _privateConstructorUsedError;
  String? get reviewNotes => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  String? get feedbackDetails => throw _privateConstructorUsedError;

  /// Serializes this UpdateConsultantProfileVerificationInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateConsultantProfileVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateConsultantProfileVerificationInputCopyWith<
          UpdateConsultantProfileVerificationInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateConsultantProfileVerificationInputCopyWith<$Res> {
  factory $UpdateConsultantProfileVerificationInputCopyWith(
          UpdateConsultantProfileVerificationInput value,
          $Res Function(UpdateConsultantProfileVerificationInput) then) =
      _$UpdateConsultantProfileVerificationInputCopyWithImpl<$Res,
          UpdateConsultantProfileVerificationInput>;
  @useResult
  $Res call(
      {ProfileVerificationStatus? status,
      String? consultantProfileId,
      String? notes,
      DateTime? reviewedAt,
      String? reviewedById,
      String? reviewNotes,
      String? rejectionReason,
      String? feedbackDetails});
}

/// @nodoc
class _$UpdateConsultantProfileVerificationInputCopyWithImpl<$Res,
        $Val extends UpdateConsultantProfileVerificationInput>
    implements $UpdateConsultantProfileVerificationInputCopyWith<$Res> {
  _$UpdateConsultantProfileVerificationInputCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateConsultantProfileVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? consultantProfileId = freezed,
    Object? notes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedById = freezed,
    Object? reviewNotes = freezed,
    Object? rejectionReason = freezed,
    Object? feedbackDetails = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatus?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedById: freezed == reviewedById
          ? _value.reviewedById
          : reviewedById // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackDetails: freezed == feedbackDetails
          ? _value.feedbackDetails
          : feedbackDetails // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateConsultantProfileVerificationInputImplCopyWith<$Res>
    implements $UpdateConsultantProfileVerificationInputCopyWith<$Res> {
  factory _$$UpdateConsultantProfileVerificationInputImplCopyWith(
          _$UpdateConsultantProfileVerificationInputImpl value,
          $Res Function(_$UpdateConsultantProfileVerificationInputImpl) then) =
      __$$UpdateConsultantProfileVerificationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileVerificationStatus? status,
      String? consultantProfileId,
      String? notes,
      DateTime? reviewedAt,
      String? reviewedById,
      String? reviewNotes,
      String? rejectionReason,
      String? feedbackDetails});
}

/// @nodoc
class __$$UpdateConsultantProfileVerificationInputImplCopyWithImpl<$Res>
    extends _$UpdateConsultantProfileVerificationInputCopyWithImpl<$Res,
        _$UpdateConsultantProfileVerificationInputImpl>
    implements _$$UpdateConsultantProfileVerificationInputImplCopyWith<$Res> {
  __$$UpdateConsultantProfileVerificationInputImplCopyWithImpl(
      _$UpdateConsultantProfileVerificationInputImpl _value,
      $Res Function(_$UpdateConsultantProfileVerificationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateConsultantProfileVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? consultantProfileId = freezed,
    Object? notes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedById = freezed,
    Object? reviewNotes = freezed,
    Object? rejectionReason = freezed,
    Object? feedbackDetails = freezed,
  }) {
    return _then(_$UpdateConsultantProfileVerificationInputImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatus?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewedById: freezed == reviewedById
          ? _value.reviewedById
          : reviewedById // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackDetails: freezed == feedbackDetails
          ? _value.feedbackDetails
          : feedbackDetails // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateConsultantProfileVerificationInputImpl
    implements _UpdateConsultantProfileVerificationInput {
  const _$UpdateConsultantProfileVerificationInputImpl(
      {this.status,
      this.consultantProfileId,
      this.notes,
      this.reviewedAt,
      this.reviewedById,
      this.reviewNotes,
      this.rejectionReason,
      this.feedbackDetails});

  factory _$UpdateConsultantProfileVerificationInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateConsultantProfileVerificationInputImplFromJson(json);

  @override
  final ProfileVerificationStatus? status;
  @override
  final String? consultantProfileId;
  @override
  final String? notes;
  @override
  final DateTime? reviewedAt;
  @override
  final String? reviewedById;
  @override
  final String? reviewNotes;
  @override
  final String? rejectionReason;
  @override
  final String? feedbackDetails;

  @override
  String toString() {
    return 'UpdateConsultantProfileVerificationInput(status: $status, consultantProfileId: $consultantProfileId, notes: $notes, reviewedAt: $reviewedAt, reviewedById: $reviewedById, reviewNotes: $reviewNotes, rejectionReason: $rejectionReason, feedbackDetails: $feedbackDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateConsultantProfileVerificationInputImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.reviewedById, reviewedById) ||
                other.reviewedById == reviewedById) &&
            (identical(other.reviewNotes, reviewNotes) ||
                other.reviewNotes == reviewNotes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.feedbackDetails, feedbackDetails) ||
                other.feedbackDetails == feedbackDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      consultantProfileId,
      notes,
      reviewedAt,
      reviewedById,
      reviewNotes,
      rejectionReason,
      feedbackDetails);

  /// Create a copy of UpdateConsultantProfileVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateConsultantProfileVerificationInputImplCopyWith<
          _$UpdateConsultantProfileVerificationInputImpl>
      get copyWith =>
          __$$UpdateConsultantProfileVerificationInputImplCopyWithImpl<
              _$UpdateConsultantProfileVerificationInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateConsultantProfileVerificationInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateConsultantProfileVerificationInput
    implements UpdateConsultantProfileVerificationInput {
  const factory _UpdateConsultantProfileVerificationInput(
          {final ProfileVerificationStatus? status,
          final String? consultantProfileId,
          final String? notes,
          final DateTime? reviewedAt,
          final String? reviewedById,
          final String? reviewNotes,
          final String? rejectionReason,
          final String? feedbackDetails}) =
      _$UpdateConsultantProfileVerificationInputImpl;

  factory _UpdateConsultantProfileVerificationInput.fromJson(
          Map<String, dynamic> json) =
      _$UpdateConsultantProfileVerificationInputImpl.fromJson;

  @override
  ProfileVerificationStatus? get status;
  @override
  String? get consultantProfileId;
  @override
  String? get notes;
  @override
  DateTime? get reviewedAt;
  @override
  String? get reviewedById;
  @override
  String? get reviewNotes;
  @override
  String? get rejectionReason;
  @override
  String? get feedbackDetails;

  /// Create a copy of UpdateConsultantProfileVerificationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateConsultantProfileVerificationInputImplCopyWith<
          _$UpdateConsultantProfileVerificationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantProfileVerificationWhereUniqueInput
    _$ConsultantProfileVerificationWhereUniqueInputFromJson(
        Map<String, dynamic> json) {
  return _ConsultantProfileVerificationWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultantProfileVerificationWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ConsultantProfileVerificationWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantProfileVerificationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantProfileVerificationWhereUniqueInputCopyWith<
          ConsultantProfileVerificationWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantProfileVerificationWhereUniqueInputCopyWith<$Res> {
  factory $ConsultantProfileVerificationWhereUniqueInputCopyWith(
          ConsultantProfileVerificationWhereUniqueInput value,
          $Res Function(ConsultantProfileVerificationWhereUniqueInput) then) =
      _$ConsultantProfileVerificationWhereUniqueInputCopyWithImpl<$Res,
          ConsultantProfileVerificationWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ConsultantProfileVerificationWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ConsultantProfileVerificationWhereUniqueInput>
    implements $ConsultantProfileVerificationWhereUniqueInputCopyWith<$Res> {
  _$ConsultantProfileVerificationWhereUniqueInputCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantProfileVerificationWhereUniqueInput
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
abstract class _$$ConsultantProfileVerificationWhereUniqueInputImplCopyWith<
        $Res>
    implements $ConsultantProfileVerificationWhereUniqueInputCopyWith<$Res> {
  factory _$$ConsultantProfileVerificationWhereUniqueInputImplCopyWith(
          _$ConsultantProfileVerificationWhereUniqueInputImpl value,
          $Res Function(_$ConsultantProfileVerificationWhereUniqueInputImpl)
              then) =
      __$$ConsultantProfileVerificationWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$ConsultantProfileVerificationWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ConsultantProfileVerificationWhereUniqueInputCopyWithImpl<$Res,
        _$ConsultantProfileVerificationWhereUniqueInputImpl>
    implements
        _$$ConsultantProfileVerificationWhereUniqueInputImplCopyWith<$Res> {
  __$$ConsultantProfileVerificationWhereUniqueInputImplCopyWithImpl(
      _$ConsultantProfileVerificationWhereUniqueInputImpl _value,
      $Res Function(_$ConsultantProfileVerificationWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantProfileVerificationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ConsultantProfileVerificationWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantProfileVerificationWhereUniqueInputImpl
    implements _ConsultantProfileVerificationWhereUniqueInput {
  const _$ConsultantProfileVerificationWhereUniqueInputImpl({this.id});

  factory _$ConsultantProfileVerificationWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantProfileVerificationWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'ConsultantProfileVerificationWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantProfileVerificationWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ConsultantProfileVerificationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantProfileVerificationWhereUniqueInputImplCopyWith<
          _$ConsultantProfileVerificationWhereUniqueInputImpl>
      get copyWith =>
          __$$ConsultantProfileVerificationWhereUniqueInputImplCopyWithImpl<
                  _$ConsultantProfileVerificationWhereUniqueInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantProfileVerificationWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultantProfileVerificationWhereUniqueInput
    implements ConsultantProfileVerificationWhereUniqueInput {
  const factory _ConsultantProfileVerificationWhereUniqueInput(
      {final String? id}) = _$ConsultantProfileVerificationWhereUniqueInputImpl;

  factory _ConsultantProfileVerificationWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$ConsultantProfileVerificationWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of ConsultantProfileVerificationWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantProfileVerificationWhereUniqueInputImplCopyWith<
          _$ConsultantProfileVerificationWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantProfileVerificationWhereInput
    _$ConsultantProfileVerificationWhereInputFromJson(
        Map<String, dynamic> json) {
  return _ConsultantProfileVerificationWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultantProfileVerificationWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  ProfileVerificationStatusFilter? get status =>
      throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;
  DateTimeFilter? get submittedAt => throw _privateConstructorUsedError;
  StringFilter? get notes => throw _privateConstructorUsedError;
  DateTimeFilter? get reviewedAt => throw _privateConstructorUsedError;
  StringFilter? get reviewedById => throw _privateConstructorUsedError;
  StringFilter? get reviewNotes => throw _privateConstructorUsedError;
  StringFilter? get rejectionReason => throw _privateConstructorUsedError;
  StringFilter? get feedbackDetails => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<ConsultantProfileVerificationWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<ConsultantProfileVerificationWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  ConsultantProfileVerificationWhereInput? get NOT =>
      throw _privateConstructorUsedError;

  /// Serializes this ConsultantProfileVerificationWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantProfileVerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantProfileVerificationWhereInputCopyWith<
          ConsultantProfileVerificationWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantProfileVerificationWhereInputCopyWith<$Res> {
  factory $ConsultantProfileVerificationWhereInputCopyWith(
          ConsultantProfileVerificationWhereInput value,
          $Res Function(ConsultantProfileVerificationWhereInput) then) =
      _$ConsultantProfileVerificationWhereInputCopyWithImpl<$Res,
          ConsultantProfileVerificationWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      ProfileVerificationStatusFilter? status,
      StringFilter? consultantProfileId,
      ConsultantProfileRelationFilter? consultantProfile,
      DateTimeFilter? submittedAt,
      StringFilter? notes,
      DateTimeFilter? reviewedAt,
      StringFilter? reviewedById,
      StringFilter? reviewNotes,
      StringFilter? rejectionReason,
      StringFilter? feedbackDetails,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ConsultantProfileVerificationWhereInput>? AND,
      List<ConsultantProfileVerificationWhereInput>? OR,
      ConsultantProfileVerificationWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $ProfileVerificationStatusFilterCopyWith<$Res>? get status;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $DateTimeFilterCopyWith<$Res>? get submittedAt;
  $StringFilterCopyWith<$Res>? get notes;
  $DateTimeFilterCopyWith<$Res>? get reviewedAt;
  $StringFilterCopyWith<$Res>? get reviewedById;
  $StringFilterCopyWith<$Res>? get reviewNotes;
  $StringFilterCopyWith<$Res>? get rejectionReason;
  $StringFilterCopyWith<$Res>? get feedbackDetails;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ConsultantProfileVerificationWhereInputCopyWithImpl<$Res,
        $Val extends ConsultantProfileVerificationWhereInput>
    implements $ConsultantProfileVerificationWhereInputCopyWith<$Res> {
  _$ConsultantProfileVerificationWhereInputCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantProfileVerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? consultantProfileId = freezed,
    Object? consultantProfile = freezed,
    Object? submittedAt = freezed,
    Object? notes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedById = freezed,
    Object? reviewNotes = freezed,
    Object? rejectionReason = freezed,
    Object? feedbackDetails = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatusFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      reviewedById: freezed == reviewedById
          ? _value.reviewedById
          : reviewedById // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      feedbackDetails: freezed == feedbackDetails
          ? _value.feedbackDetails
          : feedbackDetails // ignore: cast_nullable_to_non_nullable
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
              as List<ConsultantProfileVerificationWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsultantProfileVerificationWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileVerificationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultantProfileVerificationWhereInput
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

  /// Create a copy of ConsultantProfileVerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileVerificationStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $ProfileVerificationStatusFilterCopyWith<$Res>(_value.status!,
        (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileVerificationWhereInput
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

  /// Create a copy of ConsultantProfileVerificationWhereInput
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

  /// Create a copy of ConsultantProfileVerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get submittedAt {
    if (_value.submittedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.submittedAt!, (value) {
      return _then(_value.copyWith(submittedAt: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileVerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get notes {
    if (_value.notes == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.notes!, (value) {
      return _then(_value.copyWith(notes: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileVerificationWhereInput
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

  /// Create a copy of ConsultantProfileVerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get reviewedById {
    if (_value.reviewedById == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.reviewedById!, (value) {
      return _then(_value.copyWith(reviewedById: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileVerificationWhereInput
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

  /// Create a copy of ConsultantProfileVerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get rejectionReason {
    if (_value.rejectionReason == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.rejectionReason!, (value) {
      return _then(_value.copyWith(rejectionReason: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileVerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get feedbackDetails {
    if (_value.feedbackDetails == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.feedbackDetails!, (value) {
      return _then(_value.copyWith(feedbackDetails: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileVerificationWhereInput
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

  /// Create a copy of ConsultantProfileVerificationWhereInput
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

  /// Create a copy of ConsultantProfileVerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ConsultantProfileVerificationWhereInputCopyWith<$Res>(_value.NOT!,
        (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantProfileVerificationWhereInputImplCopyWith<$Res>
    implements $ConsultantProfileVerificationWhereInputCopyWith<$Res> {
  factory _$$ConsultantProfileVerificationWhereInputImplCopyWith(
          _$ConsultantProfileVerificationWhereInputImpl value,
          $Res Function(_$ConsultantProfileVerificationWhereInputImpl) then) =
      __$$ConsultantProfileVerificationWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      ProfileVerificationStatusFilter? status,
      StringFilter? consultantProfileId,
      ConsultantProfileRelationFilter? consultantProfile,
      DateTimeFilter? submittedAt,
      StringFilter? notes,
      DateTimeFilter? reviewedAt,
      StringFilter? reviewedById,
      StringFilter? reviewNotes,
      StringFilter? rejectionReason,
      StringFilter? feedbackDetails,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ConsultantProfileVerificationWhereInput>? AND,
      List<ConsultantProfileVerificationWhereInput>? OR,
      ConsultantProfileVerificationWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $ProfileVerificationStatusFilterCopyWith<$Res>? get status;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  @override
  $DateTimeFilterCopyWith<$Res>? get submittedAt;
  @override
  $StringFilterCopyWith<$Res>? get notes;
  @override
  $DateTimeFilterCopyWith<$Res>? get reviewedAt;
  @override
  $StringFilterCopyWith<$Res>? get reviewedById;
  @override
  $StringFilterCopyWith<$Res>? get reviewNotes;
  @override
  $StringFilterCopyWith<$Res>? get rejectionReason;
  @override
  $StringFilterCopyWith<$Res>? get feedbackDetails;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ConsultantProfileVerificationWhereInputImplCopyWithImpl<$Res>
    extends _$ConsultantProfileVerificationWhereInputCopyWithImpl<$Res,
        _$ConsultantProfileVerificationWhereInputImpl>
    implements _$$ConsultantProfileVerificationWhereInputImplCopyWith<$Res> {
  __$$ConsultantProfileVerificationWhereInputImplCopyWithImpl(
      _$ConsultantProfileVerificationWhereInputImpl _value,
      $Res Function(_$ConsultantProfileVerificationWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantProfileVerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? consultantProfileId = freezed,
    Object? consultantProfile = freezed,
    Object? submittedAt = freezed,
    Object? notes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedById = freezed,
    Object? reviewNotes = freezed,
    Object? rejectionReason = freezed,
    Object? feedbackDetails = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ConsultantProfileVerificationWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatusFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      reviewedById: freezed == reviewedById
          ? _value.reviewedById
          : reviewedById // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      feedbackDetails: freezed == feedbackDetails
          ? _value.feedbackDetails
          : feedbackDetails // ignore: cast_nullable_to_non_nullable
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
              as List<ConsultantProfileVerificationWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsultantProfileVerificationWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileVerificationWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ConsultantProfileVerificationWhereInputImpl
    implements _ConsultantProfileVerificationWhereInput {
  const _$ConsultantProfileVerificationWhereInputImpl(
      {this.id,
      this.status,
      this.consultantProfileId,
      this.consultantProfile,
      this.submittedAt,
      this.notes,
      this.reviewedAt,
      this.reviewedById,
      this.reviewNotes,
      this.rejectionReason,
      this.feedbackDetails,
      this.createdAt,
      this.updatedAt,
      final List<ConsultantProfileVerificationWhereInput>? AND,
      final List<ConsultantProfileVerificationWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ConsultantProfileVerificationWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantProfileVerificationWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final ProfileVerificationStatusFilter? status;
  @override
  final StringFilter? consultantProfileId;

  /// Filter by consultantProfile relation
  @override
  final ConsultantProfileRelationFilter? consultantProfile;
  @override
  final DateTimeFilter? submittedAt;
  @override
  final StringFilter? notes;
  @override
  final DateTimeFilter? reviewedAt;
  @override
  final StringFilter? reviewedById;
  @override
  final StringFilter? reviewNotes;
  @override
  final StringFilter? rejectionReason;
  @override
  final StringFilter? feedbackDetails;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<ConsultantProfileVerificationWhereInput>? _AND;
  @override
  List<ConsultantProfileVerificationWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ConsultantProfileVerificationWhereInput>? _OR;
  @override
  List<ConsultantProfileVerificationWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ConsultantProfileVerificationWhereInput? NOT;

  @override
  String toString() {
    return 'ConsultantProfileVerificationWhereInput(id: $id, status: $status, consultantProfileId: $consultantProfileId, consultantProfile: $consultantProfile, submittedAt: $submittedAt, notes: $notes, reviewedAt: $reviewedAt, reviewedById: $reviewedById, reviewNotes: $reviewNotes, rejectionReason: $rejectionReason, feedbackDetails: $feedbackDetails, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantProfileVerificationWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.reviewedById, reviewedById) ||
                other.reviewedById == reviewedById) &&
            (identical(other.reviewNotes, reviewNotes) ||
                other.reviewNotes == reviewNotes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.feedbackDetails, feedbackDetails) ||
                other.feedbackDetails == feedbackDetails) &&
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
      status,
      consultantProfileId,
      consultantProfile,
      submittedAt,
      notes,
      reviewedAt,
      reviewedById,
      reviewNotes,
      rejectionReason,
      feedbackDetails,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of ConsultantProfileVerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantProfileVerificationWhereInputImplCopyWith<
          _$ConsultantProfileVerificationWhereInputImpl>
      get copyWith =>
          __$$ConsultantProfileVerificationWhereInputImplCopyWithImpl<
              _$ConsultantProfileVerificationWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantProfileVerificationWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultantProfileVerificationWhereInput
    implements ConsultantProfileVerificationWhereInput {
  const factory _ConsultantProfileVerificationWhereInput(
          {final StringFilter? id,
          final ProfileVerificationStatusFilter? status,
          final StringFilter? consultantProfileId,
          final ConsultantProfileRelationFilter? consultantProfile,
          final DateTimeFilter? submittedAt,
          final StringFilter? notes,
          final DateTimeFilter? reviewedAt,
          final StringFilter? reviewedById,
          final StringFilter? reviewNotes,
          final StringFilter? rejectionReason,
          final StringFilter? feedbackDetails,
          final DateTimeFilter? createdAt,
          final DateTimeFilter? updatedAt,
          final List<ConsultantProfileVerificationWhereInput>? AND,
          final List<ConsultantProfileVerificationWhereInput>? OR,
          final ConsultantProfileVerificationWhereInput? NOT}) =
      _$ConsultantProfileVerificationWhereInputImpl;

  factory _ConsultantProfileVerificationWhereInput.fromJson(
          Map<String, dynamic> json) =
      _$ConsultantProfileVerificationWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  ProfileVerificationStatusFilter? get status;
  @override
  StringFilter? get consultantProfileId;

  /// Filter by consultantProfile relation
  @override
  ConsultantProfileRelationFilter? get consultantProfile;
  @override
  DateTimeFilter? get submittedAt;
  @override
  StringFilter? get notes;
  @override
  DateTimeFilter? get reviewedAt;
  @override
  StringFilter? get reviewedById;
  @override
  StringFilter? get reviewNotes;
  @override
  StringFilter? get rejectionReason;
  @override
  StringFilter? get feedbackDetails;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<ConsultantProfileVerificationWhereInput>? get AND;
  @override
  List<ConsultantProfileVerificationWhereInput>? get OR;
  @override
  ConsultantProfileVerificationWhereInput? get NOT;

  /// Create a copy of ConsultantProfileVerificationWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantProfileVerificationWhereInputImplCopyWith<
          _$ConsultantProfileVerificationWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantProfileVerificationListRelationFilter
    _$ConsultantProfileVerificationListRelationFilterFromJson(
        Map<String, dynamic> json) {
  return _ConsultantProfileVerificationListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultantProfileVerificationListRelationFilter {
  /// At least one related record matches
  ConsultantProfileVerificationWhereInput? get some =>
      throw _privateConstructorUsedError;

  /// All related records match
  ConsultantProfileVerificationWhereInput? get every =>
      throw _privateConstructorUsedError;

  /// No related records match
  ConsultantProfileVerificationWhereInput? get none =>
      throw _privateConstructorUsedError;

  /// Serializes this ConsultantProfileVerificationListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantProfileVerificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantProfileVerificationListRelationFilterCopyWith<
          ConsultantProfileVerificationListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantProfileVerificationListRelationFilterCopyWith<$Res> {
  factory $ConsultantProfileVerificationListRelationFilterCopyWith(
          ConsultantProfileVerificationListRelationFilter value,
          $Res Function(ConsultantProfileVerificationListRelationFilter) then) =
      _$ConsultantProfileVerificationListRelationFilterCopyWithImpl<$Res,
          ConsultantProfileVerificationListRelationFilter>;
  @useResult
  $Res call(
      {ConsultantProfileVerificationWhereInput? some,
      ConsultantProfileVerificationWhereInput? every,
      ConsultantProfileVerificationWhereInput? none});

  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get some;
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get every;
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ConsultantProfileVerificationListRelationFilterCopyWithImpl<$Res,
        $Val extends ConsultantProfileVerificationListRelationFilter>
    implements $ConsultantProfileVerificationListRelationFilterCopyWith<$Res> {
  _$ConsultantProfileVerificationListRelationFilterCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantProfileVerificationListRelationFilter
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
              as ConsultantProfileVerificationWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileVerificationWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileVerificationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultantProfileVerificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ConsultantProfileVerificationWhereInputCopyWith<$Res>(_value.some!,
        (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileVerificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ConsultantProfileVerificationWhereInputCopyWith<$Res>(_value.every!,
        (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileVerificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ConsultantProfileVerificationWhereInputCopyWith<$Res>(_value.none!,
        (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantProfileVerificationListRelationFilterImplCopyWith<
        $Res>
    implements $ConsultantProfileVerificationListRelationFilterCopyWith<$Res> {
  factory _$$ConsultantProfileVerificationListRelationFilterImplCopyWith(
          _$ConsultantProfileVerificationListRelationFilterImpl value,
          $Res Function(_$ConsultantProfileVerificationListRelationFilterImpl)
              then) =
      __$$ConsultantProfileVerificationListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConsultantProfileVerificationWhereInput? some,
      ConsultantProfileVerificationWhereInput? every,
      ConsultantProfileVerificationWhereInput? none});

  @override
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get some;
  @override
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get every;
  @override
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ConsultantProfileVerificationListRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsultantProfileVerificationListRelationFilterCopyWithImpl<$Res,
        _$ConsultantProfileVerificationListRelationFilterImpl>
    implements
        _$$ConsultantProfileVerificationListRelationFilterImplCopyWith<$Res> {
  __$$ConsultantProfileVerificationListRelationFilterImplCopyWithImpl(
      _$ConsultantProfileVerificationListRelationFilterImpl _value,
      $Res Function(_$ConsultantProfileVerificationListRelationFilterImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of ConsultantProfileVerificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ConsultantProfileVerificationListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileVerificationWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileVerificationWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileVerificationWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantProfileVerificationListRelationFilterImpl
    implements _ConsultantProfileVerificationListRelationFilter {
  const _$ConsultantProfileVerificationListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ConsultantProfileVerificationListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantProfileVerificationListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ConsultantProfileVerificationWhereInput? some;

  /// All related records match
  @override
  final ConsultantProfileVerificationWhereInput? every;

  /// No related records match
  @override
  final ConsultantProfileVerificationWhereInput? none;

  @override
  String toString() {
    return 'ConsultantProfileVerificationListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantProfileVerificationListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ConsultantProfileVerificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantProfileVerificationListRelationFilterImplCopyWith<
          _$ConsultantProfileVerificationListRelationFilterImpl>
      get copyWith =>
          __$$ConsultantProfileVerificationListRelationFilterImplCopyWithImpl<
                  _$ConsultantProfileVerificationListRelationFilterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantProfileVerificationListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultantProfileVerificationListRelationFilter
    implements ConsultantProfileVerificationListRelationFilter {
  const factory _ConsultantProfileVerificationListRelationFilter(
          {final ConsultantProfileVerificationWhereInput? some,
          final ConsultantProfileVerificationWhereInput? every,
          final ConsultantProfileVerificationWhereInput? none}) =
      _$ConsultantProfileVerificationListRelationFilterImpl;

  factory _ConsultantProfileVerificationListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ConsultantProfileVerificationListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ConsultantProfileVerificationWhereInput? get some;

  /// All related records match
  @override
  ConsultantProfileVerificationWhereInput? get every;

  /// No related records match
  @override
  ConsultantProfileVerificationWhereInput? get none;

  /// Create a copy of ConsultantProfileVerificationListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantProfileVerificationListRelationFilterImplCopyWith<
          _$ConsultantProfileVerificationListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantProfileVerificationRelationFilter
    _$ConsultantProfileVerificationRelationFilterFromJson(
        Map<String, dynamic> json) {
  return _ConsultantProfileVerificationRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultantProfileVerificationRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ConsultantProfileVerificationWhereInput? get is_ =>
      throw _privateConstructorUsedError;

  /// Related record does not match
  ConsultantProfileVerificationWhereInput? get isNot =>
      throw _privateConstructorUsedError;

  /// Serializes this ConsultantProfileVerificationRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantProfileVerificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantProfileVerificationRelationFilterCopyWith<
          ConsultantProfileVerificationRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantProfileVerificationRelationFilterCopyWith<$Res> {
  factory $ConsultantProfileVerificationRelationFilterCopyWith(
          ConsultantProfileVerificationRelationFilter value,
          $Res Function(ConsultantProfileVerificationRelationFilter) then) =
      _$ConsultantProfileVerificationRelationFilterCopyWithImpl<$Res,
          ConsultantProfileVerificationRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsultantProfileVerificationWhereInput? is_,
      ConsultantProfileVerificationWhereInput? isNot});

  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get is_;
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ConsultantProfileVerificationRelationFilterCopyWithImpl<$Res,
        $Val extends ConsultantProfileVerificationRelationFilter>
    implements $ConsultantProfileVerificationRelationFilterCopyWith<$Res> {
  _$ConsultantProfileVerificationRelationFilterCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantProfileVerificationRelationFilter
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
              as ConsultantProfileVerificationWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileVerificationWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultantProfileVerificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ConsultantProfileVerificationWhereInputCopyWith<$Res>(_value.is_!,
        (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ConsultantProfileVerificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ConsultantProfileVerificationWhereInputCopyWith<$Res>(_value.isNot!,
        (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultantProfileVerificationRelationFilterImplCopyWith<$Res>
    implements $ConsultantProfileVerificationRelationFilterCopyWith<$Res> {
  factory _$$ConsultantProfileVerificationRelationFilterImplCopyWith(
          _$ConsultantProfileVerificationRelationFilterImpl value,
          $Res Function(_$ConsultantProfileVerificationRelationFilterImpl)
              then) =
      __$$ConsultantProfileVerificationRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsultantProfileVerificationWhereInput? is_,
      ConsultantProfileVerificationWhereInput? isNot});

  @override
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get is_;
  @override
  $ConsultantProfileVerificationWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ConsultantProfileVerificationRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsultantProfileVerificationRelationFilterCopyWithImpl<$Res,
        _$ConsultantProfileVerificationRelationFilterImpl>
    implements
        _$$ConsultantProfileVerificationRelationFilterImplCopyWith<$Res> {
  __$$ConsultantProfileVerificationRelationFilterImplCopyWithImpl(
      _$ConsultantProfileVerificationRelationFilterImpl _value,
      $Res Function(_$ConsultantProfileVerificationRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantProfileVerificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ConsultantProfileVerificationRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileVerificationWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileVerificationWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultantProfileVerificationRelationFilterImpl
    implements _ConsultantProfileVerificationRelationFilter {
  const _$ConsultantProfileVerificationRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ConsultantProfileVerificationRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantProfileVerificationRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ConsultantProfileVerificationWhereInput? is_;

  /// Related record does not match
  @override
  final ConsultantProfileVerificationWhereInput? isNot;

  @override
  String toString() {
    return 'ConsultantProfileVerificationRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantProfileVerificationRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ConsultantProfileVerificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantProfileVerificationRelationFilterImplCopyWith<
          _$ConsultantProfileVerificationRelationFilterImpl>
      get copyWith =>
          __$$ConsultantProfileVerificationRelationFilterImplCopyWithImpl<
                  _$ConsultantProfileVerificationRelationFilterImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantProfileVerificationRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultantProfileVerificationRelationFilter
    implements ConsultantProfileVerificationRelationFilter {
  const factory _ConsultantProfileVerificationRelationFilter(
      {@JsonKey(name: 'is') final ConsultantProfileVerificationWhereInput? is_,
      final ConsultantProfileVerificationWhereInput?
          isNot}) = _$ConsultantProfileVerificationRelationFilterImpl;

  factory _ConsultantProfileVerificationRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ConsultantProfileVerificationRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ConsultantProfileVerificationWhereInput? get is_;

  /// Related record does not match
  @override
  ConsultantProfileVerificationWhereInput? get isNot;

  /// Create a copy of ConsultantProfileVerificationRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantProfileVerificationRelationFilterImplCopyWith<
          _$ConsultantProfileVerificationRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultantProfileVerificationOrderByInput
    _$ConsultantProfileVerificationOrderByInputFromJson(
        Map<String, dynamic> json) {
  return _ConsultantProfileVerificationOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultantProfileVerificationOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get submittedAt => throw _privateConstructorUsedError;
  SortOrder? get notes => throw _privateConstructorUsedError;
  SortOrder? get reviewedAt => throw _privateConstructorUsedError;
  SortOrder? get reviewedById => throw _privateConstructorUsedError;
  SortOrder? get reviewNotes => throw _privateConstructorUsedError;
  SortOrder? get rejectionReason => throw _privateConstructorUsedError;
  SortOrder? get feedbackDetails => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConsultantProfileVerificationOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultantProfileVerificationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultantProfileVerificationOrderByInputCopyWith<
          ConsultantProfileVerificationOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultantProfileVerificationOrderByInputCopyWith<$Res> {
  factory $ConsultantProfileVerificationOrderByInputCopyWith(
          ConsultantProfileVerificationOrderByInput value,
          $Res Function(ConsultantProfileVerificationOrderByInput) then) =
      _$ConsultantProfileVerificationOrderByInputCopyWithImpl<$Res,
          ConsultantProfileVerificationOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? submittedAt,
      SortOrder? notes,
      SortOrder? reviewedAt,
      SortOrder? reviewedById,
      SortOrder? reviewNotes,
      SortOrder? rejectionReason,
      SortOrder? feedbackDetails,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$ConsultantProfileVerificationOrderByInputCopyWithImpl<$Res,
        $Val extends ConsultantProfileVerificationOrderByInput>
    implements $ConsultantProfileVerificationOrderByInputCopyWith<$Res> {
  _$ConsultantProfileVerificationOrderByInputCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultantProfileVerificationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? submittedAt = freezed,
    Object? notes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedById = freezed,
    Object? reviewNotes = freezed,
    Object? rejectionReason = freezed,
    Object? feedbackDetails = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewedById: freezed == reviewedById
          ? _value.reviewedById
          : reviewedById // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      feedbackDetails: freezed == feedbackDetails
          ? _value.feedbackDetails
          : feedbackDetails // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ConsultantProfileVerificationOrderByInputImplCopyWith<$Res>
    implements $ConsultantProfileVerificationOrderByInputCopyWith<$Res> {
  factory _$$ConsultantProfileVerificationOrderByInputImplCopyWith(
          _$ConsultantProfileVerificationOrderByInputImpl value,
          $Res Function(_$ConsultantProfileVerificationOrderByInputImpl) then) =
      __$$ConsultantProfileVerificationOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? consultantProfileId,
      SortOrder? submittedAt,
      SortOrder? notes,
      SortOrder? reviewedAt,
      SortOrder? reviewedById,
      SortOrder? reviewNotes,
      SortOrder? rejectionReason,
      SortOrder? feedbackDetails,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$ConsultantProfileVerificationOrderByInputImplCopyWithImpl<$Res>
    extends _$ConsultantProfileVerificationOrderByInputCopyWithImpl<$Res,
        _$ConsultantProfileVerificationOrderByInputImpl>
    implements _$$ConsultantProfileVerificationOrderByInputImplCopyWith<$Res> {
  __$$ConsultantProfileVerificationOrderByInputImplCopyWithImpl(
      _$ConsultantProfileVerificationOrderByInputImpl _value,
      $Res Function(_$ConsultantProfileVerificationOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultantProfileVerificationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? consultantProfileId = freezed,
    Object? submittedAt = freezed,
    Object? notes = freezed,
    Object? reviewedAt = freezed,
    Object? reviewedById = freezed,
    Object? reviewNotes = freezed,
    Object? rejectionReason = freezed,
    Object? feedbackDetails = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ConsultantProfileVerificationOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      submittedAt: freezed == submittedAt
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewedById: freezed == reviewedById
          ? _value.reviewedById
          : reviewedById // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewNotes: freezed == reviewNotes
          ? _value.reviewNotes
          : reviewNotes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      feedbackDetails: freezed == feedbackDetails
          ? _value.feedbackDetails
          : feedbackDetails // ignore: cast_nullable_to_non_nullable
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
class _$ConsultantProfileVerificationOrderByInputImpl
    implements _ConsultantProfileVerificationOrderByInput {
  const _$ConsultantProfileVerificationOrderByInputImpl(
      {this.id,
      this.consultantProfileId,
      this.submittedAt,
      this.notes,
      this.reviewedAt,
      this.reviewedById,
      this.reviewNotes,
      this.rejectionReason,
      this.feedbackDetails,
      this.createdAt,
      this.updatedAt});

  factory _$ConsultantProfileVerificationOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultantProfileVerificationOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? submittedAt;
  @override
  final SortOrder? notes;
  @override
  final SortOrder? reviewedAt;
  @override
  final SortOrder? reviewedById;
  @override
  final SortOrder? reviewNotes;
  @override
  final SortOrder? rejectionReason;
  @override
  final SortOrder? feedbackDetails;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'ConsultantProfileVerificationOrderByInput(id: $id, consultantProfileId: $consultantProfileId, submittedAt: $submittedAt, notes: $notes, reviewedAt: $reviewedAt, reviewedById: $reviewedById, reviewNotes: $reviewNotes, rejectionReason: $rejectionReason, feedbackDetails: $feedbackDetails, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultantProfileVerificationOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.reviewedById, reviewedById) ||
                other.reviewedById == reviewedById) &&
            (identical(other.reviewNotes, reviewNotes) ||
                other.reviewNotes == reviewNotes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.feedbackDetails, feedbackDetails) ||
                other.feedbackDetails == feedbackDetails) &&
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
      consultantProfileId,
      submittedAt,
      notes,
      reviewedAt,
      reviewedById,
      reviewNotes,
      rejectionReason,
      feedbackDetails,
      createdAt,
      updatedAt);

  /// Create a copy of ConsultantProfileVerificationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultantProfileVerificationOrderByInputImplCopyWith<
          _$ConsultantProfileVerificationOrderByInputImpl>
      get copyWith =>
          __$$ConsultantProfileVerificationOrderByInputImplCopyWithImpl<
                  _$ConsultantProfileVerificationOrderByInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultantProfileVerificationOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultantProfileVerificationOrderByInput
    implements ConsultantProfileVerificationOrderByInput {
  const factory _ConsultantProfileVerificationOrderByInput(
          {final SortOrder? id,
          final SortOrder? consultantProfileId,
          final SortOrder? submittedAt,
          final SortOrder? notes,
          final SortOrder? reviewedAt,
          final SortOrder? reviewedById,
          final SortOrder? reviewNotes,
          final SortOrder? rejectionReason,
          final SortOrder? feedbackDetails,
          final SortOrder? createdAt,
          final SortOrder? updatedAt}) =
      _$ConsultantProfileVerificationOrderByInputImpl;

  factory _ConsultantProfileVerificationOrderByInput.fromJson(
          Map<String, dynamic> json) =
      _$ConsultantProfileVerificationOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get submittedAt;
  @override
  SortOrder? get notes;
  @override
  SortOrder? get reviewedAt;
  @override
  SortOrder? get reviewedById;
  @override
  SortOrder? get reviewNotes;
  @override
  SortOrder? get rejectionReason;
  @override
  SortOrder? get feedbackDetails;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of ConsultantProfileVerificationOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultantProfileVerificationOrderByInputImplCopyWith<
          _$ConsultantProfileVerificationOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
