import 'package:flutter/material.dart';
import '../widgets/expert_card.dart';
import '../widgets/filter_chips.dart';

class ExploreExpertsScreen extends StatefulWidget {
  const ExploreExpertsScreen({super.key});

  @override
  State<ExploreExpertsScreen> createState() => _ExploreExpertsScreenState();
}

class _ExploreExpertsScreenState extends State<ExploreExpertsScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _selectedFilter = 'All Experts';
  bool _isLoading = false;
  
  final List<String> _filterOptions = [
    'Featured Experts',
    'All Experts',
    'Technology',
    'Business',
    'Healthcare',
    'Education',
    'Finance',
  ];

  final List<Map<String, dynamic>> _mockExperts = [
    {
      'id': '1',
      'name': 'Dr. Sarah Chen',
      'specialization': 'AI & Machine Learning',
      'description': 'Expert in deep learning and neural networks with 10+ years of industry experience.',
      'rating': 4.9,
      'reviewCount': 127,
      'hourlyRate': 85,
      'experience': 12,
      'imageUrl': 'https://images.unsplash.com/photo-1494790108755-2616b6c965b5?w=400',
      'domains': ['Technology', 'AI'],
      'isAvailable': true,
    },
    {
      'id': '2',
      'name': 'James Wilson',
      'specialization': 'Digital Marketing Strategy',
      'description': 'Transform your business with proven digital marketing strategies and growth hacking.',
      'rating': 4.8,
      'reviewCount': 89,
      'hourlyRate': 65,
      'experience': 8,
      'imageUrl': 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=400',
      'domains': ['Business', 'Marketing'],
      'isAvailable': true,
    },
    {
      'id': '3',
      'name': 'Dr. Emily Rodriguez',
      'specialization': 'Mental Health & Wellness',
      'description': 'Licensed therapist specializing in anxiety, depression, and stress management.',
      'rating': 5.0,
      'reviewCount': 203,
      'hourlyRate': 95,
      'experience': 15,
      'imageUrl': 'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?w=400',
      'domains': ['Healthcare', 'Psychology'],
      'isAvailable': false,
    },
    {
      'id': '4',
      'name': 'Michael Zhang',
      'specialization': 'Full-Stack Development',
      'description': 'Senior developer with expertise in React, Node.js, and cloud architecture.',
      'rating': 4.7,
      'reviewCount': 156,
      'hourlyRate': 75,
      'experience': 10,
      'imageUrl': 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400',
      'domains': ['Technology', 'Development'],
      'isAvailable': true,
    },
  ];

  List<Map<String, dynamic>> get _filteredExperts {
    var filtered = _mockExperts.where((expert) {
      if (_selectedFilter == 'All Experts') return true;
      if (_selectedFilter == 'Featured Experts') return expert['rating'] >= 4.8;
      return (expert['domains'] as List).contains(_selectedFilter);
    }).toList();

    if (_searchController.text.isNotEmpty) {
      final query = _searchController.text.toLowerCase();
      filtered = filtered.where((expert) {
        return expert['name'].toString().toLowerCase().contains(query) ||
               expert['specialization'].toString().toLowerCase().contains(query);
      }).toList();
    }

    return filtered;
  }

  void _showSortFilter() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Sort & Filter',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildSortOption('Rating (Highest first)'),
            _buildSortOption('Experience (Most experienced)'),
            _buildSortOption('Price (Lowest to highest)'),
            _buildSortOption('Availability (Available now)'),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Apply Filters'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSortOption(String title) {
    return ListTile(
      title: Text(title),
      trailing: Radio<String>(
        value: title,
        groupValue: null,
        onChanged: (value) {},
      ),
      onTap: () {},
      contentPadding: EdgeInsets.zero,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Explore Experts',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() => _isLoading = true);
          await Future.delayed(const Duration(seconds: 1));
          setState(() => _isLoading = false);
        },
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: _searchController,
                      onChanged: (value) => setState(() {}),
                      decoration: const InputDecoration(
                        hintText: 'Search experts',
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  FilterChips(
                    options: _filterOptions,
                    selectedOption: _selectedFilter,
                    onSelected: (option) => setState(() => _selectedFilter = option),
                  ),
                ],
              ),
            ),
            Expanded(
              child: _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : _filteredExperts.isEmpty
                      ? _buildEmptyState()
                      : ListView.builder(
                          padding: const EdgeInsets.all(16),
                          itemCount: _filteredExperts.length,
                          itemBuilder: (context, index) {
                            final expert = _filteredExperts[index];
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ExpertCard(expert: expert),
                            );
                          },
                        ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showSortFilter,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 4,
        icon: const Icon(Icons.tune),
        label: const Text('Sort & Filter'),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search_off,
            size: 64,
            color: Colors.grey[400],
          ),
          const SizedBox(height: 16),
          Text(
            'No experts found',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Try adjusting your search or filters',
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}