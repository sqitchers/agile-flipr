-- Revert flipr:insert_user from pg

BEGIN;

DROP FUNCTION flipr.insert_user(TEXT, TEXT);

COMMIT;
