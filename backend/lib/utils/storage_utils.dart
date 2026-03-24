import 'dart:convert';
import 'dart:io' as io show Platform;

import 'package:http/http.dart' as http;

/// Shared utility for generating Supabase Storage signed upload URLs.
///
/// Used by profile image, profile display image, and document upload routes.
class StorageUtils {
  /// Generate a signed upload URL for Supabase Storage.
  ///
  /// Returns a map with:
  /// - `signedUrl`: The URL to upload the file to
  /// - `publicUrl`: The permanent public URL after upload
  /// - `path`: The storage path
  /// - `bucket`: The bucket name
  static Future<Map<String, String>> generateSignedUploadUrl({
    required String bucket,
    required String storagePath,
  }) async {
    final supabaseUrl = io.Platform.environment['SUPABASE_URL'];
    final supabaseServiceKey =
        io.Platform.environment['SUPABASE_SERVICE_ROLE_KEY'];

    if (supabaseUrl == null || supabaseServiceKey == null) {
      throw const StorageConfigException(
        'SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY must be set',
      );
    }

    final signedUrlResponse = await http.post(
      Uri.parse(
        '$supabaseUrl/storage/v1/object/upload/sign/'
        '$bucket/$storagePath',
      ),
      headers: {
        'Authorization': 'Bearer $supabaseServiceKey',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'expiresIn': 3600}),
    );

    if (signedUrlResponse.statusCode != 200) {
      throw StorageException(
        'Supabase signed URL error: ${signedUrlResponse.body}',
      );
    }

    final signedUrlData =
        jsonDecode(signedUrlResponse.body) as Map<String, dynamic>;
    final token = signedUrlData['token'] as String?;

    final publicUrl =
        '$supabaseUrl/storage/v1/object/public/$bucket/$storagePath';
    final fullSignedUrl = token != null
        ? '$supabaseUrl/storage/v1/object/upload/sign/$bucket/'
            '$storagePath?token=$token'
        : signedUrlData['url'] as String;

    return {
      'signedUrl': fullSignedUrl,
      'publicUrl': publicUrl,
      'path': storagePath,
      'bucket': bucket,
    };
  }

  /// Extract file extension robustly from a filename.
  ///
  /// Returns [fallback] if no extension is found.
  static String extractExtension(String fileName, {String fallback = 'bin'}) {
    final dotIndex = fileName.lastIndexOf('.');
    if (dotIndex != -1 && dotIndex < fileName.length - 1) {
      return fileName.substring(dotIndex + 1);
    }
    return fallback;
  }
}

/// Thrown when Supabase configuration is missing.
class StorageConfigException implements Exception {
  const StorageConfigException(this.message);
  final String message;

  @override
  String toString() => message;
}

/// Thrown when a Supabase Storage operation fails.
class StorageException implements Exception {
  const StorageException(this.message);
  final String message;

  @override
  String toString() => message;
}
