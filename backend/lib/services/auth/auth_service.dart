import 'package:backend/database/database_client.dart';
import 'package:backend/services/auth/github_oauth_service.dart';
import 'package:backend/services/auth/google_token_verifier.dart';
import 'package:backend/services/auth/jwt_service.dart';
import 'package:bcrypt/bcrypt.dart';
import 'package:uuid/uuid.dart';

/// Exception thrown for authentication errors
class AuthException implements Exception {
  /// Creates an AuthException with a message and optional status code
  AuthException(this.message, {this.statusCode = 401});

  /// The error message
  final String message;

  /// HTTP status code for this error
  final int statusCode;

  @override
  String toString() => message;
}

/// Service for authentication operations using Prisma Flutter Connector
///
/// BetterAuth-compatible: passwords are stored in the accounts table
/// (providerId: "credential"), not the users table. BCrypt cost 12
/// is used to match BetterAuth's default.
class AuthService {
  /// Creates an AuthService with database client and JWT service
  AuthService(this._db, this._jwtService, {GoogleTokenVerifier? tokenVerifier})
      : _tokenVerifier = tokenVerifier ?? GoogleTokenVerifier();

  final DatabaseClient _db;
  final JwtService _jwtService;
  final GoogleTokenVerifier _tokenVerifier;
  final _uuid = const Uuid();

  /// BCrypt cost factor — matches BetterAuth web config
  static const int _bcryptCost = 12;

  /// Sign in with email and password
  ///
  /// Fetches the credential Account (providerId: "credential") and
  /// verifies the password stored there (not on the user row).
  Future<Map<String, dynamic>> signInWithEmail(
    String email,
    String password, {
    String? ipAddress,
    String? userAgent,
  }) async {
    // Find user by email
    final user = await _db.findUserByEmail(email);

    if (user == null) {
      throw AuthException('Invalid email or password');
    }

    final userId = user['id'] as String;

    // Find credential account for this user
    final account = await _db.accounts.findCredentialAccount(userId);

    if (account == null) {
      // User might have signed up via OAuth, no credential account
      throw AuthException(
        'This account uses social login. Please sign in with Google.',
      );
    }

    final hashedPassword = account['password'] as String?;
    if (hashedPassword == null) {
      throw AuthException(
        'This account uses social login. Please sign in with Google.',
      );
    }

    // Verify password
    if (!BCrypt.checkpw(password, hashedPassword)) {
      throw AuthException('Invalid email or password');
    }

    // Create session with client info for security tracking
    final session = await _createSession(
      userId,
      ipAddress: ipAddress,
      userAgent: userAgent,
    );

    // Create JWT token
    final token = _jwtService.createToken(
      userId: userId,
      sessionId: session['id'] as String,
    );

    return {
      'user': _sanitizeUser(user),
      'token': token,
      'session': {
        'id': session['id'],
        'userId': session['userId'],
        'expiresAt': session['expiresAt']?.toString(),
      },
    };
  }

