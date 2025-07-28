# Familiarise Mobile

A Flutter consultation platform app with Supabase backend integration.

## Features

- 🔐 **Authentication**: Email/password and OAuth (Google, Facebook, GitHub)
- 👤 **User Profiles**: Real user data with Supabase integration
- 👨‍⚕️ **Consultant Listings**: Browse and book consultations
- 📱 **Cross-Platform**: Web, Android, and iOS support
- 🔍 **Search & Filter**: Find consultants by domain and expertise

## Quick Start

### Prerequisites

- Flutter SDK (3.8.1+)
- Dart SDK
- Supabase account and project

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd familiarise_mobile
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Environment Setup**
   - Copy `.env.example` to `.env`
   - Update Supabase credentials in `.env`
   - Configure OAuth providers (see below)

4. **Run the app**
   ```bash
   # Web
   flutter run -d chrome
   
   # Android
   flutter run -d android
   
   # iOS
   flutter run -d ios
   ```

## OAuth Configuration

### Current Status
- ✅ **Google OAuth**: Configured and working
- ❌ **Facebook OAuth**: Needs App ID configuration
- ❌ **GitHub OAuth**: Needs OAuth app setup

### Environment Variables Required
```bash
# Google OAuth (Already configured)
GOOGLE_CLIENT_ID=""
GOOGLE_CLIENT_SECRET=""

# Facebook OAuth (CONFIGURE THESE)
FACEBOOK_CLIENT_ID=""  # Add your Facebook App ID
FACEBOOK_CLIENT_SECRET=""  # Add your Facebook App Secret

# GitHub OAuth (CONFIGURE THESE)
GITHUB_CLIENT_ID=""  # Add your GitHub Client ID
GITHUB_CLIENT_SECRET=""  # Add your GitHub Client Secret
```

### Quick OAuth Setup

#### 1. Facebook OAuth Setup
1. Create app at [Facebook Developers](https://developers.facebook.com/)
2. Add Facebook Login product
3. Copy App ID and Secret to `.env`
4. Configure redirect URLs in Facebook app settings

#### 2. GitHub OAuth Setup
1. Create OAuth app at [GitHub Developer Settings](https://github.com/settings/developers)
2. Copy Client ID and generate Client Secret
3. Add credentials to `.env`
4. Configure callback URL in GitHub app

#### 3. Supabase Configuration
1. Go to Supabase Dashboard → Authentication → Providers
2. Enable and configure each OAuth provider
3. Copy redirect URLs to respective provider settings

**📖 For detailed setup instructions, see: [docs/oauth-setup-guide.md](docs/oauth-setup-guide.md)**

## Architecture

### Tech Stack
- **Frontend**: Flutter (Dart)
- **Backend**: Supabase (PostgreSQL, Auth, Storage)
- **State Management**: Riverpod
- **Navigation**: GoRouter
- **HTTP Client**: Dio
- **Logging**: Logger package

### Key Features
- **Authentication**: Multi-provider OAuth + email/password
- **Real-time**: Supabase real-time subscriptions
- **Offline Support**: Local caching and sync
- **Error Handling**: Comprehensive error tracking and logging

## Development

### Test Credentials
For development/testing:
```
Email: temp@gmail.com
Password: 123456
```

### Building

```bash
# Debug build
flutter build web --debug

# Release build
flutter build web --release
flutter build apk --release
flutter build ios --release
```

### Linting and Analysis
```bash
flutter analyze
flutter test
```

## Documentation

- 📚 [OAuth Setup Guide](docs/oauth-setup-guide.md) - Complete OAuth configuration
- 🔧 [OAuth Debugging Guide](docs/oauth-debugging-guide.md) - Troubleshooting OAuth issues
- 📋 [Implementation Fixes](docs/fixes.md) - Recent fixes and improvements

## Project Structure

```
lib/
├── config/           # Configuration files
├── models/           # Data models
├── providers/        # Riverpod state providers  
├── repositories/     # Data access layer
├── screens/          # UI screens
├── services/         # Business logic and API calls
└── widgets/          # Reusable UI components
```

## Troubleshooting

### OAuth Issues
- **Google "ClientID not set"**: Check `web/index.html` has correct meta tag
- **Facebook login fails**: Verify `FACEBOOK_CLIENT_ID` is set in `.env`
- **GitHub not working**: Ensure GitHub OAuth app is configured

### Build Issues
```bash
# Clean and rebuild
flutter clean
flutter pub get
flutter run
```

### Common Fixes
- Clear browser cache for web platform
- Restart development server
- Check environment variable loading

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is part of the Familiarise platform.

---

**Need help?** Check the [OAuth Setup Guide](docs/oauth-setup-guide.md) or [OAuth Debugging Guide](docs/oauth-debugging-guide.md) for detailed troubleshooting steps.
