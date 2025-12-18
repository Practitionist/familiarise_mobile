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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Better Auth only on non-web platforms
  // better_auth_flutter doesn't support web (uses cookie_jar which requires file system)
  if (!kIsWeb) {
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
