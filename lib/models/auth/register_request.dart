import 'user_model.dart';

class RegisterRequest {
  final String email;
  final String password;
  final String name;
  final String? phone;
  final UserRole role;

  const RegisterRequest({
    required this.email,
    required this.password,
    required this.name,
    this.phone,
    required this.role,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'name': name,
      'phone': phone,
      'role': role.serverValue,
    };
  }

  factory RegisterRequest.fromJson(Map<String, dynamic> json) {
    return RegisterRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String?,
      role: UserRole.fromString(json['role'] as String),
    );
  }

  RegisterRequest copyWith({
    String? email,
    String? password,
    String? name,
    String? phone,
    UserRole? role,
  }) {
    return RegisterRequest(
      email: email ?? this.email,
      password: password ?? this.password,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      role: role ?? this.role,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RegisterRequest &&
        other.email == email &&
        other.password == password &&
        other.name == name &&
        other.phone == phone &&
        other.role == role;
  }

  @override
  int get hashCode {
    return Object.hash(email, password, name, phone, role);
  }

  @override
  String toString() {
    return 'RegisterRequest(email: $email, name: $name, role: $role, password: [HIDDEN])';
  }
}