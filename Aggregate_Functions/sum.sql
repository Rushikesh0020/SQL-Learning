SELECT SUM(pages) FROM books;
+------------+
| SUM(pages) |
+------------+
|       6623 |
+------------+

SELECT author_fname, author_lname, SUM(pages)
FROM books 
GROUP BY author_lname, author_fname;
+--------------+----------------+------------+
| author_fname | author_lname   | SUM(pages) |
+--------------+----------------+------------+
| Jhumpa       | Lahiri         |        489 |
| Neil         | Gaiman         |        977 |
| Dave         | Eggers         |       1293 |
| Michael      | Chabon         |        634 |
| Patti        | Smith          |        304 |
| Raymond      | Carver         |        702 |
| Don          | DeLillo        |        320 |
| John         | Steinbeck      |        181 |
| David        | Foster Wallace |        672 |
| Dan          | Harris         |        256 |
| Freida       | Harris         |        428 |
| George       | Saunders       |        367 |
+--------------+----------------+------------+

SELECT author_fname, author_lname, SUM(pages)
FROM books 
GROUP BY author_lname, author_fname
ORDER BY SUM(pages) DESC;
+--------------+----------------+------------+
| author_fname | author_lname   | SUM(pages) |
+--------------+----------------+------------+
| Dave         | Eggers         |       1293 |
| Neil         | Gaiman         |        977 |
| Raymond      | Carver         |        702 |
| David        | Foster Wallace |        672 |
| Michael      | Chabon         |        634 |
| Jhumpa       | Lahiri         |        489 |
| Freida       | Harris         |        428 |
| George       | Saunders       |        367 |
| Don          | DeLillo        |        320 |
| Patti        | Smith          |        304 |
| Dan          | Harris         |        256 |
| John         | Steinbeck      |        181 |
+--------------+----------------+------------+