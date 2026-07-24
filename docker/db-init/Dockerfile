# One-shot provisioner for the local development Postgres.
#
# Deliberately NOT alpine: we need the `psql` client to apply the sidecar SQL
# (ledger triggers + CHECK constraints), and postgresql-client is a one-line
# install on bookworm. bookworm also ships OpenSSL 3, which is what Prisma's
# linux-*-openssl-3.0.x query engines expect.
#
# Prisma is pinned to 7.7.0 to match familiarise_web, which owns the schema.
#
# NOTE: no package.json and no prisma.config.ts. `prisma db push --schema X
# --url Y` reads neither a config file nor `datasource.url`, which is exactly
# what we need — backend/prisma/schema.prisma declares a datasource with no
# url (Prisma 7 moved those to config), and that file is owned by another PR
# and must not be edited here.

FROM node:24-bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
      postgresql-client \
      ca-certificates \
      openssl \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g prisma@7.7.0

# Force the query/schema engine download into the image so `docker compose up`
# never hits the network. This also makes a missing arm64 engine fail the
# image BUILD with a clear message, rather than failing confusingly at runtime.
RUN prisma version

WORKDIR /work

COPY entrypoint.sh /usr/local/bin/db-init
RUN chmod +x /usr/local/bin/db-init

# prisma/ (schema + sql/) is bind-mounted read-only by docker-compose, so the
# in-repo copies stay the single source of truth.

ENTRYPOINT ["/usr/local/bin/db-init"]
