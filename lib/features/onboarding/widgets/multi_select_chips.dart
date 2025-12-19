import 'package:flutter/material.dart';

/// A widget for selecting multiple items as chips
class MultiSelectChips<T> extends StatelessWidget {
  const MultiSelectChips({
    super.key,
    required this.items,
    required this.selectedItems,
    required this.onChanged,
    required this.labelBuilder,
    this.label,
    this.hint,
    this.maxSelection,
  });

  final List<T> items;
  final List<T> selectedItems;
  final ValueChanged<List<T>> onChanged;
  final String Function(T item) labelBuilder;
  final String? label;
  final String? hint;
  final int? maxSelection;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: theme.textTheme.labelLarge,
          ),
          const SizedBox(height: 6),
        ],
        if (hint != null && selectedItems.isEmpty) ...[
          Text(
            hint!,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 8),
        ],
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: items.map((item) {
            final isSelected = selectedItems.contains(item);
            final canSelect = maxSelection == null ||
                selectedItems.length < maxSelection! ||
                isSelected;

            return FilterChip(
              label: Text(labelBuilder(item)),
              selected: isSelected,
              onSelected: canSelect
                  ? (selected) {
                      final newSelection = List<T>.from(selectedItems);
                      if (selected) {
                        newSelection.add(item);
                      } else {
                        newSelection.remove(item);
                      }
                      onChanged(newSelection);
                    }
                  : null,
            );
          }).toList(),
        ),
      ],
    );
  }
}

/// A widget for adding custom tags with chips
class TagInput extends StatefulWidget {
  const TagInput({
    super.key,
    required this.tags,
    required this.onChanged,
    this.label,
    this.hint,
    this.maxTags,
    this.suggestions,
  });

  final List<String> tags;
  final ValueChanged<List<String>> onChanged;
  final String? label;
  final String? hint;
  final int? maxTags;
  final List<String>? suggestions;

  @override
  State<TagInput> createState() => _TagInputState();
}

class _TagInputState extends State<TagInput> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool _showSuggestions = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _showSuggestions = _focusNode.hasFocus &&
            widget.suggestions != null &&
            widget.suggestions!.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _addTag(String tag) {
    final trimmed = tag.trim();
    if (trimmed.isEmpty) return;
    // Case-insensitive duplicate check to prevent "React" and "react" as separate tags
    if (widget.tags.any((t) => t.toLowerCase() == trimmed.toLowerCase())) return;
    if (widget.maxTags != null && widget.tags.length >= widget.maxTags!) return;

    widget.onChanged([...widget.tags, trimmed]);
    _controller.clear();
  }

  void _removeTag(String tag) {
    widget.onChanged(widget.tags.where((t) => t != tag).toList());
  }

  List<String> get _filteredSuggestions {
    if (widget.suggestions == null) return [];
    final query = _controller.text.toLowerCase();
    return widget.suggestions!
        .where((s) =>
            s.toLowerCase().contains(query) &&
            !widget.tags.any((t) => t.toLowerCase() == s.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final canAddMore =
        widget.maxTags == null || widget.tags.length < widget.maxTags!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: theme.textTheme.labelLarge,
          ),
          const SizedBox(height: 6),
        ],
        // Display existing tags - always visible with clear styling
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: widget.tags.isNotEmpty
                  ? colorScheme.primary.withValues(alpha: 0.3)
                  : colorScheme.outline.withValues(alpha: 0.3),
            ),
          ),
          child: widget.tags.isEmpty
              ? Text(
                  'No skills selected yet',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontStyle: FontStyle.italic,
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selected (${widget.tags.length}${widget.maxTags != null ? '/${widget.maxTags}' : ''}):',
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: widget.tags.map((tag) {
                        return Chip(
                          label: Text(tag),
                          onDeleted: () => _removeTag(tag),
                          deleteIcon: const Icon(Icons.close, size: 18),
                          backgroundColor: colorScheme.primaryContainer,
                          labelStyle: TextStyle(color: colorScheme.onPrimaryContainer),
                        );
                      }).toList(),
                    ),
                  ],
                ),
        ),
        const SizedBox(height: 12),
        // Input field
        if (canAddMore) ...[
          TextField(
            controller: _controller,
            focusNode: _focusNode,
            decoration: InputDecoration(
              hintText: widget.hint ?? 'Add a tag...',
              suffixIcon: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () => _addTag(_controller.text),
              ),
            ),
            onSubmitted: _addTag,
          ),
          // Suggestions - shown when focused or when there are filtered suggestions
          if (_showSuggestions && _filteredSuggestions.isNotEmpty) ...[
            const SizedBox(height: 8),
            Container(
              constraints: const BoxConstraints(maxHeight: 150),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest,
                border: Border.all(color: colorScheme.outline),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 4),
                itemCount: _filteredSuggestions.length,
                separatorBuilder: (_, __) => Divider(height: 1, color: colorScheme.outlineVariant),
                itemBuilder: (context, index) {
                  final suggestion = _filteredSuggestions[index];
                  // Use GestureDetector with onTapDown for immediate response
                  return GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTapDown: (_) {
                      // Add tag immediately on tap down, before focus changes
                      _addTag(suggestion);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Text(
                        suggestion,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ] else ...[
          Text(
            'Maximum ${widget.maxTags} tags allowed',
            style: theme.textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ],
    );
  }
}
