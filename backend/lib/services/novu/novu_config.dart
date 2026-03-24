import 'dart:io';

/// Novu configuration loaded from environment variables.
///
/// Required env vars:
///   - `NOVU_SECRET_KEY` — Backend API key (server-side only)
///   - `NOVU_APP_ID` — Application identifier
///
/// Optional env vars:
///   - `NOVU_API_URL` — Defaults to `https://api.novu.co/v1`
class NovuConfig {
  /// Creates a [NovuConfig], falling back to environment variables when
  /// explicit values are not provided.
  NovuConfig({
    String? secretKey,
    String? apiUrl,
    String? appId,
  })  : secretKey = secretKey ?? Platform.environment['NOVU_SECRET_KEY'] ?? '',
        apiUrl = apiUrl ??
            Platform.environment['NOVU_API_URL'] ??
            'https://api.novu.co/v1',
        appId = appId ?? Platform.environment['NOVU_APP_ID'] ?? '';

  /// The Novu backend secret key used for API authentication.
  final String secretKey;

  /// The base URL for the Novu API (e.g. `https://api.novu.co/v1`).
  final String apiUrl;

  /// The Novu application identifier.
  final String appId;

  /// Whether the minimum required configuration (secret key) is present.
  bool get isConfigured => secretKey.isNotEmpty;
}
