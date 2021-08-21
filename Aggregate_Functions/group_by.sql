-- GROUP BY summarizes or aggregates identical
-- data into single rows

SELECT title, author_lname FROM books
GROUP BY author_lname;
+-----------------------------------------------------+----------------+
| title                                               | author_lname   |
+-----------------------------------------------------+----------------+
| The Namesake                                        | Lahiri         |
| Norse Mythology                                     | Gaiman         |
| A Hologram for the King: A Novel                    | Eggers         |
| The Amazing Adventures of Kavalier & Clay           | Chabon         |
| Just Kids                                           | Smith          |
| What We Talk About When We Talk About Love: Stories | Carver         |
| White Noise                                         | DeLillo        |
| Cannery Row                                         | Steinbeck      |
| Oblivion: Stories                                   | Foster Wallace |
| 10% Happier                                         | Harris         |
| Lincoln In The Bardo                                | Saunders       |
+-----------------------------------------------------+----------------+

SELECT author_lname, COUNT(*) 
FROM books GROUP BY author_lname;
+----------------+----------+
| author_lname   | COUNT(*) |
+----------------+----------+
| Lahiri         |        2 |
| Gaiman         |        3 |
| Eggers         |        3 |
| Chabon         |        1 |
| Smith          |        1 |
| Carver         |        2 |
| DeLillo        |        1 |
| Steinbeck      |        1 |
| Foster Wallace |        2 |
| Harris         |        2 |
| Saunders       |        1 |
+----------------+----------+ 

-- There is one fault above
-- with Harris 

SELECT author_fname, author_lname, COUNT(*) 
FROM books GROUP BY author_lname, author_fname;

-- Now everything is perfect  
+--------------+----------------+----------+
| author_fname | author_lname   | COUNT(*) |
+--------------+----------------+----------+
| Jhumpa       | Lahiri         |        2 |
| Neil         | Gaiman         |        3 |
| Dave         | Eggers         |        3 |
| Michael      | Chabon         |        1 |
| Patti        | Smith          |        1 |
| Raymond      | Carver         |        2 |
| Don          | DeLillo        |        1 |
| John         | Steinbeck      |        1 |
| David        | Foster Wallace |        2 |
| Dan          | Harris         |        1 |
| Freida       | Harris         |        1 |
| George       | Saunders       |        1 |
+--------------+----------------+----------+ 
------------------------------------------------------------

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


SELECT CONCAT
    (
      'In ', released_year, ' ' ,COUNT(*), ' book(s) released!'
    ) AS 'Release Info'
FROM books
GROUP BY released_year;
+-----------------------------+
| Release Info                |
+-----------------------------+
| In 2003 2 book(s) released! |
| In 2016 1 book(s) released! |
| In 2001 3 book(s) released! |
| In 1996 1 book(s) released! |
| In 2012 1 book(s) released! |
| In 2013 1 book(s) released! |
| In 2000 1 book(s) released! |
| In 2010 1 book(s) released! |
| In 1981 1 book(s) released! |
| In 1989 1 book(s) released! |
| In 1985 1 book(s) released! |
| In 1945 1 book(s) released! |
| In 2004 1 book(s) released! |
| In 2005 1 book(s) released! |
| In 2014 1 book(s) released! |
| In 2017 1 book(s) released! |
+-----------------------------+