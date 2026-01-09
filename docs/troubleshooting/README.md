# Platform Troubleshooting Guide

This directory contains documentation for platform-specific bugs, errors, and their solutions encountered during development. Use this as a reference when facing similar issues.

## Directory Structure

```
troubleshooting/
├── README.md                           # This file
├── 01-ios-simulator-issues.md          # iOS Simulator-specific problems
├── 02-android-build-issues.md          # Android build & Gradle issues
├── 03-stream-video-integration.md      # Stream Video SDK integration
└── 04-backend-environment-issues.md    # Dart backend & environment config
```

## Reading Order

| Order | Document | Description |
|-------|----------|-------------|
| 1 | [iOS Simulator Issues](./01-ios-simulator-issues.md) | WebRTC crashes, Stream SDK on simulator |
| 2 | [Android Build Issues](./02-android-build-issues.md) | Java toolchain, Gradle configuration |
| 3 | [Stream Video Integration](./03-stream-video-integration.md) | JWT tokens, SDK initialization |
| 4 | [Backend Environment](./04-backend-environment-issues.md) | DotEnv, dependency injection |

## Quick Reference

### iOS Simulator
- **WebRTC crashes** - Stream SDK doesn't work on iOS Simulator; use `kDebugMode && Platform.isIOS` detection
- **Solution**: Skip SDK initialization, show friendly fallback UI

### Android Build
- **Java 17 not found** - Gradle toolchain can't locate JDK
- **Solution**: Add Foojay toolchains plugin for auto-download

### Stream Video SDK
- **Infinite loading** - Missing `iss` claim in JWT token
- **Solution**: Add `'iss': apiKey` to JWT payload

### Backend Environment
- **Null environment variables** - DotEnv doesn't populate `Platform.environment`
- **Solution**: Use provider-based dependency injection with explicit config

## Contributing

When adding new troubleshooting entries:

1. Use kebab-case for filenames: `XX-descriptive-name.md`
2. Follow the existing format:
   - **Problem** - Clear description of the error
   - **Symptoms** - What you see when this happens
   - **Root Cause** - Why this happens
   - **Solution** - Step-by-step fix
   - **Code Examples** - Relevant code snippets
   - **Related Files** - Links to implementation
3. Update this README with the new entry
4. Cross-reference from related documentation

## Related Documentation

- [Platform Setup](../PLATFORM_SETUP.md) - Initial platform configuration
- [Phase 07: Video Meetings](../architecture/phase-07-video-meetings.md) - Video feature implementation
- [Mobile Development Setup](../mobile-development-setup.md) - Development environment
