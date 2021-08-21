SELECT title FROM books LIMIT 3;
+-----------------+
| title           |
+-----------------+
| The Namesake    |
| Norse Mythology |
| American Gods   |
+-----------------+
-- -------------------
-- Using with order by
-- -------------------

SELECT title, released_year FROM books
ORDER BY released_year DESC LIMIT 5;

+----------------------------------+---------------+
| title                            | released_year |
+----------------------------------+---------------+
| Lincoln In The Bardo             |          2017 |
| Norse Mythology                  |          2016 |
| 10% Happier                      |          2014 |
| The Circle                       |          2013 |
| A Hologram for the King: A Novel |          2012 |
+----------------------------------+---------------+

-- Range based LIMIT 
-- Have  to specify starting and ending pt.

SELECT title, released_year FROM books
ORDER BY released_year DESC LIMIT 0,5;

-- Output: 
    -- exact same thing as above 


SELECT title, released_year FROM books
ORDER BY released_year DESC LIMIT 1,3; 

+-----------------+---------------+
| title           | released_year |
+-----------------+---------------+
| Norse Mythology |          2016 |
| 10% Happier     |          2014 |
| The Circle      |          2013 |
+-----------------+---------------+

SELECT title, released_year FROM books
ORDER BY released_year DESC LIMIT 10,1; 

+---------------+---------------+
| title         | released_year |
+---------------+---------------+
| American Gods |          2001 |
+---------------+---------------+

-- Give some large number in range if u dont know the limit 
SELECT title FROM books LIMIT 5, 19924892301247834;
+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| The Circle                                          |
| The Amazing Adventures of Kavalier & Clay           |
| Just Kids                                           |
| A Heartbreaking Work of Staggering Genius           |
| Coraline                                            |
| What We Talk About When We Talk About Love: Stories |
| Where Im Calling From: Selected Stories             |
| White Noise                                         |
| Cannery Row                                         |
| Oblivion: Stories                                   |
| Consider the Lobster                                |
| 10% Happier                                         |
| fake_book                                           |
| Lincoln In The Bardo                                |
+-----------------------------------------------------+