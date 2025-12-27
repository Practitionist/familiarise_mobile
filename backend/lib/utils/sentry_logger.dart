import 'dart:io';

import 'package:sentry/sentry.dart';

/// Centralized logging utility that integrates with Sentry for error tracking.
///
/// All log methods output to console first, then send to Sentry (where applicable).
/// This ensures logs are always visible in server output AND tracked in Sentry.
class SentryLogger {
  static bool _initialized = false;
  static bool _sentryEnabled = false;

  /// Initialize Sentry with the provided DSN.
  ///
  /// Should be called once at server startup. If DSN is empty or null,
  /// Sentry will be disabled but logging will still work locally.
  static Future<void> init(String? dsn) async {
    if (_initialized) return;

    if (dsn == null || dsn.isEmpty) {
      _log('INFO', 'Sentry DSN not configured, running without error tracking');
      _initialized = true;
      _sentryEnabled = false;
      return;
    }

    await Sentry.init((options) {
      options
        ..dsn = dsn
        ..environment = Platform.environment['DART_ENV'] ?? 'development'
        ..tracesSampleRate = 0.2
        ..attachStacktrace = true;
    });

    _initialized = true;
    _sentryEnabled = true;
    _log('INFO', 'Sentry initialized successfully');
  }

  /// Internal console logging with timestamp and level.
  static void _log(String level, String message, {String? context}) {
    final timestamp = DateTime.now().toIso8601String();
    final prefix = context != null ? '[$context] ' : '';
    // ignore: avoid_print
    print('$timestamp $level: $prefix$message');
  }

  /// Log a debug message. Console only, not sent to Sentry.
  static void debug(String message, {String? context}) {
    _log('DEBUG', message, context: context);
  }

  /// Log an info message. Console only, not sent to Sentry.
  static void info(String message, {String? context}) {
    _log('INFO', message, context: context);
  }

  /// Log a warning message. Logs to console AND sends to Sentry.
  static Future<void> warning(
    String message, {
    String? context,
  }) async {
    // 1. Always log to console first
    _log('WARNING', message, context: context);

    // 2. Then send to Sentry
    if (_sentryEnabled) {
      await Sentry.captureMessage(
        message,
        level: SentryLevel.warning,
        withScope: (scope) {
          if (context != null) scope.setTag('context', context);
        },
      );
    }
  }

  /// Log an error message. Logs to console AND sends to Sentry.
  ///
  /// [message] - Human-readable error message
  /// [context] - Context tag for categorization (e.g., 'AuthEmailSignIn')
  /// [error] - The actual exception/error object
  /// [stackTrace] - Stack trace for the error
  static Future<void> error(
    String message, {
    String? context,
    dynamic error,
    StackTrace? stackTrace,
  }) async {
    // 1. Always log to console first
    _log('ERROR', message, context: context);
    if (error != null) {
      // ignore: avoid_print
      print('  Exception: $error');
    }
    if (stackTrace != null) {
      // ignore: avoid_print
      print('  Stack trace:\n$stackTrace');
    }

    // 2. Then send to Sentry
    if (_sentryEnabled && error != null && !_shouldSkip(error)) {
      await Sentry.captureException(
        error,
        stackTrace: stackTrace,
        withScope: (scope) {
          if (context != null) scope.setTag('context', context);
          scope.setExtra('message', message);
          scope.level = SentryLevel.error;
        },
      );
    }
  }

  /// Log a severe/fatal error. Logs to console AND sends to Sentry as fatal.
  ///
  /// Use this for critical errors that indicate system-level failures.
  static Future<void> severe(
    String message, {
    String? context,
    dynamic error,
    StackTrace? stackTrace,
  }) async {
    // 1. Always log to console first
    _log('SEVERE', message, context: context);
    if (error != null) {
      // ignore: avoid_print
      print('  Exception: $error');
    }
    if (stackTrace != null) {
      // ignore: avoid_print
      print('  Stack trace:\n$stackTrace');
    }

    // 2. Then send to Sentry as fatal level
    if (_sentryEnabled && error != null && !_shouldSkip(error)) {
      await Sentry.captureException(
        error,
        stackTrace: stackTrace,
        withScope: (scope) {
          if (context != null) scope.setTag('context', context);
          scope.setExtra('message', message);
          scope.level = SentryLevel.fatal;
        },
      );
    }
  }

  /// Determine if an exception should be skipped (not sent to Sentry).
  static bool _shouldSkip(dynamic exception) {
    // Skip expected/handled auth errors (these are user errors, not bugs)
    final errorString = exception.toString();
    if (errorString.contains('AuthException')) {
      return true;
    }
    return false;
  }
}