  /// Sign up with email and password
  ///
  /// User creation is wrapped in a database transaction for atomicity.
  /// Password is stored in the accounts table (BetterAuth schema).
  Future<Map<String, dynamic>> signUpWithEmail(
    String email,
    String password, {
    String? name,
    String? ipAddress,
    String? userAgent,
  }) async {
    // Check if user already exists
    final existing = await _db.findUserByEmail(email);

    if (existing != null) {
      throw AuthException(
        'An account with this email already exists',
        statusCode: 409,
      );
    }

    // Hash password with cost 12 to match BetterAuth
    final hashedPassword =
        BCrypt.hashpw(password, BCrypt.gensalt(logRounds: _bcryptCost));

    // Create user, account, and profile atomically in a transaction.
    // Ids/timestamps are autofilled by the schema defaults, so the created
    // row's id is used for all follow-up inserts.
    final user = await _db.prisma.$transaction((tx) async {
      // Create user without password (BetterAuth schema)
      final newUser = await tx.user.create(
        data: CreateUserInput(
          email: email,
          name: name ?? '',
        ),
      );
      final newUserId = newUser.id;

      // Create credentials account with password
      await tx.account.create(
        data: CreateAccountInput(
          userId: newUserId,
          providerId: 'credential',
          accountId: newUserId,
          password: hashedPassword,
        ),
      );

      // Create consultee profile and link to user
      final profile = await tx.consulteeProfile.create(
        data: CreateConsulteeProfileInput(userId: newUserId),
      );

      // Update user with consulteeProfileId FK (updatedAt auto-refreshes)
      final linkedUser = await tx.user.update(
        where: UserWhereUniqueInput(id: newUserId),
        data: UpdateUserInput(consulteeProfileId: profile.id),
      );

      // Create default preferences (matches web BetterAuth databaseHooks)
      await tx.cookiePreference.create(
        data: CreateCookiePreferenceInput(userId: newUserId),
      );
      await tx.notificationPreference.create(
        data: CreateNotificationPreferenceInput(userId: newUserId),
      );

      return linkedUser.toJson();
    });
    final userId = user['id'] as String;

    // Create session (outside transaction - not critical for user creation)
    final session = await _createSession(
      userId,
      ipAddress: ipAddress,
      userAgent: userAgent,
    );

    // Create JWT token
    final token = _jwtService.createToken(
      userId: userId,
      sessionId: session['id'] as String,
    );

    return {
      'user': _sanitizeUser(user),
      'token': token,
      'session': {
        'id': session['id'],
        'userId': session['userId'],
        'expiresAt': session['expiresAt']?.toString(),
      },
    };
  }

  /// Get current session and user by session ID
  Future<Map<String, dynamic>?> getSession(String sessionId) async {
    final sessionData = await _db.findSessionById(sessionId);

    if (sessionData == null) {
      return null;
    }

    // Session query already filters by expiresAt > NOW()
    // Extract user data from the joined result
    final user = {
      'id': sessionData['user_id'],
      'name': sessionData['user_name'],
      'email': sessionData['user_email'],
      'image': sessionData['user_image'],
      'role': sessionData['user_role'],
      'onboardingCompleted': sessionData['user_onboardingCompleted'] ?? false,
    };

    return {
      'session': {
        'id': sessionData['id'],
        'userId': sessionData['userId'],
        'expiresAt': sessionData['expiresAt']?.toString(),
      },
      'user': user,
    };
  }

  /// Get user by ID
  Future<Map<String, dynamic>?> getUser(String userId) async {
    final user = await _db.findUserById(userId);
    return user != null ? _sanitizeUser(user) : null;
  }

  /// Sign out - invalidate session
  Future<void> signOut(String sessionId) async {
    await _db.deleteSession(sessionId);
  }

