#!/usr/bin/env bash
# Entrypoint for the Flutter web dev container.

set -euo pipefail
cd /app
export PATH="/root/.pub-cache/bin:$PATH"

API_BASE_URL="${FAM_API_BASE_URL:-http://localhost:8080}"

# envied reads .env at CODEGEN time and bakes the values into
# lib/core/config/env_config.g.dart — they are not read at runtime. So the file
# has to exist before build_runner, and API_BASE_URL has to be correct from the
# BROWSER's point of view. The browser runs on the host, so that is the
# published host port (http://localhost:8080), NOT the compose service name.
#
# Written fresh on every start rather than bind-mounted, so the container never
# depends on a host .env that may hold production values.
if [ ! -f .env ] || ! grep -q "^API_BASE_URL=${API_BASE_URL}$" .env 2>/dev/null; then
  echo "==> writing .env (API_BASE_URL=${API_BASE_URL})"
  cat > .env <<EOF
API_BASE_URL=${API_BASE_URL}
PHYSICAL_DEVICE_API_URL=
USE_PRISMA=false
SUPABASE_URL=${FAM_SUPABASE_URL:-}
SUPABASE_ANON_KEY=${FAM_SUPABASE_ANON_KEY:-}
STREAM_API_KEY=${FAM_STREAM_API_KEY:-}
RAZORPAY_KEY_ID=${FAM_RAZORPAY_KEY_ID:-}
STRIPE_PUBLISHABLE_KEY=${FAM_STRIPE_PUBLISHABLE_KEY:-}
SENTRY_DSN=
GOOGLE_CLIENT_ID_WEB=${FAM_GOOGLE_CLIENT_ID_WEB:-}
GOOGLE_CLIENT_ID_IOS=
GOOGLE_CLIENT_ID_ANDROID=
DATABASE_URL=
DIRECT_URL=
EOF
fi

if [ ! -f .dart_tool/package_config.json ]; then
  echo "==> flutter pub get (cold volume)"
  flutter pub get
fi

# envied/freezed/riverpod codegen. build_runner keeps its asset graph in the
# .dart_tool named volume, so this is incremental after the first run.
echo "==> build_runner"
dart run build_runner build --delete-conflicting-outputs

echo "==> starting: $*"
exec "$@"
