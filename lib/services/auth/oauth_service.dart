import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../models/auth/user_model.dart' as auth_model;
import '../logging_service.dart';
import 'web_oauth_config.dart';

class OAuthService {
  static final OAuthService _instance = OAuthService._internal();
  factory OAuthService() => _instance;
  OAuthService._internal() {
    _initializeGoogleSignIn();
    _initializeFacebookAuth();
    _initializeGitHubAuth();
  }

  SupabaseClient get _client => Supabase.instance.client;

  // Initialize GoogleSignIn with Client ID from environment variables
  late final GoogleSignIn _googleSignIn;

  void _initializeGoogleSignIn() {
    final googleClientId = dotenv.env['GOOGLE_CLIENT_ID'];
    
    if (googleClientId != null && googleClientId.isNotEmpty) {
      logger.info('OAuth: Initializing Google Sign-In with Client ID: ${googleClientId.substring(0, 20)}...');
      _googleSignIn = GoogleSignIn(
        clientId: googleClientId,
        scopes: ['email', 'profile'], // Basic scopes only to avoid People API requirement
        signInOption: SignInOption.standard, // Use standard sign-in to avoid additional API calls
      );
    } else {
      logger.warning('OAuth: GOOGLE_CLIENT_ID not found in environment variables');
      _googleSignIn = GoogleSignIn(
        scopes: ['email', 'profile'], // Basic scopes only
        signInOption: SignInOption.standard,
      );
    }
  }

  void _initializeFacebookAuth() {
    final facebookClientId = dotenv.env['FACEBOOK_CLIENT_ID'];
    
    if (facebookClientId != null && facebookClientId.isNotEmpty) {
      logger.info('OAuth: Facebook Client ID found in environment');
      // Facebook initialization will be handled in the web/index.html meta tag
    } else {
      logger.warning('OAuth: FACEBOOK_CLIENT_ID is empty or missing in environment variables');
      logger.info('OAuth: Facebook authentication will not be available until Client ID is configured');
    }
  }

  void _initializeGitHubAuth() {
    final githubClientId = dotenv.env['GITHUB_CLIENT_ID'];
    
    if (githubClientId != null && githubClientId.isNotEmpty) {
      logger.info('OAuth: GitHub Client ID found in environment');
      // GitHub OAuth will use Supabase OAuth flow
    } else {
      logger.warning('OAuth: GITHUB_CLIENT_ID is empty or missing in environment variables');
      logger.info('OAuth: GitHub authentication will not be available until Client ID is configured');
    }
  }

  /// Check if Google OAuth is available
  bool isGoogleAvailable() {
    return WebOAuthConfig.isProviderConfigured('google');
  }

  /// Check if Facebook OAuth is available
  bool isFacebookAvailable() {
    return WebOAuthConfig.isProviderConfigured('facebook');
  }

  /// Check if GitHub OAuth is available
  bool isGitHubAvailable() {
    return WebOAuthConfig.isProviderConfigured('github');
  }

  /// Get status of all OAuth providers
  Map<String, bool> getProviderStatus() {
    return WebOAuthConfig.getProviderStatus();
  }

