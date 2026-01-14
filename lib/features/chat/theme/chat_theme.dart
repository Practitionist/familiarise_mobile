import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import '../../../app/theme/app_theme.dart';

/// Build Stream Chat theme matching the app's design system
StreamChatThemeData buildChatTheme(BuildContext context) {
  final theme = Theme.of(context);
  final isDark = theme.brightness == Brightness.dark;

  return StreamChatThemeData(
    colorTheme: isDark ? _buildDarkColorTheme() : _buildLightColorTheme(),
    textTheme: _buildTextTheme(theme),
    messageInputTheme: _buildMessageInputTheme(theme, isDark),
    channelPreviewTheme: _buildChannelPreviewTheme(theme),
    otherMessageTheme: _buildOtherMessageTheme(theme, isDark),
    ownMessageTheme: _buildOwnMessageTheme(theme, isDark),
  );
}

StreamColorTheme _buildLightColorTheme() {
  return StreamColorTheme.light(
    accentPrimary: const Color(0xFF18181B),
    textHighEmphasis: const Color(0xFF0A0A0B),
    textLowEmphasis: const Color(0xFF71717A),
    disabled: const Color(0xFFA1A1AA),
    borders: const Color(0xFFE4E4E7),
    inputBg: const Color(0xFFF4F4F5),
    appBg: const Color(0xFFFFFFFF),
    barsBg: const Color(0xFFFFFFFF),
  );
}

StreamColorTheme _buildDarkColorTheme() {
  return StreamColorTheme.dark(
    accentPrimary: const Color(0xFFFAFAFA),
    textHighEmphasis: const Color(0xFFFAFAFA),
    textLowEmphasis: const Color(0xFFA1A1AA),
    disabled: const Color(0xFF71717A),
    borders: const Color(0xFF27272A),
    inputBg: const Color(0xFF27272A),
    appBg: const Color(0xFF0A0A0B),
    barsBg: const Color(0xFF0A0A0B),
  );
}

StreamTextTheme _buildTextTheme(ThemeData theme) {
  final textTheme = theme.textTheme;

  return StreamTextTheme.light().copyWith(
    body: textTheme.bodyMedium ?? const TextStyle(),
    bodyBold: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600) ??
        const TextStyle(),
    footnote: textTheme.bodySmall ?? const TextStyle(),
    captionBold: textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w600) ??
        const TextStyle(),
  );
}

StreamMessageInputThemeData _buildMessageInputTheme(
  ThemeData theme,
  bool isDark,
) {
  return StreamMessageInputThemeData(
    borderRadius: BorderRadius.circular(24),
    inputBackgroundColor:
        isDark ? const Color(0xFF27272A) : const Color(0xFFF4F4F5),
    inputDecoration: InputDecoration(
      hintText: 'Type a message...',
      hintStyle: TextStyle(
        color: isDark ? const Color(0xFFA1A1AA) : const Color(0xFF71717A),
      ),
      border: InputBorder.none,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
    ),
  );
}

StreamChannelPreviewThemeData _buildChannelPreviewTheme(ThemeData theme) {
  return StreamChannelPreviewThemeData(
    unreadCounterColor: AppTheme.success,
    titleStyle: theme.textTheme.titleMedium,
    subtitleStyle: theme.textTheme.bodySmall,
    lastMessageAtStyle: theme.textTheme.labelSmall,
  );
}

StreamMessageThemeData _buildOtherMessageTheme(ThemeData theme, bool isDark) {
  return StreamMessageThemeData(
    messageBackgroundColor:
        isDark ? const Color(0xFF27272A) : const Color(0xFFF4F4F5),
    messageTextStyle: theme.textTheme.bodyMedium?.copyWith(
      color: isDark ? const Color(0xFFFAFAFA) : const Color(0xFF0A0A0B),
    ),
    messageAuthorStyle: theme.textTheme.labelSmall,
    createdAtStyle: theme.textTheme.labelSmall,
  );
}

StreamMessageThemeData _buildOwnMessageTheme(ThemeData theme, bool isDark) {
  return StreamMessageThemeData(
    messageBackgroundColor:
        isDark ? const Color(0xFFFAFAFA) : const Color(0xFF18181B),
    messageTextStyle: theme.textTheme.bodyMedium?.copyWith(
      color: isDark ? const Color(0xFF18181B) : const Color(0xFFFAFAFA),
    ),
    createdAtStyle: theme.textTheme.labelSmall?.copyWith(
      color: isDark
          ? const Color(0xFF71717A)
          : const Color(0xFFD4D4D8).withValues(alpha: 0.8),
    ),
  );
}
