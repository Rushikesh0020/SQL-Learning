-- I want first_name, last_name, and email 
-- of every user who actually placed the order
-- next to that order, not any arbitrary order
-- ------------
-- INNER JOIN : Most used
-- ------------

-- Idea: Select all records from A and B where 
--       the join condition is met


Two Types (Only syntax diff)
-------------------------
1. Implicit Inner Join 
2. Explicit Inner Join 
-------------------------


1. Implicit Inner Join 

SELECT * FROM customers, orders 
WHERE customers.id =  customer_id;
-- oR  
SELECT * FROM customers, orders 
WHERE customers.id =  orders.customer_id;
    -- Good to follow this approach

o/p: 
+----+------------+-----------+------------------+----+------------+--------+-------------+
| id | first_name | last_name | email            | id | order_date | amount | customer_id |
+----+------------+-----------+------------------+----+------------+--------+-------------+
|  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
|  1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
|  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
+----+------------+-----------+------------------+----+------------+--------+-------------+

SELECT first_name, last_name, email, order_date, amount
FROM customers, orders 
WHERE customers.id = orders.customer_id;
+------------+-----------+------------------+------------+--------+
| first_name | last_name | email            | order_date | amount |
+------------+-----------+------------------+------------+--------+
| Boy        | George    | george@gmail.com | 2016-02-10 |  99.99 |
| Boy        | George    | george@gmail.com | 2017-11-11 |  35.50 |
| George     | Michael   | gm@gmail.com     | 2014-12-12 | 800.67 |
| George     | Michael   | gm@gmail.com     | 2015-01-03 |  12.50 |
| Bette      | Davis     | bette@aol.com    | 1999-04-11 | 450.25 |
+------------+-----------+------------------+------------+--------+

-- Better way: 
    means cleaner i mean 
2. Explicit Inner Join : Better Way 

SELECT first_name, last_name, email, order_date, amount 
FROM customers
JOIN orders
    ON customers.id = orders.customer_id;

-- oR

SELECT first_name, last_name, email, order_date, amount 
FROM orders
JOIN customers
    ON customers.id = orders.customer_id;

-- oR 
SELECT first_name, last_name, email, order_date, amount 
FROM customers
INNER JOIN orders
    ON customers.id = orders.customer_id;

-- Same o/p as above  
------------------------------------------------------

Getting Fancier: 
1. 

SELECT first_name, last_name, email, order_date, amount 
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
 ORDER BY amount;

 -- yeah! You have already guessed the output buddy! Cheers!


2. 

SELECT first_name, last_name, SUM(amount) AS total_spent
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;

+------------+-----------+-------------+
| first_name | last_name | total_spent |
+------------+-----------+-------------+
| George     | Michael   |      813.17 |
| Bette      | Davis     |      450.25 |
| Boy        | George    |      135.49 |
+------------+-----------+-------------+