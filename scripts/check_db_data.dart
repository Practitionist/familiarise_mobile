// ignore_for_file: avoid_print
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Database verification script using Dart and Supabase client
/// Run this to check your database structure and sample data
class DatabaseChecker {
  late SupabaseClient _client;

  Future<void> initialize() async {
    await dotenv.load(fileName: ".env");
    
    await Supabase.initialize(
      url: dotenv.env['SUPABASE_URL']!,
      anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
    );
    
    _client = Supabase.instance.client;
  }

  /// Check users table structure and sample data
  Future<void> checkUsers() async {
    print('\n🔍 Checking Users Table...');
    try {
      final response = await _client
          .from('users')
          .select('id, email, name, role, onlineStatus, onboardingCompleted')
          .limit(5);
      
      print('✅ Found ${response.length} users:');
      for (final user in response) {
        print('  • ${user['name'] ?? 'No name'} (${user['email']}) - Role: ${user['role']}');
      }
    } catch (e) {
      print('❌ Error checking users: $e');
    }
  }

  /// Check consultant profiles
  Future<void> checkConsultantProfiles() async {
    print('\n🔍 Checking Consultant Profiles...');
    try {
      final response = await _client
          .from('ConsultantProfile')
          .select('''
            id, description, specialization, experience, rating,
            users!inner(name, email)
          ''')
          .limit(3);
      
      print('✅ Found ${response.length} consultant profiles:');
      for (final consultant in response) {
        final user = consultant['users'];
        print('  • ${user['name']} - ${consultant['specialization']} (Rating: ${consultant['rating']})');
      }
    } catch (e) {
      print('❌ Error checking consultant profiles: $e');
    }
  }

  /// Check consultee profiles
  Future<void> checkConsulteeProfiles() async {
    print('\n🔍 Checking Consultee Profiles...');
    try {
      final response = await _client
          .from('ConsulteeProfile')
          .select('''
            id, education, occupation, aboutMe,
            users!inner(name, email)
          ''')
          .limit(3);
      
      print('✅ Found ${response.length} consultee profiles:');
      for (final consultee in response) {
        final user = consultee['users'];
        print('  • ${user['name']} - ${consultee['occupation'] ?? 'No occupation'} (Education: ${consultee['education'] ?? 'Not specified'})');
      }
    } catch (e) {
      print('❌ Error checking consultee profiles: $e');
    }
  }

  /// Check domains and subdomains
  Future<void> checkDomainsAndSubdomains() async {
    print('\n🔍 Checking Domains and SubDomains...');
    try {
      final domains = await _client
          .from('Domain')
          .select('id, name')
          .limit(5);
      
      print('✅ Found ${domains.length} domains:');
      for (final domain in domains) {
        final subdomains = await _client
            .from('SubDomain')
            .select('name')
            .eq('domainId', domain['id']);
        
        final subdomainNames = subdomains.map((sd) => sd['name']).join(', ');
        print('  • ${domain['name']} (Subdomains: ${subdomainNames.isEmpty ? 'None' : subdomainNames})');
      }
    } catch (e) {
      print('❌ Error checking domains: $e');
    }
  }

  /// Check OAuth accounts
  Future<void> checkOAuthAccounts() async {
    print('\n🔍 Checking OAuth Accounts...');
    try {
      final response = await _client
          .from('accounts')
          .select('type, provider, userId')
          .limit(5);
      
      if (response.isEmpty) {
        print('ℹ️ No OAuth accounts found yet (this is normal for new apps)');
      } else {
        print('✅ Found ${response.length} OAuth accounts:');
        for (final account in response) {
          print('  • Provider: ${account['provider']} (Type: ${account['type']})');
        }
      }
    } catch (e) {
      print('❌ Error checking OAuth accounts: $e');
    }
  }

  /// Check consultation plans
  Future<void> checkConsultationPlans() async {
    print('\n🔍 Checking Consultation Plans...');
    try {
      final response = await _client
          .from('ConsultationPlan')
          .select('id, title, price, durationInHours')
          .limit(3);
      
      print('✅ Found ${response.length} consultation plans:');
      for (final plan in response) {
        print('  • ${plan['title']} - ₹${plan['price']} (${plan['durationInHours']}h)');
      }
    } catch (e) {
      print('❌ Error checking consultation plans: $e');
    }
  }

  /// Run all checks
  Future<void> runAllChecks() async {
    print('🚀 Starting Database Verification...');
    print('=' * 50);
    
    await checkUsers();
    await checkConsultantProfiles();
    await checkConsulteeProfiles();
    await checkDomainsAndSubdomains();
    await checkConsultationPlans();
    await checkOAuthAccounts();
    
    print('\n${'=' * 50}');
    print('✨ Database verification complete!');
  }
}

/// Run this function to check your database
Future<void> main() async {
  final checker = DatabaseChecker();
  
  try {
    await checker.initialize();
    await checker.runAllChecks();
  } catch (e) {
    print('❌ Failed to run database checks: $e');
    print('\nMake sure your .env file has correct SUPABASE_URL and SUPABASE_ANON_KEY');
  }
}

/// Example usage in your Flutter app (for debugging)
class DatabaseDebugHelper {
  static Future<void> quickCheck() async {
    final checker = DatabaseChecker();
    await checker.initialize();
    await checker.checkUsers();
  }
  
  static Future<void> fullCheck() async {
    final checker = DatabaseChecker();
    await checker.initialize();
    await checker.runAllChecks();
  }
}