import 'package:backend/database/database_client.dart';
import 'package:backend/services/google_token_verifier.dart';
import 'package:backend/services/jwt_service.dart';
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
class AuthService {
  /// Creates an AuthService with database client and JWT service
  AuthService(this._db, this._jwtService, {GoogleTokenVerifier? tokenVerifier})
      : _tokenVerifier = tokenVerifier ?? GoogleTokenVerifier();

  final DatabaseClient _db;
  final JwtService _jwtService;
  final GoogleTokenVerifier _tokenVerifier;
  final _uuid = const Uuid();

  /// Sign in with email and password
  Future<Map<String, dynamic>> signInWithEmail(
    String email,
    String password,
  ) async {
    // Find user by email
    final user = await _db.findUserByEmail(email);

    if (user == null) {
      throw AuthException('Invalid email or password');
    }

    // Check if user has a password set (credentials auth)
    final hashedPassword = user['password'] as String?;

    if (hashedPassword == null) {
      // User might have signed up via OAuth, no password set
      throw AuthException(
        'This account uses social login. Please sign in with Google.',
      );
    }

    // Verify password
    if (!BCrypt.checkpw(password, hashedPassword)) {
      throw AuthException('Invalid email or password');
    }

    // Create session
    final session = await _createSession(user['id'] as String);

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
        'expiresAt': session['expires']?.toString(),
      },
    };
  }

  /// Sign up with email and password
  ///
  /// User creation is wrapped in a database transaction for atomicity.
  /// If any step fails, the entire operation is rolled back automatically.
  Future<Map<String, dynamic>> signUpWithEmail(
    String email,
    String password, {
    String? name,
  }) async {
    // Check if user already exists
    final existing = await _db.findUserByEmail(email);

    if (existing != null) {
      throw AuthException(
        'An account with this email already exists',
        statusCode: 409,
      );
    }

    // Hash password
    final hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
    final userId = _uuid.v4();

    // Create user, account, and profile atomically in a transaction
    final user = await _db.executeInTransaction((txn) async {
      // Create user with password stored in users table
      final newUser = await _db.createUser(
        id: userId,
        email: email,
        name: name,
        hashedPassword: hashedPassword,
        executor: txn,
      );

      // Create credentials account (for provider tracking)
      await _db.createCredentialsAccount(
        id: _uuid.v4(),
        userId: userId,
        executor: txn,
      );

      // Create consultee profile
      await _db.createConsulteeProfile(
        id: _uuid.v4(),
        userId: userId,
        executor: txn,
      );

      return newUser;
    });

    // Create session (outside transaction - not critical for user creation)
    final session = await _createSession(userId);

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
        'expiresAt': session['expires']?.toString(),
      },
    };
  }

  /// Get current session and user by session ID
  Future<Map<String, dynamic>?> getSession(String sessionId) async {
    final sessionData = await _db.findSessionById(sessionId);

    if (sessionData == null) {
      return null;
    }

    // Session query already filters by expires > NOW()
    // Extract user data from the joined result
    final user = {
      'id': sessionData['user_id'],
      'name': sessionData['user_name'],
      'email': sessionData['user_email'],
      'image': sessionData['user_image'],
      'role': sessionData['user_role'],
    };

    return {
      'session': {
        'id': sessionData['id'],
        'userId': sessionData['userId'],
        'expiresAt': sessionData['expires']?.toString(),
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
  /// Both methods are secure - the backend always fetches user info directly
  /// from Google, never trusting client-provided user data.
  ///
  /// New user creation is wrapped in a database transaction for atomicity.
  Future<Map<String, dynamic>> signInWithGoogle({
    String? idToken,
    String? accessToken,
  }) async {
    // Verify token and extract user info from Google
    final GoogleUserInfo googleUser;

    if (idToken != null && idToken.isNotEmpty) {
      // Mobile: Verify ID token (preferred method)
      googleUser = await _tokenVerifier.verifyIdToken(idToken);
    } else if (accessToken != null && accessToken.isNotEmpty) {
      // Web: Use access token to fetch user info from Google's userinfo endpoint
      googleUser = await _tokenVerifier.getUserInfoFromAccessToken(accessToken);
    } else {
      throw AuthException(
        'Either idToken or accessToken is required',
        statusCode: 400,
      );
    }

    // Use the stable Google user ID (sub) as providerAccountId
    final providerAccountId = googleUser.sub;
    final email = googleUser.email;
    final name = googleUser.name;
    final image = googleUser.picture;

    // Check if user exists by email
    final existingUser = await _db.findUserByEmail(email);

    final Map<String, dynamic> user;
    if (existingUser == null) {
      // Create new user atomically in a transaction
      final userId = _uuid.v4();
      user = await _db.executeInTransaction((txn) async {
        final newUser = await _db.createUser(
          id: userId,
          email: email,
          name: name,
          image: image,
          executor: txn,
        );

        // Create Google OAuth account link using stable sub ID
        await _db.createOAuthAccount(
          id: _uuid.v4(),
          userId: userId,
          provider: 'google',
          providerAccountId: providerAccountId,
          accessToken: accessToken,
          idToken: idToken,
          executor: txn,
        );

        // Create consultee profile
        await _db.createConsulteeProfile(
          id: _uuid.v4(),
          userId: userId,
          executor: txn,
        );

        return newUser;
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
    final session = await _createSession(user['id'] as String);

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
        'expiresAt': session['expires']?.toString(),
      },
    };
  }

  /// Create a new session for a user
  Future<Map<String, dynamic>> _createSession(String userId) async {
    final sessionId = _uuid.v4();
    final sessionToken = _uuid.v4();
    final expiresAt = DateTime.now().toUtc().add(const Duration(days: 30));

    final session = await _db.createSession(
      id: sessionId,
      sessionToken: sessionToken,
      userId: userId,
      expires: expiresAt,
    );

    return session;
  }

  /// Remove sensitive fields from user data
  Map<String, dynamic> _sanitizeUser(Map<String, dynamic> user) {
    return {
      'id': user['id'],
      'email': user['email'],
      'name': user['name'],
      'image': user['image'],
      'role': user['role'],
      'emailVerified': user['emailVerified'] as bool? ?? false,
      'onboardingCompleted': user['onboardingCompleted'] as bool? ?? false,
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
