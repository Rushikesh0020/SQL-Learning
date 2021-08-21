SELECT name, birthdate, DAY(birthdate) FROM people;
+-------+------------+----------------+
| name  | birthdate  | DAY(birthdate) |
+-------+------------+----------------+
| Larry | 2000-04-10 |             10 |
| Barry | 1968-04-10 |             10 |
| Alex  | 2021-08-20 |             20 |
+-------+------------+----------------+

SELECT name, birthdate, DAYNAME(birthdate) FROM people;
+-------+------------+--------------------+
| name  | birthdate  | DAYNAME(birthdate) |
+-------+------------+--------------------+
| Larry | 2000-04-10 | Monday             |
| Barry | 1968-04-10 | Wednesday          |
| Alex  | 2021-08-20 | Friday             |
+-------+------------+--------------------+

SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;
+-------+------------+----------------------+
| name  | birthdate  | DAYOFWEEK(birthdate) |
+-------+------------+----------------------+
| Larry | 2000-04-10 |                    2 |
| Barry | 1968-04-10 |                    4 |
| Alex  | 2021-08-20 |                    6 |
+-------+------------+----------------------+

-- Like wise there are many simple DATE AND TIME FUNCTIONS 
Check out them here: 
-- https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html 


-- What if we want to format it like this
--     2017-04-21   ====> April 21 2017
Solution 1: (Not prefferred)
SELECT CONCAT
    (
        MONTHNAME(birthdate), ' ', DAY(birthdate), ' ',  YEAR(birthdate)
    ) AS 'weird-date'
    FROM people;

+----------------+
| weird-date     |
+----------------+
| April 10 2000  |
| April 10 1968  |
| August 20 2021 |
+----------------+


Solution 2: Date Format: DATE_FORMAT(date, format) : most prefferred
GO through documenation for detailed list and info
https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_date-format

-- DATE_FORMAT(date,format)

-- Formats the date value according to the format string.

-- The specifiers shown in the following table may be
--  used in the format string. The % character is required before 
-- format specifier characters. The specifiers apply to other functions
--  as well: STR_TO_DATE(), TIME_FORMAT(), UNIX_TIMESTAMP(). 

SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W %M %Y') AS 'weird-date';
+---------------------+
| weird-date          |
+---------------------+
| Sunday October 2009 |
+---------------------+

We can put , - or whatever in between
SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W-%M-%Y') AS 'weird-date';
-- Sunday-October-2009

----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

SELECT DATE_FORMAT(birthdt, 'Was born on %W') FROM people;
+----------------------------------------+
| DATE_FORMAT(birthdt, 'Was born on %W') |
+----------------------------------------+
| Was born on Monday                     |
| Was born on Wednesday                  |
| Was born on Friday                     |
+----------------------------------------+

SELECT DATE_FORMAT(birthdt, '%d/%m/%Y') FROM people;
+----------------------------------+
| DATE_FORMAT(birthdt, '%d/%m/%Y') |
+----------------------------------+
| 10/04/2000                       |
| 10/04/1968                       |
| 20/08/2021                       |
+----------------------------------+

SELECT DATE_FORMAT(birthdt, '%d/%m%Y at %h:%m') FROM people;
+------------------------------------------+
| DATE_FORMAT(birthdt, '%d/%m%Y at %h:%m') |
+------------------------------------------+
| 10/042000 at 08:04                       |
| 10/041968 at 03:04                       |
| 20/082021 at 05:08                       |
+------------------------------------------+