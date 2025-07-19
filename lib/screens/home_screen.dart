import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../providers/app_state_provider.dart';
import '../widgets/domain_selector.dart';
import '../widgets/consultant_card.dart';
import '../models/consultant_profile.dart';
import '../models/domain.dart';
import '../services/content_service.dart';
import '../services/prisma_service.dart';
import '../services/user_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ContentService _contentService = ContentService();
  final UserService _userService = UserService();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadRealData();
    });
  }

  Future<void> _loadRealData() async {
    if (_isLoading) return;
    
    setState(() => _isLoading = true);
    final provider = Provider.of<AppStateProvider>(context, listen: false);
    
    try {
      // Test Prisma service first
      await _testPrismaService();
      
      // Load domains
      final domainsData = await _contentService.getDomains();
      final domains = domainsData.map((domainData) => Domain(
        id: domainData['id'],
        name: domainData['name'],
        createdAt: domainData['createdAt'] != null ? DateTime.parse(domainData['createdAt']) : DateTime.now(),
        updatedAt: domainData['updatedAt'] != null ? DateTime.parse(domainData['updatedAt']) : DateTime.now(),
        consultantCount: 0, // TODO: Calculate from API
      )).toList();
      
      // Load featured consultants (first 5)
      final consultantsResponse = await _userService.getConsultants(
        limit: 5,
        sort: 'rating',
      );
      
      final data = consultantsResponse['data'] as List? ?? [];
      final consultants = data.map((consultantData) => ConsultantProfile(
          id: consultantData['id'],
          description: consultantData['description'] ?? '',
          qualifications: consultantData['qualifications'] ?? '',
          specialization: consultantData['specialization'] ?? '',
          experience: (consultantData['experience'] ?? 0).toDouble(),
          rating: (consultantData['rating'] ?? 0).toDouble(),
          domainId: consultantData['domainId'] ?? '',
          userId: consultantData['userId'] ?? '',
          createdAt: consultantData['createdAt'] != null ? DateTime.parse(consultantData['createdAt']) : DateTime.now(),
          updatedAt: consultantData['updatedAt'] != null ? DateTime.parse(consultantData['updatedAt']) : DateTime.now(),
          name: consultantData['id'] ?? 'Unknown',
          image: '',
          domainName: consultantData['domainId'] ?? '',
          subDomains: [],
          tags: [],
          reviewCount: 0,
        )).toList();
      
      provider.setDomains(domains);
      provider.setConsultants(consultants);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading data: $e')),
        );
      }
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _testPrismaService() async {
    if (kIsWeb) {
      print('Skipping Prisma test on web platform - not supported');
      return;
    }
    
    try {
      print('Testing Prisma service...');
      final domains = await PrismaService.getDomains();
      print('Prisma domains count: ${domains.length}');
      
      final consultants = await PrismaService.getConsultants(limit: 5);
      print('Prisma consultants count: ${consultants['data'].length}');
    } catch (e) {
      print('Prisma service test failed: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 24),
              _buildSearchBar(),
              const SizedBox(height: 24),
              _buildConsultationSelection(),
              const SizedBox(height: 16),
              const DomainSelector(),
              const SizedBox(height: 24),
              Expanded(
                child: Column(
                  children: [
                    Expanded(child: _buildConsultantsList()),
                    const SizedBox(height: 16),
                    _buildViewAllButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find Your Expert',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Connect with top consultants',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.grey[600],
                fontSize: 16,
              ),
            ),
          ],
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
          child: const Icon(
            Icons.person,
            color: Colors.grey,
            size: 30,
          ),
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return GestureDetector(
      onTap: () => context.go('/explore-experts'),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            const Icon(Icons.search, color: Colors.grey),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                'Search consultants, skills...',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.tune,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConsultationSelection() {
    return Text(
      'Book a consultation',
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }

  Widget _buildConsultantsList() {
    return Consumer<AppStateProvider>(
      builder: (context, provider, child) {
        final consultants = provider.filteredConsultants;
        
        if (_isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        
        if (consultants.isEmpty) {
          return const Center(
            child: Text('No consultants available'),
          );
        }

        return ListView.builder(
          itemCount: consultants.length,
          itemBuilder: (context, index) {
            final consultant = consultants[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ConsultantCard(
                consultant: consultant,
                onTap: () {
                  context.go('/consultant/${consultant.id}');
                },
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildViewAllButton() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: OutlinedButton(
        onPressed: () => context.go('/explore-experts'),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          side: BorderSide(color: Theme.of(context).primaryColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          'View All Experts',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigation() {
    return Container(
      height: 80,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(Icons.home, true),
          _buildNavItem(Icons.calendar_today, false),
          _buildNavItem(Icons.chat_bubble_outline, false),
          _buildNavItem(Icons.person_outline, false),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, bool isActive) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: isActive ? Colors.black : Colors.white,
        size: 24,
      ),
    );
  }
}