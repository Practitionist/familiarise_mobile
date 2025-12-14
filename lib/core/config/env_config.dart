import 'package:envied/envied.dart';

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
  @EnviedField(varName: 'SUPABASE_URL')
  static String supabaseUrl = _EnvConfig.supabaseUrl;

  @EnviedField(varName: 'SUPABASE_ANON_KEY')
  static String supabaseAnonKey = _EnvConfig.supabaseAnonKey;

  // Stream
  @EnviedField(varName: 'STREAM_API_KEY')
  static String streamApiKey = _EnvConfig.streamApiKey;

  // Payments
  @EnviedField(varName: 'RAZORPAY_KEY_ID')
  static String razorpayKeyId = _EnvConfig.razorpayKeyId;

  @EnviedField(varName: 'STRIPE_PUBLISHABLE_KEY')
  static String stripePublishableKey = _EnvConfig.stripePublishableKey;

  // API
  @EnviedField(varName: 'API_BASE_URL')
  static String apiBaseUrl = _EnvConfig.apiBaseUrl;

  // Feature Flags
  @EnviedField(varName: 'USE_PRISMA', defaultValue: 'false')
  static String _usePrismaString = _EnvConfig._usePrismaString;

  static bool get usePrisma => _usePrismaString.toLowerCase() == 'true';
}
