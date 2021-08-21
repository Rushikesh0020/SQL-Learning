-- ------------
-- LEFT JOIN 
-- ------------
-- Idea: Select everything from A, along with any matching records in B

SELECT *
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;

SELECT first_name, last_name, email, order_date, amount 
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;

+------------+-----------+------------------+------------+--------+
| first_name | last_name | email            | order_date | amount |
+------------+-----------+------------------+------------+--------+
| Boy        | George    | george@gmail.com | 2016-02-10 |  99.99 |
| Boy        | George    | george@gmail.com | 2017-11-11 |  35.50 |
| George     | Michael   | gm@gmail.com     | 2014-12-12 | 800.67 |
| George     | Michael   | gm@gmail.com     | 2015-01-03 |  12.50 |
| David      | Bowie     | david@gmail.com  | NULL       |   NULL |
| Blue       | Steele    | blue@gmail.com   | NULL       |   NULL |
| Bette      | Davis     | bette@aol.com    | 1999-04-11 | 450.25 |
+------------+-----------+------------------+------------+--------+

-- Customers on left : A 
-- Orders on Right : B
-- Idea: Select everything from A, along with any matching records in B



Why to use this type of join
    -- We want to know how much each customers purchased/paid
    -- if someone haven't purchased anything, we can give them promo code
        --Exclusive discount to encourage them to purchase

SELECT 
    first_name,
    last_name,
    SUM(amount)
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY SUM(amount) DESC;
+------------+-----------+-------------+
| first_name | last_name | SUM(amount) |
+------------+-----------+-------------+
| George     | Michael   |      813.17 |
| Bette      | Davis     |      450.25 |
| Boy        | George    |      135.49 |
| David      | Bowie     |        NULL |
| Blue       | Steele    |        NULL |
+------------+-----------+-------------+


We want replace NULL with '0'
    -- use IFNULL()

SELECT 
    first_name,
    last_name,
    IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent DESC;

+------------+-----------+-------------+
| first_name | last_name | total_spent |
+------------+-----------+-------------+
| George     | Michael   |      813.17 |
| Bette      | Davis     |      450.25 |
| Boy        | George    |      135.49 |
| David      | Bowie     |        0.00 |
| Blue       | Steele    |        0.00 |
+------------+-----------+-------------+
    