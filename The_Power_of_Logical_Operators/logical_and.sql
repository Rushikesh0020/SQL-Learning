SELECT * FROM books 
WHERE author_lname = 'Eggers' && released_year > 2010;

-- OR 

SELECT * FROM books 
WHERE author_lname = 'Eggers' AND released_year > 2010;

+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                            | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
|       5 | A Hologram for the King: A Novel | Dave         | Eggers       |          2012 |            154 |   352 |
|       6 | The Circle                       | Dave         | Eggers       |          2013 |             26 |   504 |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+


SELECT 1 < 5 && 7 = 9;
    -- O/P: 1
 
SELECT 54<=54 && 'a' = 'A';
    --O/P: 1


SELECT * FROM books 
WHERE author_lname = 'Eggers' 
    AND released_year > 2010 
    && title LIKE '%novel%';
    
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                            | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
|       5 | A Hologram for the King: A Novel | Dave         | Eggers       |          2012 |            154 |   352 |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+