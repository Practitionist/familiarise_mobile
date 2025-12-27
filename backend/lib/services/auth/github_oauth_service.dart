import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;

/// GitHub user information from OAuth
class GitHubUserInfo {
  GitHubUserInfo({
    required this.id,
    required this.login,
    this.email,
    this.name,
    this.avatarUrl,
  });

  final int id;
  final String login;
  final String? email;
  final String? name;
  final String? avatarUrl;
}

/// Exception for GitHub OAuth errors
class GitHubOAuthException implements Exception {
  GitHubOAuthException(this.message, {this.statusCode = 400});

  final String message;
  final int statusCode;

  @override
  String toString() => message;
}

/// Service for GitHub OAuth operations
class GitHubOAuthService {
  GitHubOAuthService({
    required String clientId,
    required String clientSecret,
    required String redirectUri,
    http.Client? httpClient,
  })  : _clientId = clientId,
        _clientSecret = clientSecret,
        _redirectUri = redirectUri,
        _httpClient = httpClient ?? http.Client();

  final String _clientId;
  final String _clientSecret;
  final String _redirectUri;
  final http.Client _httpClient;

  // In-memory state storage (for production, use Redis or database)
  static final Map<String, DateTime> _pendingStates = {};

  // Clean up expired states periodically
  static void _cleanupExpiredStates() {
    final now = DateTime.now();
    _pendingStates.removeWhere((_, expiry) => now.isAfter(expiry));
  }

  /// Generate OAuth URL with state parameter
  Map<String, String> generateOAuthUrl() {
    _cleanupExpiredStates();

    // Generate secure random state
    final random = Random.secure();
    final stateBytes = List<int>.generate(32, (_) => random.nextInt(256));
    final state = base64UrlEncode(stateBytes);

    // Store state with 10 minute expiry
    _pendingStates[state] = DateTime.now().add(const Duration(minutes: 10));

    final url = Uri.https('github.com', '/login/oauth/authorize', {
      'client_id': _clientId,
      'redirect_uri': _redirectUri,
      'scope': 'read:user user:email',
      'state': state,
    });

    return {
      'url': url.toString(),
      'state': state,
    };
  }

  /// Verify state parameter (CSRF protection)
  bool verifyState(String state) {
    _cleanupExpiredStates();

    final expiry = _pendingStates[state];
    if (expiry == null) {
      return false;
    }

    // Remove used state
    _pendingStates.remove(state);

    // Check if expired
    return DateTime.now().isBefore(expiry);
  }

  /// Exchange authorization code for access token and user info
  Future<GitHubUserInfo> exchangeCodeForUser(String code, String state) async {
    // Verify state first
    if (!verifyState(state)) {
      throw GitHubOAuthException(
        'Invalid or expired state parameter',
        statusCode: 400,
      );
    }

    // Exchange code for access token
    final tokenResponse = await _httpClient.post(
      Uri.parse('https://github.com/login/oauth/access_token'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({
        'client_id': _clientId,
        'client_secret': _clientSecret,
        'code': code,
        'redirect_uri': _redirectUri,
      }),
    );

    if (tokenResponse.statusCode != 200) {
      throw GitHubOAuthException(
        'Failed to exchange code for token',
        statusCode: 500,
      );
    }

    final tokenData = jsonDecode(tokenResponse.body) as Map<String, dynamic>;

    if (tokenData.containsKey('error')) {
      throw GitHubOAuthException(
        tokenData['error_description'] as String? ?? 'OAuth error',
        statusCode: 400,
      );
    }

    final accessToken = tokenData['access_token'] as String;

    // Fetch user info
    final userResponse = await _httpClient.get(
      Uri.parse('https://api.github.com/user'),
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/vnd.github.v3+json',
      },
    );

    if (userResponse.statusCode != 200) {
      throw GitHubOAuthException(
        'Failed to fetch user info from GitHub',
        statusCode: 500,
      );
    }

    final userData = jsonDecode(userResponse.body) as Map<String, dynamic>;

    // Fetch user emails (in case primary email is private)
    String? email = userData['email'] as String?;
    if (email == null || email.isEmpty) {
      email = await _fetchPrimaryEmail(accessToken);
    }

    return GitHubUserInfo(
      id: userData['id'] as int,
      login: userData['login'] as String,
      email: email,
      name: userData['name'] as String?,
      avatarUrl: userData['avatar_url'] as String?,
    );
  }

  /// Fetch primary email from GitHub API
  Future<String?> _fetchPrimaryEmail(String accessToken) async {
    try {
      final response = await _httpClient.get(
        Uri.parse('https://api.github.com/user/emails'),
        headers: {
          'Authorization': 'Bearer $accessToken',
          'Accept': 'application/vnd.github.v3+json',
        },
      );

      if (response.statusCode != 200) {
        return null;
      }

      final emails = jsonDecode(response.body) as List<dynamic>;

      // Find primary verified email
      for (final emailData in emails) {
        final data = emailData as Map<String, dynamic>;
        if (data['primary'] == true && data['verified'] == true) {
          return data['email'] as String?;
        }
      }

      // Fall back to any verified email
      for (final emailData in emails) {
        final data = emailData as Map<String, dynamic>;
        if (data['verified'] == true) {
          return data['email'] as String?;
        }
      }

      return null;
    } catch (e) {
      return null;
    }
  }

  /// Dispose resources
  void dispose() {
    _httpClient.close();
  }
}
