# Docker Local Development

Runs Postgres, the Dart Frog API and Flutter web locally, so the dev loop stops
depending on the shared Supabase database.

## TL;DR

```bash
make doctor    # check the toolchain (Docker Desktop must be running)
make up        # Postgres + API (:8080) + Flutter web (:3000)
```

If the containers feel slow on macOS, drop to the fast path — it delivers most
of the benefit:

```bash
make db                          # Postgres only, schema pushed and seeded
source scripts/use-db.sh local   # point the host at it
cd backend && dart_frog dev      # native, full speed
```

## Why this exists

Two separate problems, two separate fixes.

**The database was remote.** `backend/.env` pointed at Supabase's Mumbai pooler,
about 40 ms away. `appointment_repository.dart` alone issues 121 queries; a
request touching twenty of them spent roughly 800 ms on network round-trips
before doing any work. A local Postgres answers in well under a millisecond.
It is also disposable, so destructive tests stop being scary.

**Codegen was rebuilt from scratch every time.** `backend/lib/generated/` is
about 735,000 lines across 498 files, and it is gitignored.
`scripts/regenerate-build.sh` used to `rm -rf` it on every run, which threw away
build_runner's asset graph and forced a cold rebuild even when nothing had
changed. Docker cannot fix that — see [Codegen](#codegen) below for what does.

## Requirements

Docker Desktop with **at least 8 GB RAM, 4 CPUs and 60 GB disk**. The defaults
are too small: a Flutter web build and build_runner over 500 files will OOM.

You also need **real free space on the host** — around 15 GB. The Flutter image
is roughly 4 GB, and Docker's VM disk grows on demand. If the host fills up
while Docker is writing, the writes fail *inside* the VM and corrupt its
containerd content store. The symptom is unmistakable:

```
failed to solve: failed to compute cache key: input/output error
Error response from daemon: ... blob sha256:… : input/output error
write /var/lib/desktop-containerd/…/meta.db: input/output error
```

Once that happens, `docker system prune` cannot fix it — pruning has to read
the very blobs that are unreadable — and Docker Desktop may stop launching.
Recover with **Docker Desktop → Troubleshoot → Reset to factory defaults** (or
*Purge data*), then free host space before retrying. Nothing here is lost by
that reset: `make db` rebuilds the image in about 20 s and reprovisions the
database in under a second.

`make doctor` reports the daemon state before you start.

## What runs where

| | Where | Why |
|---|---|---|
| Postgres | container, host port **5433** | 5432 is usually taken by a Homebrew postgres |
| Dart Frog API | container, **:8080** | `dart_frog dev`, hot reload |
| Flutter **web** | container, **:3000** | matches the `APP_URL` the E2E prompts assume |
| Flutter **mobile** | **host**, natively | see below |

Mobile cannot be containerised. An iOS simulator needs macOS and Xcode, which
Docker cannot run at all; the Android emulator needs KVM, which is not available
inside Docker Desktop's VM. Keep using `./scripts/quick-ios.sh` and
`./scripts/quick-android.sh` — they talk to the same API on `localhost:8080`.

## Choosing a database

The backend resolves configuration as `.env` → `.env.local` → the process
environment, **last one winning**. So an exported variable always beats the
files, and nothing needs editing to switch.

```bash
# Containers — the compose default is already the local Postgres.
docker compose up

# Containers, pointed at Supabase instead:
FAM_DIRECT_URL='postgresql://…@aws-0-….pooler.supabase.com:5432/postgres' docker compose up

# Native backend:
source scripts/use-db.sh local
source scripts/use-db.sh supabase   # needs backend/.env.supabase
```

On every boot the API logs the database it actually resolved:

```
INFO: [Startup] Connecting to database... (host=db:5432, db=familiarise)
```

**Read that line.** If it names a `*.supabase.com` host when you expected local,
stop — you are about to operate on shared data. Credentials are never printed.

As a second layer, `docker/db-init` refuses to provision any host that is not
`db`, `postgres`, `localhost` or `127.0.0.1`, so a mistyped URL cannot cause it
to run `prisma db push --accept-data-loss` against production.

## How the schema gets there

There is no `migrations/` directory in this repo — `familiarise_web` owns
migrations. Provisioning therefore runs, in order:

1. `prisma db push` from the in-repo `backend/prisma/schema.prisma`, using
   Prisma 7.7.0 to match `familiarise_web`. Takes well under a second and
   produces 127 tables and 100 enums.
2. `backend/prisma/sql/ledger-triggers.sql` and `check-constraints.sql` —
   vendored from `familiarise_web`, because `db push` does not manage triggers
   or CHECK constraints. Both are idempotent.
3. `backend/prisma/sql/seed.d/*.sql` — one file per test prompt, extracted from
   the `## Data Seeding` blocks in `prompts/testing/unit/*.md`. Regenerate with
   `make seed-sql`.

Steps 1 and 2 run on every `docker compose up` and are near no-ops when nothing
changed. Step 3 is skipped once a marker row exists.

Each seed block is applied in its own transaction, because the prompts were
written to run standalone and a few have drifted from the schema. At the time
of writing 19 of 23 apply; the rest are reported by name, e.g.

```
! 16-support.sql: ERROR: relation "support_tickets" does not exist
! 23-dashboard.sql: ERROR: column "totalRevenue" of relation "ConsultantProfile" does not exist
```

Those are **stale prompts, not provisioning failures** — the model is
`SupportTicket`, not `support_tickets`. Fixing the prompts is worthwhile but out
of scope here; running them per-block means the drift is visible and costs one
fixture set instead of the entire seed.

To refresh the vendored SQL after an upstream change:

```bash
cp ~/Desktop/familiarise_web/prisma/sql/*.sql backend/prisma/sql/
```

## Codegen

This is where the minutes actually were.

**`backend/build.yaml`** disables `json_serializable` for the backend. It was
running over every file and producing nothing — there is not one
`part '*.g.dart'` directive in `backend/lib` or `backend/routes`, because the
Prisma connector writes `fromJson`/`toJson` by hand. Disabling it also drops
`source_gen|combining_builder` and `part_cleanup`, and removes freezed's
`runs_before` ordering barrier. (`lib/generated/schema_registry.g.dart` comes
from the Prisma generator, not build_runner, so it is unaffected.)

**`backend/scripts/ensure-generated.sh`** hashes `prisma/schema.prisma`, the
resolved `prisma_flutter_connector` and `freezed` versions, and `build.yaml`,
and skips regeneration when they all match the previous run. Since the schema is
launch-frozen, this is almost always a hit.

```bash
make regen         # skip if unchanged
make regen-force   # wipe lib/generated and rebuild
```

Inside the container, `lib/generated` and `.dart_tool` live in named volumes, so
they survive `docker compose down` and the regen does not re-run on restart.
`docker compose down -v` destroys them and the next start is a full cold build.

## Performance notes

Named volumes shadow every heavy directory (`.dart_tool`, `lib/generated`,
`.dart_frog`, `build`, the pub cache) so they stay on the VM's native
filesystem. Only human-authored source crosses the macOS virtiofs boundary.

For `.dart_tool` this is correctness, not tuning: `package_config.json` contains
absolute `/Users/...` paths that do not exist inside the container, so sharing
it between host and container is broken, not merely slow.

Consequence: the container's `lib/generated` is a **different tree** from the
host's. Your IDE and `dart analyze` keep using the host copy. Run
`./scripts/regenerate-build.sh --prisma` on the host at least once.

Flutter web in a container is the slowest and least essential piece — expect a
first compile of several minutes and hot restarts noticeably slower than native.
If it is not paying for itself, skip it with `make api` and run
`flutter run -d chrome` on the host.

Note that the web container's build_runner writes `env_config.g.dart` back into
the bind-mounted `lib/`, so it will overwrite the host's copy with
`API_BASE_URL=http://localhost:8080`. That is the same value the host would
normally bake; if you have customised `PHYSICAL_DEVICE_API_URL` for a physical
device, rerun the host codegen afterwards.

## Troubleshooting

**Port already in use** — `make doctor` reports 5433/8080/3000. Override the
database port with `FAM_PG_PORT=5434 docker compose up`.

**TLS/handshake error connecting to the database** — the URL lost its
`?sslmode=disable`. `DatabaseClient` treats only `localhost` and `127.0.0.1` as
local and otherwise requires TLS; inside compose the host is `db`, so the
parameter is required.

**Hot reload stopped firing** — file-watch propagation over virtiofs is the
flakiest part of the stack. `docker compose restart api`, or fall back to the
native path.

**`db-init` refuses to run** — it is telling you `DIRECT_URL` does not point at a
local database. That guard is deliberate; check the URL rather than removing it.
