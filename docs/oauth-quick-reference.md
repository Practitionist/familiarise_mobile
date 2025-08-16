# OAuth Quick Reference Card

## 🚀 IMMEDIATE ACTION NEEDED

To enable Facebook and GitHub OAuth, update these environment variables in `.env`:

```bash
# Facebook - GET FROM: https://developers.facebook.com/
FACEBOOK_CLIENT_ID="YOUR_FACEBOOK_APP_ID_HERE"
FACEBOOK_CLIENT_SECRET="YOUR_FACEBOOK_APP_SECRET_HERE"

# GitHub - GET FROM: https://github.com/settings/developers  
GITHUB_CLIENT_ID="YOUR_GITHUB_CLIENT_ID_HERE"
GITHUB_CLIENT_SECRET="YOUR_GITHUB_CLIENT_SECRET_HERE"
```

## ✅ Current OAuth Status

| Provider | Status | Action Required |
|----------|--------|-----------------|
| Google   | ✅ **WORKING** | None - already configured |
| Facebook | ❌ **DISABLED** | Add App ID to `.env` |
| GitHub   | ❌ **DISABLED** | Create OAuth app & add credentials |

## 📋 Quick Setup Checklist

### Facebook OAuth (5 minutes)
- [ ] Go to https://developers.facebook.com/
- [ ] Create new app → Consumer type
- [ ] Add "Facebook Login" product
- [ ] Copy App ID → Update `FACEBOOK_CLIENT_ID` in `.env`
- [ ] Copy App Secret → Update `FACEBOOK_CLIENT_SECRET` in `.env`
- [ ] Configure Supabase Auth provider

### GitHub OAuth (3 minutes)  
- [ ] Go to https://github.com/settings/developers
- [ ] Click "New OAuth App"
- [ ] Fill app details with Supabase callback URL
- [ ] Copy Client ID → Update `GITHUB_CLIENT_ID` in `.env`
- [ ] Generate & copy Client Secret → Update `GITHUB_CLIENT_SECRET` in `.env`
- [ ] Configure Supabase Auth provider

### Supabase Configuration (2 minutes)
- [ ] Open Supabase Dashboard → Authentication → Providers
- [ ] Enable Facebook provider → Add App ID & Secret
- [ ] Enable GitHub provider → Add Client ID & Secret
- [ ] Copy redirect URLs to respective provider settings

## 🔧 Testing After Setup

```bash
# 1. Restart the app after .env changes
flutter run -d chrome

# 2. Test each provider:
# - Google: Should work immediately  
# - Facebook: Should work after .env update
# - GitHub: Should work after .env update
```

## 📱 Platform Notes

### Web (Current Priority)
- Google: ✅ Meta tag added to `web/index.html`
- Facebook: 🔄 Meta tag will be added after App ID is configured
- GitHub: ✅ Uses Supabase OAuth flow (no additional web config needed)

### Mobile (Future)
- Will need platform-specific configuration files
- Android: `google-services.json`, Facebook SDK setup
- iOS: `GoogleService-Info.plist`, Facebook SDK setup

## 🐛 Common Issues & Quick Fixes

| Error | Quick Fix |
|-------|-----------|
| "ClientID not set" | Check `web/index.html` has correct meta tag |
| "Facebook login failed" | Verify `FACEBOOK_CLIENT_ID` is set in `.env` |
| "GitHub not configured" | Add `GITHUB_CLIENT_ID` to `.env` |
| OAuth fails after setup | Restart Flutter app to reload `.env` |

## 📚 Full Documentation

- **Complete Guide**: [oauth-setup-guide.md](oauth-setup-guide.md)
- **Troubleshooting**: [oauth-debugging-guide.md](oauth-debugging-guide.md)
- **Project README**: [../README.md](../README.md)

---
**💡 Pro Tip**: After adding credentials to `.env`, always restart your Flutter development server to reload environment variables!