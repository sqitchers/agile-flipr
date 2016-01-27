SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;

-- Plan the tests.
SELECT plan(1);

SELECT has_schema('flipr');

-- Clean up.
SELECT finish();
ROLLBACK;
