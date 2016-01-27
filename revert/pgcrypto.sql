-- Revert flipr:pgcrypto from pg

BEGIN;

DROP EXTENSION pgcrypto;

COMMIT;
