// ignore_for_file: avoid_print
import 'dart:convert';
import 'dart:io';

/// Simple database verification script using HTTP requests
/// This checks your Supabase database structure without Flutter dependencies
class SimpleDBChecker {
  late String supabaseUrl;
  late String anonKey;
  
  Future<void> initialize() async {
    // Read environment variables from .env file
    final envFile = File('.env');
    if (!envFile.existsSync()) {
      throw Exception('No .env file found. Please ensure .env exists with SUPABASE_URL and SUPABASE_ANON_KEY');
    }
    
    final envContent = await envFile.readAsString();
    final envLines = envContent.split('\n');
    
    for (final line in envLines) {
      if (line.startsWith('SUPABASE_URL=')) {
        supabaseUrl = line.split('=')[1].trim();
      } else if (line.startsWith('SUPABASE_ANON_KEY=')) {
        anonKey = line.split('=')[1].trim();
      }
    }
    
    if (supabaseUrl.isEmpty || anonKey.isEmpty) {
      throw Exception('Missing SUPABASE_URL or SUPABASE_ANON_KEY in .env file');
    }
  }
  
  Future<List<dynamic>> queryTable(String table, {String select = '*', int limit = 5}) async {
    final client = HttpClient();
    
    try {
      final uri = Uri.parse('$supabaseUrl/rest/v1/$table?select=$select&limit=$limit');
      final request = await client.getUrl(uri);
      
      request.headers.add('apikey', anonKey);
      request.headers.add('Authorization', 'Bearer $anonKey');
      request.headers.add('Content-Type', 'application/json');
      
      final response = await request.close();
      final responseBody = await response.transform(utf8.decoder).join();
      
      if (response.statusCode == 200) {
        return jsonDecode(responseBody) as List<dynamic>;
      } else {
        print('❌ Error querying $table: ${response.statusCode} - $responseBody');
        return [];
      }
    } catch (e) {
      print('❌ Error querying $table: $e');
      return [];
    } finally {
      client.close();
    }
  }
  
  Future<void> checkUsers() async {
    print('\n🔍 Checking Users Table...');
    final users = await queryTable('users', select: 'id,email,name,role,onlineStatus,onboardingCompleted');
    
    if (users.isNotEmpty) {
      print('✅ Found ${users.length} users:');
      for (final user in users) {
        print('  • ${user['name'] ?? 'No name'} (${user['email']}) - Role: ${user['role']}');
      }
    } else {
      print('ℹ️ No users found or table does not exist');
    }
  }
  
  Future<void> checkConsultantProfiles() async {
    print('\n🔍 Checking ConsultantProfile Table...');
    final consultants = await queryTable('ConsultantProfile', 
        select: 'id,description,specialization,experience,rating');
    
    if (consultants.isNotEmpty) {
      print('✅ Found ${consultants.length} consultant profiles:');
      for (final consultant in consultants) {
        print('  • ID: ${consultant['id']} - ${consultant['specialization']} (Rating: ${consultant['rating']})');
      }
    } else {
      print('ℹ️ No consultant profiles found or table does not exist');
    }
  }
  
  Future<void> checkDomains() async {
    print('\n🔍 Checking Domain Table...');
    final domains = await queryTable('Domain', select: 'id,name');
    
    if (domains.isNotEmpty) {
      print('✅ Found ${domains.length} domains:');
      for (final domain in domains) {
        print('  • ${domain['name']} (ID: ${domain['id']})');
      }
    } else {
      print('ℹ️ No domains found or table does not exist');
    }
  }
  
  Future<void> checkConsultationPlans() async {
    print('\n🔍 Checking ConsultationPlan Table...');
    final plans = await queryTable('ConsultationPlan', select: 'id,title,price,durationInHours');
    
    if (plans.isNotEmpty) {
      print('✅ Found ${plans.length} consultation plans:');
      for (final plan in plans) {
        print('  • ${plan['title']} - ₹${plan['price']} (${plan['durationInHours']}h)');
      }
    } else {
      print('ℹ️ No consultation plans found or table does not exist');
    }
  }
  
  Future<void> runAllChecks() async {
    print('🚀 Starting Database Verification...');
    print('=' * 50);
    
    await checkUsers();
    await checkConsultantProfiles();
    await checkDomains();
    await checkConsultationPlans();
    
    print('\n${'=' * 50}');
    print('✨ Database verification complete!');
  }
}

Future<void> main() async {
  final checker = SimpleDBChecker();
  
  try {
    await checker.initialize();
    await checker.runAllChecks();
  } catch (e) {
    print('❌ Failed to run database checks: $e');
  }
}