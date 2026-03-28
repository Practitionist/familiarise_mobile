# ── Stage 1: Build ──────────────────────────────────────────
FROM dart:stable AS build

WORKDIR /app

# Install dart_frog_cli for the build step
RUN dart pub global activate dart_frog_cli
ENV PATH="/root/.pub-cache/bin:${PATH}"

# Copy and resolve dependencies first (Docker layer caching)
COPY pubspec.* ./
RUN dart pub get

# Copy full source
COPY . .
RUN dart pub get --offline

# Generate Dart Frog build output (creates build/bin/server.dart)
RUN dart_frog build

# AOT compile the generated server to a native binary
RUN dart compile exe build/bin/server.dart -o build/bin/server

# ── Stage 2: Runtime ────────────────────────────────────────
FROM scratch

# Copy Dart runtime libraries and compiled binary
COPY --from=build /runtime/ /
COPY --from=build /app/build/bin/server /app/bin/

EXPOSE 8080

CMD ["/app/bin/server"]
