SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;
SELECT no_plan();
SET search_path TO flipr,public;

SELECT has_table(  'users' );
SELECT has_pk(     'users' );

SELECT has_column(        'users', 'nickname'  );
SELECT col_type_is(       'users', 'nickname', 'text' );
SELECT col_hasnt_default( 'users', 'nickname' );
SELECT col_is_pk(         'users', 'nickname' );

SELECT has_column(        'users', 'password'  );
SELECT col_type_is(       'users', 'password', 'text' );
SELECT col_not_null(      'users', 'password' );
SELECT col_hasnt_default( 'users', 'password' );

SELECT has_column(        'users', 'timestamp' );
SELECT col_type_is(       'users', 'timestamp', 'timestamp with time zone');
SELECT col_not_null(      'users', 'timestamp' );
SELECT col_has_default(   'users', 'timestamp' );
SELECT col_default_is(    'users', 'timestamp', 'now()' );

SELECT finish();
ROLLBACK;
