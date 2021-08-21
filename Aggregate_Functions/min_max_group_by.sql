-- Prob: Stat: Find the year each other 
--             published their first book 

SELECT 
    author_fname, author_lname, MIN(released_year)
FROM books
GROUP BY author_lname, author_fname;
+--------------+----------------+--------------------+
| author_fname | author_lname   | MIN(released_year) |
+--------------+----------------+--------------------+
| Jhumpa       | Lahiri         |               1996 |
| Neil         | Gaiman         |               2001 |
| Dave         | Eggers         |               2001 |
| Michael      | Chabon         |               2000 |
| Patti        | Smith          |               2010 |
| Raymond      | Carver         |               1981 |
| Don          | DeLillo        |               1985 |
| John         | Steinbeck      |               1945 |
| David        | Foster Wallace |               2004 |
| Dan          | Harris         |               2014 |
| Freida       | Harris         |               2001 |
| George       | Saunders       |               2017 |
+--------------+----------------+--------------------+


-- Prob Stat: Find the Longest page count for each other 

SELECT 
    author_fname, author_lname, MAX(pages)
FROM books
GROUP BY author_lname, author_fname;
+--------------+----------------+------------+
| author_fname | author_lname   | MAX(pages) |
+--------------+----------------+------------+
| Jhumpa       | Lahiri         |        291 |
| Neil         | Gaiman         |        465 |
| Dave         | Eggers         |        504 |
| Michael      | Chabon         |        634 |
| Patti        | Smith          |        304 |
| Raymond      | Carver         |        526 |
| Don          | DeLillo        |        320 |
| John         | Steinbeck      |        181 |
| David        | Foster Wallace |        343 |
| Dan          | Harris         |        256 |
| Freida       | Harris         |        428 |
| George       | Saunders       |        367 |
+--------------+----------------+------------+