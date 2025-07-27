import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../models/auth/user_model.dart' as auth_model;
import '../logging_service.dart';

class OAuthService {
  static final OAuthService _instance = OAuthService._internal();
  factory OAuthService() => _instance;
  OAuthService._internal();

  SupabaseClient get _client => Supabase.instance.client;

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email', 'profile'],
  );

  Future<auth_model.User?> signInWithGoogle() async {
    try {
      logger.oAuthStart('Google');
      
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        logger.info('OAuth: Google sign-in cancelled by user');
        return null;
      }

      logger.debug('OAuth: Google user obtained, getting authentication tokens');
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      
      if (googleAuth.idToken == null) {
        logger.error('OAuth: Google ID token is null - Access token: ${googleAuth.accessToken != null ? "present" : "null"}');
        throw OAuthException('Google authentication failed: No ID token received. This usually indicates:\n' +
            '1. Google OAuth client ID is not configured correctly\n' +
            '2. Wrong OAuth client type (should be Web client for Supabase)\n' +
            '3. Missing SHA-1 certificate fingerprints for Android');
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
      // For mobile apps, we need to handle OAuth flow differently
      // This is a placeholder - in a real implementation you'd need to:
      // 1. Configure deep linking in your app
      // 2. Handle the OAuth callback
      // 3. Extract the tokens from the callback
      
      // For now, throw an exception to indicate GitHub OAuth needs additional setup
      throw OAuthException('GitHub OAuth requires additional mobile configuration. Please use email/password or other providers for now.');
    } catch (e) {
      throw OAuthException('GitHub sign-in failed: ${e.toString()}');
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