mysql> SELECT SUBSTRING('Hello World', 1, 4);
+--------------------------------+
| SUBSTRING('Hello World', 1, 4) |
+--------------------------------+
| Hell                           |
+--------------------------------+
1 row in set (0.00 sec)

mysql> SELECT SUBSTRING('Hello World', 3);
+-----------------------------+
| SUBSTRING('Hello World', 3) |
+-----------------------------+
| llo World                   |
+-----------------------------+
1 row in set (0.00 sec)


mysql> SELECT SUBSTRING('Hello World', 3, 9);
+--------------------------------+
| SUBSTRING('Hello World', 3, 9) |
+--------------------------------+
| llo World                      |
+--------------------------------+
1 row in set (0.00 sec)

mysql> SELECT SUBSTRING('Hello World', 7);
+-----------------------------+
| SUBSTRING('Hello World', 7) |
+-----------------------------+
| World                       |
+-----------------------------+
1 row in set (0.00 sec)

mysql> SELECT SUBSTRING('Hello World', -3);
+------------------------------+
| SUBSTRING('Hello World', -3) |
+------------------------------+
| rld                          |
+------------------------------+
1 row in set (0.00 sec)

mysql> SELECT title FROM books;
+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| The Namesake                                        |
| Norse Mythology                                     |
| American Gods                                       |
| Interpreter of Maladies                             |
| A Hologram for the King: A Novel                    |
| The Circle                                          |
| The Amazing Adventures of Kavalier & Clay           |
| Just Kids                                           |
| A Heartbreaking Work of Staggering Genius           |
| Coraline                                            |
| What We Talk About When We Talk About Love: Stories |
| Where Im Calling From: Selected Stories            |
| White Noise                                         |
| Cannery Row                                         |
| Oblivion: Stories                                   |
| Consider the Lobster                                |
+-----------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT SUBSTRING('Where I'm Calling From: Selected Stories', 1, 10);
    '> This is not gonna work......Hint: Look at the "I'm" part
    "> Tou will get the idea why is not working
    "> ^C
mysql>
mysql>
mysql>
mysql>
-- ------------------------
-- Use Double Quotes instead 
-- ------------------------

mysql> SELECT SUBSTRING("Where I'm Calling From: Selected Stories", 1, 10);
+--------------------------------------------------------------+
| SUBSTRING("Where I'm Calling From: Selected Stories", 1, 10) |
+--------------------------------------------------------------+
| Where I'm                                                    |
+--------------------------------------------------------------+
'1 row in set (0.00 sec)

mysql> SELECT empid, empname, 'remaining casual leaves' AS RemainingLeaves FROM employee WHERE empid="E002";^C
mysql> SELECT SUBSTRING(title, 1, 10) FROM books;
+-------------------------+
| SUBSTRING(title, 1, 10) |
+-------------------------+
| The Namesa              |
| Norse Myth              |
| American G              |
| Interprete              |
| A Hologram              |
| The Circle              |
| The Amazin              |
| Just Kids               |
| A Heartbre              |
| Coraline                |
| What We Ta              |
| Where I'm               |
| White Nois              |
| Cannery Ro              |
| Oblivion:               |
| Consider t              |
+-------------------------+
'16 rows in set (0.01 sec)

mysql> SELECT SUBSTRING(title, 1, 10) AS 'Short Title' FROM books;
+-------------+
| Short Title |
+-------------+
| The Namesa  |
| Norse Myth  |
| American G  |
| Interprete  |
| A Hologram  |
| The Circle  |
| The Amazin  |
| Just Kids   |
| A Heartbre  |
| Coraline    |
| What We Ta  |
| Where I'm   |
| White Nois  |
| Cannery Ro  |
| Oblivion:   |
| Consider t  |
+-------------+
'16 rows in set (0.00 sec)

mysql> SUBSTR() also works the same which is short
    -> hand for SUBSTRING()
    -> ^C