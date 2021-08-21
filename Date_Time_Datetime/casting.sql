SELECT CAST('2000-04-10' AS DATETIME);
+--------------------------------+
| CAST('2000-04-10' AS DATETIME) |
+--------------------------------+
| 2000-04-10 00:00:00            |
+--------------------------------+


SELECT DATABASE();

SELECT name, birthdt FROM people
WHERE birthdt BETWEEN '1968-01-01' AND '2021-01-01';
-- This above query works fine....SQL is smart enough to guess that it is date
+-------+---------------------+
| name  | birthdt             |
+-------+---------------------+
| Larry | 2000-04-10 08:30:26 |
| Barry | 1968-04-10 03:59:30 |
+-------+---------------------+

-- But try to use 'CAST' in this case : 

SELECT name, birthdt FROM people
WHERE birthdt BETWEEN CAST('1968-01-01' AS DATETIME) AND CAST('2021-01-01' AS DATETIME);
-- Same o/p 