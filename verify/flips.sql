-- Verify flipr:flips on pg

BEGIN;

SELECT flip_id
     , nickname
     , body
     , timestamp
  FROM flipr.flips
 WHERE FALSE;

ROLLBACK;
