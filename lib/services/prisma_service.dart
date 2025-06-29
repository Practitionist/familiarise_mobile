import 'dart:io';
import '../_generated_prisma_client/client.dart';
import '../_generated_prisma_client/prisma.dart';

class PrismaService {
  static late PrismaClient _client;
  static bool _initialized = false;

  static PrismaClient get client {
    if (!_initialized) {
      throw Exception('PrismaService not initialized. Call PrismaService.initialize() first.');
    }
    return _client;
  }

  static Future<void> initialize({String? databaseUrl}) async {
    try {
      // Debug: Print working directory and binary paths
      final currentDir = Directory.current.path;
      print('DEBUG: Current working directory: $currentDir');
      
      // Find the project root by looking for pubspec.yaml
      String? projectRoot = _findProjectRoot();
      print('DEBUG: Project root: $projectRoot');
      
      // Set absolute paths to potential binary locations
      final potentialPaths = [
        '$currentDir/prisma-query-engine',
        '$currentDir/prisma/prisma-query-engine', 
        '$currentDir/.dart_tool/prisma-query-engine',
      ];
      
      if (projectRoot != null) {
        potentialPaths.addAll([
          '$projectRoot/prisma-query-engine',
          '$projectRoot/prisma/prisma-query-engine',
          '$projectRoot/.dart_tool/prisma-query-engine',
        ]);
      }
      
      String? binaryPath;
      for (final path in potentialPaths) {
        final exists = File(path).existsSync();
        print('DEBUG: Binary at $path - exists: $exists');
        if (exists && binaryPath == null) {
          binaryPath = path;
        }
      }
      
      if (binaryPath != null) {
        print('DEBUG: Using binary at: $binaryPath');
        // Set environment variable to specify the binary path
        Platform.environment['PRISMA_QUERY_ENGINE_BINARY'] = binaryPath;
      }
      
      _client = PrismaClient(
        datasourceUrl: databaseUrl,
      );
      await _client.$connect();
      _initialized = true;
      print('Prisma client connected successfully');
    } catch (e) {
      print('Failed to connect to Prisma: $e');
      rethrow;
    }
  }

  static String? _findProjectRoot() {
    Directory current = Directory.current;
    
    while (current.path != current.parent.path) {
      if (File('${current.path}/pubspec.yaml').existsSync()) {
        return current.path;
      }
      current = current.parent;
    }
    return null;
  }

  static Future<void> dispose() async {
    if (_initialized) {
      await _client.$disconnect();
      _initialized = false;
    }
  }

  // Domains
  static Future<List<Map<String, dynamic>>> getDomains() async {
    try {
      final domains = await client.domain.findMany();
      return domains.map((domain) => domain.toJson()).toList();
    } catch (e) {
      print('Error fetching domains: $e');
      return [];
    }
  }

  // SubDomains by domain  
  static Future<List<Map<String, dynamic>>> getSubDomainsByDomain(String domainId) async {
    try {
      final subDomains = await client.subDomain.findMany();
      // Filter client-side for now to avoid complex where syntax
      final filtered = subDomains.where((sd) => sd.domainId == domainId).toList();
      return filtered.map((subDomain) => subDomain.toJson()).toList();
    } catch (e) {
      print('Error fetching subdomains: $e');
      return [];
    }
  }

  // Tags by subdomain
  static Future<List<Map<String, dynamic>>> getTagsBySubDomain(String subDomainId) async {
    try {
      final tags = await client.tag.findMany();
      // Filter client-side for now  
      final filtered = tags.where((tag) => tag.domainId == subDomainId).toList();
      return filtered.map((tag) => tag.toJson()).toList();
    } catch (e) {
      print('Error fetching tags: $e');
      return [];
    }
  }

  // Consultant Profiles (simplified)
  static Future<Map<String, dynamic>> getConsultants({
    int page = 1,
    int limit = 10,
    String? domain,
    String? subDomain,
    List<String>? tags,
    double? minRating,
    double? maxPrice,
  }) async {
    try {
      final offset = (page - 1) * limit;

      final consultants = await client.consultantProfile.findMany(
        skip: offset,
        take: limit,
      );

      return {
        'data': consultants.map((consultant) => consultant.toJson()).toList(),
        'meta': {
          'total': consultants.length,
          'page': page,
          'limit': limit,
          'totalPages': 1,
        },
      };
    } catch (e) {
      print('Error fetching consultants: $e');
      return {
        'data': [],
        'meta': {
          'total': 0,
          'page': page,
          'limit': limit,
          'totalPages': 0,
        },
      };
    }
  }

  // Get consultant by ID (simplified)
  static Future<Map<String, dynamic>?> getConsultantById(String id) async {
    try {
      final consultant = await client.consultantProfile.findUnique(
        where: ConsultantProfileWhereUniqueInput(id: id),
      );
      
      return consultant?.toJson();
    } catch (e) {
      print('Error fetching consultant: $e');
      return null;
    }
  }

  // Create a user (simplified for now)
  static Future<Map<String, dynamic>?> createUser({
    required String email,
    required String name,
    String? phoneNumber,
    String? profileImageUrl,
  }) async {
    try {
      // For now, we'll implement this later when we resolve the complex types
      print('Create user called: $email, $name');
      return null;
    } catch (e) {
      print('Error creating user: $e');
      return null;
    }
  }

  // Get user by email (simplified for now)
  static Future<Map<String, dynamic>?> getUserByEmail(String email) async {
    try {
      final user = await client.user.findUnique(
        where: UserWhereUniqueInput(email: email),
      );
      
      return user?.toJson();
    } catch (e) {
      print('Error fetching user: $e');
      return null;
    }
  }

  // Test connection
  static Future<bool> testConnection() async {
    try {
      await client.user.findMany(take: 1);
      return true;
    } catch (e) {
      print('Connection test failed: $e');
      return false;
    }
  }
} 