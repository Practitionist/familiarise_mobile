# OAuth Setup Guide

This guide provides step-by-step instructions for configuring OAuth providers (Google, Facebook, GitHub) in your Flutter app.

## Prerequisites

1. **Supabase Project**: Ensure you have a Supabase project set up
2. **Environment Variables**: The `.env` file should contain OAuth provider credentials
3. **Platform Configuration**: Platform-specific setup for mobile and web

## Current OAuth Configuration Status

### Environment Variables in `.env`
```bash
# Google OAuth - ✅ CONFIGURED
GOOGLE_CLIENT_ID=""
GOOGLE_CLIENT_SECRET=""

# Facebook OAuth - ❌ NEEDS CONFIGURATION
FACEBOOK_CLIENT_ID=""  # <- Add your Facebook App ID here
FACEBOOK_CLIENT_SECRET=""  # <- Add your Facebook App Secret here

# GitHub OAuth - ❌ NEEDS CONFIGURATION  
GITHUB_CLIENT_ID=""  # <- Add your GitHub Client ID here
GITHUB_CLIENT_SECRET=""  # <- Add your GitHub Client Secret here
```

## 1. Google OAuth Setup (Currently Working)

### ✅ Current Status: CONFIGURED
- Google Client ID is set in environment variables
- Web platform meta tag added to `web/index.html`
- Flutter app configured to use environment variables

### Verify Google Setup:
1. **Google Cloud Console**: https://console.cloud.google.com/apis/credentials
2. **Check OAuth 2.0 Client IDs**:
   - Web application client (for web platform)
   - Android client (for mobile)
3. **Authorized domains**: Add your domain in Google Console

## 2. Facebook OAuth Setup (Needs Configuration)

### ❌ Current Status: NOT CONFIGURED
Facebook authentication requires a Facebook App ID.

### Setup Steps:

