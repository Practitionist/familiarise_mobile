import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../widgets/consultant_card.dart';
import '../providers/consultant_provider.dart';
import '../models/consultant_profile.dart';
import '../models/domain.dart';

class ExploreExpertsScreen extends ConsumerStatefulWidget {
  const ExploreExpertsScreen({super.key});

  @override
  ConsumerState<ExploreExpertsScreen> createState() => _ExploreExpertsScreenState();
}

class _ExploreExpertsScreenState extends ConsumerState<ExploreExpertsScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _selectedDomain = 'All';
  String _sortBy = 'rating';

  @override
  Widget build(BuildContext context) {
    final consultantsAsync = _searchController.text.isNotEmpty 
        ? ref.watch(searchConsultantsProvider(_searchController.text))
        : ref.watch(consultantsProvider);
    final domainsAsync = ref.watch(domainsProvider);

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
          onPressed: () => context.pop(),
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
          ref.invalidate(consultantsProvider);
          ref.invalidate(domainsProvider);
        },
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: _searchController,
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: const InputDecoration(
                        hintText: 'Search experts by name or specialization',
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
                  // Domain filter chips
                  SizedBox(
                    height: 40,
                    child: domainsAsync.when(
                      data: (domains) => ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildFilterChip('All', _selectedDomain == 'All'),
                          const SizedBox(width: 8),
                          ...domains.map((domain) => 
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: _buildFilterChip(
                                domain.name, 
                                _selectedDomain == domain.name,
                                onTap: () => setState(() => _selectedDomain = domain.name),
                              ),
                            ),
                          ),
                        ],
                      ),
                      loading: () => const Center(child: CircularProgressIndicator()),
                      error: (error, _) => Text('Error: $error'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: consultantsAsync.when(
                data: (consultants) {
                  final filteredConsultants = _getFilteredConsultants(consultants);
                  if (filteredConsultants.isEmpty) {
                    return _buildEmptyState();
                  }
                  return ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: filteredConsultants.length,
                    itemBuilder: (context, index) {
                      final consultant = filteredConsultants[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: _buildConsultantCard(consultant),
                      );
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stackTrace) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.error_outline, size: 64, color: Colors.red[300]),
                      const SizedBox(height: 16),
                      Text(
                        'Failed to load experts',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Error: $error',
                        style: TextStyle(color: Colors.grey[500]),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          ref.invalidate(consultantsProvider);
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
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

  List<ConsultantProfile> _getFilteredConsultants(List<ConsultantProfile> consultants) {
    var filtered = consultants;

    // Filter by domain
    if (_selectedDomain != 'All') {
      filtered = filtered.where((c) => 
        (c.domainName ?? '').toLowerCase() == _selectedDomain.toLowerCase()
      ).toList();
    }

    // Sort consultants
    switch (_sortBy) {
      case 'rating':
        filtered.sort((a, b) => (b.rating).compareTo(a.rating));
        break;
      case 'experience':
        filtered.sort((a, b) => (b.experience ?? 0).compareTo(a.experience ?? 0));
        break;
      case 'name':
        filtered.sort((a, b) => (a.name ?? '').compareTo(b.name ?? ''));
        break;
    }

    return filtered;
  }

  Widget _buildFilterChip(String label, bool isSelected, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap ?? () => setState(() => _selectedDomain = label),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF3B82F6) : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? const Color(0xFF3B82F6) : Colors.grey[300]!,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey[700],
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildConsultantCard(ConsultantProfile consultant) {
    return GestureDetector(
      onTap: () => context.push('/consultant/${consultant.id}'),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Profile image
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
                               image: consultant.image != null
                   ? DecorationImage(
                       image: NetworkImage(consultant.image!),
                       fit: BoxFit.cover,
                     )
                   : null,
             ),
             child: consultant.image == null
                 ? Icon(Icons.person, color: Colors.grey[400], size: 40)
                 : null,
            ),
            const SizedBox(width: 16),
            // Consultant info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                                     Text(
                     consultant.name ?? 'Unknown',
                     style: const TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.bold,
                       color: Colors.black,
                     ),
                   ),
                  const SizedBox(height: 4),
                  Text(
                    consultant.specialization ?? 'General Consultation',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 4),
                                     Text(
                     consultant.domainName ?? 'Healthcare',
                     style: const TextStyle(
                       fontSize: 12,
                       color: Color(0xFF3B82F6),
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        (consultant.rating ?? 0).toStringAsFixed(1),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Icon(Icons.work_outline, color: Colors.grey, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        '${consultant.experience ?? 0} years',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Action button
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFF3B82F6).withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Text(
                'View',
                style: TextStyle(
                  color: Color(0xFF3B82F6),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
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
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _searchController.clear();
                _selectedDomain = 'All';
              });
            },
            child: const Text('Clear Filters'),
          ),
        ],
      ),
    );
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
            const Text(
              'Sort by',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            _buildSortOption('Rating (Highest first)', 'rating'),
            _buildSortOption('Experience (Most experienced)', 'experience'),
            _buildSortOption('Name (A-Z)', 'name'),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3B82F6),
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

  Widget _buildSortOption(String title, String value) {
    return ListTile(
      title: Text(title),
      trailing: Radio<String>(
        value: value,
        groupValue: _sortBy,
        onChanged: (newValue) {
          setState(() => _sortBy = newValue!);
        },
      ),
      onTap: () {
        setState(() => _sortBy = value);
      },
      contentPadding: EdgeInsets.zero,
    );
  }
}