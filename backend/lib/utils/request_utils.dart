import 'package:dart_frog/dart_frog.dart';

/// Utility class for extracting client information from HTTP requests.
class RequestUtils {
  RequestUtils._();

  /// Extracts the client IP address from the request.
  ///
  /// Checks common proxy headers in order of preference:
  /// 1. X-Forwarded-For (first IP in comma-separated list)
  /// 2. X-Real-IP
  /// 3. CF-Connecting-IP (Cloudflare)
  ///
  /// Returns null if no IP can be determined.
  static String? getClientIp(Request request) {
    // X-Forwarded-For can contain multiple IPs (client, proxy1, proxy2, ...)
    // The first one is the original client IP
    final forwardedFor = request.headers['x-forwarded-for'];
    if (forwardedFor != null && forwardedFor.isNotEmpty) {
      return forwardedFor.split(',').first.trim();
    }

    // X-Real-IP is typically set by nginx
    final realIp = request.headers['x-real-ip'];
    if (realIp != null && realIp.isNotEmpty) {
      return realIp;
    }

    // CF-Connecting-IP is set by Cloudflare
    final cloudflareIp = request.headers['cf-connecting-ip'];
    if (cloudflareIp != null && cloudflareIp.isNotEmpty) {
      return cloudflareIp;
    }

    return null;
  }

  /// Extracts the User-Agent header from the request.
  static String? getUserAgent(Request request) {
    return request.headers['user-agent'];
  }
}
