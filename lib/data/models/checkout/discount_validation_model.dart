import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/checkout/checkout_entities.dart';

part 'discount_validation_model.freezed.dart';
part 'discount_validation_model.g.dart';

/// Response model for discount code validation
@freezed
class DiscountValidationModel with _$DiscountValidationModel {
  const factory DiscountValidationModel({
    /// Whether the code is valid
    required bool valid,

    /// Discount type (PERCENTAGE, FIXED_AMOUNT)
    String? discountType,

    /// Discount amount (if fixed amount)
    double? discountAmount,

    /// Discount percentage (if percentage)
    double? discountPercentage,

    /// Description of the discount
    String? description,

    /// Error message if invalid
    String? message,

    /// Minimum order amount required
    double? minimumOrderAmount,

    /// Maximum discount amount (cap)
    double? maximumDiscountAmount,

    /// Expiry date (ISO 8601)
    String? expiresAt,
  }) = _DiscountValidationModel;

  const DiscountValidationModel._();

  factory DiscountValidationModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountValidationModelFromJson(json);

  /// Convert to domain entity
  DiscountInfo toEntity(String code) => DiscountInfo(
        code: code,
        isValid: valid,
        discountType: _parseDiscountType(),
        discountAmount: discountAmount,
        discountPercentage: discountPercentage,
        description: description,
        errorMessage: message,
        minimumOrderAmount: minimumOrderAmount,
        maximumDiscountAmount: maximumDiscountAmount,
        expiresAt: expiresAt != null ? DateTime.tryParse(expiresAt!) : null,
      );

  DiscountType? _parseDiscountType() {
    if (discountType == null) return null;
    switch (discountType!.toUpperCase()) {
      case 'PERCENTAGE':
        return DiscountType.percentage;
      case 'FIXED_AMOUNT':
        return DiscountType.fixedAmount;
      default:
        return null;
    }
  }
}
