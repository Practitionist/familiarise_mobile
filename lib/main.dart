import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Conditionally import better_auth_flutter (not supported on web)
import 'package:better_auth_flutter/better_auth_flutter.dart'
    if (dart.library.html) 'core/utils/better_auth_stub.dart';

import 'app/app.dart';
import 'core/config/env_config.dart';
import 'shared/providers/core_providers.dart';

/// Check if we should use better_auth_flutter
/// Only supported on iOS and Android (mobile platforms)
bool get _useBetterAuth {
  if (kIsWeb) return false;
  // macOS sandboxing blocks cookie_jar file system access
  if (Platform.isMacOS) return false;
  return true;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Better Auth only on mobile platforms (iOS/Android)
  // better_auth_flutter uses cookie_jar which requires file system access
  // Web and macOS use HTTP-based auth instead
  if (_useBetterAuth) {
    BetterAuth.init(
      baseUrl: Uri.parse(EnvConfig.apiBaseUrl),
    );
  }

  // Initialize SharedPreferences before running the app
  final sharedPreferences = await SharedPreferences.getInstance();

  // TODO: Initialize Firebase for analytics and crash reporting
  // await Firebase.initializeApp();

  // TODO: Initialize Supabase if needed as fallback
  // await Supabase.initialize(
  //   url: EnvConfig.supabaseUrl,
  //   anonKey: EnvConfig.supabaseAnonKey,
  // );

  runApp(
    ProviderScope(
      overrides: [
        // Override the async provider with the pre-initialized value
        sharedPreferencesProvider.overrideWith((ref) => sharedPreferences),
      ],
      child: const FamiliariseApp(),
    ),
  );
}
