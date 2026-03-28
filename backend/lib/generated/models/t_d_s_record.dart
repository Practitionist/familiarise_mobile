import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'consultant_profile.dart';
import 'payout.dart';

part 't_d_s_record.freezed.dart';
part 't_d_s_record.g.dart';

@freezed
class TDSRecord with _$TDSRecord {
  const factory TDSRecord({
    required String id,
    required String consultantProfileId,
    required String financialYear,
    required int quarter,
    required int cumulativeAmountCredited,
    required int tdsDeducted,
    required double tdsRate,
    String? payoutId,
    String? earningsId,
    @Default(false)
    bool isReversal,
    @Default(false)
    bool reportedInForm26Q,
    DateTime? form26QFilingDate,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Payout? payout,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TDSRecord;

  factory TDSRecord.fromJson(Map<String, dynamic> json) =>
      _$TDSRecordFromJson(json);
}

/// Input for creating a new TDSRecord
@freezed
class CreateTDSRecordInput with _$CreateTDSRecordInput {
  const factory CreateTDSRecordInput({
    required String consultantProfileId,
    required String financialYear,
    required int quarter,
    required int cumulativeAmountCredited,
    required int tdsDeducted,
    required double tdsRate,
    String? payoutId,
    String? earningsId,
    @Default(false)
    bool? isReversal,
    @Default(false)
    bool? reportedInForm26Q,
    DateTime? form26QFilingDate,
  }) = _CreateTDSRecordInput;

  factory CreateTDSRecordInput.fromJson(Map<String, dynamic> json) =>
      _$CreateTDSRecordInputFromJson(json);
}

/// Input for updating an existing TDSRecord
@freezed
class UpdateTDSRecordInput with _$UpdateTDSRecordInput {
  const factory UpdateTDSRecordInput({
    String? consultantProfileId,
    String? financialYear,
    int? quarter,
    int? cumulativeAmountCredited,
    int? tdsDeducted,
    double? tdsRate,
    String? payoutId,
    String? earningsId,
    bool? isReversal,
    bool? reportedInForm26Q,
    DateTime? form26QFilingDate,
  }) = _UpdateTDSRecordInput;

  factory UpdateTDSRecordInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateTDSRecordInputFromJson(json);
}

/// Unique where input for TDSRecord
/// At least one field must be provided
@freezed
class TDSRecordWhereUniqueInput with _$TDSRecordWhereUniqueInput {
  const factory TDSRecordWhereUniqueInput({
    String? id,
  }) = _TDSRecordWhereUniqueInput;

  factory TDSRecordWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$TDSRecordWhereUniqueInputFromJson(json);
}

/// Where input for filtering TDSRecord records
@freezed
class TDSRecordWhereInput with _$TDSRecordWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory TDSRecordWhereInput({
    StringFilter? id,
    StringFilter? consultantProfileId,
    StringFilter? financialYear,
    IntFilter? quarter,
    IntFilter? cumulativeAmountCredited,
    IntFilter? tdsDeducted,
    FloatFilter? tdsRate,
    StringFilter? payoutId,
    StringFilter? earningsId,
    BooleanFilter? isReversal,
    BooleanFilter? reportedInForm26Q,
    DateTimeFilter? form26QFilingDate,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    /// Filter by payout relation
    PayoutRelationFilter? payout,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<TDSRecordWhereInput>? AND,
    List<TDSRecordWhereInput>? OR,
    TDSRecordWhereInput? NOT,
  }) = _TDSRecordWhereInput;

  factory TDSRecordWhereInput.fromJson(Map<String, dynamic> json) =>
      _$TDSRecordWhereInputFromJson(json);
}

/// Filter for TDSRecord list relations (one-to-many, many-to-many)
@freezed
class TDSRecordListRelationFilter with _$TDSRecordListRelationFilter {
  const factory TDSRecordListRelationFilter({
    /// At least one related record matches
    TDSRecordWhereInput? some,
    /// All related records match
    TDSRecordWhereInput? every,
    /// No related records match
    TDSRecordWhereInput? none,
  }) = _TDSRecordListRelationFilter;

  factory TDSRecordListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$TDSRecordListRelationFilterFromJson(json);
}

/// Filter for TDSRecord single relations (one-to-one, many-to-one)
@freezed
class TDSRecordRelationFilter with _$TDSRecordRelationFilter {
  const factory TDSRecordRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') TDSRecordWhereInput? is_,
    /// Related record does not match
    TDSRecordWhereInput? isNot,
  }) = _TDSRecordRelationFilter;

  factory TDSRecordRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$TDSRecordRelationFilterFromJson(json);
}

/// Order by input for sorting TDSRecord records
@freezed
class TDSRecordOrderByInput with _$TDSRecordOrderByInput {
  const factory TDSRecordOrderByInput({
    SortOrder? id,
    SortOrder? consultantProfileId,
    SortOrder? financialYear,
    SortOrder? quarter,
    SortOrder? cumulativeAmountCredited,
    SortOrder? tdsDeducted,
    SortOrder? tdsRate,
    SortOrder? payoutId,
    SortOrder? earningsId,
    SortOrder? isReversal,
    SortOrder? reportedInForm26Q,
    SortOrder? form26QFilingDate,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _TDSRecordOrderByInput;

  factory TDSRecordOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$TDSRecordOrderByInputFromJson(json);
}