  Future<auth_model.User?> signInWithGoogle() async {
    try {
      // Check if Google OAuth is configured
      if (!isGoogleAvailable()) {
        logger.warning('OAuth: Google not configured');
        throw OAuthException(WebOAuthConfig.getProviderErrorMessage('google'));
      }

      logger.oAuthStart('Google');
      
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        logger.info('OAuth: Google sign-in cancelled by user');
        return null;
      }

      logger.debug('OAuth: Google user obtained, getting authentication tokens');
      
      // Get basic user info without additional API calls
      final userEmail = googleUser.email;
      final userName = googleUser.displayName;
      
      logger.debug('OAuth: Basic user info - Email: $userEmail, Name: $userName');
      
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      
      if (googleAuth.idToken == null) {
        final errorDetails = '''
🔴 GOOGLE OAUTH CONFIGURATION ERROR:
No ID token received from Google. This indicates a configuration issue:

📋 TROUBLESHOOTING STEPS:
1. Check Supabase Auth Settings:
   - Go to: https://supabase.com/dashboard/project/[your-project]/auth/providers
   - Ensure Google provider is enabled
   - Verify Client ID is from Web application (not Android)

2. Check Google Cloud Console:
   - Go to: https://console.cloud.google.com/apis/credentials  
   - Verify OAuth 2.0 Client IDs exist for both Web and Android
   - Add SHA-1 fingerprints to Android client

3. For Android Debug:
   - Run: keytool -list -v -alias androiddebugkey -keystore ~/.android/debug.keystore
   - Add debug SHA-1 to Google Console

Access Token: ${googleAuth.accessToken != null ? "✅ Present" : "❌ Missing"}
ID Token: ❌ Missing (This is the problem!)
''';
        logger.error('OAuth: Google configuration error', errorDetails);
        throw OAuthException('Google sign-in failed: Configuration error. Check debug console for details.');
      }

      logger.debug('OAuth: Authenticating with Supabase using Google tokens');
      final AuthResponse response = await _client.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: googleAuth.idToken!,
        accessToken: googleAuth.accessToken,
      );

      if (response.user != null) {
        logger.oAuthSuccess('Google', response.user!.email);
        return await _getOrCreateUserFromSupabaseUser(response.user!);
      }
      
