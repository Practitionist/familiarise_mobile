// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payout_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayoutAccountImpl _$$PayoutAccountImplFromJson(Map<String, dynamic> json) =>
    _$PayoutAccountImpl(
      id: json['id'] as String,
      consultantProfileId: json['consultantProfileId'] as String,
      provider: $enumDecode(_$PaymentGatewayEnumMap, json['provider']),
      accountType: $enumDecodeNullable(
              _$PayoutAccountTypeEnumMap, json['accountType']) ??
          PayoutAccountType.bankAccount,
      accountHolderName: json['accountHolderName'] as String?,
      bankName: json['bankName'] as String?,
      accountNumberLast4: json['accountNumberLast4'] as String?,
      ifscCode: json['ifscCode'] as String?,
      upiId: json['upiId'] as String?,
      stripeAccountId: json['stripeAccountId'] as String?,
      stripeAccountStatus: json['stripeAccountStatus'] as String?,
      razorpayContactId: json['razorpayContactId'] as String?,
      razorpayFundAccId: json['razorpayFundAccId'] as String?,
      isVerified: json['isVerified'] as bool? ?? false,
      isDefault: json['isDefault'] as bool? ?? false,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PayoutAccountImplToJson(_$PayoutAccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultantProfileId': instance.consultantProfileId,
      'provider': _$PaymentGatewayEnumMap[instance.provider]!,
      'accountType': _$PayoutAccountTypeEnumMap[instance.accountType]!,
      'accountHolderName': instance.accountHolderName,
      'bankName': instance.bankName,
      'accountNumberLast4': instance.accountNumberLast4,
      'ifscCode': instance.ifscCode,
      'upiId': instance.upiId,
      'stripeAccountId': instance.stripeAccountId,
      'stripeAccountStatus': instance.stripeAccountStatus,
      'razorpayContactId': instance.razorpayContactId,
      'razorpayFundAccId': instance.razorpayFundAccId,
      'isVerified': instance.isVerified,
      'isDefault': instance.isDefault,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$PaymentGatewayEnumMap = {
  PaymentGateway.stripe: 'STRIPE',
  PaymentGateway.razorpay: 'RAZORPAY',
  PaymentGateway.lemonSqueezy: 'LEMON_SQUEEZY',
  PaymentGateway.xflow: 'XFLOW',
  PaymentGateway.card: 'CARD',
};

const _$PayoutAccountTypeEnumMap = {
  PayoutAccountType.bankAccount: 'BANK_ACCOUNT',
  PayoutAccountType.upi: 'UPI',
  PayoutAccountType.stripeConnect: 'STRIPE_CONNECT',
};

_$CreatePayoutAccountInputImpl _$$CreatePayoutAccountInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePayoutAccountInputImpl(
      consultantProfileId: json['consultantProfileId'] as String,
      provider: $enumDecode(_$PaymentGatewayEnumMap, json['provider']),
      accountType: $enumDecodeNullable(
              _$PayoutAccountTypeEnumMap, json['accountType']) ??
          PayoutAccountType.bankAccount,
      accountHolderName: json['accountHolderName'] as String?,
      bankName: json['bankName'] as String?,
      accountNumberLast4: json['accountNumberLast4'] as String?,
      ifscCode: json['ifscCode'] as String?,
      upiId: json['upiId'] as String?,
      stripeAccountId: json['stripeAccountId'] as String?,
      stripeAccountStatus: json['stripeAccountStatus'] as String?,
      razorpayContactId: json['razorpayContactId'] as String?,
      razorpayFundAccId: json['razorpayFundAccId'] as String?,
      isVerified: json['isVerified'] as bool? ?? false,
      isDefault: json['isDefault'] as bool? ?? false,
    );

Map<String, dynamic> _$$CreatePayoutAccountInputImplToJson(
        _$CreatePayoutAccountInputImpl instance) =>
    <String, dynamic>{
      'consultantProfileId': instance.consultantProfileId,
      'provider': _$PaymentGatewayEnumMap[instance.provider]!,
      'accountType': _$PayoutAccountTypeEnumMap[instance.accountType]!,
      'accountHolderName': instance.accountHolderName,
      'bankName': instance.bankName,
      'accountNumberLast4': instance.accountNumberLast4,
      'ifscCode': instance.ifscCode,
      'upiId': instance.upiId,
      'stripeAccountId': instance.stripeAccountId,
      'stripeAccountStatus': instance.stripeAccountStatus,
      'razorpayContactId': instance.razorpayContactId,
      'razorpayFundAccId': instance.razorpayFundAccId,
      'isVerified': instance.isVerified,
      'isDefault': instance.isDefault,
    };

_$UpdatePayoutAccountInputImpl _$$UpdatePayoutAccountInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePayoutAccountInputImpl(
      consultantProfileId: json['consultantProfileId'] as String?,
      provider: $enumDecodeNullable(_$PaymentGatewayEnumMap, json['provider']),
      accountType:
          $enumDecodeNullable(_$PayoutAccountTypeEnumMap, json['accountType']),
      accountHolderName: json['accountHolderName'] as String?,
      bankName: json['bankName'] as String?,
      accountNumberLast4: json['accountNumberLast4'] as String?,
      ifscCode: json['ifscCode'] as String?,
      upiId: json['upiId'] as String?,
      stripeAccountId: json['stripeAccountId'] as String?,
      stripeAccountStatus: json['stripeAccountStatus'] as String?,
      razorpayContactId: json['razorpayContactId'] as String?,
      razorpayFundAccId: json['razorpayFundAccId'] as String?,
      isVerified: json['isVerified'] as bool?,
      isDefault: json['isDefault'] as bool?,
    );

Map<String, dynamic> _$$UpdatePayoutAccountInputImplToJson(
        _$UpdatePayoutAccountInputImpl instance) =>
    <String, dynamic>{
      'consultantProfileId': instance.consultantProfileId,
      'provider': _$PaymentGatewayEnumMap[instance.provider],
      'accountType': _$PayoutAccountTypeEnumMap[instance.accountType],
      'accountHolderName': instance.accountHolderName,
      'bankName': instance.bankName,
      'accountNumberLast4': instance.accountNumberLast4,
      'ifscCode': instance.ifscCode,
      'upiId': instance.upiId,
      'stripeAccountId': instance.stripeAccountId,
      'stripeAccountStatus': instance.stripeAccountStatus,
      'razorpayContactId': instance.razorpayContactId,
      'razorpayFundAccId': instance.razorpayFundAccId,
      'isVerified': instance.isVerified,
      'isDefault': instance.isDefault,
    };

_$PayoutAccountWhereUniqueInputImpl
    _$$PayoutAccountWhereUniqueInputImplFromJson(Map<String, dynamic> json) =>
        _$PayoutAccountWhereUniqueInputImpl(
          id: json['id'] as String?,
          stripeAccountId: json['stripeAccountId'] as String?,
          razorpayFundAccId: json['razorpayFundAccId'] as String?,
        );

Map<String, dynamic> _$$PayoutAccountWhereUniqueInputImplToJson(
        _$PayoutAccountWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stripeAccountId': instance.stripeAccountId,
      'razorpayFundAccId': instance.razorpayFundAccId,
    };

_$PayoutAccountWhereInputImpl _$$PayoutAccountWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PayoutAccountWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      consultantProfileId: json['consultantProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultantProfileId'] as Map<String, dynamic>),
      provider: json['provider'] == null
          ? null
          : PaymentGatewayFilter.fromJson(
              json['provider'] as Map<String, dynamic>),
      accountType: json['accountType'] == null
          ? null
          : PayoutAccountTypeFilter.fromJson(
              json['accountType'] as Map<String, dynamic>),
      accountHolderName: json['accountHolderName'] == null
          ? null
          : StringFilter.fromJson(
              json['accountHolderName'] as Map<String, dynamic>),
      bankName: json['bankName'] == null
          ? null
          : StringFilter.fromJson(json['bankName'] as Map<String, dynamic>),
      accountNumberLast4: json['accountNumberLast4'] == null
          ? null
          : StringFilter.fromJson(
              json['accountNumberLast4'] as Map<String, dynamic>),
      ifscCode: json['ifscCode'] == null
          ? null
          : StringFilter.fromJson(json['ifscCode'] as Map<String, dynamic>),
      upiId: json['upiId'] == null
          ? null
          : StringFilter.fromJson(json['upiId'] as Map<String, dynamic>),
      stripeAccountId: json['stripeAccountId'] == null
          ? null
          : StringFilter.fromJson(
              json['stripeAccountId'] as Map<String, dynamic>),
      stripeAccountStatus: json['stripeAccountStatus'] == null
          ? null
          : StringFilter.fromJson(
              json['stripeAccountStatus'] as Map<String, dynamic>),
      razorpayContactId: json['razorpayContactId'] == null
          ? null
          : StringFilter.fromJson(
              json['razorpayContactId'] as Map<String, dynamic>),
      razorpayFundAccId: json['razorpayFundAccId'] == null
          ? null
          : StringFilter.fromJson(
              json['razorpayFundAccId'] as Map<String, dynamic>),
      isVerified: json['isVerified'] == null
          ? null
          : BooleanFilter.fromJson(json['isVerified'] as Map<String, dynamic>),
      isDefault: json['isDefault'] == null
          ? null
          : BooleanFilter.fromJson(json['isDefault'] as Map<String, dynamic>),
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
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              PayoutAccountWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              PayoutAccountWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : PayoutAccountWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayoutAccountWhereInputImplToJson(
        _$PayoutAccountWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'provider': instance.provider?.toJson(),
      'accountType': instance.accountType?.toJson(),
      'accountHolderName': instance.accountHolderName?.toJson(),
      'bankName': instance.bankName?.toJson(),
      'accountNumberLast4': instance.accountNumberLast4?.toJson(),
      'ifscCode': instance.ifscCode?.toJson(),
      'upiId': instance.upiId?.toJson(),
      'stripeAccountId': instance.stripeAccountId?.toJson(),
      'stripeAccountStatus': instance.stripeAccountStatus?.toJson(),
      'razorpayContactId': instance.razorpayContactId?.toJson(),
      'razorpayFundAccId': instance.razorpayFundAccId?.toJson(),
      'isVerified': instance.isVerified?.toJson(),
      'isDefault': instance.isDefault?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$PayoutAccountListRelationFilterImpl
    _$$PayoutAccountListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$PayoutAccountListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : PayoutAccountWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : PayoutAccountWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : PayoutAccountWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$PayoutAccountListRelationFilterImplToJson(
        _$PayoutAccountListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$PayoutAccountRelationFilterImpl _$$PayoutAccountRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$PayoutAccountRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : PayoutAccountWhereInput.fromJson(
              json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : PayoutAccountWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayoutAccountRelationFilterImplToJson(
        _$PayoutAccountRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$PayoutAccountOrderByInputImpl _$$PayoutAccountOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PayoutAccountOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      consultantProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultantProfileId']),
      accountHolderName:
          $enumDecodeNullable(_$SortOrderEnumMap, json['accountHolderName']),
      bankName: $enumDecodeNullable(_$SortOrderEnumMap, json['bankName']),
      accountNumberLast4:
          $enumDecodeNullable(_$SortOrderEnumMap, json['accountNumberLast4']),
      ifscCode: $enumDecodeNullable(_$SortOrderEnumMap, json['ifscCode']),
      upiId: $enumDecodeNullable(_$SortOrderEnumMap, json['upiId']),
      stripeAccountId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['stripeAccountId']),
      stripeAccountStatus:
          $enumDecodeNullable(_$SortOrderEnumMap, json['stripeAccountStatus']),
      razorpayContactId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['razorpayContactId']),
      razorpayFundAccId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['razorpayFundAccId']),
      isVerified: $enumDecodeNullable(_$SortOrderEnumMap, json['isVerified']),
      isDefault: $enumDecodeNullable(_$SortOrderEnumMap, json['isDefault']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$PayoutAccountOrderByInputImplToJson(
        _$PayoutAccountOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'accountHolderName': _$SortOrderEnumMap[instance.accountHolderName],
      'bankName': _$SortOrderEnumMap[instance.bankName],
      'accountNumberLast4': _$SortOrderEnumMap[instance.accountNumberLast4],
      'ifscCode': _$SortOrderEnumMap[instance.ifscCode],
      'upiId': _$SortOrderEnumMap[instance.upiId],
      'stripeAccountId': _$SortOrderEnumMap[instance.stripeAccountId],
      'stripeAccountStatus': _$SortOrderEnumMap[instance.stripeAccountStatus],
      'razorpayContactId': _$SortOrderEnumMap[instance.razorpayContactId],
      'razorpayFundAccId': _$SortOrderEnumMap[instance.razorpayFundAccId],
      'isVerified': _$SortOrderEnumMap[instance.isVerified],
      'isDefault': _$SortOrderEnumMap[instance.isDefault],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
