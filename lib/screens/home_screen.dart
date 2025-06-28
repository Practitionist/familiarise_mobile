import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../providers/app_state_provider.dart';
import '../widgets/domain_selector.dart';
import '../widgets/consultant_card.dart';
import '../models/consultant_profile.dart';
import '../models/domain.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadMockData();
    });
  }

  void _loadMockData() {
    final provider = Provider.of<AppStateProvider>(context, listen: false);
    
    final mockDomains = [
      Domain(
        id: '1',
        name: 'Technology',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        consultantCount: 127,
      ),
      Domain(
        id: '2',
        name: 'Business',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        consultantCount: 89,
      ),
      Domain(
        id: '3',
        name: 'Health & Wellness',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        consultantCount: 64,
      ),
      Domain(
        id: '4',
        name: 'Education',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        consultantCount: 43,
      ),
    ];

    final mockConsultants = [
      ConsultantProfile(
        id: '1',
        description: 'Expert software architect with 10+ years of experience in scalable systems design and cloud architecture.',
        qualifications: 'MS Computer Science, AWS Certified Solutions Architect',
        specialization: 'Cloud Architecture & System Design',
        experience: 10.5,
        rating: 4.9,
        domainId: '1',
        userId: 'user1',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        name: 'Dr. Sarah Chen',
        image: 'https://images.unsplash.com/photo-1494790108755-2616b612b786?w=400',
        domainName: 'Technology',
        subDomains: ['Software Architecture', 'Cloud Computing'],
        tags: ['AWS', 'System Design', 'Microservices'],
        reviewCount: 143,
      ),
      ConsultantProfile(
        id: '2',
        description: 'Business strategy consultant helping startups and enterprises optimize their operations and growth strategies.',
        qualifications: 'MBA Harvard Business School, Certified Management Consultant',
        specialization: 'Business Strategy & Operations',
        experience: 8.0,
        rating: 4.8,
        domainId: '2',
        userId: 'user2',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        name: 'Michael Rodriguez',
        image: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=400',
        domainName: 'Business',
        subDomains: ['Strategy', 'Operations'],
        tags: ['Growth', 'Operations', 'Strategy'],
        reviewCount: 87,
      ),
    ];
    
    provider.setDomains(mockDomains);
    provider.setConsultants(mockConsultants);
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
        
        if (consultants.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(),
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