// GENERATED CODE - DO NOT MODIFY BY HAND

part of 't_d_s_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TDSRecordImpl _$$TDSRecordImplFromJson(Map<String, dynamic> json) =>
    _$TDSRecordImpl(
      id: json['id'] as String,
      consultantProfileId: json['consultantProfileId'] as String,
      financialYear: json['financialYear'] as String,
      quarter: (json['quarter'] as num).toInt(),
      cumulativeAmountCredited:
          (json['cumulativeAmountCredited'] as num).toInt(),
      tdsDeducted: (json['tdsDeducted'] as num).toInt(),
      tdsRate: (json['tdsRate'] as num).toDouble(),
      payoutId: json['payoutId'] as String?,
      earningsId: json['earningsId'] as String?,
      isReversal: json['isReversal'] as bool? ?? false,
      reportedInForm26Q: json['reportedInForm26Q'] as bool? ?? false,
      form26QFilingDate: json['form26QFilingDate'] == null
          ? null
          : DateTime.parse(json['form26QFilingDate'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$TDSRecordImplToJson(_$TDSRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultantProfileId': instance.consultantProfileId,
      'financialYear': instance.financialYear,
      'quarter': instance.quarter,
      'cumulativeAmountCredited': instance.cumulativeAmountCredited,
      'tdsDeducted': instance.tdsDeducted,
      'tdsRate': instance.tdsRate,
      'payoutId': instance.payoutId,
      'earningsId': instance.earningsId,
      'isReversal': instance.isReversal,
      'reportedInForm26Q': instance.reportedInForm26Q,
      'form26QFilingDate': instance.form26QFilingDate?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateTDSRecordInputImpl _$$CreateTDSRecordInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTDSRecordInputImpl(
      consultantProfileId: json['consultantProfileId'] as String,
      financialYear: json['financialYear'] as String,
      quarter: (json['quarter'] as num).toInt(),
      cumulativeAmountCredited:
          (json['cumulativeAmountCredited'] as num).toInt(),
      tdsDeducted: (json['tdsDeducted'] as num).toInt(),
      tdsRate: (json['tdsRate'] as num).toDouble(),
      payoutId: json['payoutId'] as String?,
      earningsId: json['earningsId'] as String?,
      isReversal: json['isReversal'] as bool? ?? false,
      reportedInForm26Q: json['reportedInForm26Q'] as bool? ?? false,
      form26QFilingDate: json['form26QFilingDate'] == null
          ? null
          : DateTime.parse(json['form26QFilingDate'] as String),
    );

Map<String, dynamic> _$$CreateTDSRecordInputImplToJson(
        _$CreateTDSRecordInputImpl instance) =>
    <String, dynamic>{
      'consultantProfileId': instance.consultantProfileId,
      'financialYear': instance.financialYear,
      'quarter': instance.quarter,
      'cumulativeAmountCredited': instance.cumulativeAmountCredited,
      'tdsDeducted': instance.tdsDeducted,
      'tdsRate': instance.tdsRate,
      'payoutId': instance.payoutId,
      'earningsId': instance.earningsId,
      'isReversal': instance.isReversal,
      'reportedInForm26Q': instance.reportedInForm26Q,
      'form26QFilingDate': instance.form26QFilingDate?.toIso8601String(),
    };

_$UpdateTDSRecordInputImpl _$$UpdateTDSRecordInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateTDSRecordInputImpl(
      consultantProfileId: json['consultantProfileId'] as String?,
      financialYear: json['financialYear'] as String?,
      quarter: (json['quarter'] as num?)?.toInt(),
      cumulativeAmountCredited:
          (json['cumulativeAmountCredited'] as num?)?.toInt(),
      tdsDeducted: (json['tdsDeducted'] as num?)?.toInt(),
      tdsRate: (json['tdsRate'] as num?)?.toDouble(),
      payoutId: json['payoutId'] as String?,
      earningsId: json['earningsId'] as String?,
      isReversal: json['isReversal'] as bool?,
      reportedInForm26Q: json['reportedInForm26Q'] as bool?,
      form26QFilingDate: json['form26QFilingDate'] == null
          ? null
          : DateTime.parse(json['form26QFilingDate'] as String),
    );

Map<String, dynamic> _$$UpdateTDSRecordInputImplToJson(
        _$UpdateTDSRecordInputImpl instance) =>
    <String, dynamic>{
      'consultantProfileId': instance.consultantProfileId,
      'financialYear': instance.financialYear,
      'quarter': instance.quarter,
      'cumulativeAmountCredited': instance.cumulativeAmountCredited,
      'tdsDeducted': instance.tdsDeducted,
      'tdsRate': instance.tdsRate,
      'payoutId': instance.payoutId,
      'earningsId': instance.earningsId,
      'isReversal': instance.isReversal,
      'reportedInForm26Q': instance.reportedInForm26Q,
      'form26QFilingDate': instance.form26QFilingDate?.toIso8601String(),
    };

_$TDSRecordWhereUniqueInputImpl _$$TDSRecordWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$TDSRecordWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$TDSRecordWhereUniqueInputImplToJson(
        _$TDSRecordWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$TDSRecordWhereInputImpl _$$TDSRecordWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$TDSRecordWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      consultantProfileId: json['consultantProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultantProfileId'] as Map<String, dynamic>),
      financialYear: json['financialYear'] == null
          ? null
          : StringFilter.fromJson(
              json['financialYear'] as Map<String, dynamic>),
      quarter: json['quarter'] == null
          ? null
          : IntFilter.fromJson(json['quarter'] as Map<String, dynamic>),
      cumulativeAmountCredited: json['cumulativeAmountCredited'] == null
          ? null
          : IntFilter.fromJson(
              json['cumulativeAmountCredited'] as Map<String, dynamic>),
      tdsDeducted: json['tdsDeducted'] == null
          ? null
          : IntFilter.fromJson(json['tdsDeducted'] as Map<String, dynamic>),
      tdsRate: json['tdsRate'] == null
          ? null
          : FloatFilter.fromJson(json['tdsRate'] as Map<String, dynamic>),
      payoutId: json['payoutId'] == null
          ? null
          : StringFilter.fromJson(json['payoutId'] as Map<String, dynamic>),
      earningsId: json['earningsId'] == null
          ? null
          : StringFilter.fromJson(json['earningsId'] as Map<String, dynamic>),
      isReversal: json['isReversal'] == null
          ? null
          : BooleanFilter.fromJson(json['isReversal'] as Map<String, dynamic>),
      reportedInForm26Q: json['reportedInForm26Q'] == null
          ? null
          : BooleanFilter.fromJson(
              json['reportedInForm26Q'] as Map<String, dynamic>),
      form26QFilingDate: json['form26QFilingDate'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['form26QFilingDate'] as Map<String, dynamic>),
      consultantProfile: json['consultantProfile'] == null
          ? null
          : ConsultantProfileRelationFilter.fromJson(
              json['consultantProfile'] as Map<String, dynamic>),
      payout: json['payout'] == null
          ? null
          : PayoutRelationFilter.fromJson(
              json['payout'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => TDSRecordWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => TDSRecordWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : TDSRecordWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TDSRecordWhereInputImplToJson(
        _$TDSRecordWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'financialYear': instance.financialYear?.toJson(),
      'quarter': instance.quarter?.toJson(),
      'cumulativeAmountCredited': instance.cumulativeAmountCredited?.toJson(),
      'tdsDeducted': instance.tdsDeducted?.toJson(),
      'tdsRate': instance.tdsRate?.toJson(),
      'payoutId': instance.payoutId?.toJson(),
      'earningsId': instance.earningsId?.toJson(),
      'isReversal': instance.isReversal?.toJson(),
      'reportedInForm26Q': instance.reportedInForm26Q?.toJson(),
      'form26QFilingDate': instance.form26QFilingDate?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'payout': instance.payout?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$TDSRecordListRelationFilterImpl _$$TDSRecordListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$TDSRecordListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : TDSRecordWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : TDSRecordWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : TDSRecordWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TDSRecordListRelationFilterImplToJson(
        _$TDSRecordListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$TDSRecordRelationFilterImpl _$$TDSRecordRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$TDSRecordRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : TDSRecordWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : TDSRecordWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TDSRecordRelationFilterImplToJson(
        _$TDSRecordRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$TDSRecordOrderByInputImpl _$$TDSRecordOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$TDSRecordOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      consultantProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultantProfileId']),
      financialYear:
          $enumDecodeNullable(_$SortOrderEnumMap, json['financialYear']),
      quarter: $enumDecodeNullable(_$SortOrderEnumMap, json['quarter']),
      cumulativeAmountCredited: $enumDecodeNullable(
          _$SortOrderEnumMap, json['cumulativeAmountCredited']),
      tdsDeducted: $enumDecodeNullable(_$SortOrderEnumMap, json['tdsDeducted']),
      tdsRate: $enumDecodeNullable(_$SortOrderEnumMap, json['tdsRate']),
      payoutId: $enumDecodeNullable(_$SortOrderEnumMap, json['payoutId']),
      earningsId: $enumDecodeNullable(_$SortOrderEnumMap, json['earningsId']),
      isReversal: $enumDecodeNullable(_$SortOrderEnumMap, json['isReversal']),
      reportedInForm26Q:
          $enumDecodeNullable(_$SortOrderEnumMap, json['reportedInForm26Q']),
      form26QFilingDate:
          $enumDecodeNullable(_$SortOrderEnumMap, json['form26QFilingDate']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$TDSRecordOrderByInputImplToJson(
        _$TDSRecordOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'financialYear': _$SortOrderEnumMap[instance.financialYear],
      'quarter': _$SortOrderEnumMap[instance.quarter],
      'cumulativeAmountCredited':
          _$SortOrderEnumMap[instance.cumulativeAmountCredited],
      'tdsDeducted': _$SortOrderEnumMap[instance.tdsDeducted],
      'tdsRate': _$SortOrderEnumMap[instance.tdsRate],
      'payoutId': _$SortOrderEnumMap[instance.payoutId],
      'earningsId': _$SortOrderEnumMap[instance.earningsId],
      'isReversal': _$SortOrderEnumMap[instance.isReversal],
      'reportedInForm26Q': _$SortOrderEnumMap[instance.reportedInForm26Q],
      'form26QFilingDate': _$SortOrderEnumMap[instance.form26QFilingDate],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
