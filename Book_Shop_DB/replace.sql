mysql> SELECT REPLACE('Hello World', 'Hell', '%$#@');
+----------------------------------------+
| REPLACE('Hello World', 'Hell', '%$#@') |
+----------------------------------------+
| %$#@o World                            |
+----------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT REPLACE('Hello World', 'Hell', 'NewWord');
+-------------------------------------------+
| REPLACE('Hello World', 'Hell', 'NewWord') |
+-------------------------------------------+
| NewWordo World                            |
+-------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT REPLACE('Hello World', 'l', '7');
+----------------------------------+
| REPLACE('Hello World', 'l', '7') |
+----------------------------------+
| He77o Wor7d                      |
+----------------------------------+
1 row in set (0.00 sec)

mysql> SELECT REPLACE('HellO World', 'o', '*');
+----------------------------------+
| REPLACE('HellO World', 'o', '*') |
+----------------------------------+
| HellO W*rld                      |
+----------------------------------+
1 row in set (0.00 sec)

mysql> Only Replaces exact words or letters^C
mysql> SELECT REPLACE('HellO World', 'hell', '*');
+-------------------------------------+
| REPLACE('HellO World', 'hell', '*') |
+-------------------------------------+
| HellO World                         |
+-------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT REPLACE('HellO World', 'Hell', '*');
+-------------------------------------+
| REPLACE('HellO World', 'Hell', '*') |
+-------------------------------------+
| *O World                            |
+-------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT REPLACE('HellO World', 'HelL', '*');
+-------------------------------------+
| REPLACE('HellO World', 'HelL', '*') |
+-------------------------------------+
| HellO World                         |
+-------------------------------------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql> SELECT REPLACE (
    -> 'Cheese Bread Coffee Milk', ' ', ' and ');
+-----------------------------------------------------+
| REPLACE (
'Cheese Bread Coffee Milk', ' ', ' and ') |
+-----------------------------------------------------+
| Cheese and Bread and Coffee and Milk                |
+-----------------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT REPLACE (
    -> 'Cheese Bread Coffee Milk', ' ', ' and '
    -> );
+------------------------------------------------------+
| REPLACE (
'Cheese Bread Coffee Milk', ' ', ' and '
) |
+------------------------------------------------------+
| Cheese and Bread and Coffee and Milk                 |
+------------------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT REPLACE (
    -> 'Cheese Bread Coffee Milk', ' ', ' and '
    -> ) AS FoodItems;
+--------------------------------------+
| FoodItems                            |
+--------------------------------------+
| Cheese and Bread and Coffee and Milk |
+--------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT REPLACE(
    -> title, 'e', '3'
    -> ) FROM books;
+-----------------------------------------------------+
| REPLACE(
title, 'e', '3'
)                          |
+-----------------------------------------------------+
| Th3 Nam3sak3                                        |
| Nors3 Mythology                                     |
| Am3rican Gods                                       |
| Int3rpr3t3r of Maladi3s                             |
| A Hologram for th3 King: A Nov3l                    |
| Th3 Circl3                                          |
| Th3 Amazing Adv3ntur3s of Kavali3r & Clay           |
| Just Kids                                           |
| A H3artbr3aking Work of Stagg3ring G3nius           |
| Coralin3                                            |
| What W3 Talk About Wh3n W3 Talk About Lov3: Stori3s |
| Wh3r3 Im Calling From: S3l3ct3d Stori3s            |
| Whit3 Nois3                                         |
| Cann3ry Row                                         |
| Oblivion: Stori3s                                   |
| Consid3r th3 Lobst3r                                |
+-----------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT REPLACE(
    -> title, 'e', '3'
    -> ) AS NewTitle FROM books;
+-----------------------------------------------------+
| NewTitle                                            |
+-----------------------------------------------------+
| Th3 Nam3sak3                                        |
| Nors3 Mythology                                     |
| Am3rican Gods                                       |
| Int3rpr3t3r of Maladi3s                             |
| A Hologram for th3 King: A Nov3l                    |
| Th3 Circl3                                          |
| Th3 Amazing Adv3ntur3s of Kavali3r & Clay           |
| Just Kids                                           |
| A H3artbr3aking Work of Stagg3ring G3nius           |
| Coralin3                                            |
| What W3 Talk About Wh3n W3 Talk About Lov3: Stori3s |
| Wh3r3 Im Calling From: S3l3ct3d Stori3s            |
| Whit3 Nois3                                         |
| Cann3ry Row                                         |
| Oblivion: Stori3s                                   |
| Consid3r th3 Lobst3r                                |
+-----------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT
    ->     SUBSTRING
    ->     (
    ->         REPLACE(title, 'e', '3'), 1, 10
    ->     )
    -> FROM books;
ERROR 1630 (42000): FUNCTION book_shop.SUBSTRING does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
mysql>         REPLACE(title, 'e', '3'), 1, 1
    ->
    -> ^C
mysql>
mysql>
mysql>
mysql> SELECT SUBSTRING(REPLACE(title, 'e', '3'),1,10)
    -> FROM books;
+------------------------------------------+
| SUBSTRING(REPLACE(title, 'e', '3'),1,10) |
+------------------------------------------+
| Th3 Nam3sa                               |
| Nors3 Myth                               |
| Am3rican G                               |
| Int3rpr3t3                               |
| A Hologram                               |
| Th3 Circl3                               |
| Th3 Amazin                               |
| Just Kids                                |
| A H3artbr3                               |
| Coralin3                                 |
| What W3 Ta                               |
| Wh3r3 Im                                |
| Whit3 Nois                               |
| Cann3ry Ro                               |
| Oblivion:                                |
| Consid3r t                               |
+------------------------------------------+
16 rows in set (0.00 sec)