SELECT title, author_lname FROM books
WHERE author_lname = 'Carver' OR
      author_lname = 'Lahiri' OR
      author_lname = 'Smith';

-- Better Way: Below
    --Using IN operator

SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

+-----------------------------------------------------+--------------+
| title                                               | author_lname |
+-----------------------------------------------------+--------------+
| The Namesake                                        | Lahiri       |
| Interpreter of Maladies                             | Lahiri       |
| Just Kids                                           | Smith        |
| What We Talk About When We Talk About Love: Stories | Carver       |
| Where Im Calling From: Selected Stories             | Carver       |
+-----------------------------------------------------+--------------+


SELECT title, released_year FROM books
WHERE released_year IN ( );
+----------------------+---------------+
| title                | released_year |
+----------------------+---------------+
| White Noise          |          1985 |
| Lincoln In The Bardo |          2017 |
+----------------------+---------------+

-- -------
-- NOT IN 
-- -------

-- Prob Stat: We want books only after 2000 and from odd years 

SELECT title, released_year FROM books
WHERE released_year NOT IN (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016);
-- yeah! You have already guessed the output buddy! Cheers!

But there is better way: 
    Sol: % operator (Modulo)

SELECT title, released_year FROM books 
WHERE released_year >= 2000 AND released_year % 2 != 0 
ORDER BY released_year;
+-------------------------------------------+---------------+
| title                                     | released_year |
+-------------------------------------------+---------------+
| American Gods                             |          2001 |
| A Heartbreaking Work of Staggering Genius |          2001 |
| fake_book                                 |          2001 |
| The Namesake                              |          2003 |
| Coraline                                  |          2003 |
| Consider the Lobster                      |          2005 |
| The Circle                                |          2013 |
| Lincoln In The Bardo                      |          2017 |
+-------------------------------------------+---------------+
