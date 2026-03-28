// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Announcement _$AnnouncementFromJson(Map<String, dynamic> json) {
  return _Announcement.fromJson(json);
}

/// @nodoc
mixin _$Announcement {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String get backgroundColor => throw _privateConstructorUsedError;
  String get textColor => throw _privateConstructorUsedError;
  String? get linkUrl => throw _privateConstructorUsedError;
  String? get linkText => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Announcement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementCopyWith<Announcement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementCopyWith<$Res> {
  factory $AnnouncementCopyWith(
          Announcement value, $Res Function(Announcement) then) =
      _$AnnouncementCopyWithImpl<$Res, Announcement>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      bool isActive,
      DateTime? startDate,
      DateTime? endDate,
      String backgroundColor,
      String textColor,
      String? linkUrl,
      String? linkText,
      String createdBy,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$AnnouncementCopyWithImpl<$Res, $Val extends Announcement>
    implements $AnnouncementCopyWith<$Res> {
  _$AnnouncementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? isActive = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? backgroundColor = null,
    Object? textColor = null,
    Object? linkUrl = freezed,
    Object? linkText = freezed,
    Object? createdBy = null,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String,
      linkUrl: freezed == linkUrl
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      linkText: freezed == linkText
          ? _value.linkText
          : linkText // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$AnnouncementImplCopyWith<$Res>
    implements $AnnouncementCopyWith<$Res> {
  factory _$$AnnouncementImplCopyWith(
          _$AnnouncementImpl value, $Res Function(_$AnnouncementImpl) then) =
      __$$AnnouncementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      bool isActive,
      DateTime? startDate,
      DateTime? endDate,
      String backgroundColor,
      String textColor,
      String? linkUrl,
      String? linkText,
      String createdBy,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$AnnouncementImplCopyWithImpl<$Res>
    extends _$AnnouncementCopyWithImpl<$Res, _$AnnouncementImpl>
    implements _$$AnnouncementImplCopyWith<$Res> {
  __$$AnnouncementImplCopyWithImpl(
      _$AnnouncementImpl _value, $Res Function(_$AnnouncementImpl) _then)
      : super(_value, _then);

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? isActive = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? backgroundColor = null,
    Object? textColor = null,
    Object? linkUrl = freezed,
    Object? linkText = freezed,
    Object? createdBy = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AnnouncementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String,
      linkUrl: freezed == linkUrl
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      linkText: freezed == linkText
          ? _value.linkText
          : linkText // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
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
class _$AnnouncementImpl implements _Announcement {
  const _$AnnouncementImpl(
      {required this.id,
      required this.title,
      required this.content,
      this.isActive = true,
      this.startDate,
      this.endDate,
      this.backgroundColor = "#000000",
      this.textColor = "#FFFFFF",
      this.linkUrl,
      this.linkText,
      required this.createdBy,
      required this.createdAt,
      required this.updatedAt});

  factory _$AnnouncementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnouncementImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final String backgroundColor;
  @override
  @JsonKey()
  final String textColor;
  @override
  final String? linkUrl;
  @override
  final String? linkText;
  @override
  final String createdBy;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Announcement(id: $id, title: $title, content: $content, isActive: $isActive, startDate: $startDate, endDate: $endDate, backgroundColor: $backgroundColor, textColor: $textColor, linkUrl: $linkUrl, linkText: $linkText, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.linkUrl, linkUrl) || other.linkUrl == linkUrl) &&
            (identical(other.linkText, linkText) ||
                other.linkText == linkText) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
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
      content,
      isActive,
      startDate,
      endDate,
      backgroundColor,
      textColor,
      linkUrl,
      linkText,
      createdBy,
      createdAt,
      updatedAt);

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementImplCopyWith<_$AnnouncementImpl> get copyWith =>
      __$$AnnouncementImplCopyWithImpl<_$AnnouncementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementImplToJson(
      this,
    );
  }
}

abstract class _Announcement implements Announcement {
  const factory _Announcement(
      {required final String id,
      required final String title,
      required final String content,
      final bool isActive,
      final DateTime? startDate,
      final DateTime? endDate,
      final String backgroundColor,
      final String textColor,
      final String? linkUrl,
      final String? linkText,
      required final String createdBy,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$AnnouncementImpl;

  factory _Announcement.fromJson(Map<String, dynamic> json) =
      _$AnnouncementImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  bool get isActive;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String get backgroundColor;
  @override
  String get textColor;
  @override
  String? get linkUrl;
  @override
  String? get linkText;
  @override
  String get createdBy;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementImplCopyWith<_$AnnouncementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateAnnouncementInput _$CreateAnnouncementInputFromJson(
    Map<String, dynamic> json) {
  return _CreateAnnouncementInput.fromJson(json);
}

/// @nodoc
mixin _$CreateAnnouncementInput {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  String? get textColor => throw _privateConstructorUsedError;
  String? get linkUrl => throw _privateConstructorUsedError;
  String? get linkText => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;

  /// Serializes this CreateAnnouncementInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateAnnouncementInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateAnnouncementInputCopyWith<CreateAnnouncementInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAnnouncementInputCopyWith<$Res> {
  factory $CreateAnnouncementInputCopyWith(CreateAnnouncementInput value,
          $Res Function(CreateAnnouncementInput) then) =
      _$CreateAnnouncementInputCopyWithImpl<$Res, CreateAnnouncementInput>;
  @useResult
  $Res call(
      {String title,
      String content,
      bool? isActive,
      DateTime? startDate,
      DateTime? endDate,
      String? backgroundColor,
      String? textColor,
      String? linkUrl,
      String? linkText,
      String createdBy});
}

/// @nodoc
class _$CreateAnnouncementInputCopyWithImpl<$Res,
        $Val extends CreateAnnouncementInput>
    implements $CreateAnnouncementInputCopyWith<$Res> {
  _$CreateAnnouncementInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAnnouncementInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? isActive = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? linkUrl = freezed,
    Object? linkText = freezed,
    Object? createdBy = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      linkUrl: freezed == linkUrl
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      linkText: freezed == linkText
          ? _value.linkText
          : linkText // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAnnouncementInputImplCopyWith<$Res>
    implements $CreateAnnouncementInputCopyWith<$Res> {
  factory _$$CreateAnnouncementInputImplCopyWith(
          _$CreateAnnouncementInputImpl value,
          $Res Function(_$CreateAnnouncementInputImpl) then) =
      __$$CreateAnnouncementInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String content,
      bool? isActive,
      DateTime? startDate,
      DateTime? endDate,
      String? backgroundColor,
      String? textColor,
      String? linkUrl,
      String? linkText,
      String createdBy});
}

/// @nodoc
class __$$CreateAnnouncementInputImplCopyWithImpl<$Res>
    extends _$CreateAnnouncementInputCopyWithImpl<$Res,
        _$CreateAnnouncementInputImpl>
    implements _$$CreateAnnouncementInputImplCopyWith<$Res> {
  __$$CreateAnnouncementInputImplCopyWithImpl(
      _$CreateAnnouncementInputImpl _value,
      $Res Function(_$CreateAnnouncementInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAnnouncementInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? isActive = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? linkUrl = freezed,
    Object? linkText = freezed,
    Object? createdBy = null,
  }) {
    return _then(_$CreateAnnouncementInputImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      linkUrl: freezed == linkUrl
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      linkText: freezed == linkText
          ? _value.linkText
          : linkText // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAnnouncementInputImpl implements _CreateAnnouncementInput {
  const _$CreateAnnouncementInputImpl(
      {required this.title,
      required this.content,
      this.isActive = true,
      this.startDate,
      this.endDate,
      this.backgroundColor = "#000000",
      this.textColor = "#FFFFFF",
      this.linkUrl,
      this.linkText,
      required this.createdBy});

  factory _$CreateAnnouncementInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAnnouncementInputImplFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  @JsonKey()
  final bool? isActive;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final String? backgroundColor;
  @override
  @JsonKey()
  final String? textColor;
  @override
  final String? linkUrl;
  @override
  final String? linkText;
  @override
  final String createdBy;

  @override
  String toString() {
    return 'CreateAnnouncementInput(title: $title, content: $content, isActive: $isActive, startDate: $startDate, endDate: $endDate, backgroundColor: $backgroundColor, textColor: $textColor, linkUrl: $linkUrl, linkText: $linkText, createdBy: $createdBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAnnouncementInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.linkUrl, linkUrl) || other.linkUrl == linkUrl) &&
            (identical(other.linkText, linkText) ||
                other.linkText == linkText) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      content,
      isActive,
      startDate,
      endDate,
      backgroundColor,
      textColor,
      linkUrl,
      linkText,
      createdBy);

  /// Create a copy of CreateAnnouncementInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAnnouncementInputImplCopyWith<_$CreateAnnouncementInputImpl>
      get copyWith => __$$CreateAnnouncementInputImplCopyWithImpl<
          _$CreateAnnouncementInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAnnouncementInputImplToJson(
      this,
    );
  }
}

abstract class _CreateAnnouncementInput implements CreateAnnouncementInput {
  const factory _CreateAnnouncementInput(
      {required final String title,
      required final String content,
      final bool? isActive,
      final DateTime? startDate,
      final DateTime? endDate,
      final String? backgroundColor,
      final String? textColor,
      final String? linkUrl,
      final String? linkText,
      required final String createdBy}) = _$CreateAnnouncementInputImpl;

  factory _CreateAnnouncementInput.fromJson(Map<String, dynamic> json) =
      _$CreateAnnouncementInputImpl.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  bool? get isActive;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String? get backgroundColor;
  @override
  String? get textColor;
  @override
  String? get linkUrl;
  @override
  String? get linkText;
  @override
  String get createdBy;

  /// Create a copy of CreateAnnouncementInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAnnouncementInputImplCopyWith<_$CreateAnnouncementInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateAnnouncementInput _$UpdateAnnouncementInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateAnnouncementInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateAnnouncementInput {
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  String? get textColor => throw _privateConstructorUsedError;
  String? get linkUrl => throw _privateConstructorUsedError;
  String? get linkText => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;

  /// Serializes this UpdateAnnouncementInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateAnnouncementInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateAnnouncementInputCopyWith<UpdateAnnouncementInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAnnouncementInputCopyWith<$Res> {
  factory $UpdateAnnouncementInputCopyWith(UpdateAnnouncementInput value,
          $Res Function(UpdateAnnouncementInput) then) =
      _$UpdateAnnouncementInputCopyWithImpl<$Res, UpdateAnnouncementInput>;
  @useResult
  $Res call(
      {String? title,
      String? content,
      bool? isActive,
      DateTime? startDate,
      DateTime? endDate,
      String? backgroundColor,
      String? textColor,
      String? linkUrl,
      String? linkText,
      String? createdBy});
}

/// @nodoc
class _$UpdateAnnouncementInputCopyWithImpl<$Res,
        $Val extends UpdateAnnouncementInput>
    implements $UpdateAnnouncementInputCopyWith<$Res> {
  _$UpdateAnnouncementInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateAnnouncementInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? isActive = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? linkUrl = freezed,
    Object? linkText = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      linkUrl: freezed == linkUrl
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      linkText: freezed == linkText
          ? _value.linkText
          : linkText // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateAnnouncementInputImplCopyWith<$Res>
    implements $UpdateAnnouncementInputCopyWith<$Res> {
  factory _$$UpdateAnnouncementInputImplCopyWith(
          _$UpdateAnnouncementInputImpl value,
          $Res Function(_$UpdateAnnouncementInputImpl) then) =
      __$$UpdateAnnouncementInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? content,
      bool? isActive,
      DateTime? startDate,
      DateTime? endDate,
      String? backgroundColor,
      String? textColor,
      String? linkUrl,
      String? linkText,
      String? createdBy});
}

/// @nodoc
class __$$UpdateAnnouncementInputImplCopyWithImpl<$Res>
    extends _$UpdateAnnouncementInputCopyWithImpl<$Res,
        _$UpdateAnnouncementInputImpl>
    implements _$$UpdateAnnouncementInputImplCopyWith<$Res> {
  __$$UpdateAnnouncementInputImplCopyWithImpl(
      _$UpdateAnnouncementInputImpl _value,
      $Res Function(_$UpdateAnnouncementInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateAnnouncementInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? isActive = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? linkUrl = freezed,
    Object? linkText = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_$UpdateAnnouncementInputImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      linkUrl: freezed == linkUrl
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      linkText: freezed == linkText
          ? _value.linkText
          : linkText // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateAnnouncementInputImpl implements _UpdateAnnouncementInput {
  const _$UpdateAnnouncementInputImpl(
      {this.title,
      this.content,
      this.isActive,
      this.startDate,
      this.endDate,
      this.backgroundColor,
      this.textColor,
      this.linkUrl,
      this.linkText,
      this.createdBy});

  factory _$UpdateAnnouncementInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateAnnouncementInputImplFromJson(json);

  @override
  final String? title;
  @override
  final String? content;
  @override
  final bool? isActive;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? backgroundColor;
  @override
  final String? textColor;
  @override
  final String? linkUrl;
  @override
  final String? linkText;
  @override
  final String? createdBy;

  @override
  String toString() {
    return 'UpdateAnnouncementInput(title: $title, content: $content, isActive: $isActive, startDate: $startDate, endDate: $endDate, backgroundColor: $backgroundColor, textColor: $textColor, linkUrl: $linkUrl, linkText: $linkText, createdBy: $createdBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAnnouncementInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.linkUrl, linkUrl) || other.linkUrl == linkUrl) &&
            (identical(other.linkText, linkText) ||
                other.linkText == linkText) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      content,
      isActive,
      startDate,
      endDate,
      backgroundColor,
      textColor,
      linkUrl,
      linkText,
      createdBy);

  /// Create a copy of UpdateAnnouncementInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAnnouncementInputImplCopyWith<_$UpdateAnnouncementInputImpl>
      get copyWith => __$$UpdateAnnouncementInputImplCopyWithImpl<
          _$UpdateAnnouncementInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAnnouncementInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateAnnouncementInput implements UpdateAnnouncementInput {
  const factory _UpdateAnnouncementInput(
      {final String? title,
      final String? content,
      final bool? isActive,
      final DateTime? startDate,
      final DateTime? endDate,
      final String? backgroundColor,
      final String? textColor,
      final String? linkUrl,
      final String? linkText,
      final String? createdBy}) = _$UpdateAnnouncementInputImpl;

  factory _UpdateAnnouncementInput.fromJson(Map<String, dynamic> json) =
      _$UpdateAnnouncementInputImpl.fromJson;

  @override
  String? get title;
  @override
  String? get content;
  @override
  bool? get isActive;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String? get backgroundColor;
  @override
  String? get textColor;
  @override
  String? get linkUrl;
  @override
  String? get linkText;
  @override
  String? get createdBy;

  /// Create a copy of UpdateAnnouncementInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAnnouncementInputImplCopyWith<_$UpdateAnnouncementInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AnnouncementWhereUniqueInput _$AnnouncementWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _AnnouncementWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this AnnouncementWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnnouncementWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementWhereUniqueInputCopyWith<AnnouncementWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementWhereUniqueInputCopyWith<$Res> {
  factory $AnnouncementWhereUniqueInputCopyWith(
          AnnouncementWhereUniqueInput value,
          $Res Function(AnnouncementWhereUniqueInput) then) =
      _$AnnouncementWhereUniqueInputCopyWithImpl<$Res,
          AnnouncementWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$AnnouncementWhereUniqueInputCopyWithImpl<$Res,
        $Val extends AnnouncementWhereUniqueInput>
    implements $AnnouncementWhereUniqueInputCopyWith<$Res> {
  _$AnnouncementWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnouncementWhereUniqueInput
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
abstract class _$$AnnouncementWhereUniqueInputImplCopyWith<$Res>
    implements $AnnouncementWhereUniqueInputCopyWith<$Res> {
  factory _$$AnnouncementWhereUniqueInputImplCopyWith(
          _$AnnouncementWhereUniqueInputImpl value,
          $Res Function(_$AnnouncementWhereUniqueInputImpl) then) =
      __$$AnnouncementWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$AnnouncementWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$AnnouncementWhereUniqueInputCopyWithImpl<$Res,
        _$AnnouncementWhereUniqueInputImpl>
    implements _$$AnnouncementWhereUniqueInputImplCopyWith<$Res> {
  __$$AnnouncementWhereUniqueInputImplCopyWithImpl(
      _$AnnouncementWhereUniqueInputImpl _value,
      $Res Function(_$AnnouncementWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$AnnouncementWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnouncementWhereUniqueInputImpl
    implements _AnnouncementWhereUniqueInput {
  const _$AnnouncementWhereUniqueInputImpl({this.id});

  factory _$AnnouncementWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AnnouncementWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'AnnouncementWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AnnouncementWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementWhereUniqueInputImplCopyWith<
          _$AnnouncementWhereUniqueInputImpl>
      get copyWith => __$$AnnouncementWhereUniqueInputImplCopyWithImpl<
          _$AnnouncementWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _AnnouncementWhereUniqueInput
    implements AnnouncementWhereUniqueInput {
  const factory _AnnouncementWhereUniqueInput({final String? id}) =
      _$AnnouncementWhereUniqueInputImpl;

  factory _AnnouncementWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$AnnouncementWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of AnnouncementWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementWhereUniqueInputImplCopyWith<
          _$AnnouncementWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AnnouncementWhereInput _$AnnouncementWhereInputFromJson(
    Map<String, dynamic> json) {
  return _AnnouncementWhereInput.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get title => throw _privateConstructorUsedError;
  StringFilter? get content => throw _privateConstructorUsedError;
  BooleanFilter? get isActive => throw _privateConstructorUsedError;
  DateTimeFilter? get startDate => throw _privateConstructorUsedError;
  DateTimeFilter? get endDate => throw _privateConstructorUsedError;
  StringFilter? get backgroundColor => throw _privateConstructorUsedError;
  StringFilter? get textColor => throw _privateConstructorUsedError;
  StringFilter? get linkUrl => throw _privateConstructorUsedError;
  StringFilter? get linkText => throw _privateConstructorUsedError;
  StringFilter? get createdBy => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<AnnouncementWhereInput>? get AND => throw _privateConstructorUsedError;
  List<AnnouncementWhereInput>? get OR => throw _privateConstructorUsedError;
  AnnouncementWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this AnnouncementWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnnouncementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementWhereInputCopyWith<AnnouncementWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementWhereInputCopyWith<$Res> {
  factory $AnnouncementWhereInputCopyWith(AnnouncementWhereInput value,
          $Res Function(AnnouncementWhereInput) then) =
      _$AnnouncementWhereInputCopyWithImpl<$Res, AnnouncementWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? content,
      BooleanFilter? isActive,
      DateTimeFilter? startDate,
      DateTimeFilter? endDate,
      StringFilter? backgroundColor,
      StringFilter? textColor,
      StringFilter? linkUrl,
      StringFilter? linkText,
      StringFilter? createdBy,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<AnnouncementWhereInput>? AND,
      List<AnnouncementWhereInput>? OR,
      AnnouncementWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get title;
  $StringFilterCopyWith<$Res>? get content;
  $BooleanFilterCopyWith<$Res>? get isActive;
  $DateTimeFilterCopyWith<$Res>? get startDate;
  $DateTimeFilterCopyWith<$Res>? get endDate;
  $StringFilterCopyWith<$Res>? get backgroundColor;
  $StringFilterCopyWith<$Res>? get textColor;
  $StringFilterCopyWith<$Res>? get linkUrl;
  $StringFilterCopyWith<$Res>? get linkText;
  $StringFilterCopyWith<$Res>? get createdBy;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $AnnouncementWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$AnnouncementWhereInputCopyWithImpl<$Res,
        $Val extends AnnouncementWhereInput>
    implements $AnnouncementWhereInputCopyWith<$Res> {
  _$AnnouncementWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnouncementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? isActive = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? linkUrl = freezed,
    Object? linkText = freezed,
    Object? createdBy = freezed,
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
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      linkUrl: freezed == linkUrl
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      linkText: freezed == linkText
          ? _value.linkText
          : linkText // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
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
              as List<AnnouncementWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as AnnouncementWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AnnouncementWhereInput
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

  /// Create a copy of AnnouncementWhereInput
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

  /// Create a copy of AnnouncementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get content {
    if (_value.content == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.content!, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }

  /// Create a copy of AnnouncementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get isActive {
    if (_value.isActive == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.isActive!, (value) {
      return _then(_value.copyWith(isActive: value) as $Val);
    });
  }

  /// Create a copy of AnnouncementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get startDate {
    if (_value.startDate == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.startDate!, (value) {
      return _then(_value.copyWith(startDate: value) as $Val);
    });
  }

  /// Create a copy of AnnouncementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get endDate {
    if (_value.endDate == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.endDate!, (value) {
      return _then(_value.copyWith(endDate: value) as $Val);
    });
  }

  /// Create a copy of AnnouncementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get backgroundColor {
    if (_value.backgroundColor == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.backgroundColor!, (value) {
      return _then(_value.copyWith(backgroundColor: value) as $Val);
    });
  }

  /// Create a copy of AnnouncementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get textColor {
    if (_value.textColor == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.textColor!, (value) {
      return _then(_value.copyWith(textColor: value) as $Val);
    });
  }

  /// Create a copy of AnnouncementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get linkUrl {
    if (_value.linkUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.linkUrl!, (value) {
      return _then(_value.copyWith(linkUrl: value) as $Val);
    });
  }

  /// Create a copy of AnnouncementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get linkText {
    if (_value.linkText == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.linkText!, (value) {
      return _then(_value.copyWith(linkText: value) as $Val);
    });
  }

  /// Create a copy of AnnouncementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }

  /// Create a copy of AnnouncementWhereInput
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

  /// Create a copy of AnnouncementWhereInput
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

  /// Create a copy of AnnouncementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnouncementWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $AnnouncementWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnnouncementWhereInputImplCopyWith<$Res>
    implements $AnnouncementWhereInputCopyWith<$Res> {
  factory _$$AnnouncementWhereInputImplCopyWith(
          _$AnnouncementWhereInputImpl value,
          $Res Function(_$AnnouncementWhereInputImpl) then) =
      __$$AnnouncementWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? content,
      BooleanFilter? isActive,
      DateTimeFilter? startDate,
      DateTimeFilter? endDate,
      StringFilter? backgroundColor,
      StringFilter? textColor,
      StringFilter? linkUrl,
      StringFilter? linkText,
      StringFilter? createdBy,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<AnnouncementWhereInput>? AND,
      List<AnnouncementWhereInput>? OR,
      AnnouncementWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get title;
  @override
  $StringFilterCopyWith<$Res>? get content;
  @override
  $BooleanFilterCopyWith<$Res>? get isActive;
  @override
  $DateTimeFilterCopyWith<$Res>? get startDate;
  @override
  $DateTimeFilterCopyWith<$Res>? get endDate;
  @override
  $StringFilterCopyWith<$Res>? get backgroundColor;
  @override
  $StringFilterCopyWith<$Res>? get textColor;
  @override
  $StringFilterCopyWith<$Res>? get linkUrl;
  @override
  $StringFilterCopyWith<$Res>? get linkText;
  @override
  $StringFilterCopyWith<$Res>? get createdBy;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $AnnouncementWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$AnnouncementWhereInputImplCopyWithImpl<$Res>
    extends _$AnnouncementWhereInputCopyWithImpl<$Res,
        _$AnnouncementWhereInputImpl>
    implements _$$AnnouncementWhereInputImplCopyWith<$Res> {
  __$$AnnouncementWhereInputImplCopyWithImpl(
      _$AnnouncementWhereInputImpl _value,
      $Res Function(_$AnnouncementWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? isActive = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? linkUrl = freezed,
    Object? linkText = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$AnnouncementWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      linkUrl: freezed == linkUrl
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      linkText: freezed == linkText
          ? _value.linkText
          : linkText // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
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
              as List<AnnouncementWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as AnnouncementWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AnnouncementWhereInputImpl implements _AnnouncementWhereInput {
  const _$AnnouncementWhereInputImpl(
      {this.id,
      this.title,
      this.content,
      this.isActive,
      this.startDate,
      this.endDate,
      this.backgroundColor,
      this.textColor,
      this.linkUrl,
      this.linkText,
      this.createdBy,
      this.createdAt,
      this.updatedAt,
      final List<AnnouncementWhereInput>? AND,
      final List<AnnouncementWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$AnnouncementWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnouncementWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? title;
  @override
  final StringFilter? content;
  @override
  final BooleanFilter? isActive;
  @override
  final DateTimeFilter? startDate;
  @override
  final DateTimeFilter? endDate;
  @override
  final StringFilter? backgroundColor;
  @override
  final StringFilter? textColor;
  @override
  final StringFilter? linkUrl;
  @override
  final StringFilter? linkText;
  @override
  final StringFilter? createdBy;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<AnnouncementWhereInput>? _AND;
  @override
  List<AnnouncementWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AnnouncementWhereInput>? _OR;
  @override
  List<AnnouncementWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AnnouncementWhereInput? NOT;

  @override
  String toString() {
    return 'AnnouncementWhereInput(id: $id, title: $title, content: $content, isActive: $isActive, startDate: $startDate, endDate: $endDate, backgroundColor: $backgroundColor, textColor: $textColor, linkUrl: $linkUrl, linkText: $linkText, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.linkUrl, linkUrl) || other.linkUrl == linkUrl) &&
            (identical(other.linkText, linkText) ||
                other.linkText == linkText) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
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
      content,
      isActive,
      startDate,
      endDate,
      backgroundColor,
      textColor,
      linkUrl,
      linkText,
      createdBy,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of AnnouncementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementWhereInputImplCopyWith<_$AnnouncementWhereInputImpl>
      get copyWith => __$$AnnouncementWhereInputImplCopyWithImpl<
          _$AnnouncementWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementWhereInputImplToJson(
      this,
    );
  }
}

abstract class _AnnouncementWhereInput implements AnnouncementWhereInput {
  const factory _AnnouncementWhereInput(
      {final StringFilter? id,
      final StringFilter? title,
      final StringFilter? content,
      final BooleanFilter? isActive,
      final DateTimeFilter? startDate,
      final DateTimeFilter? endDate,
      final StringFilter? backgroundColor,
      final StringFilter? textColor,
      final StringFilter? linkUrl,
      final StringFilter? linkText,
      final StringFilter? createdBy,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<AnnouncementWhereInput>? AND,
      final List<AnnouncementWhereInput>? OR,
      final AnnouncementWhereInput? NOT}) = _$AnnouncementWhereInputImpl;

  factory _AnnouncementWhereInput.fromJson(Map<String, dynamic> json) =
      _$AnnouncementWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get title;
  @override
  StringFilter? get content;
  @override
  BooleanFilter? get isActive;
  @override
  DateTimeFilter? get startDate;
  @override
  DateTimeFilter? get endDate;
  @override
  StringFilter? get backgroundColor;
  @override
  StringFilter? get textColor;
  @override
  StringFilter? get linkUrl;
  @override
  StringFilter? get linkText;
  @override
  StringFilter? get createdBy;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<AnnouncementWhereInput>? get AND;
  @override
  List<AnnouncementWhereInput>? get OR;
  @override
  AnnouncementWhereInput? get NOT;

  /// Create a copy of AnnouncementWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementWhereInputImplCopyWith<_$AnnouncementWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AnnouncementListRelationFilter _$AnnouncementListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _AnnouncementListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementListRelationFilter {
  /// At least one related record matches
  AnnouncementWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  AnnouncementWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  AnnouncementWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this AnnouncementListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnnouncementListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementListRelationFilterCopyWith<AnnouncementListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementListRelationFilterCopyWith<$Res> {
  factory $AnnouncementListRelationFilterCopyWith(
          AnnouncementListRelationFilter value,
          $Res Function(AnnouncementListRelationFilter) then) =
      _$AnnouncementListRelationFilterCopyWithImpl<$Res,
          AnnouncementListRelationFilter>;
  @useResult
  $Res call(
      {AnnouncementWhereInput? some,
      AnnouncementWhereInput? every,
      AnnouncementWhereInput? none});

  $AnnouncementWhereInputCopyWith<$Res>? get some;
  $AnnouncementWhereInputCopyWith<$Res>? get every;
  $AnnouncementWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$AnnouncementListRelationFilterCopyWithImpl<$Res,
        $Val extends AnnouncementListRelationFilter>
    implements $AnnouncementListRelationFilterCopyWith<$Res> {
  _$AnnouncementListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnouncementListRelationFilter
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
              as AnnouncementWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as AnnouncementWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as AnnouncementWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AnnouncementListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnouncementWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $AnnouncementWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of AnnouncementListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnouncementWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $AnnouncementWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of AnnouncementListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnouncementWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $AnnouncementWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnnouncementListRelationFilterImplCopyWith<$Res>
    implements $AnnouncementListRelationFilterCopyWith<$Res> {
  factory _$$AnnouncementListRelationFilterImplCopyWith(
          _$AnnouncementListRelationFilterImpl value,
          $Res Function(_$AnnouncementListRelationFilterImpl) then) =
      __$$AnnouncementListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AnnouncementWhereInput? some,
      AnnouncementWhereInput? every,
      AnnouncementWhereInput? none});

  @override
  $AnnouncementWhereInputCopyWith<$Res>? get some;
  @override
  $AnnouncementWhereInputCopyWith<$Res>? get every;
  @override
  $AnnouncementWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$AnnouncementListRelationFilterImplCopyWithImpl<$Res>
    extends _$AnnouncementListRelationFilterCopyWithImpl<$Res,
        _$AnnouncementListRelationFilterImpl>
    implements _$$AnnouncementListRelationFilterImplCopyWith<$Res> {
  __$$AnnouncementListRelationFilterImplCopyWithImpl(
      _$AnnouncementListRelationFilterImpl _value,
      $Res Function(_$AnnouncementListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$AnnouncementListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as AnnouncementWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as AnnouncementWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as AnnouncementWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnouncementListRelationFilterImpl
    implements _AnnouncementListRelationFilter {
  const _$AnnouncementListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$AnnouncementListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AnnouncementListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final AnnouncementWhereInput? some;

  /// All related records match
  @override
  final AnnouncementWhereInput? every;

  /// No related records match
  @override
  final AnnouncementWhereInput? none;

  @override
  String toString() {
    return 'AnnouncementListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of AnnouncementListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementListRelationFilterImplCopyWith<
          _$AnnouncementListRelationFilterImpl>
      get copyWith => __$$AnnouncementListRelationFilterImplCopyWithImpl<
          _$AnnouncementListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _AnnouncementListRelationFilter
    implements AnnouncementListRelationFilter {
  const factory _AnnouncementListRelationFilter(
          {final AnnouncementWhereInput? some,
          final AnnouncementWhereInput? every,
          final AnnouncementWhereInput? none}) =
      _$AnnouncementListRelationFilterImpl;

  factory _AnnouncementListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$AnnouncementListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  AnnouncementWhereInput? get some;

  /// All related records match
  @override
  AnnouncementWhereInput? get every;

  /// No related records match
  @override
  AnnouncementWhereInput? get none;

  /// Create a copy of AnnouncementListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementListRelationFilterImplCopyWith<
          _$AnnouncementListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AnnouncementRelationFilter _$AnnouncementRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _AnnouncementRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  AnnouncementWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  AnnouncementWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this AnnouncementRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnnouncementRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementRelationFilterCopyWith<AnnouncementRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementRelationFilterCopyWith<$Res> {
  factory $AnnouncementRelationFilterCopyWith(AnnouncementRelationFilter value,
          $Res Function(AnnouncementRelationFilter) then) =
      _$AnnouncementRelationFilterCopyWithImpl<$Res,
          AnnouncementRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') AnnouncementWhereInput? is_,
      AnnouncementWhereInput? isNot});

  $AnnouncementWhereInputCopyWith<$Res>? get is_;
  $AnnouncementWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$AnnouncementRelationFilterCopyWithImpl<$Res,
        $Val extends AnnouncementRelationFilter>
    implements $AnnouncementRelationFilterCopyWith<$Res> {
  _$AnnouncementRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnouncementRelationFilter
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
              as AnnouncementWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as AnnouncementWhereInput?,
    ) as $Val);
  }

  /// Create a copy of AnnouncementRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnouncementWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $AnnouncementWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of AnnouncementRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnouncementWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $AnnouncementWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnnouncementRelationFilterImplCopyWith<$Res>
    implements $AnnouncementRelationFilterCopyWith<$Res> {
  factory _$$AnnouncementRelationFilterImplCopyWith(
          _$AnnouncementRelationFilterImpl value,
          $Res Function(_$AnnouncementRelationFilterImpl) then) =
      __$$AnnouncementRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') AnnouncementWhereInput? is_,
      AnnouncementWhereInput? isNot});

  @override
  $AnnouncementWhereInputCopyWith<$Res>? get is_;
  @override
  $AnnouncementWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$AnnouncementRelationFilterImplCopyWithImpl<$Res>
    extends _$AnnouncementRelationFilterCopyWithImpl<$Res,
        _$AnnouncementRelationFilterImpl>
    implements _$$AnnouncementRelationFilterImplCopyWith<$Res> {
  __$$AnnouncementRelationFilterImplCopyWithImpl(
      _$AnnouncementRelationFilterImpl _value,
      $Res Function(_$AnnouncementRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$AnnouncementRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as AnnouncementWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as AnnouncementWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnouncementRelationFilterImpl implements _AnnouncementRelationFilter {
  const _$AnnouncementRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$AnnouncementRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AnnouncementRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final AnnouncementWhereInput? is_;

  /// Related record does not match
  @override
  final AnnouncementWhereInput? isNot;

  @override
  String toString() {
    return 'AnnouncementRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of AnnouncementRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementRelationFilterImplCopyWith<_$AnnouncementRelationFilterImpl>
      get copyWith => __$$AnnouncementRelationFilterImplCopyWithImpl<
          _$AnnouncementRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _AnnouncementRelationFilter
    implements AnnouncementRelationFilter {
  const factory _AnnouncementRelationFilter(
      {@JsonKey(name: 'is') final AnnouncementWhereInput? is_,
      final AnnouncementWhereInput? isNot}) = _$AnnouncementRelationFilterImpl;

  factory _AnnouncementRelationFilter.fromJson(Map<String, dynamic> json) =
      _$AnnouncementRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  AnnouncementWhereInput? get is_;

  /// Related record does not match
  @override
  AnnouncementWhereInput? get isNot;

  /// Create a copy of AnnouncementRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementRelationFilterImplCopyWith<_$AnnouncementRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AnnouncementOrderByInput _$AnnouncementOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _AnnouncementOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get title => throw _privateConstructorUsedError;
  SortOrder? get content => throw _privateConstructorUsedError;
  SortOrder? get isActive => throw _privateConstructorUsedError;
  SortOrder? get startDate => throw _privateConstructorUsedError;
  SortOrder? get endDate => throw _privateConstructorUsedError;
  SortOrder? get backgroundColor => throw _privateConstructorUsedError;
  SortOrder? get textColor => throw _privateConstructorUsedError;
  SortOrder? get linkUrl => throw _privateConstructorUsedError;
  SortOrder? get linkText => throw _privateConstructorUsedError;
  SortOrder? get createdBy => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AnnouncementOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnnouncementOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementOrderByInputCopyWith<AnnouncementOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementOrderByInputCopyWith<$Res> {
  factory $AnnouncementOrderByInputCopyWith(AnnouncementOrderByInput value,
          $Res Function(AnnouncementOrderByInput) then) =
      _$AnnouncementOrderByInputCopyWithImpl<$Res, AnnouncementOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? content,
      SortOrder? isActive,
      SortOrder? startDate,
      SortOrder? endDate,
      SortOrder? backgroundColor,
      SortOrder? textColor,
      SortOrder? linkUrl,
      SortOrder? linkText,
      SortOrder? createdBy,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$AnnouncementOrderByInputCopyWithImpl<$Res,
        $Val extends AnnouncementOrderByInput>
    implements $AnnouncementOrderByInputCopyWith<$Res> {
  _$AnnouncementOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnouncementOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? isActive = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? linkUrl = freezed,
    Object? linkText = freezed,
    Object? createdBy = freezed,
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
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      linkUrl: freezed == linkUrl
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      linkText: freezed == linkText
          ? _value.linkText
          : linkText // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AnnouncementOrderByInputImplCopyWith<$Res>
    implements $AnnouncementOrderByInputCopyWith<$Res> {
  factory _$$AnnouncementOrderByInputImplCopyWith(
          _$AnnouncementOrderByInputImpl value,
          $Res Function(_$AnnouncementOrderByInputImpl) then) =
      __$$AnnouncementOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? content,
      SortOrder? isActive,
      SortOrder? startDate,
      SortOrder? endDate,
      SortOrder? backgroundColor,
      SortOrder? textColor,
      SortOrder? linkUrl,
      SortOrder? linkText,
      SortOrder? createdBy,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$AnnouncementOrderByInputImplCopyWithImpl<$Res>
    extends _$AnnouncementOrderByInputCopyWithImpl<$Res,
        _$AnnouncementOrderByInputImpl>
    implements _$$AnnouncementOrderByInputImplCopyWith<$Res> {
  __$$AnnouncementOrderByInputImplCopyWithImpl(
      _$AnnouncementOrderByInputImpl _value,
      $Res Function(_$AnnouncementOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? isActive = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? backgroundColor = freezed,
    Object? textColor = freezed,
    Object? linkUrl = freezed,
    Object? linkText = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AnnouncementOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      linkUrl: freezed == linkUrl
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      linkText: freezed == linkText
          ? _value.linkText
          : linkText // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
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
class _$AnnouncementOrderByInputImpl implements _AnnouncementOrderByInput {
  const _$AnnouncementOrderByInputImpl(
      {this.id,
      this.title,
      this.content,
      this.isActive,
      this.startDate,
      this.endDate,
      this.backgroundColor,
      this.textColor,
      this.linkUrl,
      this.linkText,
      this.createdBy,
      this.createdAt,
      this.updatedAt});

  factory _$AnnouncementOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnouncementOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? title;
  @override
  final SortOrder? content;
  @override
  final SortOrder? isActive;
  @override
  final SortOrder? startDate;
  @override
  final SortOrder? endDate;
  @override
  final SortOrder? backgroundColor;
  @override
  final SortOrder? textColor;
  @override
  final SortOrder? linkUrl;
  @override
  final SortOrder? linkText;
  @override
  final SortOrder? createdBy;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'AnnouncementOrderByInput(id: $id, title: $title, content: $content, isActive: $isActive, startDate: $startDate, endDate: $endDate, backgroundColor: $backgroundColor, textColor: $textColor, linkUrl: $linkUrl, linkText: $linkText, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.linkUrl, linkUrl) || other.linkUrl == linkUrl) &&
            (identical(other.linkText, linkText) ||
                other.linkText == linkText) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
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
      content,
      isActive,
      startDate,
      endDate,
      backgroundColor,
      textColor,
      linkUrl,
      linkText,
      createdBy,
      createdAt,
      updatedAt);

  /// Create a copy of AnnouncementOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementOrderByInputImplCopyWith<_$AnnouncementOrderByInputImpl>
      get copyWith => __$$AnnouncementOrderByInputImplCopyWithImpl<
          _$AnnouncementOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _AnnouncementOrderByInput implements AnnouncementOrderByInput {
  const factory _AnnouncementOrderByInput(
      {final SortOrder? id,
      final SortOrder? title,
      final SortOrder? content,
      final SortOrder? isActive,
      final SortOrder? startDate,
      final SortOrder? endDate,
      final SortOrder? backgroundColor,
      final SortOrder? textColor,
      final SortOrder? linkUrl,
      final SortOrder? linkText,
      final SortOrder? createdBy,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$AnnouncementOrderByInputImpl;

  factory _AnnouncementOrderByInput.fromJson(Map<String, dynamic> json) =
      _$AnnouncementOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get title;
  @override
  SortOrder? get content;
  @override
  SortOrder? get isActive;
  @override
  SortOrder? get startDate;
  @override
  SortOrder? get endDate;
  @override
  SortOrder? get backgroundColor;
  @override
  SortOrder? get textColor;
  @override
  SortOrder? get linkUrl;
  @override
  SortOrder? get linkText;
  @override
  SortOrder? get createdBy;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of AnnouncementOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementOrderByInputImplCopyWith<_$AnnouncementOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
