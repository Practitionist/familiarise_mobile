import 'package:envied/envied.dart';
import 'package:flutter/foundation.dart' show kIsWeb, debugPrint;
import 'dart:io' show Platform;

import '../utils/device_utils.dart';

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
  @EnviedField(
      varName: 'SUPABASE_URL', defaultValue: 'https://placeholder.supabase.co')
  static String supabaseUrl = _EnvConfig.supabaseUrl;

  @EnviedField(
      varName: 'SUPABASE_ANON_KEY', defaultValue: 'placeholder-anon-key')
  static String supabaseAnonKey = _EnvConfig.supabaseAnonKey;

  // Stream
  @EnviedField(
      varName: 'STREAM_API_KEY', defaultValue: 'placeholder-stream-key')
  static String streamApiKey = _EnvConfig.streamApiKey;

  // Payments
  @EnviedField(varName: 'RAZORPAY_KEY_ID', defaultValue: 'rzp_test_placeholder')
  static String razorpayKeyId = _EnvConfig.razorpayKeyId;

  @EnviedField(
      varName: 'STRIPE_PUBLISHABLE_KEY', defaultValue: 'pk_test_placeholder')
  static String stripePublishableKey = _EnvConfig.stripePublishableKey;

  // API
  @EnviedField(varName: 'API_BASE_URL', defaultValue: 'http://localhost:3000')
  static String _apiBaseUrlRaw = _EnvConfig._apiBaseUrlRaw;

  @EnviedField(varName: 'PHYSICAL_DEVICE_API_URL', defaultValue: '')
  static String _physicalDeviceApiUrl = _EnvConfig._physicalDeviceApiUrl;

  // Device type flag (set at startup via initializeDeviceDetection)
  static bool _isPhysicalDevice = false;
  static bool _deviceDetectionInitialized = false;

  /// Initialize device detection - call this at app startup before using apiBaseUrl
  /// This determines whether to use PHYSICAL_DEVICE_API_URL or API_BASE_URL
  static Future<void> initializeDeviceDetection() async {
    if (_deviceDetectionInitialized) return;

    try {
      _isPhysicalDevice = !(await DeviceUtils.isEmulator());
      _deviceDetectionInitialized = true;

      debugPrint(
        '[EnvConfig] Device detection initialized: '
        'isPhysicalDevice=$_isPhysicalDevice, '
        'apiBaseUrl=$apiBaseUrl',
      );
    } catch (e) {
      debugPrint('[EnvConfig] Device detection failed: $e');
      _isPhysicalDevice = false;
      _deviceDetectionInitialized = true;
    }
  }

  /// Get platform-aware API base URL
  /// - Physical device with PHYSICAL_DEVICE_API_URL configured: uses that URL
  /// - Android emulator: localhost → 10.0.2.2 replacement
  /// - iOS simulator/web: uses API_BASE_URL as-is
  static String get apiBaseUrl {
    // If physical device and URL is configured, use it
    if (_isPhysicalDevice && _physicalDeviceApiUrl.isNotEmpty) {
      return _physicalDeviceApiUrl;
    }

    // Otherwise use default URL with emulator handling
    final url = _apiBaseUrlRaw;

    // On web, use as-is
    if (kIsWeb) return url;

    // On Android, replace localhost with 10.0.2.2 for emulator support
    if (Platform.isAndroid &&
        (url.contains('localhost') || url.contains('127.0.0.1'))) {
      return url
          .replaceFirst('localhost', '10.0.2.2')
          .replaceFirst('127.0.0.1', '10.0.2.2');
    }

    return url;
  }

  // Google OAuth - Platform-specific Client IDs
  @EnviedField(varName: 'GOOGLE_CLIENT_ID_WEB', defaultValue: '')
  static String googleClientIdWeb = _EnvConfig.googleClientIdWeb;

  @EnviedField(varName: 'GOOGLE_CLIENT_ID_IOS', defaultValue: '')
  static String googleClientIdIos = _EnvConfig.googleClientIdIos;

  @EnviedField(varName: 'GOOGLE_CLIENT_ID_ANDROID', defaultValue: '')
  static String googleClientIdAndroid = _EnvConfig.googleClientIdAndroid;

  /// Get platform-specific Google Client ID
  static String get googleClientId {
    if (kIsWeb) {
      return googleClientIdWeb;
    }

    // On mobile, check the platform
    if (Platform.isIOS) {
      return googleClientIdIos;
    } else if (Platform.isAndroid) {
      return googleClientIdAndroid;
    }

    // Fallback to web client ID
    return googleClientIdWeb;
  }

  // Novu
  @EnviedField(varName: 'NOVU_APP_ID', defaultValue: '')
  static String novuAppId = _EnvConfig.novuAppId;

  // Sentry
  @EnviedField(varName: 'SENTRY_DSN', defaultValue: '')
  static String sentryDsn = _EnvConfig.sentryDsn;

  // Feature Flags
  @EnviedField(varName: 'USE_PRISMA', defaultValue: 'false')
  static final String _usePrismaString = _EnvConfig._usePrismaString;

  static bool get usePrisma => _usePrismaString.toLowerCase() == 'true';
}
