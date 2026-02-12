import 'package:freezed_annotation/freezed_annotation.dart';

part 'collaborator_entities.freezed.dart';
part 'collaborator_entities.g.dart';

/// A single collaboration (webinar or class)
@freezed
class Collaboration with _$Collaboration {
  const factory Collaboration({
    required String id,
    required String planType,
    required String role,
    required String status,
    @Default(0) double revenueSharePercentage,
    @Default('') String planTitle,
    @Default(0) int planPrice,
    @Default('') String hostName,
    String? hostImage,
    @Default('') String inviterName,
    DateTime? createdAt,
  }) = _Collaboration;

  factory Collaboration.fromJson(Map<String, dynamic> json) =>
      _$CollaborationFromJson(json);
}

/// Response containing both webinar and class collaborations
@freezed
class CollaborationsResponse with _$CollaborationsResponse {
  const factory CollaborationsResponse({
    @Default([]) List<Collaboration> webinarCollaborations,
    @Default([]) List<Collaboration> classCollaborations,
    @Default(CollaborationCounts()) CollaborationCounts counts,
  }) = _CollaborationsResponse;
}

/// Counts of pending and accepted collaborations
@freezed
class CollaborationCounts with _$CollaborationCounts {
  const factory CollaborationCounts({
    @Default(0) int pendingCount,
    @Default(0) int acceptedCount,
  }) = _CollaborationCounts;

  factory CollaborationCounts.fromJson(Map<String, dynamic> json) =>
      _$CollaborationCountsFromJson(json);
}
