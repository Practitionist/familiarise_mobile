import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'discount_type.dart';
import 'payment.dart';

part 'discount_code.freezed.dart';
part 'discount_code.g.dart';

@freezed
class DiscountCode with _$DiscountCode {
  const factory DiscountCode({
    required String id,
    required String code,
    required String description,
    required DiscountType discountType,
    required int discountValue,
    @Default("INR")
    String currency,
    @Default(true)
    bool isActive,
    DateTime? expiresAt,
    int? maxUses,
    @Default(0)
    int currentUses,
    int? maxDiscount,
    @JsonKey(name: 'Payment')
    required List<Payment> payment,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _DiscountCode;

  factory DiscountCode.fromJson(Map<String, dynamic> json) =>
      _$DiscountCodeFromJson(json);
}

/// Input for creating a new DiscountCode
@freezed
class CreateDiscountCodeInput with _$CreateDiscountCodeInput {
  const factory CreateDiscountCodeInput({
    required String code,
    required String description,
    required DiscountType discountType,
    required int discountValue,
    @Default("INR")
    String? currency,
    @Default(true)
    bool? isActive,
    DateTime? expiresAt,
    int? maxUses,
    @Default(0)
    int? currentUses,
    int? maxDiscount,
  }) = _CreateDiscountCodeInput;

  factory CreateDiscountCodeInput.fromJson(Map<String, dynamic> json) =>
      _$CreateDiscountCodeInputFromJson(json);
}

/// Input for updating an existing DiscountCode
@freezed
class UpdateDiscountCodeInput with _$UpdateDiscountCodeInput {
  const factory UpdateDiscountCodeInput({
    String? code,
    String? description,
    DiscountType? discountType,
    int? discountValue,
    String? currency,
    bool? isActive,
    DateTime? expiresAt,
    int? maxUses,
    int? currentUses,
    int? maxDiscount,
  }) = _UpdateDiscountCodeInput;

  factory UpdateDiscountCodeInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateDiscountCodeInputFromJson(json);
}

/// Unique where input for DiscountCode
/// At least one field must be provided
@freezed
class DiscountCodeWhereUniqueInput with _$DiscountCodeWhereUniqueInput {
  const factory DiscountCodeWhereUniqueInput({
    String? id,
    String? code,
  }) = _DiscountCodeWhereUniqueInput;

  factory DiscountCodeWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$DiscountCodeWhereUniqueInputFromJson(json);
}

/// Where input for filtering DiscountCode records
@freezed
class DiscountCodeWhereInput with _$DiscountCodeWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory DiscountCodeWhereInput({
    StringFilter? id,
    StringFilter? code,
    StringFilter? description,
    DiscountTypeFilter? discountType,
    IntFilter? discountValue,
    StringFilter? currency,
    BooleanFilter? isActive,
    DateTimeFilter? expiresAt,
    IntFilter? maxUses,
    IntFilter? currentUses,
    IntFilter? maxDiscount,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<DiscountCodeWhereInput>? AND,
    List<DiscountCodeWhereInput>? OR,
    DiscountCodeWhereInput? NOT,
  }) = _DiscountCodeWhereInput;

  factory DiscountCodeWhereInput.fromJson(Map<String, dynamic> json) =>
      _$DiscountCodeWhereInputFromJson(json);
}

/// Filter for DiscountCode list relations (one-to-many, many-to-many)
@freezed
class DiscountCodeListRelationFilter with _$DiscountCodeListRelationFilter {
  const factory DiscountCodeListRelationFilter({
    /// At least one related record matches
    DiscountCodeWhereInput? some,
    /// All related records match
    DiscountCodeWhereInput? every,
    /// No related records match
    DiscountCodeWhereInput? none,
  }) = _DiscountCodeListRelationFilter;

  factory DiscountCodeListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$DiscountCodeListRelationFilterFromJson(json);
}

/// Filter for DiscountCode single relations (one-to-one, many-to-one)
@freezed
class DiscountCodeRelationFilter with _$DiscountCodeRelationFilter {
  const factory DiscountCodeRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') DiscountCodeWhereInput? is_,
    /// Related record does not match
    DiscountCodeWhereInput? isNot,
  }) = _DiscountCodeRelationFilter;

  factory DiscountCodeRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$DiscountCodeRelationFilterFromJson(json);
}

/// Order by input for sorting DiscountCode records
@freezed
class DiscountCodeOrderByInput with _$DiscountCodeOrderByInput {
  const factory DiscountCodeOrderByInput({
    SortOrder? id,
    SortOrder? code,
    SortOrder? description,
    SortOrder? discountValue,
    SortOrder? currency,
    SortOrder? isActive,
    SortOrder? expiresAt,
    SortOrder? maxUses,
    SortOrder? currentUses,
    SortOrder? maxDiscount,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _DiscountCodeOrderByInput;

  factory DiscountCodeOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$DiscountCodeOrderByInputFromJson(json);
}

