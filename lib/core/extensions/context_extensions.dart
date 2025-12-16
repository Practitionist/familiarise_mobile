import 'package:flutter/material.dart';

/// BuildContext extension methods for easy access to common properties
extension ContextX on BuildContext {
  // Theme shortcuts
  /// Get the current ThemeData
  ThemeData get theme => Theme.of(this);

  /// Get the current ColorScheme
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// Get the current TextTheme
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Check if current theme is dark mode
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  // MediaQuery shortcuts
  /// Get the MediaQueryData
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Get the screen size
  Size get screenSize => MediaQuery.sizeOf(this);

  /// Get the screen width
  double get screenWidth => MediaQuery.sizeOf(this).width;

  /// Get the screen height
  double get screenHeight => MediaQuery.sizeOf(this).height;

  /// Get the device pixel ratio
  double get devicePixelRatio => MediaQuery.devicePixelRatioOf(this);

  /// Get the view padding (safe area)
  EdgeInsets get viewPadding => MediaQuery.viewPaddingOf(this);

  /// Get the view insets (keyboard, etc.)
  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);

  /// Get the bottom padding (for safe area)
  double get bottomPadding => MediaQuery.viewPaddingOf(this).bottom;

  /// Get the top padding (for status bar)
  double get topPadding => MediaQuery.viewPaddingOf(this).top;

  /// Check if keyboard is visible
  bool get isKeyboardVisible => MediaQuery.viewInsetsOf(this).bottom > 0;

  // Screen size helpers
  /// Check if screen is small (< 600px width)
  bool get isSmallScreen => screenWidth < 600;

  /// Check if screen is medium (600-900px width)
  bool get isMediumScreen => screenWidth >= 600 && screenWidth < 900;

  /// Check if screen is large (>= 900px width)
  bool get isLargeScreen => screenWidth >= 900;

  // Snackbar helpers
  /// Show a snackbar with the given message
  void showSnackBar(
    String message, {
    Duration duration = const Duration(seconds: 3),
    SnackBarAction? action,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
        action: action,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  /// Show an error snackbar
  void showErrorSnackBar(
    String message, {
    Duration duration = const Duration(seconds: 4),
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
        backgroundColor: colorScheme.error,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  /// Show a success snackbar
  void showSuccessSnackBar(
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  /// Hide the current snackbar
  void hideSnackBar() {
    ScaffoldMessenger.of(this).hideCurrentSnackBar();
  }

  // Dialog helpers
  /// Show a simple alert dialog
  Future<void> showAlertDialog({
    required String title,
    required String message,
    String okText = 'OK',
  }) {
    return showDialog(
      context: this,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(okText),
          ),
        ],
      ),
    );
  }

  /// Show a confirmation dialog and return true if confirmed
  Future<bool> showConfirmDialog({
    required String title,
    required String message,
    String confirmText = 'Confirm',
    String cancelText = 'Cancel',
    bool isDestructive = false,
  }) async {
    final result = await showDialog<bool>(
      context: this,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(cancelText),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: isDestructive
                ? TextButton.styleFrom(foregroundColor: colorScheme.error)
                : null,
            child: Text(confirmText),
          ),
        ],
      ),
    );
    return result ?? false;
  }

  // Focus helpers
  /// Unfocus any focused widget (dismiss keyboard)
  void unfocus() {
    FocusScope.of(this).unfocus();
  }

  /// Request focus on the given focus node
  void requestFocus(FocusNode node) {
    FocusScope.of(this).requestFocus(node);
  }
}
