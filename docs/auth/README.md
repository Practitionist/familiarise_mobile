# Authentication Documentation

This folder contains comprehensive documentation for implementing authentication in Flutter applications with a Dart Frog backend.

## Reading Order

Read the docs in this order for the best understanding:

```
docs/auth/
├── 01-architecture/           # Start here - understand the system
│   └── 01-authentication-architecture.md
│
├── 02-setup/                  # Then set up OAuth
│   ├── 01-google-oauth-setup.md
│   ├── 02-google-oauth-setup-android.md
│   └── 03-oauth-checklist.md
│
├── 03-security/               # Learn security best practices
│   └── 01-secure-oauth-backend-verification.md
│
└── 04-troubleshooting/        # Reference when issues arise
    └── 01-google-sign-in-web-limitations.md
```

## Quick Links

| Topic | Document |
|-------|----------|
| System Overview | [Authentication Architecture](./01-architecture/01-authentication-architecture.md) |
| Google OAuth Setup | [Google OAuth Setup](./02-setup/01-google-oauth-setup.md) |
| Android Setup | [Android Setup Guide](./02-setup/02-google-oauth-setup-android.md) |
| Quick Checklist | [OAuth Checklist](./02-setup/03-oauth-checklist.md) |
| Security Patterns | [Secure OAuth Verification](./03-security/01-secure-oauth-backend-verification.md) |
| Web ID Token Issue | [Web Limitations & Solutions](./04-troubleshooting/01-google-sign-in-web-limitations.md) |

## Key Takeaways

1. **Never trust client-provided user data** - Always verify tokens with OAuth provider
2. **Use `sub` claim for account linking** - Email can change, `sub` is permanent
3. **Web has no ID token** - Use access token + userinfo endpoint instead
4. **Platform-specific OAuth clients** - Web, iOS, and Android each need separate client IDs

## Related Files

- `backend/lib/services/auth_service.dart` - Authentication business logic
- `backend/lib/services/google_token_verifier.dart` - Token verification
- `lib/data/datasources/remote/auth_remote_source.dart` - Flutter auth implementation
- `lib/features/auth/providers/auth_provider.dart` - Riverpod state management
