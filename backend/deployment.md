# Flutter + Dart Frog Backend Deployment Guide

## =€ **DEVELOPMENT SETUP**

### **Running Frontend & Backend Together**
- [ ] Start Dart Frog backend server
  ```bash
  cd backend
  dart_frog dev
  # Server runs on http://localhost:3000
  ```
- [ ] Update Flutter app's API_BASE_URL to `http://localhost:3000`
- [ ] Run Flutter app
  ```bash
  flutter run
  # For web: flutter run -d chrome
  # For mobile: flutter run -d <device_id>
  ```
- [ ] Test authentication flow end-to-end

## <× **BACKEND DEPLOYMENT OPTIONS**

### **Option 1: Railway (Recommended for Dart Frog)**
- [ ] Install Railway CLI: `npm install -g @railway/cli`
- [ ] Login to Railway: `railway login`
- [ ] Initialize project: `railway init`
- [ ] Create Dockerfile for Dart Frog:
  ```dockerfile
  FROM dart:stable AS build
  WORKDIR /app
  COPY . .
  RUN dart pub get
  RUN dart compile exe bin/server.dart -o bin/server
  
  FROM scratch
  COPY --from=build /runtime/ /
  COPY --from=build /app/bin/server /app/bin/
  EXPOSE 8080
  ENTRYPOINT ["/app/bin/server"]
  ```
- [ ] Deploy: `railway up`
- [ ] Set environment variables in Railway dashboard
- [ ] Configure custom domain (optional)

### **Option 2: Google Cloud Run**
- [ ] Install Google Cloud CLI
- [ ] Build container: `gcloud builds submit --tag gcr.io/PROJECT_ID/dart-frog-backend`
- [ ] Deploy: `gcloud run deploy --image gcr.io/PROJECT_ID/dart-frog-backend --platform managed`
- [ ] Set environment variables in Cloud Run console

### **Option 3: Heroku**
- [ ] Create heroku.yml:
  ```yaml
  build:
    docker:
      web: Dockerfile
  ```
- [ ] Deploy: `git push heroku main`
- [ ] Configure environment variables: `heroku config:set JWT_SECRET=your_secret`

### **Option 4: DigitalOcean App Platform**
- [ ] Connect GitHub repository
- [ ] Configure build settings for Dart Frog
- [ ] Set environment variables in dashboard
- [ ] Deploy automatically on git push

<!--
### **Option X: Netlify Functions (Commented - Already Deployed)**
- [ ] Create netlify.toml configuration
- [ ] Set up serverless functions for Dart Frog routes
- [ ] Configure environment variables in Netlify dashboard
- [ ] Deploy: `netlify deploy --prod`
- [ ] Update API endpoints to use Netlify Functions URLs
-->

## =ñ **MOBILE APP STORE DEPLOYMENT**

### **iOS App Store**
- [ ] **Prerequisites**
  - [ ] Apple Developer Account ($99/year)
  - [ ] macOS with Xcode installed
  - [ ] Valid provisioning profiles and certificates

- [ ] **Setup Fastlane for iOS**
  ```bash
  cd ios
  fastlane init
  ```
- [ ] **Configure Fastlane (ios/fastlane/Fastfile)**
  ```ruby
  platform :ios do
    desc "Build and upload to TestFlight"
    lane :beta do
      build_app(scheme: "Runner")
      upload_to_testflight
    end
    
    desc "Deploy to App Store"
    lane :release do
      build_app(scheme: "Runner")
      upload_to_app_store
    end
  end
  ```
- [ ] **App Store Connect Setup**
  - [ ] Create app listing in App Store Connect
  - [ ] Configure app metadata, screenshots, descriptions
  - [ ] Set up pricing and availability
- [ ] **Deploy to TestFlight**: `fastlane ios beta`
- [ ] **Submit for Review**: `fastlane ios release`

### **Google Play Store**
- [ ] **Prerequisites**
  - [ ] Google Play Developer Account ($25 one-time)
  - [ ] Generated upload key for app signing

- [ ] **Setup Fastlane for Android**
  ```bash
  cd android
  fastlane init
  ```
- [ ] **Configure Fastlane (android/fastlane/Fastfile)**
  ```ruby
  platform :android do
    desc "Deploy to internal testing"
    lane :internal do
      gradle(task: "bundleRelease")
      upload_to_play_store(track: "internal")
    end
    
    desc "Deploy to production"
    lane :release do
      gradle(task: "bundleRelease")
      upload_to_play_store
    end
  end
  ```
- [ ] **Play Console Setup**
  - [ ] Create app listing in Google Play Console
  - [ ] Configure store listing, graphics, content rating
  - [ ] Set up pricing and distribution