  /// Sign in with Google OAuth
  ///
  /// Accepts either an ID token (preferred, from mobile) or access token (web).
  /// On web, google_sign_in cannot provide an ID token, so we use the access
  /// token to fetch user info from Google's userinfo endpoint instead.
  ///
  /// New user creation is wrapped in a database transaction for atomicity.
  Future<Map<String, dynamic>> signInWithGoogle({
    String? idToken,
    String? accessToken,
    String? ipAddress,
    String? userAgent,
  }) async {
    // Verify token and extract user info from Google
    final GoogleUserInfo googleUser;

    if (idToken != null && idToken.isNotEmpty) {
      // Mobile: Verify ID token (preferred method)
      googleUser = await _tokenVerifier.verifyIdToken(idToken);
    } else if (accessToken != null && accessToken.isNotEmpty) {
      // Web: Use access token to fetch user info from Google's userinfo
      // endpoint
      googleUser = await _tokenVerifier.getUserInfoFromAccessToken(accessToken);
    } else {
      throw AuthException(
        'Either idToken or accessToken is required',
        statusCode: 400,
      );
    }

    // Use the stable Google user ID (sub) as accountId
    final providerAccountId = googleUser.sub;
    final email = googleUser.email;
    final name = googleUser.name;
    final image = googleUser.picture;

    // Check if user exists by email
    final existingUser = await _db.findUserByEmail(email);

    final Map<String, dynamic> user;
    if (existingUser == null) {
      // Create new user atomically in a transaction; the created row's
      // autofilled id is used for all follow-up inserts.
      user = await _db.prisma.$transaction((tx) async {
        final newUser = await tx.user.create(
          data: CreateUserInput(
            email: email,
            name: name ?? '',
            image: image,
          ),
        );
        final newUserId = newUser.id;

        // Create Google OAuth account link using BetterAuth column names
        await tx.account.create(
          data: CreateAccountInput(
            userId: newUserId,
            providerId: 'google',
            accountId: providerAccountId,
            accessToken: accessToken,
            idToken: idToken,
          ),
        );

        // Create consultee profile and link it back on the user (mirrors the
        // email-signup path; consulteeProfileId is a User FK the app reads).
        final profile = await tx.consulteeProfile.create(
          data: CreateConsulteeProfileInput(userId: newUserId),
        );
        final linkedUser = await tx.user.update(
          where: UserWhereUniqueInput(id: newUserId),
          data: UpdateUserInput(consulteeProfileId: profile.id),
        );

        // Create default preferences (matches web BetterAuth databaseHooks)
        await tx.cookiePreference.create(
          data: CreateCookiePreferenceInput(userId: newUserId),
        );
        await tx.notificationPreference.create(
          data: CreateNotificationPreferenceInput(userId: newUserId),
        );

        return (linkedUser ?? newUser).toJson();
      });
    } else {
      // Update user info from verified token
      if (name != null || image != null) {
        final updatedUser = await _db.updateUser(
          id: existingUser['id'] as String,
          name: name,
          image: image,
        );
        // Use updated user data, fallback to existing if update returns null
        user = updatedUser ?? existingUser;
      } else {
        user = existingUser;
      }
    }

    // Create session (outside transaction - not critical for user creation)
    final session = await _createSession(
      user['id'] as String,
      ipAddress: ipAddress,
      userAgent: userAgent,
    );

    // Create JWT token
    final token = _jwtService.createToken(
      userId: user['id'] as String,
      sessionId: session['id'] as String,
    );

    return {
      'user': _sanitizeUser(user),
      'token': token,
      'session': {
        'id': session['id'],
        'userId': session['userId'],
        'expiresAt': session['expiresAt']?.toString(),
      },
    };
  }

  /// Sign in with GitHub OAuth
  ///
  /// Exchanges the authorization code for user info and creates/updates the user.
  Future<Map<String, dynamic>> signInWithGitHub(
    GitHubUserInfo githubUser, {
    String? ipAddress,
    String? userAgent,
  }) async {
    final email = githubUser.email;
    if (email == null || email.isEmpty) {
      throw AuthException(
        'Could not get email from GitHub. Please make sure your GitHub email is public or verified.',
        statusCode: 400,
      );
    }

    final providerAccountId = githubUser.id.toString();
    final name = githubUser.name ?? githubUser.login;
    final image = githubUser.avatarUrl;

    // Check if user exists by email
    final existingUser = await _db.findUserByEmail(email);

    final Map<String, dynamic> user;
    if (existingUser == null) {
      // Create new user atomically in a transaction; the created row's
      // autofilled id is used for all follow-up inserts.
      user = await _db.prisma.$transaction((tx) async {
        final newUser = await tx.user.create(
          data: CreateUserInput(
            email: email,
            name: name,
            image: image,
          ),
        );
        final newUserId = newUser.id;

        // Create GitHub OAuth account link using BetterAuth column names
        await tx.account.create(
          data: CreateAccountInput(
            userId: newUserId,
            providerId: 'github',
            accountId: providerAccountId,
          ),
        );

        // Create consultee profile and link it back on the user (mirrors the
        // email-signup path; consulteeProfileId is a User FK the app reads).
        final profile = await tx.consulteeProfile.create(
          data: CreateConsulteeProfileInput(userId: newUserId),
        );
        final linkedUser = await tx.user.update(
          where: UserWhereUniqueInput(id: newUserId),
          data: UpdateUserInput(consulteeProfileId: profile.id),
        );

        // Create default preferences (matches web BetterAuth databaseHooks)
        await tx.cookiePreference.create(
          data: CreateCookiePreferenceInput(userId: newUserId),
        );
        await tx.notificationPreference.create(
          data: CreateNotificationPreferenceInput(userId: newUserId),
        );

        return (linkedUser ?? newUser).toJson();
      });
    } else {
      // Update user info if changed
      if (name != null || image != null) {
        final updatedUser = await _db.updateUser(
          id: existingUser['id'] as String,
          name: name,
          image: image,
        );
        user = updatedUser ?? existingUser;
      } else {
        user = existingUser;
      }
    }

    // Create session with client info for security tracking
    final session = await _createSession(
      user['id'] as String,
      ipAddress: ipAddress,
      userAgent: userAgent,
    );

    // Create JWT token
    final token = _jwtService.createToken(
      userId: user['id'] as String,
      sessionId: session['id'] as String,
    );

    return {
      'user': _sanitizeUser(user),
      'token': token,
      'session': {
        'id': session['id'],
        'userId': session['userId'],
        'expiresAt': session['expiresAt']?.toString(),
      },
    };
  }

