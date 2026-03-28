# Familiarise Mobile API — Production Dockerfile
#
# IMPORTANT BUILD NOTES (learned from failed deployments):
#
# 1. BASE IMAGE: Must use Flutter image, NOT dart:stable.
#    prisma_flutter_connector depends on the Flutter SDK for dependency
#    resolution. Using dart:stable causes "flutter from sdk doesn't exist"
#    during `dart pub get`.
#
# 2. PRISMA CODEGEN: lib/generated/ is gitignored (PR #108), so Railway
#    never receives the Prisma-generated types. The Dockerfile must regenerate
#    them via `dart run prisma_flutter_connector:generate`.
#
# 3. BUILD_RUNNER: After Prisma generation, freezed/json_serializable must
#    also run. Without this, the AOT compile fails with "Not a constant
#    expression" and undefined type errors in repositories.
#
# 4. PRISMA SCHEMA: backend/prisma/schema.prisma was originally a symlink
#    to ../../familiarise_web/prisma/schema.prisma. Docker cannot follow
#    symlinks that point outside the build context. The symlink was replaced
#    with a real file copy. If the web schema changes, re-copy it:
#      cp ~/Desktop/familiarise_web/prisma/schema.prisma backend/prisma/schema.prisma
#
# 5. RUNTIME IMAGE: Cannot use `FROM scratch` with the Flutter build image.
#    The official dart:stable image provides /runtime/ (libc + friends) for
#    scratch-based final stages, but the Flutter image does not. AOT-compiled
#    Dart binaries need libc, so we use debian:bookworm-slim instead.
#
# 6. LOCAL TESTING: Always test locally before deploying to Railway:
#      docker build -t familiarise-mobile-api .
#      docker run -p 8080:8080 --env-file .env familiarise-mobile-api
#      curl http://localhost:8080/api/health
#
# Build steps mirror: scripts/regenerate-build.sh --backend
# ─────────────────────────────────────────────────────────────

# ── Stage 1: Build ──────────────────────────────────────────
FROM ghcr.io/cirruslabs/flutter:stable AS build

WORKDIR /app

# Install dart_frog_cli for the build step
RUN dart pub global activate dart_frog_cli
ENV PATH="/root/.pub-cache/bin:${PATH}"

# Copy and resolve dependencies first (Docker layer caching)
COPY pubspec.* ./
RUN flutter pub get

# Copy full source
COPY . .
RUN flutter pub get --offline

# 1. Generate Prisma client (lib/generated/ is gitignored, must regenerate)
RUN dart run prisma_flutter_connector:generate \
    --schema prisma/schema.prisma \
    --output lib/generated \
    --server

# 2. Run build_runner for freezed/json codegen on generated models
RUN dart run build_runner build --delete-conflicting-outputs

# 3. Generate Dart Frog build output (creates build/bin/server.dart)
RUN dart_frog build

# 4. AOT compile the generated server to a native binary
RUN dart compile exe build/bin/server.dart -o build/bin/server

# ── Stage 2: Runtime ────────────────────────────────────────
# Use debian:bookworm-slim (NOT scratch) — the Flutter build image does not
# provide /runtime/ like dart:stable does. AOT binaries need libc + friends.
FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

COPY --from=build /app/build/bin/server /app/bin/server

EXPOSE 8080

CMD ["/app/bin/server"]
