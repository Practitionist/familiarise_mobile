import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/formatters.dart';

part 'discount_info.freezed.dart';

/// Discount type
enum DiscountType {
  percentage,
  fixedAmount,
}

/// Result of discount code validation
@freezed
class DiscountInfo with _$DiscountInfo {
  const factory DiscountInfo({
    /// The discount code
    required String code,

    /// Whether the code is valid
    required bool isValid,

    /// Discount type (percentage or fixed)
    DiscountType? discountType,

    /// Fixed discount amount (if type is fixedAmount)
    double? discountAmount,

    /// Discount percentage (if type is percentage)
    double? discountPercentage,

    /// Description of the discount
    String? description,

    /// Error message if invalid
    String? errorMessage,

    /// Minimum order amount required
    double? minimumOrderAmount,

    /// Maximum discount amount (cap)
    double? maximumDiscountAmount,

    /// Expiry date of the discount
    DateTime? expiresAt,
  }) = _DiscountInfo;

  const DiscountInfo._();

  /// Calculate discount for a given amount
  double calculateDiscount(double originalAmount) {
    if (!isValid) return 0;

    double discount = 0;

    if (discountType == DiscountType.percentage && discountPercentage != null) {
      discount = originalAmount * (discountPercentage! / 100);
    } else if (discountType == DiscountType.fixedAmount &&
        discountAmount != null) {
      discount = discountAmount!;
    }

    // Apply maximum cap if specified
    if (maximumDiscountAmount != null && discount > maximumDiscountAmount!) {
      discount = maximumDiscountAmount!;
    }

    // Discount cannot exceed original amount
    if (discount > originalAmount) {
      discount = originalAmount;
    }

    return discount;
  }

  /// Whether the discount has expired
  bool get isExpired {
    if (expiresAt == null) return false;
    return DateTime.now().isAfter(expiresAt!);
  }

  /// Display text for the discount with specified currency
  String displayTextWithCurrency(String currency) {
    if (!isValid) return errorMessage ?? 'Invalid discount code';

    if (discountType == DiscountType.percentage && discountPercentage != null) {
      return '${discountPercentage!.toStringAsFixed(0)}% off';
    } else if (discountType == DiscountType.fixedAmount &&
        discountAmount != null) {
      return '${Formatters.currency(Formatters.fromMinorUnits(discountAmount!), currency)} off';
    }

    return description ?? 'Discount applied';
  }
}
