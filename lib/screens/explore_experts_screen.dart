import 'package:flutter/material.dart';
import '../widgets/expert_card.dart';
import '../widgets/filter_chips.dart';
import '../services/user_service.dart';
import '../services/content_service.dart';

class ExploreExpertsScreen extends StatefulWidget {
  const ExploreExpertsScreen({super.key});

  @override
  State<ExploreExpertsScreen> createState() => _ExploreExpertsScreenState();
}

class _ExploreExpertsScreenState extends State<ExploreExpertsScreen> {
  final TextEditingController _searchController = TextEditingController();
  final UserService _userService = UserService();
  final ContentService _contentService = ContentService();
  
  String _selectedFilter = 'All Experts';
  bool _isLoading = false;
  List<Map<String, dynamic>> _experts = [];
  List<Map<String, dynamic>> _domains = [];
  List<String> _filterOptions = ['Featured Experts', 'All Experts'];
  
  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  Future<void> _initializeData() async {
    await _loadDomains();
    await _loadExperts();
  }

  Future<void> _loadDomains() async {
    try {
      final domains = await _contentService.getDomains();
      setState(() {
        _domains = domains;
        _filterOptions = ['Featured Experts', 'All Experts'];
        _filterOptions.addAll(domains.map((d) => d['name'].toString()));
      });
    } catch (e) {
      // Error loading domains - continue with defaults
    }
  }

  Future<void> _loadExperts({bool reset = false}) async {
    if (_isLoading) return;
    
    setState(() => _isLoading = true);
    
    try {
      if (reset) {
        _currentPage = 1;
        _experts.clear();
      }
      
      final domainId = _selectedFilter != 'All Experts' && _selectedFilter != 'Featured Experts'
          ? _domains.firstWhere((d) => d['name'] == _selectedFilter, orElse: () => {})['id']
          : null;
      
      final response = await _userService.getConsultants(
        domain: domainId,
        search: _searchController.text.isNotEmpty ? _searchController.text : null,
        page: _currentPage,
        limit: 10,
      );
      
      if (response is Map<String, dynamic>) {
        final data = response['data'] as List? ?? [];
        
        setState(() {
          if (reset) {
            _experts = List<Map<String, dynamic>>.from(data);
          } else {
            _experts.addAll(List<Map<String, dynamic>>.from(data));
          }
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading experts: $e')),
        );
      }
    } finally {
      setState(() => _isLoading = false);
    }
  }

  List<Map<String, dynamic>> get _filteredExperts {
    if (_selectedFilter == 'Featured Experts') {
      return _experts.where((expert) => (expert['rating'] ?? 0) >= 4.8).toList();
    }
    return _experts;
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
          await _loadExperts(reset: true);
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
                      onChanged: (value) {
                        // Debounce search to avoid too many API calls
                        Future.delayed(const Duration(milliseconds: 500), () {
                          if (_searchController.text == value) {
                            _loadExperts(reset: true);
                          }
                        });
                      },
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
                    onSelected: (option) {
                      setState(() => _selectedFilter = option);
                      _loadExperts(reset: true);
                    },
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