import 'package:freezed_annotation/freezed_annotation.dart';

part 'tax_entities.freezed.dart';
part 'tax_entities.g.dart';

@freezed
class ConsultantTaxInfo with _$ConsultantTaxInfo {
  const factory ConsultantTaxInfo({
    required String id,
    required String consultantProfileId,
    String? panNumber,
    String? gstNumber,
    String? taxResidency,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ConsultantTaxInfo;

  factory ConsultantTaxInfo.fromJson(Map<String, dynamic> json) =>
      _$ConsultantTaxInfoFromJson(json);
}

@freezed
class TDSRecord with _$TDSRecord {
  const factory TDSRecord({
    required String id,
    required String consultantProfileId,
    String? financialYear,
    String? quarter,
    double? tdsAmount,
    double? grossAmount,
    double? tdsPercentage,
    String? status,
    DateTime? deductedAt,
    required DateTime createdAt,
  }) = _TDSRecord;

  factory TDSRecord.fromJson(Map<String, dynamic> json) =>
      _$TDSRecordFromJson(json);
}
