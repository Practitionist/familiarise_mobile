import 'package:flutter/material.dart';

/// A dropdown form field with consistent styling
class FormDropdown<T> extends StatelessWidget {
  const FormDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    this.label,
    this.hint,
    this.enabled = true,
    this.isRequired = false,
    this.validator,
    this.errorText,
  });

  final T? value;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?> onChanged;
  final String? label;
  final String? hint;
  final bool enabled;
  final bool isRequired;
  final String? Function(T?)? validator;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null) ...[
          Row(
            children: [
              Text(
                label!,
                style: theme.textTheme.labelLarge,
              ),
              if (isRequired) ...[
                const SizedBox(width: 4),
                Text(
                  '*',
                  style: TextStyle(
                    color: theme.colorScheme.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 6),
        ],
        DropdownButtonFormField<T>(
          initialValue: value,
          items: items,
          onChanged: enabled ? onChanged : null,
          hint: hint != null ? Text(hint!) : null,
          validator: validator,
          decoration: InputDecoration(
            errorText: errorText,
          ),
          isExpanded: true,
        ),
      ],
    );
  }
}

/// A searchable dropdown for large lists
class SearchableDropdown<T> extends StatefulWidget {
  const SearchableDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    required this.itemBuilder,
    required this.searchFilter,
    this.label,
    this.hint,
    this.isRequired = false,
  });

  final T? value;
  final List<T> items;
  final ValueChanged<T?> onChanged;
  final Widget Function(T item, bool isSelected) itemBuilder;
  final bool Function(T item, String query) searchFilter;
  final String? label;
  final String? hint;
  final bool isRequired;

  @override
  State<SearchableDropdown<T>> createState() => _SearchableDropdownState<T>();
}

class _SearchableDropdownState<T> extends State<SearchableDropdown<T>> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label != null) ...[
          Row(
            children: [
              Text(
                widget.label!,
                style: theme.textTheme.labelLarge,
              ),
              if (widget.isRequired) ...[
                const SizedBox(width: 4),
                Text(
                  '*',
                  style: TextStyle(
                    color: colorScheme.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 6),
        ],
        InkWell(
          onTap: () => _showSearchDialog(context),
          borderRadius: BorderRadius.circular(8),
          child: InputDecorator(
            decoration: InputDecoration(
              hintText: widget.hint,
              suffixIcon: const Icon(Icons.arrow_drop_down),
            ),
            child: widget.value != null
                ? widget.itemBuilder(widget.value as T, true)
                : Text(
                    widget.hint ?? 'Select',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
          ),
        ),
      ],
    );
  }

  Future<void> _showSearchDialog(BuildContext context) async {
    final result = await showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => _SearchableDropdownSheet<T>(
        items: widget.items,
        selectedValue: widget.value,
        itemBuilder: widget.itemBuilder,
        searchFilter: widget.searchFilter,
        hint: widget.hint,
      ),
    );

    if (result != null) {
      widget.onChanged(result);
    }
  }
}

class _SearchableDropdownSheet<T> extends StatefulWidget {
  const _SearchableDropdownSheet({
    required this.items,
    required this.selectedValue,
    required this.itemBuilder,
    required this.searchFilter,
    this.hint,
  });

  final List<T> items;
  final T? selectedValue;
  final Widget Function(T item, bool isSelected) itemBuilder;
  final bool Function(T item, String query) searchFilter;
  final String? hint;

  @override
  State<_SearchableDropdownSheet<T>> createState() =>
      _SearchableDropdownSheetState<T>();
}

class _SearchableDropdownSheetState<T>
    extends State<_SearchableDropdownSheet<T>> {
  late TextEditingController _searchController;
  List<T> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _filteredItems = widget.items;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterItems(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredItems = widget.items;
      } else {
        _filteredItems = widget.items
            .where((item) => widget.searchFilter(item, query))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.9,
      expand: false,
      builder: (context, scrollController) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _searchController,
                onChanged: _filterItems,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: _searchController.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _searchController.clear();
                            _filterItems('');
                          },
                        )
                      : null,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: _filteredItems.length,
                itemBuilder: (context, index) {
                  final item = _filteredItems[index];
                  final isSelected = item == widget.selectedValue;

                  return ListTile(
                    onTap: () => Navigator.pop(context, item),
                    selected: isSelected,
                    title: widget.itemBuilder(item, isSelected),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
