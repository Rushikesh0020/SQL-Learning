-- Prob Stat: What's a good use case of CHAR 
    -- Description: Implement one CHAR 
CREATE TABLE datatypes
    (
        userid INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(100),
        gender CHAR(6),
        age INT,
        PRIMARY KEY(userid)
    );

INSERT INTO datatypes(name, gender, age)
VALUES ('Alex', 'M', 43),
       ('Ruby', 'F', 54),
       ('Stephanie', 'Female', 21); 
+--------+-----------+--------+------+
| userid | name      | gender | age  |
+--------+-----------+--------+------+
|      1 | Alex      | M      |   43 |
|      2 | Ruby      | F      |   54 |
|      3 | Stephanie | Female |   21 |
+--------+-----------+--------+------+
-----------------------------------------------------------------------
----------------------------------------------------------------------
SELECT CURTIME();
+-----------+
| CURTIME() |
+-----------+
| 07:22:56  |
+-----------+

SELECT CURDATE();
+------------+
| CURDATE()  |
+------------+
| 2021-08-20 |
+------------+
-----------------------------------------------------
-----------------------------------------------------
SELECT DAYOFWEEK(NOW());
+------------------+
| DAYOFWEEK(NOW()) |
+------------------+
|                6 |
+------------------+

OR 

SELECT DATE_FORMAT(NOW(), '%w')


-------------------------------------------------------------
-------------------------------------------------------------

CREATE TABLE inventory
    (
        item_name VARCHAR(200),
        price DECIMAL(8,2),
        quantity INT
    );

CREATE TABLE tweet
    (
        content VARCHAR(140),
        username VARCHAR(50),
        created_at TIMESTAMP DEFAULT NOW()
    );


