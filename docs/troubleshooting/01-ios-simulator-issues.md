# iOS Simulator Issues

This document covers platform-specific issues encountered when running the app on iOS Simulator.

## WebRTC / Stream Video SDK Crashes

### Problem

The app crashes immediately when navigating to the video meeting screen on iOS Simulator.

### Symptoms

```
Another exception was thrown: 'package:flutter/src/rendering/object.dart':
Failed assertion: line 5466 pos 14: '!semantics.parentDataDirty': is not true.

Lost connection to device.
Application finished.
```

The crash occurs in the Flutter rendering layer when Stream Video SDK attempts to initialize WebRTC components.

### Root Cause

WebRTC video rendering is not supported on iOS Simulator. The Stream Video SDK uses native WebRTC components that:

1. Require actual camera/microphone hardware
2. Use GPU acceleration not available in simulator
3. Initialize native rendering pipelines that fail on simulated devices

Even attempting to create a `StreamLobbyVideo` widget (camera preview) triggers the crash because it initializes WebRTC internals.

### Solution

Skip Stream Video SDK initialization entirely on iOS Simulator in debug mode.

#### Step 1: Detect iOS Simulator

```dart
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kDebugMode;

// Safe detection pattern
final isIOSSimulator = kDebugMode && Platform.isIOS;
```

**Why both conditions?**
- `kDebugMode` - Only skip in development, not production
- `Platform.isIOS` - Only affects iOS, Android emulator works fine

#### Step 2: Skip SDK Initialization in Provider

In `meeting_provider.dart`:

```dart
Future<bool> initialize(String appointmentId) async {
  // ... get user and token ...

  // Initialize Stream Video SDK
  _streamVideo = StreamVideo(
    meetingToken.apiKey,
    user: User.regular(
      userId: meetingToken.userId,
      name: user.name ?? 'User',
      image: user.image,
    ),
    userToken: meetingToken.token,
  );

  // Skip Stream SDK on iOS simulator (WebRTC crashes)
  final isIOSSimulator = kDebugMode && Platform.isIOS;

  if (!isIOSSimulator) {
    await _streamVideo!.connect();

    _activeCall = _streamVideo!.makeCall(
      callType: StreamCallType.defaultType(),
      id: meetingToken.callId,
    );

    await _activeCall!.getOrCreate();
  }

  // State is still set to initialized, but _activeCall will be null
  state = state.copyWith(
    isLoading: false,
    isInitialized: true,
    callId: meetingToken.callId,
  );

  return true;
}
```

#### Step 3: Skip Camera Preview Widget

In `camera_preview.dart`:

```dart
import 'package:flutter/foundation.dart' show kDebugMode;

@override
Widget build(BuildContext context) {
  // Skip StreamLobbyVideo in debug mode (crashes on iOS simulator)
  // WebRTC video rendering doesn't work reliably on simulators
  final showVideoPreview = isCameraEnabled && !kDebugMode;

  return ClipRRect(
    borderRadius: BorderRadius.circular(borderRadius),
    child: Container(
      color: theme.colorScheme.surface,
      child: showVideoPreview
          ? StreamLobbyVideo(call: call)
          : _CameraOffPlaceholder(
              icon: placeholderIcon,
              borderRadius: borderRadius,
            ),
    ),
  );
}
```

#### Step 4: Show Friendly Fallback UI

In `meeting_screen.dart`:

```dart
Widget _buildBody(MeetingState meetingState, MeetingController controller) {
  // ... other states ...

  // iOS Simulator mode (Stream SDK disabled)
  if (meetingState.isInitialized && controller.activeCall == null) {
    return _SimulatorModeView(onBack: () => context.pop());
  }

  // ... rest of states ...
}

class _SimulatorModeView extends StatelessWidget {
  const _SimulatorModeView({required this.onBack});

  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.phone_iphone,
                size: 64,
                color: Colors.white54,
              ),
              const SizedBox(height: AppSpacing.md),
              Text(
                'iOS Simulator',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: AppSpacing.sm),
              const Text(
                'Video calls are not supported on iOS Simulator.\n'
                'Please test on a physical device or use macOS/Android.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70),
              ),
              const SizedBox(height: AppSpacing.xl),
              OutlinedButton(
                onPressed: onBack,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white54),
                ),
                child: const Text('Go Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Testing Alternatives

Since iOS Simulator doesn't support video calls, use these alternatives:

| Platform | Method | Video Support |
|----------|--------|---------------|
| macOS | `flutter run -d macos` | Full support |
| Android Emulator | `flutter run -d emulator-5554` | Full support |
| Physical iPhone | USB or wireless | Full support |
| Chrome (web) | `flutter run -d chrome` | Depends on SDK |

### Related Files

- `lib/features/meetings/providers/meeting_provider.dart:97-110`
- `lib/features/meetings/widgets/camera_preview.dart:26-28`
- `lib/features/meetings/screens/meeting_screen.dart:167-170, 454-502`

### Related Issues

- Stream Video Flutter SDK doesn't officially support simulators
- WebRTC-based SDKs generally have simulator limitations
- This is expected behavior, not a bug in our code
