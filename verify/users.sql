-- Verify flipr:users on pg

BEGIN;

SELECT nickname, password, timestamp
  FROM flipr.users
 WHERE FALSE;

ROLLBACK;
