import 'package:freezed_annotation/freezed_annotation.dart';

part 'earnings_summary.freezed.dart';
part 'earnings_summary.g.dart';

@freezed
class EarningsSummary with _$EarningsSummary {
  const factory EarningsSummary({
    @Default(0.0) double totalEarnings,
    @Default(0.0) double pendingEarnings,
    @Default(0.0) double paidEarnings,
    @Default('INR') String currency,
  }) = _EarningsSummary;

  factory EarningsSummary.fromJson(Map<String, dynamic> json) =>
      _$EarningsSummaryFromJson(json);
}
