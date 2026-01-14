import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import 'package:familiarise_mobile/app/router.dart';
import 'package:familiarise_mobile/app/theme/app_theme.dart';
import 'package:familiarise_mobile/features/chat/providers/chat_service_provider.dart';
import 'package:familiarise_mobile/features/chat/theme/chat_theme.dart';

class FamiliariseApp extends ConsumerWidget {
  const FamiliariseApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    // Watch the state to rebuild when chat initialization completes
    final chatState = ref.watch(chatServiceProvider);

    return MaterialApp.router(
      title: 'Familiarise',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
      builder: (context, child) {
        // Read the notifier to get the client instance
        final chatClient = ref.read(chatServiceProvider.notifier).client;

        // Wrap with StreamChat when client is available and initialized
        if (chatState.isInitialized && chatClient != null) {
          return StreamChat(
            client: chatClient,
            streamChatThemeData: buildChatTheme(context),
            child: child ?? const SizedBox.shrink(),
          );
        }
        return child ?? const SizedBox.shrink();
      },
    );
  }
}
