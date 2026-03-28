// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountCodeImpl _$$DiscountCodeImplFromJson(Map<String, dynamic> json) =>
    _$DiscountCodeImpl(
      id: json['id'] as String,
      code: json['code'] as String,
      description: json['description'] as String,
      discountType: $enumDecode(_$DiscountTypeEnumMap, json['discountType']),
      discountValue: (json['discountValue'] as num).toInt(),
      currency: json['currency'] as String? ?? "INR",
      isActive: json['isActive'] as bool? ?? true,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      maxUses: (json['maxUses'] as num?)?.toInt(),
      currentUses: (json['currentUses'] as num?)?.toInt() ?? 0,
      maxDiscount: (json['maxDiscount'] as num?)?.toInt(),
      payment: (json['Payment'] as List<dynamic>)
          .map((e) => Payment.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DiscountCodeImplToJson(_$DiscountCodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'description': instance.description,
      'discountType': _$DiscountTypeEnumMap[instance.discountType]!,
      'discountValue': instance.discountValue,
      'currency': instance.currency,
      'isActive': instance.isActive,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'maxUses': instance.maxUses,
      'currentUses': instance.currentUses,
      'maxDiscount': instance.maxDiscount,
      'Payment': instance.payment,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$DiscountTypeEnumMap = {
  DiscountType.percentage: 'PERCENTAGE',
  DiscountType.fixedAmount: 'FIXED_AMOUNT',
  DiscountType.freeShipping: 'FREE_SHIPPING',
};

_$CreateDiscountCodeInputImpl _$$CreateDiscountCodeInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateDiscountCodeInputImpl(
      code: json['code'] as String,
      description: json['description'] as String,
      discountType: $enumDecode(_$DiscountTypeEnumMap, json['discountType']),
      discountValue: (json['discountValue'] as num).toInt(),
      currency: json['currency'] as String? ?? "INR",
      isActive: json['isActive'] as bool? ?? true,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      maxUses: (json['maxUses'] as num?)?.toInt(),
      currentUses: (json['currentUses'] as num?)?.toInt() ?? 0,
      maxDiscount: (json['maxDiscount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CreateDiscountCodeInputImplToJson(
        _$CreateDiscountCodeInputImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'discountType': _$DiscountTypeEnumMap[instance.discountType]!,
      'discountValue': instance.discountValue,
      'currency': instance.currency,
      'isActive': instance.isActive,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'maxUses': instance.maxUses,
      'currentUses': instance.currentUses,
      'maxDiscount': instance.maxDiscount,
    };

_$UpdateDiscountCodeInputImpl _$$UpdateDiscountCodeInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateDiscountCodeInputImpl(
      code: json['code'] as String?,
      description: json['description'] as String?,
      discountType:
          $enumDecodeNullable(_$DiscountTypeEnumMap, json['discountType']),
      discountValue: (json['discountValue'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      isActive: json['isActive'] as bool?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      maxUses: (json['maxUses'] as num?)?.toInt(),
      currentUses: (json['currentUses'] as num?)?.toInt(),
      maxDiscount: (json['maxDiscount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UpdateDiscountCodeInputImplToJson(
        _$UpdateDiscountCodeInputImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'discountType': _$DiscountTypeEnumMap[instance.discountType],
      'discountValue': instance.discountValue,
      'currency': instance.currency,
      'isActive': instance.isActive,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'maxUses': instance.maxUses,
      'currentUses': instance.currentUses,
      'maxDiscount': instance.maxDiscount,
    };

_$DiscountCodeWhereUniqueInputImpl _$$DiscountCodeWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscountCodeWhereUniqueInputImpl(
      id: json['id'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$DiscountCodeWhereUniqueInputImplToJson(
        _$DiscountCodeWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
    };

_$DiscountCodeWhereInputImpl _$$DiscountCodeWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscountCodeWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      code: json['code'] == null
          ? null
          : StringFilter.fromJson(json['code'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
      discountType: json['discountType'] == null
          ? null
          : DiscountTypeFilter.fromJson(
              json['discountType'] as Map<String, dynamic>),
      discountValue: json['discountValue'] == null
          ? null
          : IntFilter.fromJson(json['discountValue'] as Map<String, dynamic>),
      currency: json['currency'] == null
          ? null
          : StringFilter.fromJson(json['currency'] as Map<String, dynamic>),
      isActive: json['isActive'] == null
          ? null
          : BooleanFilter.fromJson(json['isActive'] as Map<String, dynamic>),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['expiresAt'] as Map<String, dynamic>),
      maxUses: json['maxUses'] == null
          ? null
          : IntFilter.fromJson(json['maxUses'] as Map<String, dynamic>),
      currentUses: json['currentUses'] == null
          ? null
          : IntFilter.fromJson(json['currentUses'] as Map<String, dynamic>),
      maxDiscount: json['maxDiscount'] == null
          ? null
          : IntFilter.fromJson(json['maxDiscount'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => DiscountCodeWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => DiscountCodeWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : DiscountCodeWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DiscountCodeWhereInputImplToJson(
        _$DiscountCodeWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'code': instance.code?.toJson(),
      'description': instance.description?.toJson(),
      'discountType': instance.discountType?.toJson(),
      'discountValue': instance.discountValue?.toJson(),
      'currency': instance.currency?.toJson(),
      'isActive': instance.isActive?.toJson(),
      'expiresAt': instance.expiresAt?.toJson(),
      'maxUses': instance.maxUses?.toJson(),
      'currentUses': instance.currentUses?.toJson(),
      'maxDiscount': instance.maxDiscount?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$DiscountCodeListRelationFilterImpl
    _$$DiscountCodeListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$DiscountCodeListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : DiscountCodeWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : DiscountCodeWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : DiscountCodeWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$DiscountCodeListRelationFilterImplToJson(
        _$DiscountCodeListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$DiscountCodeRelationFilterImpl _$$DiscountCodeRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscountCodeRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : DiscountCodeWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : DiscountCodeWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DiscountCodeRelationFilterImplToJson(
        _$DiscountCodeRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$DiscountCodeOrderByInputImpl _$$DiscountCodeOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscountCodeOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      code: $enumDecodeNullable(_$SortOrderEnumMap, json['code']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      discountValue:
          $enumDecodeNullable(_$SortOrderEnumMap, json['discountValue']),
      currency: $enumDecodeNullable(_$SortOrderEnumMap, json['currency']),
      isActive: $enumDecodeNullable(_$SortOrderEnumMap, json['isActive']),
      expiresAt: $enumDecodeNullable(_$SortOrderEnumMap, json['expiresAt']),
      maxUses: $enumDecodeNullable(_$SortOrderEnumMap, json['maxUses']),
      currentUses: $enumDecodeNullable(_$SortOrderEnumMap, json['currentUses']),
      maxDiscount: $enumDecodeNullable(_$SortOrderEnumMap, json['maxDiscount']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$DiscountCodeOrderByInputImplToJson(
        _$DiscountCodeOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'code': _$SortOrderEnumMap[instance.code],
      'description': _$SortOrderEnumMap[instance.description],
      'discountValue': _$SortOrderEnumMap[instance.discountValue],
      'currency': _$SortOrderEnumMap[instance.currency],
      'isActive': _$SortOrderEnumMap[instance.isActive],
      'expiresAt': _$SortOrderEnumMap[instance.expiresAt],
      'maxUses': _$SortOrderEnumMap[instance.maxUses],
      'currentUses': _$SortOrderEnumMap[instance.currentUses],
      'maxDiscount': _$SortOrderEnumMap[instance.maxDiscount],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
