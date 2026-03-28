// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CertificationImpl _$$CertificationImplFromJson(Map<String, dynamic> json) =>
    _$CertificationImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      issuingOrganization: json['issuingOrganization'] as String,
      issueDate: DateTime.parse(json['issueDate'] as String),
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      credentialId: json['credentialId'] as String?,
      credentialUrl: json['credentialUrl'] as String?,
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CertificationImplToJson(_$CertificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'issuingOrganization': instance.issuingOrganization,
      'issueDate': instance.issueDate.toIso8601String(),
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'credentialId': instance.credentialId,
      'credentialUrl': instance.credentialUrl,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateCertificationInputImpl _$$CreateCertificationInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCertificationInputImpl(
      name: json['name'] as String,
      issuingOrganization: json['issuingOrganization'] as String,
      issueDate: DateTime.parse(json['issueDate'] as String),
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      credentialId: json['credentialId'] as String?,
      credentialUrl: json['credentialUrl'] as String?,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$CreateCertificationInputImplToJson(
        _$CreateCertificationInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'issuingOrganization': instance.issuingOrganization,
      'issueDate': instance.issueDate.toIso8601String(),
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'credentialId': instance.credentialId,
      'credentialUrl': instance.credentialUrl,
      'userId': instance.userId,
    };

_$UpdateCertificationInputImpl _$$UpdateCertificationInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateCertificationInputImpl(
      name: json['name'] as String?,
      issuingOrganization: json['issuingOrganization'] as String?,
      issueDate: json['issueDate'] == null
          ? null
          : DateTime.parse(json['issueDate'] as String),
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      credentialId: json['credentialId'] as String?,
      credentialUrl: json['credentialUrl'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$UpdateCertificationInputImplToJson(
        _$UpdateCertificationInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'issuingOrganization': instance.issuingOrganization,
      'issueDate': instance.issueDate?.toIso8601String(),
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'credentialId': instance.credentialId,
      'credentialUrl': instance.credentialUrl,
      'userId': instance.userId,
    };

_$CertificationWhereUniqueInputImpl
    _$$CertificationWhereUniqueInputImplFromJson(Map<String, dynamic> json) =>
        _$CertificationWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$CertificationWhereUniqueInputImplToJson(
        _$CertificationWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$CertificationWhereInputImpl _$$CertificationWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CertificationWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      issuingOrganization: json['issuingOrganization'] == null
          ? null
          : StringFilter.fromJson(
              json['issuingOrganization'] as Map<String, dynamic>),
      issueDate: json['issueDate'] == null
          ? null
          : DateTimeFilter.fromJson(json['issueDate'] as Map<String, dynamic>),
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTimeFilter.fromJson(json['expiryDate'] as Map<String, dynamic>),
      credentialId: json['credentialId'] == null
          ? null
          : StringFilter.fromJson(json['credentialId'] as Map<String, dynamic>),
      credentialUrl: json['credentialUrl'] == null
          ? null
          : StringFilter.fromJson(
              json['credentialUrl'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              CertificationWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              CertificationWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : CertificationWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CertificationWhereInputImplToJson(
        _$CertificationWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
      'issuingOrganization': instance.issuingOrganization?.toJson(),
      'issueDate': instance.issueDate?.toJson(),
      'expiryDate': instance.expiryDate?.toJson(),
      'credentialId': instance.credentialId?.toJson(),
      'credentialUrl': instance.credentialUrl?.toJson(),
      'user': instance.user?.toJson(),
      'userId': instance.userId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$CertificationListRelationFilterImpl
    _$$CertificationListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$CertificationListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : CertificationWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : CertificationWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : CertificationWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CertificationListRelationFilterImplToJson(
        _$CertificationListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$CertificationRelationFilterImpl _$$CertificationRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$CertificationRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : CertificationWhereInput.fromJson(
              json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : CertificationWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CertificationRelationFilterImplToJson(
        _$CertificationRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$CertificationOrderByInputImpl _$$CertificationOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CertificationOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      issuingOrganization:
          $enumDecodeNullable(_$SortOrderEnumMap, json['issuingOrganization']),
      issueDate: $enumDecodeNullable(_$SortOrderEnumMap, json['issueDate']),
      expiryDate: $enumDecodeNullable(_$SortOrderEnumMap, json['expiryDate']),
      credentialId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['credentialId']),
      credentialUrl:
          $enumDecodeNullable(_$SortOrderEnumMap, json['credentialUrl']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$CertificationOrderByInputImplToJson(
        _$CertificationOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'name': _$SortOrderEnumMap[instance.name],
      'issuingOrganization': _$SortOrderEnumMap[instance.issuingOrganization],
      'issueDate': _$SortOrderEnumMap[instance.issueDate],
      'expiryDate': _$SortOrderEnumMap[instance.expiryDate],
      'credentialId': _$SortOrderEnumMap[instance.credentialId],
      'credentialUrl': _$SortOrderEnumMap[instance.credentialUrl],
      'userId': _$SortOrderEnumMap[instance.userId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
