import 'dart:io';

import 'package:http/http.dart' as http;

/// Helper for uploading files to Supabase Storage via signed URLs.
///
/// The flow is:
/// 1. Call the backend to get a signed upload URL
/// 2. Upload the file directly to Supabase using the signed URL
/// 3. Use the returned publicUrl in subsequent API calls
///
/// This helper handles step 2. Steps 1 and 3 are handled by the caller.
class FileUploadHelper {
  /// Upload a file to a signed URL.
  ///
  /// Returns true if the upload succeeded (HTTP 200).
  /// Throws on network errors.
  static Future<bool> uploadToSignedUrl({
    required String signedUrl,
    required File file,
    required String contentType,
  }) async {
    final bytes = await file.readAsBytes();

    final response = await http.put(
      Uri.parse(signedUrl),
      headers: {
        'Content-Type': contentType,
        'x-upsert': 'true',
      },
      body: bytes,
    );

    return response.statusCode == 200;
  }

  /// Upload bytes to a signed URL (for web/memory uploads).
  static Future<bool> uploadBytesToSignedUrl({
    required String signedUrl,
    required List<int> bytes,
    required String contentType,
  }) async {
    final response = await http.put(
      Uri.parse(signedUrl),
      headers: {
        'Content-Type': contentType,
        'x-upsert': 'true',
      },
      body: bytes,
    );

    return response.statusCode == 200;
  }
}
