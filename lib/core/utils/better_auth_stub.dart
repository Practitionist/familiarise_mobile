/// Stub for better_auth_flutter on web platforms
/// This file is used when running on web where better_auth_flutter is not supported
library better_auth_stub;

class BetterAuth {
  static final BetterAuth instance = BetterAuth._();
  BetterAuth._();

  static void init({required Uri baseUrl}) {
    // No-op on web
  }

  BetterAuthClient get client => BetterAuthClient._();
}

class BetterAuthClient {
  BetterAuthClient._();

  Future<(dynamic, BetterAuthFailure?)> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return (null, BetterAuthFailure('Not supported on web'));
  }

  Future<(dynamic, BetterAuthFailure?)> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    return (null, BetterAuthFailure('Not supported on web'));
  }

  Future<(dynamic, BetterAuthFailure?)> signInWithIdToken({
    required SocialProvider provider,
    required String idToken,
    required String accessToken,
  }) async {
    return (null, BetterAuthFailure('Not supported on web'));
  }

  Future<(String?, BetterAuthFailure?)> socialSignIn({
    required SocialProvider provider,
    required String callbackUrl,
    required String callbackUrlScheme,
  }) async {
    return (null, BetterAuthFailure('Not supported on web'));
  }

  Future<BetterAuthFailure?> signOut() async {
    return null;
  }

  Future<((dynamic, dynamic)?, BetterAuthFailure?)> getSession() async {
    return (null, null);
  }
}

class BetterAuthFailure {
  final String message;
  BetterAuthFailure(this.message);
}

enum SocialProvider { google, github, apple }

class User {
  final String id;
  final String? email;
  final String? name;
  final String? image;
  final bool emailVerified;
  final DateTime? createdAt;

  User({
    required this.id,
    this.email,
    this.name,
    this.image,
    this.emailVerified = false,
    this.createdAt,
  });
}
