SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;
SET search_path TO flipr,public;

-- Plan the tests.
BEGIN;
SELECT plan(12);

SELECT has_function( 'insert_user' );

SELECT has_function(
    'insert_user', ARRAY['text', 'text']
);
SELECT function_lang_is(
    'insert_user', ARRAY['text', 'text'],
    'sql'
);
SELECT function_returns(
    'insert_user', ARRAY['text', 'text'],
    'void'
);
SELECT volatility_is(
    'insert_user', ARRAY['text', 'text'],
    'volatile'
);

SELECT lives_ok(
    $$ SELECT insert_user('theory', 'foo') $$,
    'Insert a user'
);

SELECT ok( EXISTS(
    SELECT 1 FROM flipr.users
     WHERE nickname = 'theory'
       AND password = crypt('foo', password)
), 'The user should have been inserted' );

SELECT lives_ok(
    $$ SELECT insert_user('strongrrl', 'w00t') $$,
    'Insert another user'
);

SELECT is(COUNT(*)::INT, 2, 'There should be two users')
  FROM flipr.users;

SELECT ok( EXISTS(
    SELECT 1 FROM flipr.users
     WHERE nickname = 'strongrrl'
       AND password = crypt('w00t', password)
), 'The second user should have been inserted' );

SELECT throws_ok(
    $$ SELECT insert_user('theory', 'ha-ha') $$,
    23505, -- duplicate key violation
    NULL,  -- localized error message
    'Should get an error for duplicate nickname'
);

SELECT is(COUNT(*)::INT, 2, 'Should still have two users')
  FROM flipr.users;

SELECT finish();
ROLLBACK;
