-- Revert flipr:flips from pg

BEGIN;

DROP TABLE flipr.flips;

COMMIT;
