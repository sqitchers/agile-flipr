-- Verify flipr:insert_user on pg

BEGIN;

SELECT has_function_privilege(
    'flipr.insert_user(text, text)',
    'execute'
);

ROLLBACK;
