import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'user.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  const factory Account({
    required String id,
    required String userId,
    required String accountId,
    required String providerId,
    String? accessToken,
    String? refreshToken,
    DateTime? accessTokenExpiresAt,
    DateTime? refreshTokenExpiresAt,
    String? scope,
    String? idToken,
    String? password,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

/// Input for creating a new Account
@freezed
class CreateAccountInput with _$CreateAccountInput {
  const factory CreateAccountInput({
    required String userId,
    required String accountId,
    required String providerId,
    String? accessToken,
    String? refreshToken,
    DateTime? accessTokenExpiresAt,
    DateTime? refreshTokenExpiresAt,
    String? scope,
    String? idToken,
    String? password,
  }) = _CreateAccountInput;

  factory CreateAccountInput.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountInputFromJson(json);
}

/// Input for updating an existing Account
@freezed
class UpdateAccountInput with _$UpdateAccountInput {
  const factory UpdateAccountInput({
    String? userId,
    String? accountId,
    String? providerId,
    String? accessToken,
    String? refreshToken,
    DateTime? accessTokenExpiresAt,
    DateTime? refreshTokenExpiresAt,
    String? scope,
    String? idToken,
    String? password,
  }) = _UpdateAccountInput;

  factory UpdateAccountInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateAccountInputFromJson(json);
}

/// Unique where input for Account
/// At least one field must be provided
@freezed
class AccountWhereUniqueInput with _$AccountWhereUniqueInput {
  const factory AccountWhereUniqueInput({
    String? id,
  }) = _AccountWhereUniqueInput;

  factory AccountWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$AccountWhereUniqueInputFromJson(json);
}

/// Where input for filtering Account records
@freezed
class AccountWhereInput with _$AccountWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory AccountWhereInput({
    StringFilter? id,
    StringFilter? userId,
    StringFilter? accountId,
    StringFilter? providerId,
    StringFilter? accessToken,
    StringFilter? refreshToken,
    DateTimeFilter? accessTokenExpiresAt,
    DateTimeFilter? refreshTokenExpiresAt,
    StringFilter? scope,
    StringFilter? idToken,
    StringFilter? password,
    /// Filter by user relation
    UserRelationFilter? user,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<AccountWhereInput>? AND,
    List<AccountWhereInput>? OR,
    AccountWhereInput? NOT,
  }) = _AccountWhereInput;

  factory AccountWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AccountWhereInputFromJson(json);
}

/// Filter for Account list relations (one-to-many, many-to-many)
@freezed
class AccountListRelationFilter with _$AccountListRelationFilter {
  const factory AccountListRelationFilter({
    /// At least one related record matches
    AccountWhereInput? some,
    /// All related records match
    AccountWhereInput? every,
    /// No related records match
    AccountWhereInput? none,
  }) = _AccountListRelationFilter;

  factory AccountListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AccountListRelationFilterFromJson(json);
}

/// Filter for Account single relations (one-to-one, many-to-one)
@freezed
class AccountRelationFilter with _$AccountRelationFilter {
  const factory AccountRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') AccountWhereInput? is_,
    /// Related record does not match
    AccountWhereInput? isNot,
  }) = _AccountRelationFilter;

  factory AccountRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AccountRelationFilterFromJson(json);
}

/// Order by input for sorting Account records
@freezed
class AccountOrderByInput with _$AccountOrderByInput {
  const factory AccountOrderByInput({
    SortOrder? id,
    SortOrder? userId,
    SortOrder? accountId,
    SortOrder? providerId,
    SortOrder? accessToken,
    SortOrder? refreshToken,
    SortOrder? accessTokenExpiresAt,
    SortOrder? refreshTokenExpiresAt,
    SortOrder? scope,
    SortOrder? idToken,
    SortOrder? password,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _AccountOrderByInput;

  factory AccountOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$AccountOrderByInputFromJson(json);
}

