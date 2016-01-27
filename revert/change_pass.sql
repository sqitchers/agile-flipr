-- Revert flipr:change_pass from pg

BEGIN;

DROP FUNCTION flipr.change_pass(TEXT, TEXT, TEXT);

COMMIT;
