import 'user_model.dart';

class LoginResponse {
  final String accessToken;
  final String refreshToken;
  final User user;
  final DateTime expiresAt;

  const LoginResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.user,
    required this.expiresAt,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'refreshToken': refreshToken,
      'user': user.toJson(),
      'expiresAt': expiresAt.toIso8601String(),
    };
  }

  LoginResponse copyWith({
    String? accessToken,
    String? refreshToken,
    User? user,
    DateTime? expiresAt,
  }) {
    return LoginResponse(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      user: user ?? this.user,
      expiresAt: expiresAt ?? this.expiresAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LoginResponse &&
        other.accessToken == accessToken &&
        other.refreshToken == refreshToken &&
        other.user == user &&
        other.expiresAt == expiresAt;
  }

  @override
  int get hashCode {
    return Object.hash(accessToken, refreshToken, user, expiresAt);
  }

  @override
  String toString() {
    return 'LoginResponse(user: ${user.email}, expiresAt: $expiresAt)';
  }
}