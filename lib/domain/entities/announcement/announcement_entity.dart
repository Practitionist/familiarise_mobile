import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_entity.freezed.dart';
part 'announcement_entity.g.dart';

@freezed
class Announcement with _$Announcement {
  const factory Announcement({
    required String id,
    required String title,
    String? message,
    String? type,
    String? linkUrl,
    String? linkText,
    String? backgroundColor,
    String? textColor,
    @Default(true) bool isActive,
    DateTime? startDate,
    DateTime? endDate,
    required DateTime createdAt,
  }) = _Announcement;

  factory Announcement.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementFromJson(json);
}
