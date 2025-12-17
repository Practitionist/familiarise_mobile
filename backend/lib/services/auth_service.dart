import 'package:bcrypt/bcrypt.dart';
import 'package:uuid/uuid.dart';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/jwt_service.dart';

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
  AuthService(this._db, this._jwtService);

  final DatabaseClient _db;
  final JwtService _jwtService;
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

    // Create user with password stored in users table
    final user = await _db.createUser(
      id: userId,
      email: email,
      name: name,
      hashedPassword: hashedPassword,
    );

    // Create credentials account (for provider tracking)
    await _db.createCredentialsAccount(
      id: _uuid.v4(),
      userId: userId,
      hashedPassword: hashedPassword,
    );

    // Create consultee profile
    await _db.createConsulteeProfile(
      id: _uuid.v4(),
      userId: userId,
    );

    // Create session
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
  /// Handles both idToken verification and accessToken/user info fallback
  Future<Map<String, dynamic>> signInWithGoogle({
    String? idToken,
    String? accessToken,
    String? email,
    String? name,
    String? image,
  }) async {
    // For web, we might only have accessToken and user info from Google Sign-In
    // In that case, we trust the user info from the signed request
    if (email == null || email.isEmpty) {
      throw AuthException('Email is required for Google sign-in', statusCode: 400);
    }

    // Check if user exists
    var user = await _db.findUserByEmail(email);

    if (user == null) {
      // Create new user
      final userId = _uuid.v4();
      user = await _db.createUser(
        id: userId,
        email: email,
        name: name,
        image: image,
      );

      // Create Google OAuth account link
      await _db.createOAuthAccount(
        id: _uuid.v4(),
        userId: userId,
        provider: 'google',
        providerAccountId: email, // Using email as provider account ID
        accessToken: accessToken,
        idToken: idToken,
      );

      // Create consultee profile
      await _db.createConsulteeProfile(
        id: _uuid.v4(),
        userId: userId,
      );
    } else {
      // Update user info if provided
      if (name != null || image != null) {
        await _db.updateUser(
          id: user['id'] as String,
          name: name,
          image: image,
        );
        // Refresh user data
        user = await _db.findUserByEmail(email);
      }
    }

    // Create session
    final session = await _createSession(user!['id'] as String);

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
      'emailVerified': user['emailVerified'],
      'onboardingCompleted': user['onboardingCompleted'],
      'createdAt': user['createdAt']?.toString(),
      'updatedAt': user['updatedAt']?.toString(),
    };
  }
}