#### Step 1: Create Facebook App
1. Go to [Facebook Developers](https://developers.facebook.com/)
2. Click "Create App" → Choose "Consumer" → Continue
3. Enter App Name and Contact Email
4. Click "Create App"

#### Step 2: Configure Facebook Login
1. In your Facebook App dashboard, click "Add Product"
2. Find "Facebook Login" and click "Set Up"
3. Choose "Web" platform
4. Add your site URL (e.g., `http://localhost:3000` for development)

#### Step 3: Get App Credentials
1. Go to Settings → Basic
2. Copy your "App ID" and "App Secret"
3. Update `.env` file:
```bash
FACEBOOK_CLIENT_ID="your_facebook_app_id_here"
FACEBOOK_CLIENT_SECRET="your_facebook_app_secret_here"
```

#### Step 4: Configure Supabase
1. Go to your Supabase dashboard
2. Navigate to Authentication → Providers
3. Enable Facebook provider
4. Add your Facebook App ID and App Secret
5. Copy the redirect URL and add it to Facebook App settings

#### Step 5: Update Web Configuration
Once you have Facebook App ID, update `web/index.html`:
```html
<!-- Add this meta tag -->
<meta property="fb:app_id" content="YOUR_FACEBOOK_APP_ID" />
```

## 3. GitHub OAuth Setup (Needs Configuration)

### ❌ Current Status: NOT CONFIGURED
GitHub authentication requires a GitHub OAuth App.

### Setup Steps:

#### Step 1: Create GitHub OAuth App
1. Go to [GitHub Developer Settings](https://github.com/settings/developers)
2. Click "New OAuth App"
3. Fill in the application details:
   - **Application name**: Your app name
   - **Homepage URL**: Your app URL
   - **Authorization callback URL**: Your Supabase redirect URL

#### Step 2: Get App Credentials
1. After creating the app, copy the "Client ID"
2. Generate a new "Client Secret"
3. Update `.env` file:
```bash
GITHUB_CLIENT_ID="your_github_client_id_here"
GITHUB_CLIENT_SECRET="your_github_client_secret_here"
```

#### Step 3: Configure Supabase
1. Go to your Supabase dashboard
2. Navigate to Authentication → Providers
3. Enable GitHub provider
4. Add your GitHub Client ID and Client Secret
5. Note the redirect URL for GitHub app configuration

## 4. Platform-Specific Configuration

### Web Platform (Secure Configuration)
OAuth credentials are now **dynamically injected** for security:
- ✅ **No hardcoded credentials** in source code
- ✅ **Meta tags generated at runtime** from environment variables  
- ✅ **Automatic provider detection** and UI adaptation

The `web/index.html` file only contains:
```html
<!-- OAuth Configuration - Dynamically injected by Flutter app for security -->
```

OAuth meta tags are automatically created by `WebOAuthConfig.initialize()` based on available environment variables.

### Android Platform (Needs Setup)
For production deployment, you'll need:

1. **Google Services Configuration**:
   - Download `google-services.json` from Google Cloud Console
   - Place in `android/app/` directory

2. **Facebook Configuration**:
   - Add Facebook SDK to `android/app/build.gradle`
   - Configure Facebook App ID in AndroidManifest.xml

3. **Signing Configuration**:
   - Generate release keystore
   - Add SHA-1 fingerprints to Google Console

### iOS Platform (Needs Setup)
For production deployment, you'll need:

1. **Google Services Configuration**:
   - Download `GoogleService-Info.plist` from Google Cloud Console
   - Add to iOS project in Xcode

2. **Facebook Configuration**:
   - Add Facebook SDK to iOS
   - Configure Info.plist with Facebook App ID

## 5. Testing OAuth

### Current Testing Status:
- ✅ **Google**: Should work on web platform
- ❌ **Facebook**: Will fail until App ID is configured
- ❌ **GitHub**: Will fail until OAuth app is configured

### Test Steps:
1. Run the app: `flutter run -d chrome`
2. Navigate to login screen
3. Try Google OAuth (should work)
4. Try Facebook/GitHub (will show configuration error)

## 6. Troubleshooting

### Common Issues:

#### Google OAuth Errors:
- **"ClientID not set"**: Check if meta tag is in web/index.html
- **"Invalid client"**: Verify Client ID matches Google Console
- **"Unauthorized domain"**: Add your domain to Google Console

#### Facebook OAuth Errors:
- **"App ID not found"**: Check FACEBOOK_CLIENT_ID in .env
- **"Invalid redirect URI"**: Verify redirect URL in Facebook App settings

#### GitHub OAuth Errors:
- **"Client ID not found"**: Check GITHUB_CLIENT_ID in .env
- **"Bad verification code"**: Check GitHub App configuration

### Debug Logs:
The app logs OAuth initialization and errors. Check browser console for detailed error messages.

## Next Steps

1. **Immediate**: Configure Facebook and GitHub OAuth apps
2. **Development**: Test all OAuth providers
3. **Production**: Set up mobile platform configurations
4. **Security**: Review and secure OAuth credentials

## Security Features ✅

### Dynamic Credential Injection
- **No hardcoded OAuth credentials** in source code
- OAuth Client IDs dynamically injected at runtime
- Meta tags created securely from environment variables
- Prevents credential exposure in version control

### Graceful Provider Handling
- **Automatic provider detection** based on environment configuration
- UI adapts to show only available OAuth providers
- User-friendly error messages for unconfigured providers
- No app crashes when OAuth providers are missing

### Error Handling
- People API permission errors handled gracefully
- Fallback to basic user profile information
- Comprehensive logging for debugging
- Production-ready error messages

## Security Best Practices

- ✅ Never commit OAuth secrets to version control
- ✅ Use environment variables for all credentials  
- ✅ Dynamic injection prevents credential exposure
- ✅ Graceful degradation when providers unavailable
- ✅ Comprehensive error handling and logging
- ✅ OAuth state validation implemented