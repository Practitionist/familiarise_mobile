import 'package:flutter/material.dart';

class DomainSelector extends StatelessWidget {
  const DomainSelector({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder domain selector for now
    final domains = ['Technology', 'Design', 'Business', 'Health', 'Education'];
    
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: domains.map((domain) {
          final isSelected = domain == 'Technology'; // Default selection
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {
                // TODO: Implement domain selection logic
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.black : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: isSelected ? Colors.black : Colors.grey[300]!,
                  ),
                ),
                child: Text(
                  domain,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.grey[600],
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}