-- Prob stat: Print the number of books in db
SELECT COUNT(title) FROM books;
-- OR 
SELECT COUNT(*) FROM books;
+--------------+
| COUNT(title) |
+--------------+
|           19 |
+--------------+

-- Prob Stat: Print how many books were released in each year
SELECT released_year, COUNT(*) FROM books
GROUP BY released_year;
+---------------+----------+
| released_year | COUNT(*) |
+---------------+----------+
|          2003 |        2 |
|          2016 |        1 |
|          2001 |        3 |
|          1996 |        1 |
|          2012 |        1 |
|          2013 |        1 |
|          2000 |        1 |
|          2010 |        1 |
|          1981 |        1 |
|          1989 |        1 |
|          1985 |        1 |
|          1945 |        1 |
|          2004 |        1 |
|          2005 |        1 |
|          2014 |        1 |
|          2017 |        1 |
+---------------+----------+

-- Prob Stat: Print out the total number of books in stock

SELECT SUM(stock_quantity) FROM books;
+---------------------+
| SUM(stock_quantity) |
+---------------------+
|                2450 |
+---------------------+

-- Prob Stat: Find the avg released_year for each author

SELECT author_fname, author_lname, AVG(released_year)
FROM books
GROUP BY author_lname, author_fname;
+--------------+----------------+--------------------+
| author_fname | author_lname   | AVG(released_year) |
+--------------+----------------+--------------------+
| Jhumpa       | Lahiri         |          1999.5000 |
| Neil         | Gaiman         |          2006.6667 |
| Dave         | Eggers         |          2008.6667 |
| Michael      | Chabon         |          2000.0000 |
| Patti        | Smith          |          2010.0000 |
| Raymond      | Carver         |          1985.0000 |
| Don          | DeLillo        |          1985.0000 |
| John         | Steinbeck      |          1945.0000 |
| David        | Foster Wallace |          2004.5000 |
| Dan          | Harris         |          2014.0000 |
| Freida       | Harris         |          2001.0000 |
| George       | Saunders       |          2017.0000 |
+--------------+----------------+--------------------+

-- Prob Stat: Find the full name of the author
--            who wrote Longest Book

SELECT 
    CONCAT
    (
        author_fname,' ', author_lname
    ) As 'Full Name',
    pages
FROM books 
WHERE pages = (SELECT MAX(pages) FROM books);
+----------------+-------+
| Full Name      | pages |
+----------------+-------+
| Michael Chabon |   634 |
+----------------+-------+

-- Method 2: Faster & Preferred

SELECT 
       CONCAT
    (
        author_fname,' ', author_lname
    ) As 'Full Name',
    pages 
FROM books ORDER BY pages DESC LIMIT 1;

-- Same o/p as above 


----------------------------------------

-- Prob Stat: Make this happen 

SELECT 
    released_year AS year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year;
+------+---------+-----------+
| year | # books | avg pages |
+------+---------+-----------+
| 2003 |       2 |  249.5000 |
| 2016 |       1 |  304.0000 |
| 2001 |       3 |  443.3333 |
| 1996 |       1 |  198.0000 |
| 2012 |       1 |  352.0000 |
| 2013 |       1 |  504.0000 |
| 2000 |       1 |  634.0000 |
| 2010 |       1 |  304.0000 |
| 1981 |       1 |  176.0000 |
| 1989 |       1 |  526.0000 |
| 1985 |       1 |  320.0000 |
| 1945 |       1 |  181.0000 |
| 2004 |       1 |  329.0000 |
| 2005 |       1 |  343.0000 |
| 2014 |       1 |  256.0000 |
| 2017 |       1 |  367.0000 |
+------+---------+-----------+