import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';

import 'sentry_logger.dart';

/// Utility class for device detection
class DeviceUtils {
  static final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();
  static bool? _isEmulatorCached;

  /// Check if the app is running on an emulator/simulator
  /// Returns true for Android Emulator, iOS Simulator, or debug web
  static Future<bool> isEmulator() async {
    // Return cached value if available
    if (_isEmulatorCached != null) {
      return _isEmulatorCached!;
    }

    try {
      if (kIsWeb) {
        // Web is always considered "emulator" for camera purposes
        _isEmulatorCached = kDebugMode;
        return _isEmulatorCached!;
      }

      if (Platform.isAndroid) {
        final androidInfo = await _deviceInfo.androidInfo;
        _isEmulatorCached = !androidInfo.isPhysicalDevice;
        return _isEmulatorCached!;
      }

      if (Platform.isIOS) {
        final iosInfo = await _deviceInfo.iosInfo;
        _isEmulatorCached = !iosInfo.isPhysicalDevice;
        return _isEmulatorCached!;
      }

      // macOS, Windows, Linux - treat as physical device (they have cameras)
      _isEmulatorCached = false;
      return _isEmulatorCached!;
    } catch (e, stackTrace) {
      // Log to Sentry but don't crash - assume physical device
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'DeviceUtils.isEmulator',
      );
      debugPrint('DeviceUtils: Failed to detect emulator: $e');
      _isEmulatorCached = false;
      return false;
    }
  }

  /// Clear cached emulator status (useful for testing)
  static void clearCache() {
    _isEmulatorCached = null;
  }

  /// Check if running in debug mode
  static bool get isDebugMode => kDebugMode;

  /// Check if running in release mode
  static bool get isReleaseMode => kReleaseMode;
}
