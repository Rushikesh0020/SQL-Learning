SELECT title FROM books
WHERE title LIKE '%stories%';

+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| What We Talk About When We Talk About Love: Stories |
| Where Im Calling From: Selected Stories            |
| Oblivion: Stories                                   |
+-----------------------------------------------------+


-- Prob stat: Find the Longest Book 
-- Prob Description :  Print out the Title and Page count 

SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1; 
+-------------------------------------------+-------+
| title                                     | pages |
+-------------------------------------------+-------+
| The Amazing Adventures of Kavalier & Clay |   634 |
+-------------------------------------------+-------+

-- Prob Stat: Print a summary containing the title and year
--            for the 3 most recent books

SELECT CONCAT_WS
        (   
            ' - ',
            title,
            released_year
        ) AS summary
FROM books ORDER BY released_year DESC LIMIT 3;

-- OR 

SELECT CONCAT
        (   
            title,
            ' - ',
            released_year
        ) AS summary
FROM books ORDER BY released_year DESC LIMIT 3;

+-----------------------------+
| summary                     |
+-----------------------------+
| Lincoln In The Bardo - 2017 |
| Norse Mythology - 2016      |
| 10% Happier - 2014          |
+-----------------------------+



-- Prob Stat: Find all books with an author_lname that contains a space(" ")

SELECT title, author_lname FROM books
WHERE author_lname LIKE '% %';

+----------------------+----------------+
| title                | author_lname   |
+----------------------+----------------+
| Oblivion: Stories    | Foster Wallace |
| Consider the Lobster | Foster Wallace |
+----------------------+----------------+

-- Prob Stat: Find the 3 books with lowest stock price 

SELECT title, released_year, stock_quantity FROM books
ORDER BY stock_quantity LIMIT 3;
+-----------------------------------------------------+---------------+----------------+
| title                                               | released_year | stock_quantity |
+-----------------------------------------------------+---------------+----------------+
| Where Im Calling From: Selected Stories             |          1989 |             12 |
| American Gods                                       |          2001 |             12 |
| What We Talk About When We Talk About Love: Stories |          1981 |             23 |
+-----------------------------------------------------+---------------+----------------+

-- Prob Stat: Print title and author_lname, sorted first
--            by author_lname and then by title

SELECT title, author_lname FROM books
ORDER BY author_lname, title;
+-----------------------------------------------------+----------------+
| title                                               | author_lname   |
+-----------------------------------------------------+----------------+
| What We Talk About When We Talk About Love: Stories | Carver         |
| Where Im Calling From: Selected Stories            | Carver         |
| The Amazing Adventures of Kavalier & Clay           | Chabon         |
| White Noise                                         | DeLillo        |
| A Heartbreaking Work of Staggering Genius           | Eggers         |
| A Hologram for the King: A Novel                    | Eggers         |
| The Circle                                          | Eggers         |
| Consider the Lobster                                | Foster Wallace |
| Oblivion: Stories                                   | Foster Wallace |
| American Gods                                       | Gaiman         |
| Coraline                                            | Gaiman         |
| Norse Mythology                                     | Gaiman         |
| 10% Happier                                         | Harris         |
| fake_book                                           | Harris         |
| Interpreter of Maladies                             | Lahiri         |
| The Namesake                                        | Lahiri         |
| Lincoln In The Bardo                                | Saunders       |
| Just Kids                                           | Smith          |
| Cannery Row                                         | Steinbeck      |
+-----------------------------------------------------+----------------+

-- Prob Stat: Make this happen...
-- Prob Description: Sorted Alphabetically By Last Name
SELECT 
    CONCAT
        (
            'MY FAVORITE AUTHOR IS ',
            UPPER(author_fname),
            ' ',
            UPPER(author_lname),
            '!'
        ) AS yell
    FROM books ORDER BY author_lname;

-- OR 
SELECT UPPER
        (
            CONCAT
                (
                    'My favorite author is ',
                    author_fname,
                    ' ',
                    author_lname,
                    '!'
                )
        ) AS yell 
    FROM books ORDER BY author_lname;
+----------------------------------------------+
| yell                                         |
+----------------------------------------------+
| MY FAVOURITE AUTHOR IS RAYMOND CARVER!       |
| MY FAVOURITE AUTHOR IS RAYMOND CARVER!       |
| MY FAVOURITE AUTHOR IS MICHAEL CHABON!       |
| MY FAVOURITE AUTHOR IS DON DELILLO!          |
| MY FAVOURITE AUTHOR IS DAVE EGGERS!          |
| MY FAVOURITE AUTHOR IS DAVE EGGERS!          |
| MY FAVOURITE AUTHOR IS DAVE EGGERS!          |
| MY FAVOURITE AUTHOR IS DAVID FOSTER WALLACE! |
| MY FAVOURITE AUTHOR IS DAVID FOSTER WALLACE! |
| MY FAVOURITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVOURITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVOURITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVOURITE AUTHOR IS DAN HARRIS!           |
| MY FAVOURITE AUTHOR IS FREIDA HARRIS!        |
| MY FAVOURITE AUTHOR IS JHUMPA LAHIRI!        |
| MY FAVOURITE AUTHOR IS JHUMPA LAHIRI!        |
| MY FAVOURITE AUTHOR IS GEORGE SAUNDERS!      |
| MY FAVOURITE AUTHOR IS PATTI SMITH!          |
| MY FAVOURITE AUTHOR IS JOHN STEINBECK!       |
+----------------------------------------------+
