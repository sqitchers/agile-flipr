SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;
SELECT no_plan();
-- SELECT plan(1);
SET search_path TO flipr,public;

SELECT has_table(  'flips' );
SELECT has_pk(     'flips' );

SELECT has_column(        'flips', 'flip_id'  );
SELECT col_type_is(       'flips', 'flip_id', 'bigint' );
SELECT col_has_default(   'flips', 'flip_id' );
SELECT col_default_is(    'flips', 'flip_id', $$nextval('flips_flip_id_seq'::regclass)$$ );
SELECT col_is_pk(         'flips', 'flip_id' );

SELECT has_column(        'flips', 'nickname'  );
SELECT col_type_is(       'flips', 'nickname', 'text' );
SELECT col_hasnt_default( 'flips', 'nickname' );
SELECT col_is_fk(         'flips', 'nickname' );
SELECT fk_ok(             'flips', 'nickname', 'users', 'nickname');

SELECT has_column(        'flips', 'body'  );
SELECT col_type_is(       'flips', 'body', 'text' );
SELECT col_not_null(      'flips', 'body' );
SELECT col_has_default(   'flips', 'body' );
SELECT col_default_is(    'flips', 'body', '' );
SELECT col_has_check(     'flips', 'body' );

SELECT has_column(        'flips', 'timestamp' );
SELECT col_type_is(       'flips', 'timestamp', 'timestamp with time zone' );
SELECT col_not_null(      'flips', 'timestamp' );
SELECT col_has_default(   'flips', 'timestamp' );
SELECT col_default_is(    'flips', 'timestamp', 'clock_timestamp()' );

SELECT finish();
ROLLBACK;
