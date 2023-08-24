#!/bin/sh
set -e

apk add postgresql-client --no-cache
sleep 2

 PGPASSWORD="$POSTGRES_PASSWORD" psql -v  --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" --host "$POSTGRES_HOST"<<-EOSQL
	CREATE DATABASE petfirst;
	CREATE DATABASE petheaven;
	CREATE DATABASE nifty;
	CREATE DATABASE orchard;
	CREATE USER  c2s with encrypted password 'password';
	GRANT ALL PRIVILEGES ON DATABASE petfirst TO c2s;
	GRANT ALL PRIVILEGES ON DATABASE petheaven TO c2s;
	GRANT ALL PRIVILEGES ON DATABASE nifty TO c2s;
	GRANT ALL PRIVILEGES ON DATABASE orchard TO c2s;
EOSQL
