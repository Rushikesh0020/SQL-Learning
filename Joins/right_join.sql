-- ------------
-- RIGHT JOIN 
-- ------------
-- Idea: Select everything from B, along with any matching records in A

SELECT * 
FROM customers 
RIGHT JOIN orders 
    ON customers.id = orders.customer_id;
+------+------------+-----------+------------------+----+------------+--------+-------------+
| id   | first_name | last_name | email            | id | order_date | amount | customer_id |
+------+------------+-----------+------------------+----+------------+--------+-------------+
|    1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
|    1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
|    2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
|    2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
|    5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
+------+------------+-----------+------------------+----+------------+--------+-------------+

Why to use right join: 
    - it doesnt make sense to have an order without customer
    - But maybe if someone accidently deletes a customer record customers OR 
    - OR    there is wrong customer_id in database 
    - So, how can we verify wrong id 

Simple Sol:
    - Right Join: helps us to spot wrong id


SELECT first_name, last_name, SUM(amount) AS total_spent 
FROM customers 
RIGHT JOIN orders 
    ON customers.id = orders.customer_id
GROUP BY customer_id
ORDER BY total_spent;

+------------+-----------+-------------+
| first_name | last_name | total_spent |
+------------+-----------+-------------+
| Boy        | George    |      135.49 |
| Bette      | Davis     |      450.25 |
| George     | Michael   |      813.17 |
+------------+-----------+-------------+


There is no NULL data as such coz the customer is not deleted in our case
and we are not able to see NULL values and RIGHT JOIN Effect over here
Still we can manage such things using IFNULL()

SELECT 
    IFNULL(first_name,'MISSING') AS first, 
    IFNULL(last_name,'USER') as last, 
    order_date, 
    amount, 
    SUM(amount)
FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY first_name, last_name;