      logger.warning('OAuth: Google authentication succeeded but no user returned');
      return null;
    } on AuthException catch (e) {
      logger.oAuthError('Google', 'Supabase auth error: ${e.message}', e);
      
      String helpfulMessage = 'Google sign-in failed: ${e.message}.\n\nPossible solutions:\n';
      
      if (e.message.contains('Invalid login credentials') || e.message.contains('Email not confirmed')) {
        helpfulMessage += '• Check if Google provider is enabled in Supabase\n';
        helpfulMessage += '• Verify Google Client ID and Secret in Supabase dashboard\n';
        helpfulMessage += '• Ensure redirect URLs match in Google Console';
      } else if (e.message.contains('Provider not supported')) {
        helpfulMessage += '• Enable Google provider in Supabase Authentication settings\n';
        helpfulMessage += '• Configure Google OAuth client credentials';
      } else {
        helpfulMessage += '• Check Supabase project configuration\n';
        helpfulMessage += '• Verify Google OAuth setup\n';
        helpfulMessage += '• Check network connectivity';
      }
      
      throw OAuthException(helpfulMessage);
    } catch (e) {
      logger.oAuthError('Google', 'Unexpected error', e);
      
      String errorMessage = 'Google sign-in failed unexpectedly.\n\nError details: ${e.toString()}\n\n';
      errorMessage += 'Please check:\n';
      errorMessage += '• Internet connection\n';
      errorMessage += '• Google Services configuration\n';
      errorMessage += '• App permissions';
      
      throw OAuthException(errorMessage);
    }
  }

  Future<auth_model.User?> signInWithFacebook() async {
    try {
      // Check if Facebook OAuth is configured
      if (!isFacebookAvailable()) {
        logger.warning('OAuth: Facebook not configured');
        throw OAuthException(WebOAuthConfig.getProviderErrorMessage('facebook'));
      }

      logger.oAuthStart('Facebook');
      
      final LoginResult result = await FacebookAuth.instance.login(
        permissions: ['email', 'public_profile'],
      );

      if (result.status == LoginStatus.cancelled) {
        logger.info('OAuth: Facebook sign-in cancelled by user');
        return null;
      }

      if (result.status != LoginStatus.success || result.accessToken == null) {
        logger.error('OAuth: Facebook login failed with status: ${result.status}');
        throw OAuthException('Facebook authentication failed. Status: ${result.status}');
      }

      logger.debug('OAuth: Facebook login successful, authenticating with Supabase');
      final AuthResponse response = await _client.auth.signInWithIdToken(
        provider: OAuthProvider.facebook,
        idToken: result.accessToken!.tokenString,
      );

      if (response.user != null) {
        logger.oAuthSuccess('Facebook', response.user!.email);
        return await _getOrCreateUserFromSupabaseUser(response.user!);
      }
      
      logger.warning('OAuth: Facebook authentication succeeded but no user returned');
      return null;
    } on AuthException catch (e) {
      logger.oAuthError('Facebook', 'Supabase auth error: ${e.message}', e);
      throw OAuthException('Facebook sign-in failed: ${e.message}. Please check your Supabase OAuth configuration.');
    } catch (e) {
      logger.oAuthError('Facebook', 'Unexpected error', e);
      throw OAuthException('Facebook sign-in failed: ${e.toString()}. Please try again or contact support.');
    }
  }

  Future<auth_model.User?> signInWithGitHub() async {
    try {
      // Check if GitHub OAuth is configured
      if (!isGitHubAvailable()) {
        logger.warning('OAuth: GitHub not configured');
        throw OAuthException(WebOAuthConfig.getProviderErrorMessage('github'));
      }

      logger.oAuthStart('GitHub');

      // Use Supabase OAuth flow for GitHub
      final bool result = await _client.auth.signInWithOAuth(
        OAuthProvider.github,
        redirectTo: 'https://your-app.com/auth/callback', // Update with your actual redirect URL
      );

      if (result) {
        // OAuth flow initiated successfully
        logger.info('OAuth: GitHub authentication flow initiated');
        // For GitHub OAuth, the user will be redirected and handled by the callback
        // This method typically returns null for the redirect flow
        return null;
      }
      
      logger.warning('OAuth: Failed to initiate GitHub authentication flow');
      return null;
    } on AuthException catch (e) {
      logger.oAuthError('GitHub', 'Supabase auth error: ${e.message}', e);
      throw OAuthException('GitHub sign-in failed: ${e.message}. Please check your Supabase OAuth configuration.');
    } catch (e) {
      logger.oAuthError('GitHub', 'Unexpected error', e);
      throw OAuthException('GitHub sign-in failed: ${e.toString()}. Please try again or contact support.');
    }
  }

  Future<auth_model.User?> _getOrCreateUserFromSupabaseUser(User supabaseUser) async {
    try {
      final userResponse = await _client
          .from('users')
          .select()
          .eq('id', supabaseUser.id)
          .maybeSingle();

      if (userResponse != null) {
        return auth_model.User.fromJson(userResponse);
      } else {
        final newUserData = {
          'id': supabaseUser.id,
          'email': supabaseUser.email,
          'name': supabaseUser.userMetadata?['full_name'] ?? 
                  supabaseUser.userMetadata?['name'] ?? 
                  supabaseUser.email?.split('@').first,
          'image': supabaseUser.userMetadata?['avatar_url'] ?? 
                   supabaseUser.userMetadata?['picture'],
          'role': 'CONSULTEE', // Default role
          'onlineStatus': true,
          'onboardingCompleted': false,
          'emailVerified': supabaseUser.emailConfirmedAt,
        };

        final createdUserResponse = await _client
            .from('users')
            .insert(newUserData)
            .select()
            .single();

        return auth_model.User.fromJson(createdUserResponse);
      }
    } catch (e) {
      throw OAuthException('Failed to create or fetch user: ${e.toString()}');
    }
  }

  Future<void> signOut() async {
    try {
      // Sign out from OAuth providers
      await _googleSignIn.signOut();
      await FacebookAuth.instance.logOut();
      
      // Sign out from Supabase
      await _client.auth.signOut();
    } catch (e) {
      throw OAuthException('Sign out failed: ${e.toString()}');
    }
  }

  Future<bool> isGoogleSignInAvailable() async {
    try {
      return await _googleSignIn.isSignedIn();
    } catch (e) {
      return false;
    }
  }

  Future<bool> isFacebookSignInAvailable() async {
    try {
      final accessToken = await FacebookAuth.instance.accessToken;
      return accessToken != null;
    } catch (e) {
      return false;
    }
  }
}

class OAuthException implements Exception {
  final String message;
  
  const OAuthException(this.message);
  
  @override
  String toString() => 'OAuthException: $message';
}