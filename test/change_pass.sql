SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;
SET search_path TO flipr,public;

BEGIN;
--SELECT no_plan();
SELECT plan(9);

SELECT has_function( 'change_pass' );
SELECT has_function(
    'change_pass', ARRAY['text', 'text', 'text']
);
SELECT function_lang_is(
    'change_pass', ARRAY['text', 'text', 'text'],
    'plpgsql'
);
SELECT function_returns(
    'change_pass', ARRAY['text', 'text', 'text'],
    'boolean'
);
SELECT volatility_is(
    'change_pass', ARRAY['text', 'text', 'text'],
    'volatile'
);

SELECT insert_user('theory', 'foo');

SELECT ok(
    change_pass('theory', 'foo', 'bar'),
    'Changing a password should return true'
);

SELECT ok( EXISTS(
    SELECT 1 FROM flipr.users
     WHERE nickname = 'theory'
       AND password = crypt('bar', password)
), 'The password should have been changed' );

SELECT ok(
    NOT change_pass('theory', 'foo', 'bar'),
    'Bad old password should return false'
);

SELECT ok( EXISTS(
    SELECT 1 FROM flipr.users
     WHERE nickname = 'theory'
       AND password = crypt('bar', password)
), 'The password should be unchanged' );

SELECT finish();
ROLLBACK;
