import 'package:logger/logger.dart';
import 'package:flutter/foundation.dart';

class LoggingService {
  static final LoggingService _instance = LoggingService._internal();
  factory LoggingService() => _instance;
  LoggingService._internal();

  late final Logger _logger;

  void initialize() {
    _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 120,
        colors: true,
        printEmojis: true,
        dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart
      ),
      level: kDebugMode ? Level.debug : Level.info,
      output: ConsoleOutput(), // Ensure console output
    );
    
    // Initial log to verify logging is working
    _logger.i('🚀 Logging service initialized - Level: ${kDebugMode ? 'DEBUG' : 'INFO'}');
  }

  // Debug logging - only in debug mode
  void debug(String message, [dynamic error, StackTrace? stackTrace]) {
    if (kDebugMode) {
      _logger.d(message, error: error, stackTrace: stackTrace);
    }
  }

  // Info logging - general information
  void info(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.i(message, error: error, stackTrace: stackTrace);
  }

  // Warning logging - potential issues
  void warning(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.w(message, error: error, stackTrace: stackTrace);
  }

  // Error logging - critical errors
  void error(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }

  // Fatal logging - application-breaking errors
  void fatal(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.f(message, error: error, stackTrace: stackTrace);
  }

  // OAuth specific logging
  void oAuthStart(String provider) {
    info('OAuth: Starting $provider authentication');
  }

  void oAuthSuccess(String provider, String? userEmail) {
    info('OAuth: $provider authentication successful for user: ${userEmail ?? 'unknown'}');
  }

  void oAuthError(String provider, String error, [dynamic exception, StackTrace? stackTrace]) {
    this.error('OAuth: $provider authentication failed - $error', exception, stackTrace);
  }

  // Auth specific logging
  void authAttempt(String email) {
    info('Auth: Login attempt for user: $email');
  }

  void authSuccess(String email) {
    info('Auth: Login successful for user: $email');
  }

  void authFailure(String email, String reason) {
    warning('Auth: Login failed for user: $email - $reason');
  }

  // Navigation logging
  void navigation(String from, String to) {
    debug('Navigation: $from → $to');
  }
}

// Global logger instance
final logger = LoggingService();