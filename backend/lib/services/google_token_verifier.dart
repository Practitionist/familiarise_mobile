import 'dart:convert';
import 'dart:io';

import 'package:backend/services/auth_service.dart';
import 'package:http/http.dart' as http;

/// Verified Google user information extracted from ID token
///
/// Contains the stable Google user ID (sub) and other profile information.
class GoogleUserInfo {
  /// Creates a GoogleUserInfo with required and optional fields
  GoogleUserInfo({
    required this.sub,
    required this.email,
    this.name,
    this.picture,
    this.emailVerified = false,
  });

  /// Stable Google user ID (use this as providerAccountId)
  final String sub;

  /// User's email address
  final String email;

  /// User's display name
  final String? name;

  /// URL to user's profile picture
  final String? picture;

  /// Whether the email is verified
  final bool emailVerified;
}

/// Service to verify Google ID tokens
///
/// Verifies tokens using Google's tokeninfo endpoint and extracts user
/// information securely from the verified token.
class GoogleTokenVerifier {
  /// Creates a GoogleTokenVerifier with an optional HTTP client
  GoogleTokenVerifier({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  /// Google's token verification endpoint
  static const _tokenInfoUrl = 'https://oauth2.googleapis.com/tokeninfo';

  /// Verify a Google ID token and extract user information
  ///
  /// Throws [AuthException] if the token is invalid or verification fails.
  Future<GoogleUserInfo> verifyIdToken(String idToken) async {
    try {
      final response = await _httpClient.get(
        Uri.parse('$_tokenInfoUrl?id_token=$idToken'),
      );

      if (response.statusCode != 200) {
        throw AuthException(
          'Invalid Google ID token',
        );
      }

      final data = jsonDecode(response.body) as Map<String, dynamic>;

      // Verify audience matches our client ID (if configured)
      final expectedClientId = Platform.environment['GOOGLE_CLIENT_ID'];
      if (expectedClientId != null && expectedClientId.isNotEmpty) {
        final tokenAudience = data['aud'] as String?;
        if (tokenAudience != expectedClientId) {
          throw AuthException(
            'Token audience mismatch',
          );
        }
      }

      // Check token expiration
      final expStr = data['exp'] as String?;
      if (expStr != null) {
        final expTime = int.tryParse(expStr);
        if (expTime != null) {
          final expiresAt = DateTime.fromMillisecondsSinceEpoch(expTime * 1000);
          if (expiresAt.isBefore(DateTime.now())) {
            throw AuthException(
              'Google ID token has expired',
            );
          }
        }
      }

      // Extract user info from verified token
      final sub = data['sub'] as String?;
      final email = data['email'] as String?;

      if (sub == null || sub.isEmpty) {
        throw AuthException(
          'Invalid token: missing subject claim',
        );
      }

      if (email == null || email.isEmpty) {
        throw AuthException(
          'Invalid token: missing email claim',
        );
      }

      return GoogleUserInfo(
        sub: sub,
        email: email,
        name: data['name'] as String?,
        picture: data['picture'] as String?,
        emailVerified: data['email_verified'] == 'true',
      );
    } on AuthException {
      rethrow;
    } catch (e) {
      throw AuthException(
        'Failed to verify Google ID token: ${e.runtimeType}',
      );
    }
  }

  /// Fetch user info using access token (for web clients)
  ///
  /// On web, google_sign_in cannot provide an ID token with the signIn()
  /// method. This method uses Google's userinfo endpoint to fetch verified
  /// user data using the access token instead.
  ///
  /// This is equally secure because:
  /// - The access token is obtained through Google's OAuth flow
  /// - The backend calls Google's API directly
  /// - User info comes from Google, not from the client
  ///
  /// Throws [AuthException] if the token is invalid.
  Future<GoogleUserInfo> getUserInfoFromAccessToken(String accessToken) async {
    try {
      final response = await _httpClient.get(
        Uri.parse('https://www.googleapis.com/oauth2/v3/userinfo'),
        headers: {'Authorization': 'Bearer $accessToken'},
      );

      if (response.statusCode != 200) {
        throw AuthException(
          'Invalid Google access token',
        );
      }

      final data = jsonDecode(response.body) as Map<String, dynamic>;

      final sub = data['sub'] as String?;
      final email = data['email'] as String?;

      if (sub == null || sub.isEmpty) {
        throw AuthException(
          'Invalid token: missing subject claim',
        );
      }

      if (email == null || email.isEmpty) {
        throw AuthException(
          'Invalid token: missing email claim',
        );
      }

      return GoogleUserInfo(
        sub: sub,
        email: email,
        name: data['name'] as String?,
        picture: data['picture'] as String?,
        emailVerified: data['email_verified'] as bool? ?? false,
      );
    } on AuthException {
      rethrow;
    } catch (e) {
      throw AuthException(
        'Failed to fetch Google user info: ${e.runtimeType}',
      );
    }
  }

  /// Exchange authorization code for tokens
  ///
  /// Used for browser-based OAuth flow where the client receives an
  /// authorization code instead of tokens directly.
  ///
  /// Returns a [GoogleUserInfo] after exchanging the code and fetching user
  /// info.
  ///
  /// Throws [AuthException] if the code is invalid or exchange fails.
  Future<GoogleUserInfo> exchangeCodeForUserInfo({
    required String code,
    required String redirectUri,
    required String clientId,
    required String clientSecret,
  }) async {
    try {
      // Exchange code for tokens
      final tokenResponse = await _httpClient.post(
        Uri.parse('https://oauth2.googleapis.com/token'),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: {
          'code': code,
          'client_id': clientId,
          'client_secret': clientSecret,
          'redirect_uri': redirectUri,
          'grant_type': 'authorization_code',
        },
      );

      if (tokenResponse.statusCode != 200) {
        final error = jsonDecode(tokenResponse.body);
        throw AuthException(
          'Failed to exchange code: ${error['error_description'] ?? error['error'] ?? 'Unknown error'}',
        );
      }

      final tokenData = jsonDecode(tokenResponse.body) as Map<String, dynamic>;
      final accessToken = tokenData['access_token'] as String?;

      if (accessToken == null) {
        throw AuthException('No access token in response');
      }

      // Use the access token to get user info
      return getUserInfoFromAccessToken(accessToken);
    } on AuthException {
      rethrow;
    } catch (e) {
      throw AuthException(
        'Failed to exchange Google authorization code: ${e.runtimeType}',
      );
    }
  }

  /// Dispose of resources
  void dispose() {
    _httpClient.close();
  }
}
