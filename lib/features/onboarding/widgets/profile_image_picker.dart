import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/// A widget for picking and displaying a profile image
class ProfileImagePicker extends StatefulWidget {
  const ProfileImagePicker({
    super.key,
    this.currentImageUrl,
    this.currentImageBytes,
    required this.onImagePicked,
    this.size = 120,
    this.isLoading = false,
  });

  final String? currentImageUrl;
  final Uint8List? currentImageBytes;
  final Future<void> Function(Uint8List bytes, String fileName, String mimeType)
      onImagePicked;
  final double size;
  final bool isLoading;

  @override
  State<ProfileImagePicker> createState() => _ProfileImagePickerState();
}

class _ProfileImagePickerState extends State<ProfileImagePicker> {
  final ImagePicker _picker = ImagePicker();
  bool _isPickingImage = false;

  Future<void> _pickImage(ImageSource source) async {
    if (_isPickingImage) return;

    setState(() => _isPickingImage = true);

    try {
      final XFile? image = await _picker.pickImage(
        source: source,
        maxWidth: 800,
        maxHeight: 800,
        imageQuality: 85,
      );

      if (image != null) {
        final bytes = await image.readAsBytes();
        final fileName = image.name;
        final mimeType = _getMimeType(fileName);

        await widget.onImagePicked(bytes, fileName, mimeType);
      }
    } finally {
      if (mounted) {
        setState(() => _isPickingImage = false);
      }
    }
  }

  String _getMimeType(String fileName) {
    final extension = fileName.split('.').last.toLowerCase();
    switch (extension) {
      case 'jpg':
      case 'jpeg':
        return 'image/jpeg';
      case 'png':
        return 'image/png';
      case 'gif':
        return 'image/gif';
      case 'webp':
        return 'image/webp';
      default:
        return 'image/jpeg';
    }
  }

  void _showImageSourceDialog() {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt_outlined),
              title: const Text('Take a photo'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.camera);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library_outlined),
              title: const Text('Choose from gallery'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isLoading = widget.isLoading || _isPickingImage;

    Widget imageWidget;

    if (widget.currentImageBytes != null) {
      imageWidget = Image.memory(
        widget.currentImageBytes!,
        fit: BoxFit.cover,
        width: widget.size,
        height: widget.size,
      );
    } else if (widget.currentImageUrl != null &&
        widget.currentImageUrl!.isNotEmpty) {
      imageWidget = Image.network(
        widget.currentImageUrl!,
        fit: BoxFit.cover,
        width: widget.size,
        height: widget.size,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
        errorBuilder: (context, error, stackTrace) => Icon(
          Icons.person_outline,
          size: widget.size * 0.5,
          color: colorScheme.onSurfaceVariant,
        ),
      );
    } else {
      imageWidget = Icon(
        Icons.person_outline,
        size: widget.size * 0.5,
        color: colorScheme.onSurfaceVariant,
      );
    }

    return GestureDetector(
      onTap: isLoading ? null : _showImageSourceDialog,
      child: Stack(
        children: [
          Container(
            width: widget.size,
            height: widget.size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorScheme.surfaceContainerHighest,
              border: Border.all(
                color: colorScheme.outline,
                width: 2,
              ),
            ),
            clipBehavior: Clip.antiAlias,
            child: ClipOval(child: imageWidget),
          ),
          // Edit badge
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: colorScheme.primary,
                shape: BoxShape.circle,
                border: Border.all(
                  color: colorScheme.surface,
                  width: 2,
                ),
              ),
              child: isLoading
                  ? SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          colorScheme.onPrimary,
                        ),
                      ),
                    )
                  : Icon(
                      Icons.camera_alt,
                      size: 16,
                      color: colorScheme.onPrimary,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
