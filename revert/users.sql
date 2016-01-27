-- Revert flipr:users from pg

BEGIN;

DROP TABLE flipr.users;

COMMIT;
