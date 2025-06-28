import 'package:flutter/material.dart';

class FilterChips extends StatelessWidget {
  final List<String> options;
  final String selectedOption;
  final Function(String) onSelected;

  const FilterChips({
    super.key,
    required this.options,
    required this.selectedOption,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: options.length,
        itemBuilder: (context, index) {
          final option = options[index];
          final isSelected = option == selectedOption;
          
          return Padding(
            padding: EdgeInsets.only(
              right: index < options.length - 1 ? 12 : 0,
            ),
            child: FilterChip(
              label: Text(
                option,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.grey[700],
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                  fontSize: 14,
                ),
              ),
              selected: isSelected,
              onSelected: (selected) {
                if (selected) {
                  onSelected(option);
                }
              },
              backgroundColor: Colors.grey[100],
              selectedColor: Theme.of(context).primaryColor,
              checkmarkColor: Colors.white,
              showCheckmark: false,
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
          );
        },
      ),
    );
  }
}