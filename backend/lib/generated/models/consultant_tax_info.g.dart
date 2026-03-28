// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultant_tax_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultantTaxInfoImpl _$$ConsultantTaxInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultantTaxInfoImpl(
      id: json['id'] as String,
      consultantProfileId: json['consultantProfileId'] as String,
      panEncrypted: (json['panEncrypted'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      panLast4: json['panLast4'] as String?,
      panVerified: json['panVerified'] as bool? ?? false,
      gstin: json['gstin'] as String?,
      gstinVerified: json['gstinVerified'] as bool? ?? false,
      country: json['country'] as String? ?? "IN",
      isIndianResident: json['isIndianResident'] as bool? ?? true,
      lutNumber: json['lutNumber'] as String?,
      lutValidUntil: json['lutValidUntil'] == null
          ? null
          : DateTime.parse(json['lutValidUntil'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ConsultantTaxInfoImplToJson(
        _$ConsultantTaxInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultantProfileId': instance.consultantProfileId,
      'panEncrypted': instance.panEncrypted,
      'panLast4': instance.panLast4,
      'panVerified': instance.panVerified,
      'gstin': instance.gstin,
      'gstinVerified': instance.gstinVerified,
      'country': instance.country,
      'isIndianResident': instance.isIndianResident,
      'lutNumber': instance.lutNumber,
      'lutValidUntil': instance.lutValidUntil?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateConsultantTaxInfoInputImpl _$$CreateConsultantTaxInfoInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateConsultantTaxInfoInputImpl(
      consultantProfileId: json['consultantProfileId'] as String,
      panEncrypted: (json['panEncrypted'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      panLast4: json['panLast4'] as String?,
      panVerified: json['panVerified'] as bool? ?? false,
      gstin: json['gstin'] as String?,
      gstinVerified: json['gstinVerified'] as bool? ?? false,
      country: json['country'] as String? ?? "IN",
      isIndianResident: json['isIndianResident'] as bool? ?? true,
      lutNumber: json['lutNumber'] as String?,
      lutValidUntil: json['lutValidUntil'] == null
          ? null
          : DateTime.parse(json['lutValidUntil'] as String),
    );

Map<String, dynamic> _$$CreateConsultantTaxInfoInputImplToJson(
        _$CreateConsultantTaxInfoInputImpl instance) =>
    <String, dynamic>{
      'consultantProfileId': instance.consultantProfileId,
      'panEncrypted': instance.panEncrypted,
      'panLast4': instance.panLast4,
      'panVerified': instance.panVerified,
      'gstin': instance.gstin,
      'gstinVerified': instance.gstinVerified,
      'country': instance.country,
      'isIndianResident': instance.isIndianResident,
      'lutNumber': instance.lutNumber,
      'lutValidUntil': instance.lutValidUntil?.toIso8601String(),
    };

_$UpdateConsultantTaxInfoInputImpl _$$UpdateConsultantTaxInfoInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateConsultantTaxInfoInputImpl(
      consultantProfileId: json['consultantProfileId'] as String?,
      panEncrypted: (json['panEncrypted'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      panLast4: json['panLast4'] as String?,
      panVerified: json['panVerified'] as bool?,
      gstin: json['gstin'] as String?,
      gstinVerified: json['gstinVerified'] as bool?,
      country: json['country'] as String?,
      isIndianResident: json['isIndianResident'] as bool?,
      lutNumber: json['lutNumber'] as String?,
      lutValidUntil: json['lutValidUntil'] == null
          ? null
          : DateTime.parse(json['lutValidUntil'] as String),
    );

Map<String, dynamic> _$$UpdateConsultantTaxInfoInputImplToJson(
        _$UpdateConsultantTaxInfoInputImpl instance) =>
    <String, dynamic>{
      'consultantProfileId': instance.consultantProfileId,
      'panEncrypted': instance.panEncrypted,
      'panLast4': instance.panLast4,
      'panVerified': instance.panVerified,
      'gstin': instance.gstin,
      'gstinVerified': instance.gstinVerified,
      'country': instance.country,
      'isIndianResident': instance.isIndianResident,
      'lutNumber': instance.lutNumber,
      'lutValidUntil': instance.lutValidUntil?.toIso8601String(),
    };

_$ConsultantTaxInfoWhereUniqueInputImpl
    _$$ConsultantTaxInfoWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultantTaxInfoWhereUniqueInputImpl(
          id: json['id'] as String?,
          consultantProfileId: json['consultantProfileId'] as String?,
        );

Map<String, dynamic> _$$ConsultantTaxInfoWhereUniqueInputImplToJson(
        _$ConsultantTaxInfoWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultantProfileId': instance.consultantProfileId,
    };

_$ConsultantTaxInfoWhereInputImpl _$$ConsultantTaxInfoWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultantTaxInfoWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      consultantProfileId: json['consultantProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultantProfileId'] as Map<String, dynamic>),
      panLast4: json['panLast4'] == null
          ? null
          : StringFilter.fromJson(json['panLast4'] as Map<String, dynamic>),
      panVerified: json['panVerified'] == null
          ? null
          : BooleanFilter.fromJson(json['panVerified'] as Map<String, dynamic>),
      gstin: json['gstin'] == null
          ? null
          : StringFilter.fromJson(json['gstin'] as Map<String, dynamic>),
      gstinVerified: json['gstinVerified'] == null
          ? null
          : BooleanFilter.fromJson(
              json['gstinVerified'] as Map<String, dynamic>),
      country: json['country'] == null
          ? null
          : StringFilter.fromJson(json['country'] as Map<String, dynamic>),
      isIndianResident: json['isIndianResident'] == null
          ? null
          : BooleanFilter.fromJson(
              json['isIndianResident'] as Map<String, dynamic>),
      lutNumber: json['lutNumber'] == null
          ? null
          : StringFilter.fromJson(json['lutNumber'] as Map<String, dynamic>),
      lutValidUntil: json['lutValidUntil'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['lutValidUntil'] as Map<String, dynamic>),
      consultantProfile: json['consultantProfile'] == null
          ? null
          : ConsultantProfileRelationFilter.fromJson(
              json['consultantProfile'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              ConsultantTaxInfoWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              ConsultantTaxInfoWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ConsultantTaxInfoWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConsultantTaxInfoWhereInputImplToJson(
        _$ConsultantTaxInfoWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'panLast4': instance.panLast4?.toJson(),
      'panVerified': instance.panVerified?.toJson(),
      'gstin': instance.gstin?.toJson(),
      'gstinVerified': instance.gstinVerified?.toJson(),
      'country': instance.country?.toJson(),
      'isIndianResident': instance.isIndianResident?.toJson(),
      'lutNumber': instance.lutNumber?.toJson(),
      'lutValidUntil': instance.lutValidUntil?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ConsultantTaxInfoListRelationFilterImpl
    _$$ConsultantTaxInfoListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultantTaxInfoListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ConsultantTaxInfoWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ConsultantTaxInfoWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ConsultantTaxInfoWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultantTaxInfoListRelationFilterImplToJson(
        _$ConsultantTaxInfoListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ConsultantTaxInfoRelationFilterImpl
    _$$ConsultantTaxInfoRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$ConsultantTaxInfoRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : ConsultantTaxInfoWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : ConsultantTaxInfoWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultantTaxInfoRelationFilterImplToJson(
        _$ConsultantTaxInfoRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ConsultantTaxInfoOrderByInputImpl
    _$$ConsultantTaxInfoOrderByInputImplFromJson(Map<String, dynamic> json) =>
        _$ConsultantTaxInfoOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          consultantProfileId: $enumDecodeNullable(
              _$SortOrderEnumMap, json['consultantProfileId']),
          panLast4: $enumDecodeNullable(_$SortOrderEnumMap, json['panLast4']),
          panVerified:
              $enumDecodeNullable(_$SortOrderEnumMap, json['panVerified']),
          gstin: $enumDecodeNullable(_$SortOrderEnumMap, json['gstin']),
          gstinVerified:
              $enumDecodeNullable(_$SortOrderEnumMap, json['gstinVerified']),
          country: $enumDecodeNullable(_$SortOrderEnumMap, json['country']),
          isIndianResident:
              $enumDecodeNullable(_$SortOrderEnumMap, json['isIndianResident']),
          lutNumber: $enumDecodeNullable(_$SortOrderEnumMap, json['lutNumber']),
          lutValidUntil:
              $enumDecodeNullable(_$SortOrderEnumMap, json['lutValidUntil']),
          createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
          updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
        );

Map<String, dynamic> _$$ConsultantTaxInfoOrderByInputImplToJson(
        _$ConsultantTaxInfoOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'panLast4': _$SortOrderEnumMap[instance.panLast4],
      'panVerified': _$SortOrderEnumMap[instance.panVerified],
      'gstin': _$SortOrderEnumMap[instance.gstin],
      'gstinVerified': _$SortOrderEnumMap[instance.gstinVerified],
      'country': _$SortOrderEnumMap[instance.country],
      'isIndianResident': _$SortOrderEnumMap[instance.isIndianResident],
      'lutNumber': _$SortOrderEnumMap[instance.lutNumber],
      'lutValidUntil': _$SortOrderEnumMap[instance.lutValidUntil],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
