import 'package:flutter/foundation.dart' show kDebugMode, kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Conditionally import better_auth_flutter (not supported on web)
import 'package:better_auth_flutter/better_auth_flutter.dart'
    if (dart.library.html) 'core/utils/better_auth_stub.dart';

import 'app/app.dart';
import 'core/config/env_config.dart';
import 'shared/providers/core_providers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize SharedPreferences before running the app
  final sharedPreferences = await SharedPreferences.getInstance();

  await SentryFlutter.init(
    (options) {
      options.dsn = EnvConfig.sentryDsn;

      // Environment tagging
      options.environment = kDebugMode ? 'development' : 'production';

      // Lightweight sampling: 20% of transactions in production
      options.tracesSampleRate = kDebugMode ? 1.0 : 0.2;

      // Disable debug mode in production
      options.debug = kDebugMode;

      // Capture unhandled exceptions automatically
      options.enableAutoSessionTracking = true;

      // Disable heavy features to keep it lightweight
      options.attachScreenshot = false;
      options.attachViewHierarchy = false;

      // Breadcrumb limit to avoid memory overhead
      options.maxBreadcrumbs = 50;
    },
    appRunner: () async {
      // Initialize Better Auth only on non-web platforms
      if (!kIsWeb) {
        BetterAuth.init(
          baseUrl: Uri.parse(EnvConfig.apiBaseUrl),
        );
      }

      runApp(
        ProviderScope(
          overrides: [
            sharedPreferencesProvider.overrideWith((ref) => sharedPreferences),
          ],
          child: const FamiliariseApp(),
        ),
      );
    },
  );
}
