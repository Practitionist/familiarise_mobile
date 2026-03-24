import 'package:freezed_annotation/freezed_annotation.dart';

import 'waitlist_status.dart';

part 'waitlist_entry.freezed.dart';
part 'waitlist_entry.g.dart';

@freezed
class WaitlistEntry with _$WaitlistEntry {
  const factory WaitlistEntry({
    required String id,
    required DateTime joinedAt,
    int? position,
    required WaitlistEntryStatus status,
    @Default(0) int priority,
    DateTime? notifiedAt,
    DateTime? expiresAt,
    DateTime? bookedAt,
    DateTime? respondedAt,
    required String userId,
    String? webinarId,
    String? classId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _WaitlistEntry;

  factory WaitlistEntry.fromJson(Map<String, dynamic> json) =>
      _$WaitlistEntryFromJson(json);
}
