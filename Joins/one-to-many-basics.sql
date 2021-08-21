first_name	last_name	email	            order_date  	amount
Boy 	    George  	george@gmail.com	'2016/02/10'	99.99
Boy 	    ​George	     george@gmail.com	 '2017/11/11'	35.50
George	    Michael	    gm@gmail.com	    '2014/12/12'	800.67
George	    Michael	    gm@gmail.com	    '2015/01/03'	12.50
David 	    Bowie	    david@gmail.com	     NULL	        NULL
Blue	    Steele  	blue@gmail.com	     NULL	        NULL


-- Messy Data isn't it ?
-- NOT A GOOD IDEA To Store Data 

-- Better Approach: 
----------------------------------
Customers           Orders
----------------------------------
customer_id         order_id
first_name          order_date
last_name           amount
email               customer_id
----------------------------------

                CUSTOMERS 
----------------------------------------------------
customer_id	first_name	last_name	email
----------------------------------------------------
1	        Boy 	    George      george@gmail.com
2	        George	    Michael	    gm@gmail.com
3	        David   	Bowie	    david@gmail.com
4	        Blue	    Steele  	blue@gmail.com
---------------------------------------------------

                ORDERS

----------------------------------------------------
order_id	order_date	    amount	    customer_id
----------------------------------------------------
1	        '2016/02/10'	99.99	    1
2	        '2017/11/11'	35.50	    1
3	        '2014/12/12'	800.67	    2
4	        '2015/01/03'	12.50	    2
----------------------------------------------------

So, This is the classic way of organizing data

-- customer_id, order_id => Primary key for respective tables 
-- customer_id => Foreign Key 


