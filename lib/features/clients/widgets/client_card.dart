import 'package:flutter/material.dart';

import '../../../domain/entities/chat/appointment_consultant.dart';

/// Card displaying a client with avatar, name, and booking info
class ClientCard extends StatelessWidget {
  const ClientCard({
    required this.client,
    super.key,
  });

  final AppointmentConsultant client;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: theme.colorScheme.primaryContainer,
              backgroundImage: client.consultantImage != null
                  ? NetworkImage(client.consultantImage!)
                  : null,
              child: client.consultantImage == null
                  ? Text(
                      _getInitials(client.consultantName),
                      style: TextStyle(
                        color: theme.colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : null,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    client.consultantName,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _getBookingTypesLabel(client),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }

  String _getInitials(String name) {
    final words = name.trim().split(RegExp(r'\s+'));
    if (words.isEmpty || words.first.isEmpty) return '?';
    if (words.length >= 2 && words[1].isNotEmpty) {
      return '${words.first[0]}${words[1][0]}'.toUpperCase();
    }
    return words.first[0].toUpperCase();
  }

  String _getBookingTypesLabel(AppointmentConsultant client) {
    final types = client.allBookingTypes
        .map((t) => t.name[0].toUpperCase() + t.name.substring(1))
        .toSet()
        .toList();
    if (types.isEmpty) return 'Client';
    return types.join(', ');
  }
}
