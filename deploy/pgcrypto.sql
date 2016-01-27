-- Deploy flipr:pgcrypto to pg

BEGIN;

CREATE EXTENSION pgcrypto;

COMMIT;
