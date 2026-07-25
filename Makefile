# Familiarise local development.
#
#   make up        everything (Postgres + API + Flutter web)
#   make db        Postgres only — the fast path if containers feel slow
#   make down      stop, keeping data and build caches
#
# `make help` lists everything.

.DEFAULT_GOAL := help
.PHONY: help up db api down reset logs shell psql test regen regen-force seed-sql doctor

help: ## Show this help
	@grep -hE '^[a-z-]+:.*?## ' $(MAKEFILE_LIST) \
	  | awk 'BEGIN{FS=":.*?## "}{printf "  \033[36m%-12s\033[0m %s\n", $$1, $$2}'

up: ## Start the full stack (Postgres + API + Flutter web)
	docker compose up

db: ## Start Postgres only, provisioned — use with a native `dart_frog dev`
	docker compose up db-init

api: ## Start Postgres + API, no Flutter web
	docker compose up db-init api

down: ## Stop everything, KEEPING the database and build caches
	docker compose down

reset: ## Destroy the database and all build caches (next start is a cold rebuild)
	docker compose down -v

logs: ## Tail logs from all services
	docker compose logs -f

shell: ## Open a shell in the API container
	docker compose exec api bash

psql: ## Open psql against the local database
	docker compose exec db psql -U familiarise -d familiarise

test: ## Run the backend test suite inside the API container
	docker compose exec api dart test

regen: ## Backend codegen, skipped if schema/versions/build.yaml are unchanged
	./scripts/regenerate-build.sh --prisma

regen-force: ## Backend codegen, wiping lib/generated first
	./scripts/regenerate-build.sh --prisma --force

seed-sql: ## Rebuild backend/prisma/sql/seed-dev.sql from prompts/testing/unit/*.md
	./scripts/gen-dev-seed.sh

doctor: ## Check that the local toolchain can run the stack
	@printf 'docker      : '; docker --version 2>/dev/null || echo 'MISSING'
	@printf 'compose     : '; docker compose version --short 2>/dev/null || echo 'MISSING'
	@printf 'daemon      : '; v=$$(docker info --format '{{.ServerVersion}} ({{.Architecture}})' 2>/dev/null); \
	  [ -n "$$v" ] && [ "$$v" != " ()" ] && echo "$$v" || echo 'NOT RUNNING — start Docker Desktop'
	@printf 'flutter     : '; flutter --version 2>/dev/null | head -1 || echo 'MISSING'
	@printf 'port 5433   : '; lsof -ti:5433 >/dev/null 2>&1 && echo 'IN USE — set FAM_PG_PORT' || echo 'free'
	@printf 'port 8080   : '; lsof -ti:8080 >/dev/null 2>&1 && echo 'IN USE' || echo 'free'
	@printf 'port 3000   : '; lsof -ti:3000 >/dev/null 2>&1 && echo 'IN USE' || echo 'free'
