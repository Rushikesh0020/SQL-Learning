SELECT AVG(released_year) FROM books;
+--------------------+
| AVG(released_year) |
+--------------------+
|          1999.7895 |
+--------------------+

-- Prob Stat: Calculate the avg stock_quantity for
--            books released in same year

SELECT title, AVG(stock_quantity) 
FROM books 
GROUP BY released_year;
+-----------------------------------------------------+---------------------+
| title                                               | AVG(stock_quantity) |
+-----------------------------------------------------+---------------------+
| The Namesake                                        |             66.0000 |
| Norse Mythology                                     |             43.0000 |
| American Gods                                       |            134.3333 |
| Interpreter of Maladies                             |             97.0000 |
| A Hologram for the King: A Novel                    |            154.0000 |
| The Circle                                          |             26.0000 |
| The Amazing Adventures of Kavalier & Clay           |             68.0000 |
| Just Kids                                           |             55.0000 |
| What We Talk About When We Talk About Love: Stories |             23.0000 |
| Where Im Calling From: Selected Stories            |             12.0000 |
| White Noise                                         |             49.0000 |
| Cannery Row                                         |             95.0000 |
| Oblivion: Stories                                   |            172.0000 |
| Consider the Lobster                                |             92.0000 |
| 10% Happier                                         |             29.0000 |
| Lincoln In The Bardo                                |           1000.0000 |
+-----------------------------------------------------+---------------------+


SELECT released_year, AVG(stock_quantity) 
FROM books 
GROUP BY released_year;
+---------------+---------------------+
| released_year | AVG(stock_quantity) |
+---------------+---------------------+
|          2003 |             66.0000 |
|          2016 |             43.0000 |
|          2001 |            134.3333 |
|          1996 |             97.0000 |
|          2012 |            154.0000 |
|          2013 |             26.0000 |
|          2000 |             68.0000 |
|          2010 |             55.0000 |
|          1981 |             23.0000 |
|          1989 |             12.0000 |
|          1985 |             49.0000 |
|          1945 |             95.0000 |
|          2004 |            172.0000 |
|          2005 |             92.0000 |
|          2014 |             29.0000 |
|          2017 |           1000.0000 |
+---------------+---------------------+

SELECT author_fname, author_lname, AVG(pages) 
FROM books
GROUP BY author_lname, author_fname;
+--------------+----------------+------------+
| author_fname | author_lname   | AVG(pages) |
+--------------+----------------+------------+
| Jhumpa       | Lahiri         |   244.5000 |
| Neil         | Gaiman         |   325.6667 |
| Dave         | Eggers         |   431.0000 |
| Michael      | Chabon         |   634.0000 |
| Patti        | Smith          |   304.0000 |
| Raymond      | Carver         |   351.0000 |
| Don          | DeLillo        |   320.0000 |
| John         | Steinbeck      |   181.0000 |
| David        | Foster Wallace |   336.0000 |
| Dan          | Harris         |   256.0000 |
| Freida       | Harris         |   428.0000 |
| George       | Saunders       |   367.0000 |
+--------------+----------------+------------+