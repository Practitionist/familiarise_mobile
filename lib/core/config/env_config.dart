import 'package:envied/envied.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;

part 'env_config.g.dart';

/// Environment configuration loaded from .env file
/// Run `dart run build_runner build` to generate env_config.g.dart
@Envied(path: '.env', obfuscate: true)
abstract class EnvConfig {
  // Database
  @EnviedField(varName: 'DATABASE_URL', defaultValue: '')
  static String databaseUrl = _EnvConfig.databaseUrl;

  @EnviedField(varName: 'DIRECT_URL', defaultValue: '')
  static String directUrl = _EnvConfig.directUrl;

  // Supabase
  @EnviedField(varName: 'SUPABASE_URL', defaultValue: 'https://placeholder.supabase.co')
  static String supabaseUrl = _EnvConfig.supabaseUrl;

  @EnviedField(varName: 'SUPABASE_ANON_KEY', defaultValue: 'placeholder-anon-key')
  static String supabaseAnonKey = _EnvConfig.supabaseAnonKey;

  // Stream
  @EnviedField(varName: 'STREAM_API_KEY', defaultValue: 'placeholder-stream-key')
  static String streamApiKey = _EnvConfig.streamApiKey;

  // Payments
  @EnviedField(varName: 'RAZORPAY_KEY_ID', defaultValue: 'rzp_test_placeholder')
  static String razorpayKeyId = _EnvConfig.razorpayKeyId;

  @EnviedField(varName: 'STRIPE_PUBLISHABLE_KEY', defaultValue: 'pk_test_placeholder')
  static String stripePublishableKey = _EnvConfig.stripePublishableKey;

  // API
  @EnviedField(varName: 'API_BASE_URL', defaultValue: 'http://localhost:3000')
  static String apiBaseUrl = _EnvConfig.apiBaseUrl;

  // Google OAuth - Platform-specific Client IDs
  @EnviedField(varName: 'GOOGLE_CLIENT_ID_WEB', defaultValue: '')
  static String googleClientIdWeb = _EnvConfig.googleClientIdWeb;

  @EnviedField(varName: 'GOOGLE_CLIENT_ID_IOS', defaultValue: '')
  static String googleClientIdIos = _EnvConfig.googleClientIdIos;

  @EnviedField(varName: 'GOOGLE_CLIENT_ID_ANDROID', defaultValue: '')
  static String googleClientIdAndroid = _EnvConfig.googleClientIdAndroid;

  @EnviedField(varName: 'GOOGLE_CLIENT_ID_MACOS', defaultValue: '')
  static String googleClientIdMacos = _EnvConfig.googleClientIdMacos;

  /// Get platform-specific Google Client ID
  static String get googleClientId {
    if (kIsWeb) {
      return googleClientIdWeb;
    }

    // On native platforms, check the platform
    if (Platform.isIOS) {
      return googleClientIdIos;
    } else if (Platform.isAndroid) {
      return googleClientIdAndroid;
    } else if (Platform.isMacOS) {
      // macOS uses dedicated desktop OAuth client
      return googleClientIdMacos.isNotEmpty ? googleClientIdMacos : googleClientIdWeb;
    }

    // Fallback to web client ID
    return googleClientIdWeb;
  }

  // Feature Flags
  @EnviedField(varName: 'USE_PRISMA', defaultValue: 'false')
  static final String _usePrismaString = _EnvConfig._usePrismaString;

  static bool get usePrisma => _usePrismaString.toLowerCase() == 'true';
}
