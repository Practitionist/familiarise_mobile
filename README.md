# Familiarise Mobile

A Flutter-based mobile application for the Familiarise consultation and mentorship marketplace platform. This app enables users to discover experts, book consultations, and engage in video meetings and chat sessions.

[![CI](https://github.com/your-org/familiarise_mobile/actions/workflows/flutter-ci.yml/badge.svg)](https://github.com/your-org/familiarise_mobile/actions/workflows/flutter-ci.yml)

## Overview

| Aspect | Details |
|--------|---------|
| **Target Users** | Consultees seeking expert consultations |
| **Platforms** | iOS 14+, Android API 24+ |
| **Flutter Version** | 3.24.x (Dart 3.5.x) |
| **Architecture** | Clean Architecture with Feature-First Structure |
| **Backend** | Dart Frog with Prisma ORM |

## Features

- **Authentication** - Email/password, Google Sign-In, Apple Sign-In
- **Onboarding** - Multi-step user profile setup with draft persistence
- **Expert Discovery** - Browse and filter consultants by domain/expertise
- **Booking** - Schedule appointments with availability slots
- **Video Meetings** - Real-time video calls via Stream SDK
- **Chat** - Direct messaging with consultants via Stream SDK
- **Payments** - Razorpay (India) and Stripe (International)

## Prerequisites

Before you begin, ensure you have the following installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install) 3.24.x or higher
- [Dart SDK](https://dart.dev/get-dart) 3.5.x (bundled with Flutter)
- [Android Studio](https://developer.android.com/studio) with Android SDK (for Android development)
- [Xcode](https://developer.apple.com/xcode/) 15+ (for iOS development, macOS only)
- [Node.js](https://nodejs.org/) 18+ (for Prisma CLI)
- [PostgreSQL](https://www.postgresql.org/) 14+ or a [Supabase](https://supabase.com/) account

### Required API Keys

| Service | Purpose | Required |
|---------|---------|----------|
| Supabase | Database (fallback) | Yes |
| Stream | Video calls & Chat | Yes |
| Razorpay | Payments (India) | For payments |
| Stripe | Payments (International) | For payments |
| Google OAuth | Social sign-in | Optional |
| Firebase | Analytics, Crashlytics, Push | Optional |

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-org/familiarise_mobile.git
cd familiarise_mobile
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Environment Setup

```bash
# Copy the example environment file
cp .env.example .env

# Edit .env with your credentials
# See .env.example for all available options
```

**Mandatory environment variables:**

```env
# Database
DATABASE_URL=postgresql://user:password@host:5432/database
DIRECT_URL=postgresql://user:password@host:5432/database

# Or Supabase (alternative)
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_ANON_KEY=your-supabase-anon-key

# Backend API
API_BASE_URL=http://localhost:8080

# Stream SDK
STREAM_API_KEY=your-stream-api-key
```

### 4. Code Generation

Generate required code (Freezed models, Riverpod providers, JSON serialization):

```bash
dart run build_runner build --delete-conflicting-outputs
```

### 5. Backend Setup

The project includes a Dart Frog backend in the `backend/` directory:

```bash
# Navigate to backend
cd backend

# Install dependencies
dart pub get

# Set up Prisma
npm install -g prisma

# Copy and configure backend environment
cp .env.example .env
# Edit .env with your database URL and JWT secret

# Generate Prisma client
dart run orm generate

# Apply database migrations (if using Prisma migrations)
# npx prisma migrate deploy

# Start the development server
dart_frog dev
```

The backend will run at `http://localhost:8080`.

### 6. Run the Application

```bash
# List available devices
flutter devices

# Run on iOS Simulator
flutter run -d ios

# Run on Android Emulator
flutter run -d android

# Run on Chrome (web)
flutter run -d chrome
```

## Project Structure

```
familiarise_mobile/
├── lib/
│   ├── main.dart              # App entry point
│   ├── app/                   # App configuration, router, theme
│   ├── core/                  # Shared infrastructure (network, errors, utils)
│   ├── data/                  # Data layer (repositories, models, datasources)
│   ├── domain/                # Business logic (entities, interfaces)
│   ├── features/              # Feature modules
│   │   ├── auth/              # Authentication
│   │   ├── onboarding/        # User onboarding
│   │   ├── explore/           # Expert discovery
│   │   ├── booking/           # Appointment booking
│   │   ├── checkout/          # Payment processing
│   │   ├── dashboard/         # Main dashboard
│   │   ├── meetings/          # Video meetings
│   │   ├── chat/              # Messaging
│   │   └── profile/           # User profile
│   └── shared/                # Shared widgets and providers
├── backend/                   # Dart Frog backend
├── android/                   # Android platform files
├── ios/                       # iOS platform files
├── test/                      # Unit and widget tests
├── integration_test/          # Integration tests
└── docs/                      # Project documentation
```

For detailed architecture documentation, see [CLAUDE.md](./CLAUDE.md).

## Development Commands

| Command | Description |
|---------|-------------|
| `flutter pub get` | Install dependencies |
| `dart run build_runner build --delete-conflicting-outputs` | Generate code |
| `dart run build_runner watch` | Watch and regenerate code |
| `flutter analyze` | Run static analysis |
| `flutter test` | Run unit tests |
| `flutter test --coverage` | Run tests with coverage |
| `flutter build apk` | Build Android APK |
| `flutter build ios` | Build iOS app |
| `cd backend && dart_frog dev` | Start backend server |

## Testing

### Unit Tests

```bash
flutter test
```

### Integration Tests

```bash
flutter test integration_test/
```

### Coverage Report

```bash
flutter test --coverage
# Generate HTML report (requires lcov)
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```

## CI/CD

This project uses GitHub Actions for continuous integration and deployment.

**Workflow:** `.github/workflows/flutter-ci.yml`

| Stage | Triggers | Actions |
|-------|----------|---------|
| Analyze & Test | Push, PR | Lint, analyze, unit tests, coverage upload |
| Build Android | Push, PR, Release | Debug APK, Release AAB (on release) |
| Build iOS | Push, PR, Release | Release build, IPA (on release) |
| Deploy Android | Release | Upload to Play Store (internal track) |
| Deploy iOS | Release | Upload to App Store Connect |

## Documentation

| Document | Description |
|----------|-------------|
| [CLAUDE.md](./CLAUDE.md) | System architecture and design patterns |
| [UI.md](./UI.md) | UI specifications and wireframes |
| [docs/architecture/](./docs/architecture/) | Phase-by-phase implementation guides |
| [docs/auth/](./docs/auth/) | Authentication deep-dive |
| [docs/flutter-best-practices.md](./docs/flutter-best-practices.md) | Coding standards and conventions |

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines on how to contribute to this project.

## Troubleshooting

### Common Issues

**Build runner fails:**
```bash
# Clean and regenerate
flutter clean
flutter pub get
dart run build_runner clean
dart run build_runner build --delete-conflicting-outputs
```

**iOS build fails with CocoaPods error:**
```bash
cd ios
pod deintegrate
pod install --repo-update
cd ..
flutter clean
flutter build ios
```

**Android build fails with Gradle error:**
```bash
cd android
./gradlew clean
cd ..
flutter clean
flutter build apk
```

**Backend connection issues:**
- Ensure backend is running at the URL specified in `API_BASE_URL`
- Check that your `.env` file is properly configured
- Verify database connectivity
