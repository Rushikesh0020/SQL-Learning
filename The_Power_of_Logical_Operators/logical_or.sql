SELECT * FROM books 
WHERE author_lname = 'Eggers' || released_year > 2010;

-- OR 
SELECT * FROM books 
WHERE author_lname = 'Eggers' OR released_year > 2010;

+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                                     | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
|       2 | Norse Mythology                           | Neil         | Gaiman       |          2016 |             43 |   304 |
|       5 | A Hologram for the King: A Novel          | Dave         | Eggers       |          2012 |            154 |   352 |
|       6 | The Circle                                | Dave         | Eggers       |          2013 |             26 |   504 |
|       9 | A Heartbreaking Work of Staggering Genius | Dave         | Eggers       |          2001 |            104 |   437 |
|      17 | 10% Happier                               | Dan          | Harris       |          2014 |             29 |   256 |
|      19 | Lincoln In The Bardo                      | George       | Saunders     |          2017 |           1000 |   367 |
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+



SELECT title, author_lname, released_year, stock_quantity FROM books 
WHERE author_lname = 'Eggers' 
    OR released_year > 2010 
    || stock_quantity > 100;
+-------------------------------------------+----------------+---------------+----------------+
| title                                     | author_lname   | released_year | stock_quantity |
+-------------------------------------------+----------------+---------------+----------------+
| Norse Mythology                           | Gaiman         |          2016 |             43 |
| A Hologram for the King: A Novel          | Eggers         |          2012 |            154 |
| The Circle                                | Eggers         |          2013 |             26 |
| A Heartbreaking Work of Staggering Genius | Eggers         |          2001 |            104 |
| Oblivion: Stories                         | Foster Wallace |          2004 |            172 |
| 10% Happier                               | Harris         |          2014 |             29 |
| fake_book                                 | Harris         |          2001 |            287 |
| Lincoln In The Bardo                      | Saunders       |          2017 |           1000 |
+-------------------------------------------+----------------+---------------+----------------+

SELECT title, author_lname, released_year FROM books
WHERE released_year >= 2004 && released_year <= 2015;
-- Similar to Between Operator Based Soln

+----------------------------------+----------------+---------------+
| title                            | author_lname   | released_year |
+----------------------------------+----------------+---------------+
| A Hologram for the King: A Novel | Eggers         |          2012 |
| The Circle                       | Eggers         |          2013 |
| Just Kids                        | Smith          |          2010 |
| Oblivion: Stories                | Foster Wallace |          2004 |
| Consider the Lobster             | Foster Wallace |          2005 |
| 10% Happier                      | Harris         |          2014 |
+----------------------------------+----------------+---------------+
    