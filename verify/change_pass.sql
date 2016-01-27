-- Verify flipr:change_pass on pg

BEGIN;

SELECT has_function_privilege('flipr.change_pass(text, text, text)', 'execute');

ROLLBACK;
