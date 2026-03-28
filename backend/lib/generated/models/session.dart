import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'user.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required String id,
    required String token,
    required String userId,
    required DateTime expiresAt,
    String? ipAddress,
    String? userAgent,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

/// Input for creating a new Session
@freezed
class CreateSessionInput with _$CreateSessionInput {
  const factory CreateSessionInput({
    required String token,
    required String userId,
    required DateTime expiresAt,
    String? ipAddress,
    String? userAgent,
  }) = _CreateSessionInput;

  factory CreateSessionInput.fromJson(Map<String, dynamic> json) =>
      _$CreateSessionInputFromJson(json);
}

/// Input for updating an existing Session
@freezed
class UpdateSessionInput with _$UpdateSessionInput {
  const factory UpdateSessionInput({
    String? token,
    String? userId,
    DateTime? expiresAt,
    String? ipAddress,
    String? userAgent,
  }) = _UpdateSessionInput;

  factory UpdateSessionInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateSessionInputFromJson(json);
}

/// Unique where input for Session
/// At least one field must be provided
@freezed
class SessionWhereUniqueInput with _$SessionWhereUniqueInput {
  const factory SessionWhereUniqueInput({
    String? id,
    String? token,
  }) = _SessionWhereUniqueInput;

  factory SessionWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$SessionWhereUniqueInputFromJson(json);
}

/// Where input for filtering Session records
@freezed
class SessionWhereInput with _$SessionWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory SessionWhereInput({
    StringFilter? id,
    StringFilter? token,
    StringFilter? userId,
    DateTimeFilter? expiresAt,
    StringFilter? ipAddress,
    StringFilter? userAgent,
    /// Filter by user relation
    UserRelationFilter? user,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<SessionWhereInput>? AND,
    List<SessionWhereInput>? OR,
    SessionWhereInput? NOT,
  }) = _SessionWhereInput;

  factory SessionWhereInput.fromJson(Map<String, dynamic> json) =>
      _$SessionWhereInputFromJson(json);
}

/// Filter for Session list relations (one-to-many, many-to-many)
@freezed
class SessionListRelationFilter with _$SessionListRelationFilter {
  const factory SessionListRelationFilter({
    /// At least one related record matches
    SessionWhereInput? some,
    /// All related records match
    SessionWhereInput? every,
    /// No related records match
    SessionWhereInput? none,
  }) = _SessionListRelationFilter;

  factory SessionListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SessionListRelationFilterFromJson(json);
}

/// Filter for Session single relations (one-to-one, many-to-one)
@freezed
class SessionRelationFilter with _$SessionRelationFilter {
  const factory SessionRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') SessionWhereInput? is_,
    /// Related record does not match
    SessionWhereInput? isNot,
  }) = _SessionRelationFilter;

  factory SessionRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SessionRelationFilterFromJson(json);
}

/// Order by input for sorting Session records
@freezed
class SessionOrderByInput with _$SessionOrderByInput {
  const factory SessionOrderByInput({
    SortOrder? id,
    SortOrder? token,
    SortOrder? userId,
    SortOrder? expiresAt,
    SortOrder? ipAddress,
    SortOrder? userAgent,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _SessionOrderByInput;

  factory SessionOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$SessionOrderByInputFromJson(json);
}

