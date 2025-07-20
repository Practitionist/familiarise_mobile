import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../providers/auth/auth_state_provider.dart';

class VideoCallScreen extends ConsumerStatefulWidget {
  final String? consultantId;
  final String? appointmentId;

  const VideoCallScreen({
    super.key,
    this.consultantId,
    this.appointmentId,
  });

  @override
  ConsumerState<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends ConsumerState<VideoCallScreen> {
  bool _isMuted = false;
  bool _isVideoOff = false;
  bool _isSpeakerOn = true;
  bool _isCallStarted = true;

  @override
  Widget build(BuildContext context) {
    final currentUser = ref.watch(currentUserProvider);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            // Main video feed (consultant)
            _buildMainVideoFeed(),
            
            // Small video feed (user)
            Positioned(
              top: 20,
              right: 20,
              child: _buildSmallVideoFeed(currentUser),
            ),
            
            // Back button
            Positioned(
              top: 20,
              left: 20,
              child: _buildBackButton(),
            ),
            
            // Call controls at bottom
            Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: _buildCallControls(),
            ),
            
            // Call info overlay
            if (_isCallStarted)
              Positioned(
                top: 80,
                left: 20,
                child: _buildCallInfo(),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainVideoFeed() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF2C3E50),
            Color(0xFF3498DB),
          ],
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Placeholder for video feed
          Container(
            width: double.infinity,
            height: double.infinity,
            child: CachedNetworkImage(
              imageUrl: 'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?w=800',
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                color: Colors.grey[800],
                child: const Center(
                  child: CircularProgressIndicator(color: Colors.white),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                color: Colors.grey[800],
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 100,
                ),
              ),
            ),
          ),
          
          // Doctor info overlay
          Positioned(
            bottom: 100,
            left: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Dr. Sarah Chen',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSmallVideoFeed(dynamic user) {
    return Container(
      width: 120,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (_isVideoOff)
              Container(
                color: Colors.grey[800],
                child: const Icon(
                  Icons.videocam_off,
                  color: Colors.white,
                  size: 40,
                ),
              )
            else
              CachedNetworkImage(
                imageUrl: user?.image ?? 'https://images.unsplash.com/photo-1494790108755-2616c6db1a14?w=400',
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  color: Colors.grey[800],
                  child: const Icon(Icons.person, color: Colors.white),
                ),
                errorWidget: (context, url, error) => Container(
                  color: Colors.grey[800],
                  child: const Icon(Icons.person, color: Colors.white),
                ),
              ),
            
            if (_isMuted)
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.mic_off,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackButton() {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => context.pop(),
      ),
    );
  }

  Widget _buildCallInfo() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          const Text(
            'Call in progress • 12:34',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCallControls() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.8),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildControlButton(
            icon: _isMuted ? Icons.mic_off : Icons.mic,
            isActive: !_isMuted,
            onTap: () {
              setState(() {
                _isMuted = !_isMuted;
              });
            },
          ),
          _buildControlButton(
            icon: _isVideoOff ? Icons.videocam_off : Icons.videocam,
            isActive: !_isVideoOff,
            onTap: () {
              setState(() {
                _isVideoOff = !_isVideoOff;
              });
            },
          ),
          _buildControlButton(
            icon: _isSpeakerOn ? Icons.volume_up : Icons.volume_off,
            isActive: _isSpeakerOn,
            onTap: () {
              setState(() {
                _isSpeakerOn = !_isSpeakerOn;
              });
            },
          ),
          _buildControlButton(
            icon: Icons.call_end,
            isActive: false,
            backgroundColor: Colors.red,
            onTap: () {
              _endCall();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    required bool isActive,
    Color? backgroundColor,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: backgroundColor ?? (isActive ? Colors.white.withOpacity(0.2) : Colors.white.withOpacity(0.1)),
          shape: BoxShape.circle,
          border: Border.all(
            color: isActive ? Colors.white.withOpacity(0.3) : Colors.transparent,
            width: 2,
          ),
        ),
        child: Icon(
          icon,
          color: backgroundColor != null ? Colors.white : (isActive ? Colors.white : Colors.white.withOpacity(0.6)),
          size: 24,
        ),
      ),
    );
  }

  void _endCall() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('End Call'),
          content: const Text('Are you sure you want to end this call?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                context.pop(); // Return to previous screen
              },
              child: const Text('End Call', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
} 