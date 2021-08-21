-- DATE => Values a Date but No Time : 'YYYY:MM:DD' Format
-- Time => Values a Time but No Date : 'HH:MM:SS' Format
-- DATETIME => VALUES Date and Time: 'YYYY:MM:DD HH:MM:SS' Format => Most used 

CREATE TABLE people
    (
        name VARCHAR(100),
        birthdate DATE,
        birthtime TIME,
        birthdt DATETIME
    );

INSERT INTO people
VALUES ('Larry','2000-04-10', '08:30:26', '2000-04-10 08:30:26'),
       ('Barry','1968-04-10', '03:59:30', '1968-04-10 03:59:30');

SELECT * FROM people;
+-------+------------+-----------+---------------------+
| name  | birthdate  | birthtime | birthdt             |
+-------+------------+-----------+---------------------+
| Larry | 2000-04-10 | 08:30:26  | 2000-04-10 08:30:26 |
| Barry | 1968-04-10 | 03:59:30  | 1968-04-10 03:59:30 |
+-------+------------+-----------+---------------------+

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Alex', CURDATE(), CURTIME(), NOW());

+-------+------------+-----------+---------------------+
| name  | birthdate  | birthtime | birthdt             |
+-------+------------+-----------+---------------------+
| Larry | 2000-04-10 | 08:30:26  | 2000-04-10 08:30:26 |
| Barry | 1968-04-10 | 03:59:30  | 1968-04-10 03:59:30 |
| Alex  | 2021-08-20 | 05:15:38  | 2021-08-20 05:15:38 |
+-------+------------+-----------+---------------------+





