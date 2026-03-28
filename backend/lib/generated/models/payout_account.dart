import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'payment_gateway.dart';
import 'payout_account_type.dart';
import 'consultant_profile.dart';

part 'payout_account.freezed.dart';
part 'payout_account.g.dart';

@freezed
class PayoutAccount with _$PayoutAccount {
  const factory PayoutAccount({
    required String id,
    required String consultantProfileId,
    required PaymentGateway provider,
    @Default(PayoutAccountType.bankAccount)
    PayoutAccountType accountType,
    String? accountHolderName,
    String? bankName,
    String? accountNumberLast4,
    String? ifscCode,
    String? upiId,
    String? stripeAccountId,
    String? stripeAccountStatus,
    String? razorpayContactId,
    String? razorpayFundAccId,
    @Default(false)
    bool isVerified,
    @Default(false)
    bool isDefault,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
  }) = _PayoutAccount;

  factory PayoutAccount.fromJson(Map<String, dynamic> json) =>
      _$PayoutAccountFromJson(json);
}

/// Input for creating a new PayoutAccount
@freezed
class CreatePayoutAccountInput with _$CreatePayoutAccountInput {
  const factory CreatePayoutAccountInput({
    required String consultantProfileId,
    required PaymentGateway provider,
    @Default(PayoutAccountType.bankAccount)
    PayoutAccountType accountType,
    String? accountHolderName,
    String? bankName,
    String? accountNumberLast4,
    String? ifscCode,
    String? upiId,
    String? stripeAccountId,
    String? stripeAccountStatus,
    String? razorpayContactId,
    String? razorpayFundAccId,
    @Default(false)
    bool? isVerified,
    @Default(false)
    bool? isDefault,
  }) = _CreatePayoutAccountInput;

  factory CreatePayoutAccountInput.fromJson(Map<String, dynamic> json) =>
      _$CreatePayoutAccountInputFromJson(json);
}

/// Input for updating an existing PayoutAccount
@freezed
class UpdatePayoutAccountInput with _$UpdatePayoutAccountInput {
  const factory UpdatePayoutAccountInput({
    String? consultantProfileId,
    PaymentGateway? provider,
    PayoutAccountType? accountType,
    String? accountHolderName,
    String? bankName,
    String? accountNumberLast4,
    String? ifscCode,
    String? upiId,
    String? stripeAccountId,
    String? stripeAccountStatus,
    String? razorpayContactId,
    String? razorpayFundAccId,
    bool? isVerified,
    bool? isDefault,
  }) = _UpdatePayoutAccountInput;

  factory UpdatePayoutAccountInput.fromJson(Map<String, dynamic> json) =>
      _$UpdatePayoutAccountInputFromJson(json);
}

/// Unique where input for PayoutAccount
/// At least one field must be provided
@freezed
class PayoutAccountWhereUniqueInput with _$PayoutAccountWhereUniqueInput {
  const factory PayoutAccountWhereUniqueInput({
    String? id,
    String? stripeAccountId,
    String? razorpayFundAccId,
  }) = _PayoutAccountWhereUniqueInput;

  factory PayoutAccountWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$PayoutAccountWhereUniqueInputFromJson(json);
}

/// Where input for filtering PayoutAccount records
@freezed
class PayoutAccountWhereInput with _$PayoutAccountWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory PayoutAccountWhereInput({
    StringFilter? id,
    StringFilter? consultantProfileId,
    PaymentGatewayFilter? provider,
    PayoutAccountTypeFilter? accountType,
    StringFilter? accountHolderName,
    StringFilter? bankName,
    StringFilter? accountNumberLast4,
    StringFilter? ifscCode,
    StringFilter? upiId,
    StringFilter? stripeAccountId,
    StringFilter? stripeAccountStatus,
    StringFilter? razorpayContactId,
    StringFilter? razorpayFundAccId,
    BooleanFilter? isVerified,
    BooleanFilter? isDefault,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    List<PayoutAccountWhereInput>? AND,
    List<PayoutAccountWhereInput>? OR,
    PayoutAccountWhereInput? NOT,
  }) = _PayoutAccountWhereInput;

  factory PayoutAccountWhereInput.fromJson(Map<String, dynamic> json) =>
      _$PayoutAccountWhereInputFromJson(json);
}

/// Filter for PayoutAccount list relations (one-to-many, many-to-many)
@freezed
class PayoutAccountListRelationFilter with _$PayoutAccountListRelationFilter {
  const factory PayoutAccountListRelationFilter({
    /// At least one related record matches
    PayoutAccountWhereInput? some,
    /// All related records match
    PayoutAccountWhereInput? every,
    /// No related records match
    PayoutAccountWhereInput? none,
  }) = _PayoutAccountListRelationFilter;

  factory PayoutAccountListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$PayoutAccountListRelationFilterFromJson(json);
}

/// Filter for PayoutAccount single relations (one-to-one, many-to-one)
@freezed
class PayoutAccountRelationFilter with _$PayoutAccountRelationFilter {
  const factory PayoutAccountRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') PayoutAccountWhereInput? is_,
    /// Related record does not match
    PayoutAccountWhereInput? isNot,
  }) = _PayoutAccountRelationFilter;

  factory PayoutAccountRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$PayoutAccountRelationFilterFromJson(json);
}

/// Order by input for sorting PayoutAccount records
@freezed
class PayoutAccountOrderByInput with _$PayoutAccountOrderByInput {
  const factory PayoutAccountOrderByInput({
    SortOrder? id,
    SortOrder? consultantProfileId,
    SortOrder? accountHolderName,
    SortOrder? bankName,
    SortOrder? accountNumberLast4,
    SortOrder? ifscCode,
    SortOrder? upiId,
    SortOrder? stripeAccountId,
    SortOrder? stripeAccountStatus,
    SortOrder? razorpayContactId,
    SortOrder? razorpayFundAccId,
    SortOrder? isVerified,
    SortOrder? isDefault,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _PayoutAccountOrderByInput;

  factory PayoutAccountOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$PayoutAccountOrderByInputFromJson(json);
}

