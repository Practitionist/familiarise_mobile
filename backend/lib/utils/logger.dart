import 'package:logging/logging.dart';

/// Application logger with configurable log levels.
///
/// Usage:
/// ```dart
/// final logger = AppLogger('MyClass');
/// logger.info('Something happened');
/// logger.severe('Error occurred', error, stackTrace);
/// ```
class AppLogger {
  /// Creates a logger with the given name.
  AppLogger(String name) : _logger = Logger(name);

  final Logger _logger;

  /// Log an info message.
  void info(String message) => _logger.info(message);

  /// Log a warning message.
  void warning(String message) => _logger.warning(message);

  /// Log a severe error with optional error object and stack trace.
  void severe(String message, [Object? error, StackTrace? stackTrace]) =>
      _logger.severe(message, error, stackTrace);

  /// Log a fine/debug message.
  void fine(String message) => _logger.fine(message);
}

/// Initialize logging for the application.
///
/// Call this once at application startup.
void initializeLogging({Level level = Level.INFO}) {
  Logger.root.level = level;
  Logger.root.onRecord.listen((record) {
    final time = record.time.toIso8601String();
    final level = record.level.name.padRight(7);
    final name = record.loggerName;
    final message = record.message;

    final buffer = StringBuffer('[$time] $level [$name] $message');

    if (record.error != null) {
      buffer
        ..writeln()
        ..write('Error: ${record.error}');
    }
    if (record.stackTrace != null) {
      buffer
        ..writeln()
        ..write('Stack trace:\n${record.stackTrace}');
    }

    // ignore: avoid_print
    print(buffer);
  });
}
