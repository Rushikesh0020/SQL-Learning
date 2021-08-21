CREATE TABLE thingies (price FLOAT);

INSERT INTO thingies(price) VALUES (88.45);

SELECT * FROM thingies;
+-------+
| price |
+-------+
| 88.45 |
+-------+

INSERT INTO thingies(price) VALUES (8877.45);

SELECT * FROM thingies;
+---------+
| price   |
+---------+
|   88.45 |
| 8877.45 |
+---------+

INSERT INTO thingies(price) VALUES (8877665544.45);

SELECT * FROM thingies;
+------------+
| price      |
+------------+
|      88.45 |
|    8877.45 |
| 8877670000 |
+------------+


-- Store larger numbers using less space

-- BUT.....

-- (and it's a big BUT)

-- It comes at the cost of precision

Look, I made a table!

Data Type	Memory Needed	Precision Issues
FLOAT	    4 Bytes	        ~7 digits
DOUBLE	    8 Bytes	        ~15 digits

-- So Which Do I Use?
    -- Go for Double 