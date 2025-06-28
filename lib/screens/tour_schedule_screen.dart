import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/itinerary.dart';

class TourScheduleScreen extends StatefulWidget {
  final String tourId;

  const TourScheduleScreen({
    super.key,
    required this.tourId,
  });

  @override
  State<TourScheduleScreen> createState() => _TourScheduleScreenState();
}

class _TourScheduleScreenState extends State<TourScheduleScreen> {
  String selectedTab = 'Tour schedule';
  List<Itinerary> itinerary = [];

  @override
  void initState() {
    super.initState();
    _loadMockData();
  }

  void _loadMockData() {
    setState(() {
      itinerary = [
        Itinerary(
          id: '1',
          day: 1,
          title: 'Arrival in Rio de Janeiro and transfer to your hotel',
          description: 'Welcome to Brazil! Upon arrival at the airport, you will be transferred to your hotel.',
          activities: ['Airport pickup', 'Hotel check-in', 'Welcome orientation'],
          timeSlot: 'Morning',
          tourId: widget.tourId,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Itinerary(
          id: '2',
          day: 1,
          title: 'Free time to relax or explore the nearby area',
          description: 'Take time to settle in and explore the local neighborhood.',
          activities: ['Free time', 'Local exploration', 'Rest'],
          timeSlot: 'Afternoon',
          tourId: widget.tourId,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Itinerary(
          id: '3',
          day: 1,
          title: 'Welcome dinner at a traditional Brazilian restaurant',
          description: 'Experience authentic Brazilian cuisine with your group.',
          activities: ['Traditional dinner', 'Group meeting', 'Local cuisine'],
          timeSlot: 'Evening',
          tourId: widget.tourId,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Itinerary(
          id: '4',
          day: 2,
          title: 'Rio de Janeiro Highlights',
          description: 'Explore the famous landmarks of Rio including Christ the Redeemer.',
          activities: ['Christ the Redeemer', 'Sugarloaf Mountain', 'City tour'],
          timeSlot: 'Morning',
          tourId: widget.tourId,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          _buildHeader(),
          _buildTabSelector(),
          Expanded(
            child: _buildScheduleContent(),
          ),
          _buildBookButton(),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: () => context.pop(),
        child: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      title: const Text(
        'Iconic Brazil',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Wed, Oct 21 - Sun, Nov 1',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            '8-Days Brazil Adventure',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabSelector() {
    final tabs = ['Tour schedule', 'Accommodation', 'Booking details'];
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: tabs.map((tab) {
          final isSelected = selectedTab == tab;
          return Expanded(
            child: GestureDetector(
              onTap: () => setState(() => selectedTab = tab),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.black : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  tab,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.grey,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildScheduleContent() {
    if (selectedTab != 'Tour schedule') {
      return Center(
        child: Text(
          '$selectedTab content coming soon',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      );
    }

    final groupedItinerary = <int, List<Itinerary>>{};
    for (final item in itinerary) {
      groupedItinerary.putIfAbsent(item.day, () => []).add(item);
    }

    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: groupedItinerary.length,
      itemBuilder: (context, index) {
        final day = groupedItinerary.keys.elementAt(index);
        final dayItinerary = groupedItinerary[day]!;
        
        return _buildDaySection(day, dayItinerary);
      },
    );
  }

  Widget _buildDaySection(int day, List<Itinerary> dayItinerary) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (day > 1) const SizedBox(height: 24),
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Day $day',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                dayItinerary.first.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.keyboard_arrow_down,
                size: 24,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        ...dayItinerary.map((item) => _buildTimeSlotItem(item)).toList(),
      ],
    );
  }

  Widget _buildTimeSlotItem(Itinerary item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 60,
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              item.timeSlot ?? '',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (item.description != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    item.description!,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                      height: 1.4,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBookButton() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: double.infinity,
        height: 56,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: const Text(
            'Book a tour',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}