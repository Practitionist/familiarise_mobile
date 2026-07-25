import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../providers/announcement_provider.dart';

/// Dismissible announcement banner shown at the top of the main shell.
class AnnouncementBanner extends ConsumerStatefulWidget {
  const AnnouncementBanner({super.key});

  @override
  ConsumerState<AnnouncementBanner> createState() => _AnnouncementBannerState();
}

class _AnnouncementBannerState extends ConsumerState<AnnouncementBanner> {
  final _dismissed = <String>{};

  @override
  Widget build(BuildContext context) {
    final announcementsAsync = ref.watch(announcementsProvider);

    return announcementsAsync.when(
      data: (announcements) {
        final visible =
            announcements.where((a) => !_dismissed.contains(a.id)).toList();
        if (visible.isEmpty) return const SizedBox.shrink();

        final announcement = visible.first;
        final bgColor = announcement.backgroundColor != null
            ? Color(
                int.parse(
                      announcement.backgroundColor!.replaceFirst(
                        '#',
                        '',
                      ),
                      radix: 16,
                    ) |
                    0xFF000000,
              )
            : Theme.of(context).colorScheme.primaryContainer;

        return MaterialBanner(
          content: Text(
            announcement.message ?? announcement.title,
            style: TextStyle(
              color: announcement.textColor != null
                  ? Color(
                      int.parse(
                            announcement.textColor!.replaceFirst(
                              '#',
                              '',
                            ),
                            radix: 16,
                          ) |
                          0xFF000000,
                    )
                  : null,
            ),
          ),
          backgroundColor: bgColor,
          actions: [
            if (announcement.linkUrl != null)
              TextButton(
                onPressed: () => launchUrl(Uri.parse(announcement.linkUrl!)),
                child: Text(announcement.linkText ?? 'Learn more'),
              ),
            IconButton(
              icon: const Icon(Icons.close, size: 18),
              onPressed: () => setState(() => _dismissed.add(announcement.id)),
            ),
          ],
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}
