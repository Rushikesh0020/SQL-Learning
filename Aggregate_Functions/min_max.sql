SELECT MIN(released_year) FROM books;
+--------------------+
| MIN(released_year) |
+--------------------+
|               1945 |
+--------------------+

SELECT MIN(pages) FROM books;
+------------+
| MIN(pages) |
+------------+
|        176 |
+------------+

SELECT MAX(pages) FROM books;
+------------+
| MAX(pages) |
+------------+
|        634 |
+------------+


SELECT MAX(pages), title FROM books; 
-- This won't give correct o/p 
+------------+--------------+
| MAX(pages) | title        |
+------------+--------------+
|        634 | The Namesake |
+------------+--------------+

-- Sol: 

-- Method 1: 

SELECT * FROM books
WHERE pages = (SELECT MAX(pages) FROM books);
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                                     | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
|       7 | The Amazing Adventures of Kavalier & Clay | Michael      | Chabon       |          2000 |             68 |   634 |
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+

-- Method 2 : Preferred and Faster
SELECT * FROM books
ORDER BY pages DESC LIMIT 1;

-- Same O/p as above but faster to run