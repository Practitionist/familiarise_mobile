// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultant_earnings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultantEarningsImpl _$$ConsultantEarningsImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultantEarningsImpl(
      id: json['id'] as String,
      consultantProfileId: json['consultantProfileId'] as String,
      paymentId: json['paymentId'] as String,
      payoutId: json['payoutId'] as String?,
      grossAmount: (json['grossAmount'] as num).toInt(),
      platformFee: (json['platformFee'] as num).toInt(),
      consultantShare: (json['consultantShare'] as num).toInt(),
      role: $enumDecodeNullable(_$EarningRoleEnumMap, json['role']) ??
          EarningRole.owner,
      sharePercentage: (json['sharePercentage'] as num?)?.toDouble() ?? 100,
      status: $enumDecodeNullable(_$EarningStatusEnumMap, json['status']) ??
          EarningStatus.pending,
      holdUntil: DateTime.parse(json['holdUntil'] as String),
      paidAt: json['paidAt'] == null
          ? null
          : DateTime.parse(json['paidAt'] as String),
      currency: json['currency'] as String? ?? "INR",
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ConsultantEarningsImplToJson(
        _$ConsultantEarningsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultantProfileId': instance.consultantProfileId,
      'paymentId': instance.paymentId,
      'payoutId': instance.payoutId,
      'grossAmount': instance.grossAmount,
      'platformFee': instance.platformFee,
      'consultantShare': instance.consultantShare,
      'role': _$EarningRoleEnumMap[instance.role]!,
      'sharePercentage': instance.sharePercentage,
      'status': _$EarningStatusEnumMap[instance.status]!,
      'holdUntil': instance.holdUntil.toIso8601String(),
      'paidAt': instance.paidAt?.toIso8601String(),
      'currency': instance.currency,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$EarningRoleEnumMap = {
  EarningRole.owner: 'OWNER',
  EarningRole.collaborator: 'COLLABORATOR',
};

const _$EarningStatusEnumMap = {
  EarningStatus.pending: 'PENDING',
  EarningStatus.held: 'HELD',
  EarningStatus.ready: 'READY',
  EarningStatus.paid: 'PAID',
  EarningStatus.refunded: 'REFUNDED',
};

_$CreateConsultantEarningsInputImpl
    _$$CreateConsultantEarningsInputImplFromJson(Map<String, dynamic> json) =>
        _$CreateConsultantEarningsInputImpl(
          consultantProfileId: json['consultantProfileId'] as String,
          paymentId: json['paymentId'] as String,
          payoutId: json['payoutId'] as String?,
          grossAmount: (json['grossAmount'] as num).toInt(),
          platformFee: (json['platformFee'] as num).toInt(),
          consultantShare: (json['consultantShare'] as num).toInt(),
          role: $enumDecodeNullable(_$EarningRoleEnumMap, json['role']) ??
              EarningRole.owner,
          sharePercentage: (json['sharePercentage'] as num?)?.toDouble() ?? 100,
          status: $enumDecodeNullable(_$EarningStatusEnumMap, json['status']) ??
              EarningStatus.pending,
          holdUntil: DateTime.parse(json['holdUntil'] as String),
          paidAt: json['paidAt'] == null
              ? null
              : DateTime.parse(json['paidAt'] as String),
          currency: json['currency'] as String? ?? "INR",
        );

Map<String, dynamic> _$$CreateConsultantEarningsInputImplToJson(
        _$CreateConsultantEarningsInputImpl instance) =>
    <String, dynamic>{
      'consultantProfileId': instance.consultantProfileId,
      'paymentId': instance.paymentId,
      'payoutId': instance.payoutId,
      'grossAmount': instance.grossAmount,
      'platformFee': instance.platformFee,
      'consultantShare': instance.consultantShare,
      'role': _$EarningRoleEnumMap[instance.role]!,
      'sharePercentage': instance.sharePercentage,
      'status': _$EarningStatusEnumMap[instance.status]!,
      'holdUntil': instance.holdUntil.toIso8601String(),
      'paidAt': instance.paidAt?.toIso8601String(),
      'currency': instance.currency,
    };

_$UpdateConsultantEarningsInputImpl
    _$$UpdateConsultantEarningsInputImplFromJson(Map<String, dynamic> json) =>
        _$UpdateConsultantEarningsInputImpl(
          consultantProfileId: json['consultantProfileId'] as String?,
          paymentId: json['paymentId'] as String?,
          payoutId: json['payoutId'] as String?,
          grossAmount: (json['grossAmount'] as num?)?.toInt(),
          platformFee: (json['platformFee'] as num?)?.toInt(),
          consultantShare: (json['consultantShare'] as num?)?.toInt(),
          role: $enumDecodeNullable(_$EarningRoleEnumMap, json['role']),
          sharePercentage: (json['sharePercentage'] as num?)?.toDouble(),
          status: $enumDecodeNullable(_$EarningStatusEnumMap, json['status']),
          holdUntil: json['holdUntil'] == null
              ? null
              : DateTime.parse(json['holdUntil'] as String),
          paidAt: json['paidAt'] == null
              ? null
              : DateTime.parse(json['paidAt'] as String),
          currency: json['currency'] as String?,
        );

Map<String, dynamic> _$$UpdateConsultantEarningsInputImplToJson(
        _$UpdateConsultantEarningsInputImpl instance) =>
    <String, dynamic>{
      'consultantProfileId': instance.consultantProfileId,
      'paymentId': instance.paymentId,
      'payoutId': instance.payoutId,
      'grossAmount': instance.grossAmount,
      'platformFee': instance.platformFee,
      'consultantShare': instance.consultantShare,
      'role': _$EarningRoleEnumMap[instance.role],
      'sharePercentage': instance.sharePercentage,
      'status': _$EarningStatusEnumMap[instance.status],
      'holdUntil': instance.holdUntil?.toIso8601String(),
      'paidAt': instance.paidAt?.toIso8601String(),
      'currency': instance.currency,
    };

_$ConsultantEarningsWhereUniqueInputImpl
    _$$ConsultantEarningsWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultantEarningsWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$ConsultantEarningsWhereUniqueInputImplToJson(
        _$ConsultantEarningsWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ConsultantEarningsWhereInputImpl _$$ConsultantEarningsWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultantEarningsWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      consultantProfileId: json['consultantProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultantProfileId'] as Map<String, dynamic>),
      paymentId: json['paymentId'] == null
          ? null
          : StringFilter.fromJson(json['paymentId'] as Map<String, dynamic>),
      payoutId: json['payoutId'] == null
          ? null
          : StringFilter.fromJson(json['payoutId'] as Map<String, dynamic>),
      grossAmount: json['grossAmount'] == null
          ? null
          : IntFilter.fromJson(json['grossAmount'] as Map<String, dynamic>),
      platformFee: json['platformFee'] == null
          ? null
          : IntFilter.fromJson(json['platformFee'] as Map<String, dynamic>),
      consultantShare: json['consultantShare'] == null
          ? null
          : IntFilter.fromJson(json['consultantShare'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : EarningRoleFilter.fromJson(json['role'] as Map<String, dynamic>),
      sharePercentage: json['sharePercentage'] == null
          ? null
          : FloatFilter.fromJson(
              json['sharePercentage'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : EarningStatusFilter.fromJson(
              json['status'] as Map<String, dynamic>),
      holdUntil: json['holdUntil'] == null
          ? null
          : DateTimeFilter.fromJson(json['holdUntil'] as Map<String, dynamic>),
      paidAt: json['paidAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['paidAt'] as Map<String, dynamic>),
      currency: json['currency'] == null
          ? null
          : StringFilter.fromJson(json['currency'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      consultantProfile: json['consultantProfile'] == null
          ? null
          : ConsultantProfileRelationFilter.fromJson(
              json['consultantProfile'] as Map<String, dynamic>),
      payment: json['payment'] == null
          ? null
          : PaymentRelationFilter.fromJson(
              json['payment'] as Map<String, dynamic>),
      payout: json['payout'] == null
          ? null
          : PayoutRelationFilter.fromJson(
              json['payout'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              ConsultantEarningsWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              ConsultantEarningsWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ConsultantEarningsWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConsultantEarningsWhereInputImplToJson(
        _$ConsultantEarningsWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'paymentId': instance.paymentId?.toJson(),
      'payoutId': instance.payoutId?.toJson(),
      'grossAmount': instance.grossAmount?.toJson(),
      'platformFee': instance.platformFee?.toJson(),
      'consultantShare': instance.consultantShare?.toJson(),
      'role': instance.role?.toJson(),
      'sharePercentage': instance.sharePercentage?.toJson(),
      'status': instance.status?.toJson(),
      'holdUntil': instance.holdUntil?.toJson(),
      'paidAt': instance.paidAt?.toJson(),
      'currency': instance.currency?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'payment': instance.payment?.toJson(),
      'payout': instance.payout?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ConsultantEarningsListRelationFilterImpl
    _$$ConsultantEarningsListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultantEarningsListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ConsultantEarningsWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ConsultantEarningsWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ConsultantEarningsWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultantEarningsListRelationFilterImplToJson(
        _$ConsultantEarningsListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ConsultantEarningsRelationFilterImpl
    _$$ConsultantEarningsRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultantEarningsRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : ConsultantEarningsWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : ConsultantEarningsWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultantEarningsRelationFilterImplToJson(
        _$ConsultantEarningsRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ConsultantEarningsOrderByInputImpl
    _$$ConsultantEarningsOrderByInputImplFromJson(Map<String, dynamic> json) =>
        _$ConsultantEarningsOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          consultantProfileId: $enumDecodeNullable(
              _$SortOrderEnumMap, json['consultantProfileId']),
          paymentId: $enumDecodeNullable(_$SortOrderEnumMap, json['paymentId']),
          payoutId: $enumDecodeNullable(_$SortOrderEnumMap, json['payoutId']),
          grossAmount:
              $enumDecodeNullable(_$SortOrderEnumMap, json['grossAmount']),
          platformFee:
              $enumDecodeNullable(_$SortOrderEnumMap, json['platformFee']),
          consultantShare:
              $enumDecodeNullable(_$SortOrderEnumMap, json['consultantShare']),
          sharePercentage:
              $enumDecodeNullable(_$SortOrderEnumMap, json['sharePercentage']),
          holdUntil: $enumDecodeNullable(_$SortOrderEnumMap, json['holdUntil']),
          paidAt: $enumDecodeNullable(_$SortOrderEnumMap, json['paidAt']),
          currency: $enumDecodeNullable(_$SortOrderEnumMap, json['currency']),
          createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
          updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
        );

Map<String, dynamic> _$$ConsultantEarningsOrderByInputImplToJson(
        _$ConsultantEarningsOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'paymentId': _$SortOrderEnumMap[instance.paymentId],
      'payoutId': _$SortOrderEnumMap[instance.payoutId],
      'grossAmount': _$SortOrderEnumMap[instance.grossAmount],
      'platformFee': _$SortOrderEnumMap[instance.platformFee],
      'consultantShare': _$SortOrderEnumMap[instance.consultantShare],
      'sharePercentage': _$SortOrderEnumMap[instance.sharePercentage],
      'holdUntil': _$SortOrderEnumMap[instance.holdUntil],
      'paidAt': _$SortOrderEnumMap[instance.paidAt],
      'currency': _$SortOrderEnumMap[instance.currency],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
