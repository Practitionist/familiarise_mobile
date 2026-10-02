#!/usr/bin/env bash
# Entrypoint for the API dev container.
#
# Runs before `dart_frog dev`. Everything here is designed to be a no-op on a
# warm container so `docker compose restart api` comes back in seconds rather
# than minutes.

set -euo pipefail
cd /app
export PATH="/root/.pub-cache/bin:$PATH"

# .dart_tool is a named volume, so it starts empty on a fresh volume even
# though pubspec.yaml is bind-mounted from the host. Resolve if needed.
if [ ! -f .dart_tool/package_config.json ]; then
  echo "==> flutter pub get (cold volume)"
  flutter pub get
fi

# Hash-guarded: regenerates lib/generated only when schema.prisma, the
# connector/freezed versions, or build.yaml actually changed. On a warm
# container this prints "up to date" and exits immediately.
./scripts/ensure-generated.sh

echo "==> starting: $*"
exec "$@"
