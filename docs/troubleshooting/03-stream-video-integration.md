# Stream Video SDK Integration Issues

This document covers common issues when integrating Stream Video Flutter SDK for video calling functionality.

## Infinite Loading Spinner (JWT Token Issue)

### Problem

After successfully getting a 200 response from `/api/stream/token`, the meeting screen shows an infinite "Connecting..." spinner.

### Symptoms

1. Backend returns 200 with valid-looking token
2. Flutter logs show the token was received
3. Meeting screen stays on loading state forever
4. No error messages in console
5. Stream SDK silently fails to authenticate

### Root Cause

The JWT token is missing the required `iss` (issuer) claim. Stream Video SDK requires:

| Claim | Required | Description |
|-------|----------|-------------|
| `user_id` | Yes | User identifier |
| `iss` | Yes | **Must be the Stream API key** |
| `iat` | Yes | Issued at timestamp |
| `exp` | Yes | Expiration timestamp |

Without `iss`, the SDK receives the token but fails to authenticate silently.

### Solution

Add the `iss` claim to JWT token generation in the backend.

**backend/lib/services/stream_service.dart:**

```dart
String generateUserToken(
  String userId, {
  Duration expiresIn = const Duration(hours: 24),
}) {
  if (!isConfigured) {
    throw StateError('Stream API key and secret must be configured');
  }

  final now = DateTime.now().toUtc();
  final exp = now.add(expiresIn);

  final header = {
    'alg': 'HS256',
    'typ': 'JWT',
  };

  final payload = {
    'user_id': userId,
    'iss': _apiKey,  // REQUIRED: Must be the API key
    'iat': now.millisecondsSinceEpoch ~/ 1000,
    'exp': exp.millisecondsSinceEpoch ~/ 1000,
  };

  return _createJwt(header, payload);
}
```

Same fix applies to `generateCallToken()` if used.

### Debugging Tips

1. **Decode the JWT** at [jwt.io](https://jwt.io) to verify claims
2. **Check Stream Dashboard** for authentication errors
3. **Enable verbose logging** in Stream SDK if available

---

## Pre-Join Camera Preview Not Working

### Problem

The pre-join screen (lobby) doesn't show camera preview even though camera is enabled.

### Symptoms

1. Camera permission granted
2. Meeting state shows `isInitialized: true`
3. Camera preview area is blank or shows placeholder
4. No error messages

### Root Cause

This was a "chicken-and-egg" problem in our code:

1. `meeting_screen.dart:149` required `activeCall != null` to show `_PreJoinView`
2. But `_activeCall` was only created in `joinCall()` method
3. `joinCall()` is called when user clicks "Join Meeting"
4. So camera preview never had a call to render

### Solution

Create `_activeCall` during `initialize()`, not during `joinCall()`.

**meeting_provider.dart:**

```dart
Future<bool> initialize(String appointmentId) async {
  // ... setup StreamVideo ...

  if (!isIOSSimulator) {
    await _streamVideo!.connect();

    // Create the call during initialization (not joinCall)
    _activeCall = _streamVideo!.makeCall(
      callType: StreamCallType.defaultType(),
      id: meetingToken.callId,
    );

    // getOrCreate() is required for camera preview to work
    // This creates the call on Stream's servers without joining it
    await _activeCall!.getOrCreate();
  }

  state = state.copyWith(
    isLoading: false,
    isInitialized: true,
    callId: meetingToken.callId,
  );

  return true;
}

Future<Call?> joinCall() async {
  // _activeCall already exists from initialize()
  // Just join the existing call
  await _activeCall!.join();

  // Apply media settings
  await _activeCall!.setMicrophoneEnabled(enabled: state.isMicrophoneEnabled);
  await _activeCall!.setCameraEnabled(enabled: state.isCameraEnabled);

  state = state.copyWith(
    isJoining: false,
    isInCall: true,
  );

  return _activeCall;
}
```

### Key Insight

Stream Video SDK has two distinct phases:

1. **`makeCall()` + `getOrCreate()`** - Creates call object and registers with Stream servers
   - Enables camera preview (lobby)
   - Does NOT join the call
   - Other participants won't see you yet

2. **`join()`** - Actually joins the call
   - You become visible to other participants
   - Audio/video starts streaming

---

## iOS Simulator Crashes

See [01-ios-simulator-issues.md](./01-ios-simulator-issues.md) for detailed coverage of WebRTC crashes on iOS Simulator.

### Quick Summary

- WebRTC doesn't work on iOS Simulator
- Skip Stream SDK initialization when `kDebugMode && Platform.isIOS`
- Show friendly fallback UI instead
- Test on macOS, Android emulator, or physical device

---

## Complete Integration Checklist

### Backend Setup

- [ ] Stream API key and secret in environment variables
- [ ] `/api/stream/token` endpoint returns JWT with `iss` claim
- [ ] Token includes `user_id`, `iss`, `iat`, `exp`
- [ ] Token signed with HMAC-SHA256

### Flutter Setup

- [ ] `stream_video_flutter` in pubspec.yaml
- [ ] Camera and microphone permissions configured
- [ ] Permission requests before SDK initialization
- [ ] iOS Simulator detection and fallback
- [ ] `_activeCall` created in `initialize()` (not `joinCall()`)
- [ ] `getOrCreate()` called for camera preview
- [ ] Proper cleanup in `dispose()`

### Testing Matrix

| Platform | Simulator/Emulator | Physical Device |
|----------|-------------------|-----------------|
| iOS | Not supported | Full support |
| Android | Full support | Full support |
| macOS | N/A | Full support |
| Web | Varies | Varies |

---

## Related Files

- `backend/lib/services/stream_service.dart` - JWT token generation
- `backend/routes/api/stream/token/index.dart` - Token endpoint
- `lib/features/meetings/providers/meeting_provider.dart` - SDK initialization
- `lib/features/meetings/screens/meeting_screen.dart` - UI states
- `lib/features/meetings/widgets/camera_preview.dart` - Camera preview widget

## External Resources

- [Stream Video Flutter Docs](https://getstream.io/video/docs/flutter/)
- [Stream Video Authentication](https://getstream.io/video/docs/flutter/guides/authentication/)
- [JWT Token Debugging](https://jwt.io/)
