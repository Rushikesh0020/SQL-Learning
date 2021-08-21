DECIMAL(13,2)
-- Here: 
--     13==>>Represents total number of digits
--     2 ==>>Represents Digits after Decimal 
Eg: 
    DECIMAL(5,2)
        999.99

CREATE TABLE items(price DECIMAL(5,2));

INSERT INTO items(price) VALUES(7987654);  --Gives Error
ERROR 1264 (22003): Out of range value for column 'price' at row 1

INSERT INTO items(price) VALUES(7);

+-------+
| price |
+-------+
|  7.00 |
+-------+
 INSERT INTO items(price) VALUES(298.999);
Query OK, 1 row affected, 1 warning (0.00 sec)

mysql> SELECT * FROM items;
+--------+
| price  |
+--------+
|   7.00 |
| 299.00 |
+--------+
2 rows in set (0.00 sec)
   