import 'package:freezed_annotation/freezed_annotation.dart';

part 'payout_account.freezed.dart';
part 'payout_account.g.dart';

@freezed
class PayoutAccount with _$PayoutAccount {
  const factory PayoutAccount({
    required String id,
    required String consultantProfileId,
    required String provider,
    required String accountType,
    String? accountHolderName,
    String? bankName,
    String? accountNumberLast4,
    String? ifscCode,
    String? upiId,
    @Default(false) bool isVerified,
    @Default(false) bool isDefault,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PayoutAccount;

  factory PayoutAccount.fromJson(Map<String, dynamic> json) =>
      _$PayoutAccountFromJson(json);
}
