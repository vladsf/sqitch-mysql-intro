-- Verify delete_flip

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'Function "delete_flip" does not exist')
  FROM information_schema.routines
 WHERE routine_schema = database()
   AND routine_name = 'delete_flip';

ROLLBACK;
