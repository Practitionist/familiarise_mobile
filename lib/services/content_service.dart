import 'api_service.dart';

class ContentService {
  static final ContentService _instance = ContentService._internal();
  factory ContentService() => _instance;
  ContentService._internal();

  final ApiService _apiService = ApiService();

  Future<List<Map<String, dynamic>>> getDomains() async {
    final result = await _apiService.get('/user/content/domains');
    // The API returns the domains array directly, not wrapped in a data property
    if (result is List) {
      return List<Map<String, dynamic>>.from(result);
    }
    return [];
  }

  Future<List<Map<String, dynamic>>> getSubdomains({String? domainId}) async {
    final queryParams = <String, String>{};
    if (domainId != null) queryParams['domainId'] = domainId;

    final uri = Uri.parse('/api/user/content/subdomains').replace(queryParameters: queryParams);
    final result = await _apiService.get(uri.toString());
    return List<Map<String, dynamic>>.from(result['data'] ?? []);
  }

  Future<List<Map<String, dynamic>>> getTopics({
    String? domainId,
    String? subdomainId,
  }) async {
    final queryParams = <String, String>{};
    if (domainId != null) queryParams['domainId'] = domainId;
    if (subdomainId != null) queryParams['subdomainId'] = subdomainId;

    final uri = Uri.parse('/api/user/content/topics').replace(queryParameters: queryParams);
    final result = await _apiService.get(uri.toString());
    return List<Map<String, dynamic>>.from(result['data'] ?? []);
  }

  Future<List<Map<String, dynamic>>> getTags({
    String? topicId,
    String? search,
  }) async {
    final queryParams = <String, String>{};
    if (topicId != null) queryParams['topicId'] = topicId;
    if (search != null) queryParams['search'] = search;

    final uri = Uri.parse('/api/user/content/tags').replace(queryParameters: queryParams);
    final result = await _apiService.get(uri.toString());
    return List<Map<String, dynamic>>.from(result['data'] ?? []);
  }
}