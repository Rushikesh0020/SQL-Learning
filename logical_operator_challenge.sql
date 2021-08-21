SELECT 10!=10;  -- o/p: 0
SELECT 15 > 14 && 99-5 <= 94; -- o/p: 1
SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10; --o/p: 1 

SELECT title, released_year FROM books
WHERE released_year < 1980;
-- yeah! You have already guessed the output buddy! Cheers!


SELECT title, author_lname FROM books
WHERE author_lname IN ('Eggers', 'Chabon');
+-------------------------------------------+--------------+
| title                                     | author_lname |
+-------------------------------------------+--------------+
| A Hologram for the King: A Novel          | Eggers       |
| The Circle                                | Eggers       |
| The Amazing Adventures of Kavalier & Clay | Chabon       |
| A Heartbreaking Work of Staggering Genius | Eggers       |
+-------------------------------------------+--------------+


SELECT title, author_lname, released_year FROM books
WHERE author_lname = 'Lahiri' && released_year > 2000; 
+--------------+--------------+---------------+
| title        | author_lname | released_year |
+--------------+--------------+---------------+
| The Namesake | Lahiri       |          2003 |
+--------------+--------------+---------------+

SELECT title, pages FROM books
WHERE pages BETWEEN 100 AND 200;
-- yeah! You have already guessed the output buddy! Cheers!

SELECT title, author_lname FROM books
WHERE author_lname LIKE 'C%' || author_lname LIKE 'S%'; 
+-----------------------------------------------------+--------------+
| title                                               | author_lname |
+-----------------------------------------------------+--------------+
| The Amazing Adventures of Kavalier & Clay           | Chabon       |
| Just Kids                                           | Smith        |
| What We Talk About When We Talk About Love: Stories | Carver       |
| Where Im Calling From: Selected Stories             | Carver       |
| Cannery Row                                         | Steinbeck    |
| Lincoln In The Bardo                                | Saunders     |
+-----------------------------------------------------+--------------+
---------
--  CASE 
---------

SELECT title, author_lname,
    CASE 
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title = 'Just Kids' THEN 'Memoir'
        WHEN title LIKE '%Heartbreaking Work%' THEN 'Memoir'
        ELSE 'Novel'
    END AS 'MY_TYPE'
FROM books;
+-----------------------------------------------------+----------------+---------------+
| title                                               | author_lname   | MY_TYPE       |
+-----------------------------------------------------+----------------+---------------+
| The Namesake                                        | Lahiri         | Novel         |
| Norse Mythology                                     | Gaiman         | Novel         |
| American Gods                                       | Gaiman         | Novel         |
| Interpreter of Maladies                             | Lahiri         | Novel         |
| A Hologram for the King: A Novel                    | Eggers         | Novel         |
| The Circle                                          | Eggers         | Novel         |
| The Amazing Adventures of Kavalier & Clay           | Chabon         | Novel         |
| Just Kids                                           | Smith          | Memoir        |
| A Heartbreaking Work of Staggering Genius           | Eggers         | Memoir        |
| Coraline                                            | Gaiman         | Novel         |
| What We Talk About When We Talk About Love: Stories | Carver         | Short Stories |
| Where Im Calling From: Selected Stories             | Carver         | Short Stories |
| White Noise                                         | DeLillo        | Novel         |
| Cannery Row                                         | Steinbeck      | Novel         |
| Oblivion: Stories                                   | Foster Wallace | Short Stories |
| Consider the Lobster                                | Foster Wallace | Novel         |
| 10% Happier                                         | Harris         | Novel         |
| fake_book                                           | Harris         | Novel         |
| Lincoln In The Bardo                                | Saunders       | Novel         |
+-----------------------------------------------------+----------------+---------------+

-- IMP ONE: A bit Complex

SELECT title, author_lname,
    CASE 
        WHEN COUNT(author_lname) > 1 THEN CONCAT(COUNT(author_lname), ' books')
        ELSE '1 book'
    END AS 'COUNT'
FROM books;


SELECT author_fname, author_lname, 
    CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END As 'MyCOUNT'
FROM books
GROUP BY author_lname, author_fname;

+--------------+----------------+---------+
| author_fname | author_lname   | MyCOUNT |
+--------------+----------------+---------+
| Jhumpa       | Lahiri         | 2 books |
| Neil         | Gaiman         | 3 books |
| Dave         | Eggers         | 3 books |
| Michael      | Chabon         | 1 book  |
| Patti        | Smith          | 1 book  |
| Raymond      | Carver         | 2 books |
| Don          | DeLillo        | 1 book  |
| John         | Steinbeck      | 1 book  |
| David        | Foster Wallace | 2 books |
| Dan          | Harris         | 1 book  |
| Freida       | Harris         | 1 book  |
| George       | Saunders       | 1 book  |
+--------------+----------------+---------+


