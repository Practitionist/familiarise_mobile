# Android Build Issues

This document covers Android-specific build problems, primarily related to Gradle and Java toolchain configuration.

## Java 17 Toolchain Not Found

### Problem

Android build fails with Java toolchain error when running `flutter build apk` or `flutter run`.

### Symptoms

```
FAILURE: Build failed with an exception.

* What went wrong:
Could not determine the dependencies of task ':thermal:bundleLibCompileToJarDebug'.
> Could not create task ':thermal:compileDebugJavaWithJavac'.
   > Failed to calculate the value of task ':thermal:compileDebugJavaWithJavac' property 'javaCompiler'.
      > Cannot find a Java installation on your machine (Mac OS X 15.6 aarch64) matching: {languageVersion=17, vendor=any vendor, implementation=vendor-specific, nativeImageCapable=false}. Toolchain download repositories have not been configured.
```

Key indicators:
- Error mentions `:thermal` plugin (from `stream_video_flutter`)
- Error says `languageVersion=17`
- Error says `Toolchain download repositories have not been configured`

### Root Cause

This is a Gradle 8.x toolchain configuration issue:

1. **Gradle 8.14** has Java toolchain support enabled by default
2. The app's `build.gradle.kts` specifies `JavaVersion.VERSION_17`
3. Flutter plugins (like `thermal` from Stream SDK) declare toolchain requirements
4. Gradle's **auto-download feature is disabled by default**
5. Gradle can't find Java 17 locally and can't download it

### Solution

Enable Java toolchain auto-provisioning with the Foojay resolver plugin.

#### Step 1: Update `android/gradle.properties`

Add the auto-download setting:

```properties
org.gradle.jvmargs=-Xmx8G -XX:MaxMetaspaceSize=4G -XX:ReservedCodeCacheSize=512m -XX:+HeapDumpOnOutOfMemoryError
android.useAndroidX=true
org.gradle.java.installations.auto-download=true
```

#### Step 2: Add Foojay Toolchains Plugin

In `android/settings.gradle.kts`, add the Foojay resolver plugin:

```kotlin
plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "8.12.2" apply false
    id("org.jetbrains.kotlin.android") version "2.2.20" apply false
    id("org.gradle.toolchains.foojay-resolver-convention") version "0.9.0"  // Add this
}
```

The Foojay plugin enables Gradle to automatically download JDKs from [Adoptium](https://adoptium.net/) (formerly AdoptOpenJDK).

#### Step 3: Clean and Rebuild

```bash
flutter clean
flutter build apk --debug
```

On first build, Gradle will download JDK 17 to `~/.gradle/jdks/`.

### Alternative: Manual Java 17 Installation

If you prefer to install Java 17 manually:

```bash
# macOS with Homebrew
brew install openjdk@17

# Set JAVA_HOME (add to ~/.zshrc or ~/.bashrc)
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
```

### After the Fix

You may see deprecation warnings:

```
warning: [options] source value 8 is obsolete and will be removed in a future release
warning: [options] target value 8 is obsolete and will be removed in a future release
```

These come from older plugins (like `razorpay_flutter`) that still target Java 8. They are **non-blocking warnings** and can be ignored until those plugins update.

### File Locations

| File | Purpose |
|------|---------|
| `android/gradle.properties` | Gradle settings including auto-download |
| `android/settings.gradle.kts` | Plugin declarations including Foojay |
| `android/app/build.gradle.kts` | App-level build config with Java version |
| `android/gradle/wrapper/gradle-wrapper.properties` | Gradle version |

### Current Configuration Reference

**gradle.properties:**
```properties
org.gradle.jvmargs=-Xmx8G -XX:MaxMetaspaceSize=4G -XX:ReservedCodeCacheSize=512m -XX:+HeapDumpOnOutOfMemoryError
android.useAndroidX=true
org.gradle.java.installations.auto-download=true
```

**settings.gradle.kts:**
```kotlin
pluginManagement {
    val flutterSdkPath = run {
        val properties = java.util.Properties()
        file("local.properties").inputStream().use { properties.load(it) }
        val flutterSdkPath = properties.getProperty("flutter.sdk")
        require(flutterSdkPath != null) { "flutter.sdk not set in local.properties" }
        flutterSdkPath
    }

    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "8.12.2" apply false
    id("org.jetbrains.kotlin.android") version "2.2.20" apply false
    id("org.gradle.toolchains.foojay-resolver-convention") version "0.9.0"
}

include(":app")
```

### Related Documentation

- [Gradle Toolchains Guide](https://docs.gradle.org/current/userguide/toolchains.html)
- [Foojay Toolchains Plugin](https://github.com/gradle/foojay-toolchains)
- [Adoptium JDK Downloads](https://adoptium.net/)