- [ ] **Deploy to Internal Testing**: `fastlane android internal`
- [ ] **Submit for Review**: `fastlane android release`

## ™ **CI/CD AUTOMATION WITH GITHUB ACTIONS**

### **Backend Deployment Workflow**
- [ ] Create `.github/workflows/deploy-backend.yml`:
  ```yaml
  name: Deploy Backend
  on:
    push:
      branches: [main]
      paths: ['backend/**']
  
  jobs:
    deploy:
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v3
        - uses: dart-lang/setup-dart@v1
        - name: Install dependencies
          working-directory: ./backend
          run: dart pub get
        - name: Run tests
          working-directory: ./backend
          run: dart test
        - name: Deploy to Railway
          run: |
            npm install -g @railway/cli
            railway deploy
          env:
            RAILWAY_TOKEN: ${{ secrets.RAILWAY_TOKEN }}
  ```

### **Mobile App CI/CD Workflow**
- [ ] Create `.github/workflows/mobile-deployment.yml`:
  ```yaml
  name: Mobile App Deployment
  on:
    push:
      branches: [main]
      paths: ['lib/**', 'pubspec.yaml']
  
  jobs:
    test:
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v3
        - uses: subosito/flutter-action@v2
        - run: flutter test
    
    deploy-ios:
      needs: test
      runs-on: macos-latest
      steps:
        - uses: actions/checkout@v3
        - uses: subosito/flutter-action@v2
        - name: Build iOS
          run: flutter build ios --release --no-codesign
        - name: Deploy to TestFlight
          run: |
            cd ios
            fastlane beta
          env:
            FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD: ${{ secrets.APPLE_APP_PASSWORD }}
    
    deploy-android:
      needs: test
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v3
        - uses: subosito/flutter-action@v2
        - uses: actions/setup-java@v3
          with:
            distribution: 'zulu'
            java-version: '11'
        - name: Build Android
          run: flutter build appbundle
        - name: Deploy to Play Store
          run: |
            cd android
            fastlane internal
          env:
            GOOGLE_PLAY_JSON_KEY: ${{ secrets.GOOGLE_PLAY_JSON_KEY }}
  ```

## =' **ENVIRONMENT CONFIGURATION**

### **Production Environment Variables**
- [ ] **Backend (.env.production)**
  ```env
  SUPABASE_URL=your_production_supabase_url
  SUPABASE_SERVICE_ROLE_KEY=your_production_service_key
  JWT_SECRET=your_production_jwt_secret
  JWT_EXPIRES_IN=7d
  PORT=8080
  ENVIRONMENT=production
  ```

- [ ] **Flutter (Update API_BASE_URL)**
  ```dart
  // lib/config/api_config.dart
  const String API_BASE_URL = 'https://your-backend-domain.com';
  ```

### **Security Checklist**
- [ ] Use environment-specific secrets
- [ ] Enable HTTPS/TLS for production
- [ ] Configure CORS for production domains only
- [ ] Set up API rate limiting
- [ ] Enable request/response logging
- [ ] Set up monitoring and error tracking (Sentry)
- [ ] Configure database connection pooling
- [ ] Enable backup strategies for database

## =Ê **MONITORING & DEBUGGING**

### **Backend Monitoring**
- [ ] Set up health check endpoints
- [ ] Configure logging aggregation (Datadog, LogRocket)
- [ ] Set up uptime monitoring
- [ ] Configure error tracking (Sentry)
- [ ] Monitor API performance metrics

### **Mobile App Analytics**
- [ ] Integrate Firebase Analytics
- [ ] Set up crash reporting (Firebase Crashlytics)
- [ ] Configure performance monitoring
- [ ] Set up custom event tracking

##  **DEPLOYMENT CHECKLIST**

### **Pre-Deployment**
- [ ] All tests passing
- [ ] Environment variables configured
- [ ] Database migrations completed
- [ ] API documentation updated
- [ ] Security review completed

### **Post-Deployment**
- [ ] Health checks passing
- [ ] API endpoints responding correctly
- [ ] Database connections working
- [ ] Authentication flow tested
- [ ] Mobile app connecting to production API
- [ ] Error monitoring active
- [ ] Performance metrics baseline established

### **App Store Submission**
- [ ] App tested on physical devices
- [ ] Screenshots and metadata prepared
- [ ] Privacy policy and terms of service ready
- [ ] App Store review guidelines compliance checked
- [ ] Beta testing completed with feedback addressed

---

**Current Status**: Backend ready for deployment, Flutter app ready for store submission after production API integration testing.