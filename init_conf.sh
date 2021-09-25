#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d "$POSTGRES_DB" <<-EOSQL

    CREATE ROLE [USER] with SUPERUSER PASSWORD [PASSWORD];

EOSQL