/// String extension methods for common operations
extension StringX on String {
  /// Capitalize first letter of the string
  /// "hello" -> "Hello"
  String get capitalize {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  /// Capitalize first letter of each word
  /// "hello world" -> "Hello World"
  String get titleCase {
    if (isEmpty) return this;
    return split(' ').map((word) => word.capitalize).join(' ');
  }

  /// Get initials from name
  /// "John Doe" -> "JD", "John" -> "J", "   " -> ""
  String get initials {
    if (isEmpty) return '';

    final words = trim().split(RegExp(r'\s+'));
    if (words.isEmpty || words.first.isEmpty) return '';
    if (words.length >= 2 && words[1].isNotEmpty) {
      return '${words[0][0]}${words[1][0]}'.toUpperCase();
    }
    return words[0][0].toUpperCase();
  }

  /// Check if string is a valid email
  bool get isValidEmail {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(this);
  }

  /// Check if string is a valid phone number
  bool get isValidPhone {
    final cleanedValue = replaceAll(RegExp(r'[\s\-\(\)]'), '');
    final phoneRegex = RegExp(r'^\+?[0-9]{10,15}$');
    return phoneRegex.hasMatch(cleanedValue);
  }

  /// Check if string is a valid URL
  bool get isValidUrl {
    final urlRegex = RegExp(
      r'^https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$',
    );
    return urlRegex.hasMatch(this);
  }

  /// Truncate string with ellipsis
  /// "Hello World".truncate(8) -> "Hello..."
  String truncate(int maxLength, {String ellipsis = '...'}) {
    if (length <= maxLength) return this;
    return '${substring(0, maxLength - ellipsis.length)}$ellipsis';
  }

  /// Remove all whitespace
  String get removeWhitespace => replaceAll(RegExp(r'\s+'), '');

  /// Check if string contains only digits
  bool get isNumeric => RegExp(r'^[0-9]+$').hasMatch(this);

  /// Convert to int or null
  int? get toIntOrNull => int.tryParse(this);

  /// Convert to double or null
  double? get toDoubleOrNull => double.tryParse(this);

  /// Mask string except last n characters
  /// "1234567890".mask(4) -> "******7890"
  String mask(int visibleChars, {String maskChar = '*'}) {
    if (length <= visibleChars) return this;
    final masked = maskChar * (length - visibleChars);
    return masked + substring(length - visibleChars);
  }

  /// Get file extension from path
  String? get fileExtension {
    final lastDot = lastIndexOf('.');
    if (lastDot == -1 || lastDot == length - 1) return null;
    return substring(lastDot + 1).toLowerCase();
  }

  /// Convert snake_case to camelCase
  String get toCamelCase {
    final parts = split('_');
    if (parts.length == 1) return this;
    return parts.first + parts.skip(1).map((part) => part.capitalize).join();
  }

  /// Convert camelCase to snake_case
  String get toSnakeCase {
    return replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => '_${match.group(0)!.toLowerCase()}',
    );
  }
}

/// Extension on nullable strings
extension NullableStringX on String? {
  /// Check if string is null or empty
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  /// Check if string is not null and not empty
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;

  /// Return the string or a default value if null/empty
  String orDefault(String defaultValue) => isNullOrEmpty ? defaultValue : this!;
}
