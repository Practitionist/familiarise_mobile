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
      // Platform-specific initialization
      if (Platform.isMacOS) {
        await _initializeMacOS(databaseUrl);
      } else if (Platform.isWindows) {
        await _initializeWindows(databaseUrl);
      } else if (Platform.isLinux) {
        await _initializeLinux(databaseUrl);
      } else if (Platform.isIOS || Platform.isAndroid) {
        throw Exception('Prisma ORM is not supported on mobile platforms. Use direct database connections or REST APIs.');
      } else {
        await _initializeDefault(databaseUrl);
      }
    } catch (e) {
      print('Failed to initialize Prisma: $e');
      rethrow;
    }
  }

  // === macOS Platform Initialization ===
  static Future<void> _initializeMacOS(String? databaseUrl) async {
    print('DEBUG: Initializing Prisma for macOS platform');
    final currentDir = Directory.current.path;
    print('DEBUG: Current working directory: $currentDir');
    
    // Try to copy binary to expected Prisma locations in sandbox
    final binaryName = 'prisma-query-engine';
    final targetPaths = [
      '$currentDir/$binaryName',
      '$currentDir/prisma/$binaryName', 
      '$currentDir/.dart_tool/$binaryName',
    ];
    
    bool anyBinaryCopied = false;
    for (final targetPath in targetPaths) {
      final copied = await _copyBinaryToSandboxMacOS(targetPath);
      if (copied) {
        anyBinaryCopied = true;
        print('DEBUG: Binary successfully copied to: $targetPath');
      }
    }
    
    if (anyBinaryCopied) {
      print('DEBUG: Binary copied to one or more expected locations');
    } else {
      print('DEBUG: Failed to copy binary to any location - Prisma will try default paths');
    }
    
    await _connectPrismaClient(databaseUrl);
  }

  // === Windows Platform Initialization ===
  static Future<void> _initializeWindows(String? databaseUrl) async {
    print('DEBUG: Initializing Prisma for Windows platform');
    // TODO: Implement Windows-specific binary handling
    final binaryName = 'prisma-query-engine.exe';
    final tempDir = Directory.systemTemp.path;
    final targetPath = '$tempDir\\$binaryName';
    
    print('DEBUG: Windows binary target path: $targetPath');
    // For now, use default initialization
    await _connectPrismaClient(databaseUrl);
  }

  // === Linux Platform Initialization ===
  static Future<void> _initializeLinux(String? databaseUrl) async {
    print('DEBUG: Initializing Prisma for Linux platform');
    // TODO: Implement Linux-specific binary handling
    final binaryName = 'prisma-query-engine';
    final targetPath = '/tmp/$binaryName';
    
    print('DEBUG: Linux binary target path: $targetPath');
    // For now, use default initialization
    await _connectPrismaClient(databaseUrl);
  }

  // === Default Platform Initialization ===
  static Future<void> _initializeDefault(String? databaseUrl) async {
    print('DEBUG: Initializing Prisma for unknown platform');
    await _connectPrismaClient(databaseUrl);
  }

  // === Common Prisma Client Connection ===
  static Future<void> _connectPrismaClient(String? databaseUrl) async {
    _client = PrismaClient(datasourceUrl: databaseUrl);
    await _client.$connect();
    _initialized = true;
    print('Prisma client connected successfully');
  }

  static Future<bool> _copyBinaryToSandboxMacOS(String targetPath) async {
    try {
      // Create directory if it doesn't exist
      final targetDir = Directory(targetPath).parent;
      if (!targetDir.existsSync()) {
        await targetDir.create(recursive: true);
        print('DEBUG: Created directory: ${targetDir.path}');
      }
      
      // First try to extract from app bundle resources
      final bundleBinaryPath = await _getBundleBinaryPath();
      if (bundleBinaryPath != null) {
        print('DEBUG: Found binary in app bundle at $bundleBinaryPath, copying to sandbox...');
        await File(bundleBinaryPath).copy(targetPath);
        await Process.run('chmod', ['+x', targetPath]);
        return true;
      }
      
      // Fallback: Known development source paths 
      final sourcePaths = [
        '/Users/kaustavghosh/Desktop/familiarise_mobile/prisma-query-engine',
        '/Users/kaustavghosh/Desktop/familiarise_mobile/prisma/prisma-query-engine',
        '/Users/kaustavghosh/Desktop/familiarise_mobile/.dart_tool/prisma-query-engine',
      ];
      
      for (final sourcePath in sourcePaths) {
        if (File(sourcePath).existsSync()) {
          print('DEBUG: Found binary at $sourcePath, copying to sandbox...');
          await File(sourcePath).copy(targetPath);
          await Process.run('chmod', ['+x', targetPath]);
          return true;
        }
      }
      
      print('DEBUG: No source binary found in any of the expected locations');
      return false;
    } catch (e) {
      print('DEBUG: Error copying binary: $e');
      return false;
    }
  }

  static Future<String?> _getBundleBinaryPath() async {
    try {
      if (Platform.isMacOS) {
        final currentDir = Directory.current.path;
        print('DEBUG: Searching for bundle binary from: $currentDir');
        
        // Known actual bundle location from our testing
        final knownBundlePath = '/Users/kaustavghosh/Desktop/familiarise_mobile/build/macos/Build/Products/Debug/familiarise_mobile.app/Contents/Resources/prisma-query-engine';
        print('DEBUG: Checking known bundle path: $knownBundlePath');
        if (File(knownBundlePath).existsSync()) {
          print('DEBUG: Found bundle binary at known location: $knownBundlePath');
          return knownBundlePath;
        }
        
        // Try comprehensive bundle resource locations  
        final possiblePaths = [
          // Standard app bundle locations
          '$currentDir/../Resources/prisma-query-engine',
          '$currentDir/../../Resources/prisma-query-engine',
          '$currentDir/../../../Resources/prisma-query-engine',
          '$currentDir/../../../../Resources/prisma-query-engine',
          '$currentDir/../../../../../Resources/prisma-query-engine',
          '$currentDir/../Frameworks/App.framework/Resources/prisma-query-engine',
          '$currentDir/../MacOS/../Resources/prisma-query-engine',
          
          // Flutter-specific locations
          '$currentDir/../flutter_assets/prisma-query-engine',
          '$currentDir/flutter_assets/prisma-query-engine',
          
          // Alternative bundle structures
          '$currentDir/Resources/prisma-query-engine',
          '$currentDir/../../Contents/Resources/prisma-query-engine',
          '$currentDir/../Contents/Resources/prisma-query-engine',
          '$currentDir/../../../Contents/Resources/prisma-query-engine',
          '$currentDir/../../../../Contents/Resources/prisma-query-engine',
        ];
        
        print('DEBUG: Checking ${possiblePaths.length} possible bundle paths...');
        for (final path in possiblePaths) {
          print('DEBUG: Checking bundle path: $path');
          if (File(path).existsSync()) {
            print('DEBUG: Found bundle binary at: $path');
            return path;
          }
        }
        print('DEBUG: No bundle binary found in any expected locations');
      }
      return null;
    } catch (e) {
      print('DEBUG: Error locating bundle binary: $e');
      return null;
    }
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