  /// Create a new session for a user
  ///
  /// Uses BetterAuth column names: token (not sessionToken), expiresAt (not expires)
  Future<Map<String, dynamic>> _createSession(
    String userId, {
    String? ipAddress,
    String? userAgent,
  }) async {
    final sessionId = _uuid.v4();
    final sessionToken = _uuid.v4();
    final expiresAt = DateTime.now().toUtc().add(const Duration(days: 30));

    final session = await _db.sessions.create(
      id: sessionId,
      token: sessionToken,
      userId: userId,
      expiresAt: expiresAt,
      ipAddress: ipAddress,
      userAgent: userAgent,
    );

    return session;
  }

  /// Remove sensitive fields from user data
  Map<String, dynamic> _sanitizeUser(Map<String, dynamic> user) {
    // emailVerified is now a Boolean in BetterAuth schema
    final emailVerifiedValue = user['emailVerified'];
    final isEmailVerified = emailVerifiedValue is bool
        ? emailVerifiedValue
        : emailVerifiedValue != null;

    // onboardingCompleted can be bool, DateTime, or null - convert to bool
    final onboardingValue = user['onboardingCompleted'];
    final isOnboardingCompleted =
        onboardingValue is bool ? onboardingValue : onboardingValue != null;

    return {
      'id': user['id'],
      'email': user['email'],
      'name': user['name'],
      'image': user['image'],
      'phone': user['phone'],
      'role': user['role'],
      'emailVerified': isEmailVerified,
      'onboardingCompleted': isOnboardingCompleted,
      'timezone': user['timezone'],
      'dateOfBirth': user['dateOfBirth']?.toString(),
      'gender': user['gender'],
      'city': user['city'],
      'country': user['country'],
      'linkedinUrl': user['linkedinUrl'],
      'bio': user['bio'],
      'profileDisplayImage': user['profileDisplayImage'],
      'address': user['address'],
      'onlineStatus': user['onlineStatus'] ?? false,
      'consulteeProfileId': user['consulteeProfileId'],
      'consultantProfileId': user['consultantProfileId'],
      'staffProfileId': user['staffProfileId'],
      'adminProfileId': user['adminProfileId'],
      'termsAcceptedAt': user['termsAcceptedAt']?.toString(),
      'privacyAcceptedAt': user['privacyAcceptedAt']?.toString(),
      'createdAt': user['createdAt']?.toString(),
      'updatedAt': user['updatedAt']?.toString(),
    };
  }

  /// Dispose resources used by this service
  ///
  /// Should be called on server shutdown to properly release HTTP clients.
  void dispose() {
    _tokenVerifier.dispose();
  }
}
