import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../logging_service.dart';

// Conditional import for web-only functionality
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show document, MetaElement;

/// Web-specific OAuth configuration service
/// Dynamically injects OAuth provider meta tags for security
class WebOAuthConfig {
  static final WebOAuthConfig _instance = WebOAuthConfig._internal();
  factory WebOAuthConfig() => _instance;
  WebOAuthConfig._internal();

  static bool _isInitialized = false;

  /// Initialize OAuth configuration for web platform
  /// This must be called before using any OAuth providers
  static Future<void> initialize() async {
    if (!kIsWeb || _isInitialized) return;

    try {
      logger.info('WebOAuth: Initializing web OAuth configuration');
      
      await _injectGoogleOAuthConfig();
      await _injectFacebookOAuthConfig();
      
      _isInitialized = true;
      logger.info('WebOAuth: Configuration complete');
    } catch (e) {
      logger.error('WebOAuth: Initialization failed', e);
    }
  }

  /// Inject Google OAuth meta tag dynamically
  static Future<void> _injectGoogleOAuthConfig() async {
    final googleClientId = dotenv.env['GOOGLE_CLIENT_ID'];
    
    if (googleClientId != null && googleClientId.isNotEmpty) {
      // Remove any existing Google OAuth meta tag
      final existingMeta = html.document.querySelector('meta[name="google-signin-client_id"]');
      existingMeta?.remove();
      
      // Create and inject new meta tag
      final metaTag = html.MetaElement()
        ..name = 'google-signin-client_id'
        ..content = googleClientId;
      
      html.document.head?.append(metaTag);
      
      logger.info('WebOAuth: Google Client ID meta tag injected securely');
    } else {
      logger.warning('WebOAuth: GOOGLE_CLIENT_ID not found - Google OAuth will not work');
    }
  }

  /// Inject Facebook OAuth meta tag dynamically
  static Future<void> _injectFacebookOAuthConfig() async {
    final facebookClientId = dotenv.env['FACEBOOK_CLIENT_ID'];
    
    if (facebookClientId != null && facebookClientId.isNotEmpty) {
      // Remove any existing Facebook App ID meta tag
      final existingMeta = html.document.querySelector('meta[property="fb:app_id"]');
      existingMeta?.remove();
      
      // Create and inject new meta tag
      final metaTag = html.MetaElement()
        ..setAttribute('property', 'fb:app_id')
        ..content = facebookClientId;
      
      html.document.head?.append(metaTag);
      
      logger.info('WebOAuth: Facebook App ID meta tag injected securely');
    } else {
      logger.warning('WebOAuth: FACEBOOK_CLIENT_ID not found - Facebook OAuth will not work');
    }
  }

  /// Check if a specific OAuth provider is configured
  static bool isProviderConfigured(String provider) {
    switch (provider.toLowerCase()) {
      case 'google':
        final clientId = dotenv.env['GOOGLE_CLIENT_ID'];
        return clientId != null && clientId.isNotEmpty;
      case 'facebook':
        final clientId = dotenv.env['FACEBOOK_CLIENT_ID'];
        return clientId != null && clientId.isNotEmpty;
      case 'github':
        final clientId = dotenv.env['GITHUB_CLIENT_ID'];
        return clientId != null && clientId.isNotEmpty;
      default:
        return false;
    }
  }

  /// Get configuration status for all providers
  static Map<String, bool> getProviderStatus() {
    return {
      'google': isProviderConfigured('google'),
      'facebook': isProviderConfigured('facebook'),
      'github': isProviderConfigured('github'),
    };
  }

  /// Get user-friendly error message for unconfigured provider
  static String getProviderErrorMessage(String provider) {
    switch (provider.toLowerCase()) {
      case 'google':
        return 'Google sign-in is not configured. Please contact support.';
      case 'facebook':
        return 'Facebook sign-in is not configured. Please contact support.';
      case 'github':
        return 'GitHub sign-in is not configured. Please contact support.';
      default:
        return 'OAuth provider is not configured. Please contact support.';
    }
  }
}