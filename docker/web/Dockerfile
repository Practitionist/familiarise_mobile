# Flutter web dev server for docker-compose. Build context is the repo root.
#
# This is the slowest and least essential service in the stack (see
# docs/local-dev.md for measured expectations). It exists so that
# `docker compose up` brings up a working frontend at http://localhost:3000,
# matching the APP_URL the E2E prompts in prompts/testing/ already assume.
#
# Mobile is NOT built here and cannot be: an iOS simulator needs macOS + Xcode,
# which cannot be containerised, and the Android emulator needs KVM, which is
# unavailable inside Docker Desktop's VM. Mobile stays native on the host and
# talks to the same API on localhost:8080.

FROM ghcr.io/cirruslabs/flutter:stable

WORKDIR /app

RUN flutter config --enable-web

# Resolve dependencies in their own layer so source edits don't re-run pub.
COPY pubspec.yaml pubspec.lock ./
RUN flutter pub get

COPY docker/web/entrypoint.sh /usr/local/bin/web-entrypoint
RUN chmod +x /usr/local/bin/web-entrypoint

EXPOSE 3000

ENTRYPOINT ["/usr/local/bin/web-entrypoint"]

CMD ["flutter", "run", "-d", "web-server", \
     "--web-hostname", "0.0.0.0", "--web-port", "3000"]
