mysql> use shirts_db;
Database changed
mysql> CREATE TABLE shirts(
    -> shirt_id INT NOT NULL AUTO_INCREMENT,
    -> article VARCHAR(50),
    -> color VARCHAR(50),
    -> shirt_size VARCHAR(8),
    -> last_worn INT,
    -> PRIMARY KEY(shirt_id)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> show tables;
+---------------------+
| Tables_in_shirts_db |
+---------------------+
| shirts              |
+---------------------+
1 row in set (0.01 sec)


mysql> INSERT INTO shirts(article, color,shirt_size, last_worn)
    -> VALUES ('t-shirt', 'white', 'S', 10),
    -> ('t-shirt', 'green', 'S', 200),
    -> ('polo shirt', 'black', 'M', 10),
    -> ('tank top', 'blue', 'S', 50),
    -> ('t-shirt', 'pink', 'S', 0),
    -> ('polo shirt', 'red', 'M', 5),
    -> ('tank top', 'white', 'S', 200),
    -> ('tank top', 'blue', 'M', 15);
Query OK, 8 rows affected (0.01 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM shirts;
+----------+------------+-------+------------+-----------+
| shirt_id | article    | color | shirt_size | last_worn |
+----------+------------+-------+------------+-----------+
|        1 | t-shirt    | white | S          |        10 |
|        2 | t-shirt    | green | S          |       200 |
|        3 | polo shirt | black | M          |        10 |
|        4 | tank top   | blue  | S          |        50 |
|        5 | t-shirt    | pink  | S          |         0 |
|        6 | polo shirt | red   | M          |         5 |
|        7 | tank top   | white | S          |       200 |
|        8 | tank top   | blue  | M          |        15 |
+----------+------------+-------+------------+-----------+
8 rows in set (0.00 sec)

mysql> INSERT INTO shirts(article, color, shirt_size, last_worn)
    -> VALUES ('polo shirt', 'purple', 'M', 50);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM shirts;
+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        1 | t-shirt    | white  | S          |        10 |
|        2 | t-shirt    | green  | S          |       200 |
|        3 | polo shirt | black  | M          |        10 |
|        4 | tank top   | blue   | S          |        50 |
|        5 | t-shirt    | pink   | S          |         0 |
|        6 | polo shirt | red    | M          |         5 |
|        7 | tank top   | white  | S          |       200 |
|        8 | tank top   | blue   | M          |        15 |
|        9 | polo shirt | purple | M          |        50 |
+----------+------------+--------+------------+-----------+
9 rows in set (0.00 sec)

mysql> SELECT article, color from shirts;
+------------+--------+
| article    | color  |
+------------+--------+
| t-shirt    | white  |
| t-shirt    | green  |
| polo shirt | black  |
| tank top   | blue   |
| t-shirt    | pink   |
| polo shirt | red    |
| tank top   | white  |
| tank top   | blue   |
| polo shirt | purple |
+------------+--------+
9 rows in set (0.00 sec)

mysql> SELECT article, color, shirt_size, last_worn FROM shirts
    -> WHERE shirt_size=M;
ERROR 1054 (42S22): Unknown column 'M' in 'where clause'
mysql> SELECT article, color, shirt_size, last_worn FROM shirts
    -> WHERE shirt_size='M';
+------------+--------+------------+-----------+
| article    | color  | shirt_size | last_worn |
+------------+--------+------------+-----------+
| polo shirt | black  | M          |        10 |
| polo shirt | red    | M          |         5 |
| tank top   | blue   | M          |        15 |
| polo shirt | purple | M          |        50 |
+------------+--------+------------+-----------+
4 rows in set (0.00 sec)

mysql> UPDATE shirts SET shirt_size='L';
Query OK, 9 rows affected (0.00 sec)
Rows matched: 9  Changed: 9  Warnings: 0

mysql> SELECT * FROM shirts;
+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        1 | t-shirt    | white  | L          |        10 |
|        2 | t-shirt    | green  | L          |       200 |
|        3 | polo shirt | black  | L          |        10 |
|        4 | tank top   | blue   | L          |        50 |
|        5 | t-shirt    | pink   | L          |         0 |
|        6 | polo shirt | red    | L          |         5 |
|        7 | tank top   | white  | L          |       200 |
|        8 | tank top   | blue   | L          |        15 |
|        9 | polo shirt | purple | L          |        50 |
+----------+------------+--------+------------+-----------+
9 rows in set (0.00 sec)

mysql> UPDATE shirts SET shirt_size='M' WHERE article='polo shirt';
Query OK, 3 rows affected (0.00 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> SELECT * FROM shirts;
+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        1 | t-shirt    | white  | L          |        10 |
|        2 | t-shirt    | green  | L          |       200 |
|        3 | polo shirt | black  | M          |        10 |
|        4 | tank top   | blue   | L          |        50 |
|        5 | t-shirt    | pink   | L          |         0 |
|        6 | polo shirt | red    | M          |         5 |
|        7 | tank top   | white  | L          |       200 |
|        8 | tank top   | blue   | L          |        15 |
|        9 | polo shirt | purple | M          |        50 |
+----------+------------+--------+------------+-----------+
9 rows in set (0.00 sec)

mysql> UPDATE shirts SET last_worn=0 WHERE last_worn=15;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM shirts;
+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        1 | t-shirt    | white  | L          |        10 |
|        2 | t-shirt    | green  | L          |       200 |
|        3 | polo shirt | black  | M          |        10 |
|        4 | tank top   | blue   | L          |        50 |
|        5 | t-shirt    | pink   | L          |         0 |
|        6 | polo shirt | red    | M          |         5 |
|        7 | tank top   | white  | L          |       200 |
|        8 | tank top   | blue   | L          |         0 |
|        9 | polo shirt | purple | M          |        50 |
+----------+------------+--------+------------+-----------+
9 rows in set (0.00 sec)

mysql> UPDATE shirts SET size='XS', color='off white' WHERE color='white';
ERROR 1054 (42S22): Unknown column 'size' in 'field list'
mysql> UPDATE shirts SET shirt_size='XS', color='off white' WHERE color='white';
Query OK, 2 rows affected (0.00 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT * FROM shirts;
+----------+------------+-----------+------------+-----------+
| shirt_id | article    | color     | shirt_size | last_worn |
+----------+------------+-----------+------------+-----------+
|        1 | t-shirt    | off white | XS         |        10 |
|        2 | t-shirt    | green     | L          |       200 |
|        3 | polo shirt | black     | M          |        10 |
|        4 | tank top   | blue      | L          |        50 |
|        5 | t-shirt    | pink      | L          |         0 |
|        6 | polo shirt | red       | M          |         5 |
|        7 | tank top   | off white | XS         |       200 |
|        8 | tank top   | blue      | L          |         0 |
|        9 | polo shirt | purple    | M          |        50 |
+----------+------------+-----------+------------+-----------+
9 rows in set (0.00 sec)

mysql> DELETE FROM shirts WHERE last_worn=200;
Query OK, 2 rows affected (0.00 sec)

mysql> SELECT * FROM shirts;
+----------+------------+-----------+------------+-----------+
| shirt_id | article    | color     | shirt_size | last_worn |
+----------+------------+-----------+------------+-----------+
|        1 | t-shirt    | off white | XS         |        10 |
|        3 | polo shirt | black     | M          |        10 |
|        4 | tank top   | blue      | L          |        50 |
|        5 | t-shirt    | pink      | L          |         0 |
|        6 | polo shirt | red       | M          |         5 |
|        8 | tank top   | blue      | L          |         0 |
|        9 | polo shirt | purple    | M          |        50 |
+----------+------------+-----------+------------+-----------+
7 rows in set (0.00 sec)

mysql> DELETE FROM shirts WHERE 'article'='tank top';
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM shirts;
+----------+------------+-----------+------------+-----------+
| shirt_id | article    | color     | shirt_size | last_worn |
+----------+------------+-----------+------------+-----------+
|        1 | t-shirt    | off white | XS         |        10 |
|        3 | polo shirt | black     | M          |        10 |
|        4 | tank top   | blue      | L          |        50 |
|        5 | t-shirt    | pink      | L          |         0 |
|        6 | polo shirt | red       | M          |         5 |
|        8 | tank top   | blue      | L          |         0 |
|        9 | polo shirt | purple    | M          |        50 |
+----------+------------+-----------+------------+-----------+
7 rows in set (0.00 sec)

mysql> DELETE FROM shirts WHERE article='tank top';
Query OK, 2 rows affected (0.00 sec)

mysql> SELECT * FROM shirts;
+----------+------------+-----------+------------+-----------+
| shirt_id | article    | color     | shirt_size | last_worn |
+----------+------------+-----------+------------+-----------+
|        1 | t-shirt    | off white | XS         |        10 |
|        3 | polo shirt | black     | M          |        10 |
|        5 | t-shirt    | pink      | L          |         0 |
|        6 | polo shirt | red       | M          |         5 |
|        9 | polo shirt | purple    | M          |        50 |
+----------+------------+-----------+------------+-----------+
5 rows in set (0.00 sec)

mysql> Now Almighty Catastrophe Strike^C
mysql> DELETE ALL SHIRTS!!!! WOOOOOHHOOOOOO^C
mysql>
mysql>
mysql> DELETE FROM shirts;
Query OK, 5 rows affected (0.00 sec)

mysql> SELECT * FROM shirts;
Empty set (0.00 sec)

mysql> ^C
mysql> ^C
mysql>
mysql>
mysql> OHH NOOOHH!!
    ->
    -> Catastrophe Again!!
    -> ^C
mysql> DROP TABLE shirts;
Query OK, 0 rows affected (0.03 sec)

mysql> SELECT DATABASE();
+------------+
| DATABASE() |
+------------+
| shirts_db  |
+------------+
1 row in set (0.00 sec)

mysql> SHOW TABLES;
Empty set (0.00 sec)

mysql> DONE! DONE! DONE!
    -> The Annual Closet Inventory ENDS here!