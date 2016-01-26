-- Revert flipr:appschema from pg

BEGIN;

DROP SCHEMA flipr;

COMMIT;
