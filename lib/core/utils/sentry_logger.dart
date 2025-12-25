import 'package:flutter/foundation.dart' show kDebugMode, debugPrint;
import 'package:sentry_flutter/sentry_flutter.dart';

import '../errors/exceptions.dart';
import '../errors/failures.dart';

/// Centralized Sentry logging utility for consistent error reporting.
///
/// Features:
/// - Smart filtering to skip expected errors (validation, user cancellations)
/// - Severity level mapping based on exception type
/// - Context and extras support for debugging
/// - Breadcrumb support for user journey tracking
class SentryLogger {
  SentryLogger._();

  /// Report an exception to Sentry with context.
  ///
  /// [exception]: The exception object
  /// [stackTrace]: Optional stack trace (auto-captured if null)
  /// [context]: Description of where error occurred (e.g., "BookingRepository.createBooking")
  /// [extras]: Additional key-value pairs for debugging
  static Future<void> captureException(
    dynamic exception, {
    StackTrace? stackTrace,
    String? context,
    Map<String, dynamic>? extras,
  }) async {
    // Skip validation errors - these are expected user input errors
    if (_shouldSkip(exception)) {
      if (kDebugMode) {
        debugPrint('[SentryLogger] Skipped expected error: $exception');
      }
      return;
    }

    await Sentry.captureException(
      exception,
      stackTrace: stackTrace,
      withScope: (scope) {
        if (context != null) {
          scope.setTag('context', context);
        }
        if (extras != null) {
          for (final entry in extras.entries) {
            scope.setExtra(entry.key, entry.value);
          }
        }
        scope.level = _levelFor(exception);
      },
    );

    if (kDebugMode) {
      debugPrint('[SentryLogger] Captured: $exception (context: $context)');
    }
  }

  /// Add a breadcrumb for debugging context.
  ///
  /// Breadcrumbs help trace user journey leading to an error.
  static void addBreadcrumb({
    required String message,
    String? category,
    Map<String, dynamic>? data,
    SentryLevel? level,
  }) {
    Sentry.addBreadcrumb(
      Breadcrumb(
        message: message,
        category: category ?? 'app',
        data: data,
        level: level ?? SentryLevel.info,
        timestamp: DateTime.now(),
      ),
    );
  }

  /// Capture a message (non-exception) event.
  ///
  /// Use for warnings or info-level events that aren't exceptions.
  static Future<void> captureMessage(
    String message, {
    SentryLevel level = SentryLevel.warning,
    String? context,
    Map<String, dynamic>? extras,
  }) async {
    await Sentry.captureMessage(
      message,
      level: level,
      withScope: (scope) {
        if (context != null) {
          scope.setTag('context', context);
        }
        if (extras != null) {
          for (final entry in extras.entries) {
            scope.setExtra(entry.key, entry.value);
          }
        }
      },
    );
  }

  /// Determine if exception should be skipped (expected errors).
  static bool _shouldSkip(dynamic exception) {
    // Validation errors are expected user input issues
    if (exception is ValidationException) return true;

    // Failures: skip validation type
    if (exception is Failure) {
      return switch (exception) {
        ValidationFailure() => true,
        _ => false,
      };
    }

    return false;
  }

  /// Map exception type to Sentry severity level.
  static SentryLevel _levelFor(dynamic exception) {
    // Network issues are warnings (transient)
    if (exception is NetworkException) return SentryLevel.warning;
    
    // Auth issues are warnings (often user-recoverable)
    if (exception is AuthException) return SentryLevel.warning;
    
    // Not found is info level (often expected)
    if (exception is NotFoundException) return SentryLevel.info;
    
    // Server errors are errors
    if (exception is ServerException) return SentryLevel.error;
    
    // Cache errors are warnings
    if (exception is CacheException) return SentryLevel.warning;

    // Map Failure types
    if (exception is Failure) {
      return switch (exception) {
        NetworkFailure() => SentryLevel.warning,
        AuthFailure() => SentryLevel.warning,
        NotFoundFailure() => SentryLevel.info,
        ServerFailure() => SentryLevel.error,
        CacheFailure() => SentryLevel.warning,
        _ => SentryLevel.error,
      };
    }

    // Default to error for unknown exceptions
    return SentryLevel.error;
  }
}
